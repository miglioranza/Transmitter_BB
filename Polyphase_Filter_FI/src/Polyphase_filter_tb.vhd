----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2024 01:55:23 PM
-- Design Name: 
-- Module Name: Polyphase_filter_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use std.env.finish ;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Polyphase_filter_tb is
end Polyphase_filter_tb;

architecture Behavioral of Polyphase_filter_tb is

  
  --Clock period 
  constant clk_period : time := 5 ns ;
  --UUT: Unite UNder Test 
  component Pipelined_Polyphase_Filter 
  
--    Generic(
--        DATA_WIDTH          : integer := 32;    
--        CONVERSION_FACTOR   : integer := 4; --Upsampling factor
--        FILTER_TAPS         : integer := 16;
--        DECIMATION_FILTER   : boolean := false  
--    );
    Port (
        clk             : in std_logic;
        reset           : in std_logic;
        input_I         : in std_logic_vector(31 downto 0);
        input_Q         : in std_logic_vector(31 downto 0);
        data_in_ready   : in std_logic ;
        data_in_valid   : in std_logic ;
--        data_in_last    : in std_logic ;
        data_out_ready  : out std_logic ;
        data_out_valid  : out std_logic ;       
        data_out_I      : out std_logic_vector(51 downto 0) := (others => '0') ;
        data_out_Q      : out std_logic_vector(51 downto 0) := (others => '0')          
--        data_out_last   : out std_logic 
        
    
    );  
  
  end component ;      
         
  signal clk             : std_logic := '0' ;
  signal reset           : std_logic := '0' ;
  signal input_I         : std_logic_vector(31 downto 0):= (others => '0');
  signal input_Q         : std_logic_vector(31 downto 0):= (others => '0');
  signal data_in_ready   : std_logic ;
  signal data_out_valid  : std_logic ;
  signal data_out_I      : std_logic_vector(51 downto 0) := (others => '0');
  signal data_out_Q      : std_logic_vector(51 downto 0) := (others => '0');      
  signal data_in_valid   : std_logic ;
  signal data_out_ready  : std_logic ;
--  signal data_in_last    : std_logic := '0' ;
--  signal data_out_last   : std_logic := '0' ;
  
begin
    
    --Clock generation and reset

    clk     <= not clk  after clk_period /2 ;
    reset   <= '1','0'  after 5 ns ; 

uut:Pipelined_Polyphase_Filter
port map( 
clk              => clk,
reset            => reset,
input_I          => input_I,
input_Q          => input_Q,
data_in_ready    => data_in_ready,
data_out_valid   => data_out_valid,
data_out_I      => data_out_I,
data_out_Q      => data_out_Q,
data_out_ready   => data_out_ready,
data_in_valid    => data_in_valid
--data_in_last     => data_in_last,
--data_out_last    => data_out_last
);

--Stimuli process 
stim_process : process
variable tmp : integer := 10000;

 
begin 
    
     if tmp < 10500  then 
        data_in_ready <= '1';
        input_I <= std_logic_vector(to_signed(tmp,32)) ;
        input_Q <= std_logic_vector(to_signed(tmp+10,32)) ;
        data_in_valid  <= '1' ;    
        tmp := tmp + 10 ;     
        wait until data_out_ready = '1'; 
--          wait for clk_period ;
      else 
--        wait until data_out_ready = '1'; 
--        data_in_last <= '1';
        data_in_ready <= '0';
        data_in_valid <= '0';
--        wait until data_out_last = '1' ;
        wait for clk_period * 5 ;
        report "End of simulation" ;
        finish ;
end if ;
 

end process ;


end Behavioral;
