----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/23/2025 04:42:16 PM
-- Design Name: 
-- Module Name: Data_input_FIFO - RTL
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

entity Data_input_FIFO is
  Port (
   clk                   : in STD_LOGIC; 
   reset                 : in STD_LOGIC;
   sel_code_rate         : in std_logic_vector(1 downto 0)  :=(others => '0') ;
   tdata_in              : in std_logic_vector(31 downto 0) :=(others => '0') ;
   tdata_last            : in std_logic := '0';
   tdata_ready           : in std_logic_vector(3 downto 0)  :=(others => '0') ;
   tdata_valid           : in std_logic := '0';
   data_out              : out std_logic_vector(31 downto 0):=(others => '0');
   data_out_last         : out std_logic_vector(3 downto 0) :=(others => '0');
   data_out_ready        : out std_logic := '0';
   data_out_valid        : out std_logic_vector(3 downto 0) :=(others => '0');
   axis_data_count  :out std_logic_vector(12 downto 0) 
      );
end Data_input_FIFO;

architecture RTL of Data_input_FIFO is
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
signal data_ready_core2fifo     : std_logic := '0' ;
signal data_last_fifo2core      : std_logic := '0' ;
signal data_valid_fifo2core     : std_logic := '0' ;
--signal axis_data_counts         : std_logic_vector(12 downto 0) ;
signal core_ready               : std_logic := '0' ;
signal fifo_ready               : std_logic := '0' ;
begin

axis_fifo : fifo_generator_0 
port map (
s_axis_tdata        => tdata_in ,
s_axis_tlast        => tdata_last ,
s_axis_tready       => data_out_ready,  
s_axis_tvalid       => tdata_valid ,
s_aresetn           => reset ,
s_aclk              => clk ,
m_axis_tdata        => data_out ,
m_axis_tlast        => data_last_fifo2core , 
m_axis_tready       => data_ready_core2fifo ,
m_axis_tvalid       => data_valid_fifo2core , 
axis_data_count     => axis_data_count ,
wr_rst_busy         => open ,
rd_rst_busy         => open 
); 

code_rate_selection : process (clk) 
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
null ;
end case ;

end process ;

process(clk)   --To fix the fifo problem with output values , possible solution : send the 1st data to fifo and wait until m_axis_ready = 1 then start sending the data 
begin 
 if tdata_ready(current_code_rate) = '1' then 
 --signal that notice to the fifo that the core is ready to receive the data 
    data_ready_core2fifo <= '1'; --Signal that notice the input fsm  that is ready to receive the data in input 
--   if fifo_ready = '1'then 
--    data_out_ready <= '1' ;
--    else 
--     data_out_ready <= '0' ;
--     end if ;
 else 
    data_ready_core2fifo <= '0';
--    data_out_ready <= '0' ;

  end if ;
   
    data_out_last (current_code_rate) <= data_last_fifo2core ;
    data_out_valid(current_code_rate) <=  data_valid_fifo2core  ; 
 
end process ;




end RTL;
