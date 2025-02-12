----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2025 01:17:19 PM
-- Design Name: 
-- Module Name: Output_fifo - rtl
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Output_fifo is
  Port ( 

       clk                   : in STD_LOGIC; 
       reset                 : in STD_LOGIC;
       sel_code_rate         : in std_logic_vector(1 downto 0)  :=(others => '0') ;
       tdata_in              : in std_logic_vector(31 downto 0) :=(others => '0') ;
       tdata_last            : in std_logic_vector(3 downto 0) :=(others => '0') ;
       tdata_ready           : in std_logic := '0' ;
       tdata_valid           : in std_logic_vector(3 downto 0) :=(others => '0') ;
       data_out              : out std_logic_vector(31 downto 0):=(others => '0');
       data_out_last         : out std_logic := '0';
       data_out_ready        : out std_logic_vector(3 downto 0) :=(others => '0');
       data_out_valid        : out std_logic := '0';
       finish_encoding       : out std_logic := '0'
  );
end Output_fifo;

architecture rtl of Output_fifo is
component fifo_generator_0
port (
s_axis_tdata     :in std_logic_vector(31 downto 0) :=(others => '0') ;
s_axis_tlast     :in std_logic := '0';
s_axis_tready    :out std_logic := '0'; 
s_axis_tvalid    :in std_logic := '0';
s_aresetn        :in std_logic ;
s_aclk           :in std_logic ;
m_axis_tdata     :out std_logic_vector(31 downto 0):=(others => '0') ;
m_axis_tlast     :out std_logic := '0' ;
m_axis_tready    :in std_logic := '0';
m_axis_tvalid    :out std_logic := '0';
axis_data_count  :out std_logic_vector(12 downto 0) ;
wr_rst_busy      :out std_logic := '0'; 
rd_rst_busy      :out std_logic := '0'
    ); 
end component ;  

signal current_code_rate        : integer   :=  0  ;
signal data_in_last             : std_logic := '0' ;
signal data_in_ready            : std_logic := '0' ;
signal data_in_valid            : std_logic := '0' ;
signal tdata_out_ready          : std_logic := '0' ;
signal axis_data_counts         : std_logic_vector(12 downto 0) ;

begin

code_rate_selection : process (clk, sel_code_rate) 
begin

case sel_code_rate  is

when "00" => 
current_code_rate <= 0 ;
when "01" => 
current_code_rate <= 1 ;
when "10" => 
current_code_rate <= 2 ;
when "11" => 
current_code_rate <= 3 ;
when others => 
current_code_rate <= 0 ;
end case ;

end process ;

axis_fifo : fifo_generator_0 
port map (
s_axis_tdata        => tdata_in ,
s_axis_tlast        => data_in_last ,
s_axis_tready       => tdata_out_ready,  
s_axis_tvalid       => data_in_valid ,
s_aresetn           => reset ,
s_aclk              => clk ,
m_axis_tdata        => data_out ,
m_axis_tlast        => data_out_last , 
m_axis_tready       => tdata_ready,
m_axis_tvalid       => data_out_valid , 
axis_data_count     => axis_data_counts ,
wr_rst_busy         => open ,
rd_rst_busy         => open 
); 

process (clk) 
begin 

if rising_edge (clk) then
    data_out_ready(current_code_rate) <= tdata_out_ready ;
    data_in_last  <= tdata_last(current_code_rate) ;
    data_in_valid <= tdata_valid(current_code_rate);
     
    if tdata_valid(current_code_rate) = '0'and tdata_last(current_code_rate) = '1' and axis_data_counts = "0" then
         finish_encoding <= '1' ;
    else 
         finish_encoding <= '0' ;
   end if ;
end if ;   

end process ;


end rtl;
