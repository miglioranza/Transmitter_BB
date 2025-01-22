----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2024 11:56:42 AM
-- Design Name: 
-- Module Name: Encoder_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;
use std.env.finish;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Encoder_tb is
--  Port ( );
end Encoder_tb;

architecture Behavioral of Encoder_tb is


--DUT 
component Encoder 

port (
 ldpc_core_clk          : in std_logic ;
 clk                    : in std_logic ;
 reset                  : in std_logic ;
 data_in                : in std_logic_vector(31 downto 0) ; 
 data_in_valid          : in std_logic ;
 din_ready_ifsm2enc     : in std_logic ;  
 data_in_last           : in std_logic ; 
 sel_FEC_code_rate      : in std_logic_vector( 1 downto 0)   ;
 data_out_ready         : out std_logic_vector(3 downto 0) := (others => '0');   --Encoder ready to receive data in input                   
 data_out               : out std_logic_vector(31 downto 0) ;
 data_out_valid         : out std_logic ;
 data_out_last          : out std_logic 

);
end component ;


--Clock periods
constant clk_period         : time      := 10 ns ;      --System frequency     --> 100 MHz 
constant clk_core_period    : time      := 1.6666 ns ;  --LDPC cores frequency --> 300 MHz
signal ldpc_core_clk        : std_logic := '0';
signal clk                  : std_logic := '0';
signal reset                : std_logic := '0';

--Encoder signals 
signal data_in              : std_logic_vector(31 downto 0) := (others =>'0');
signal selected_cr          : integer   := 0 ;
signal data_in_valid        : std_logic := '0';
signal data_in_ready        : std_logic := '0';
signal data_in_last         : std_logic := '0';
signal data_out             : std_logic_vector(31 downto 0) := (others =>'0');
signal data_out_valid       : std_logic := '0';
signal data_out_ready       : std_logic_vector(3 downto 0) := (others =>'0');
signal sel_FEC_code_rate    : std_logic_vector(1 downto 0) := (others =>'0');
signal data_in_ready_core   : std_logic := '0';
signal out_last             : std_logic := '0'; 
signal finish_encoding      : std_logic := '0' ;
signal temp                 : integer   := 0 ;
begin

--Clock generation 

--System clock --> 200 MHz 
clk           <= not clk  after clk_period /2 ;
--LDPC core clock --> 300 MHz (maximum generatable clock frequency from Xilinx board ) 
ldpc_core_clk <= not ldpc_core_clk after clk_core_period/2 ;
--Reset generation
--reset_n         <= '0', '1' after 50 ns  ; 
reset           <= '1', '0' after 5 ns ; 



dut : Encoder 

Port map (
    ldpc_core_clk       => ldpc_core_clk ,
    clk                 => clk,
    reset               => reset,
    data_in             => data_in,
    data_in_valid       => data_in_valid ,
    din_ready_ifsm2enc  => data_in_ready_core , 
    data_out_ready      => data_out_ready,
    data_in_last        => data_in_last,
    data_out            => data_out ,
    data_out_valid      => data_out_valid,
    data_out_last       => out_last ,
    sel_FEC_code_rate   => sel_FEC_code_rate 
);

select_code_rate : process 
begin 

sel_FEC_code_rate <= "10" ; 
selected_cr <= 2 ;
wait until temp = 100 ;
sel_FEC_code_rate <= "11" ;
selected_cr <= 3 ;
wait until temp = 200 ;
sel_FEC_code_rate <= "01" ;
selected_cr <= 1;
wait until temp = 300 ;
sel_FEC_code_rate <= "00" ;
selected_cr <= 0 ;
wait until out_last = '1'and data_out_valid = '0' ;
wait ;
end process ;

stimuli_generation : process
begin 

wait until reset = '0';
data_in_ready <= '1';
while temp < 400 loop 
if data_out_ready(selected_cr)  = '1' then
data_in_valid      <= '1';
data_in  <= std_logic_vector(to_unsigned((temp + 1 ) ,data_in'length )) ;
temp <= temp  + 1 ;  
wait for clk_period *2     ;
else 
----data_in_valid      <= '0';
wait until clk'event and clk = '1'; -- Wait for the next clock cycle
end if ;
end loop ;
if temp = 400 then 
--    data_in_valid <= '0';
    data_in_last       <= '1' ;
  
end if ;
wait until out_last = '1'and data_out_valid = '0' ;
            data_in_valid <= '0';
            report "End of simulation" ;
            wait for clk_period ;
            finish ;  
end process ;




--Stimuli_process : process (clk ,reset ) 
----    variable tmp : integer := 10 ;
----    variable current_code_rate : integer := 0 ;
--begin 
--report "Simulation start" ;
--    if reset = '1' then 
----        data_in_valid      <= '0';
--        data_in_last       <= '0' ;
--    elsif rising_edge (clk) then  
--            data_in_ready <= '1';
----    if data_out_ready(sel_FEC_code_rate )  = '1' then
----        data_in_valid      <= '1';
----        data_in <= std_logic_vector(to_unsigned((temp + 1 ) ,data_in'length )) ; 
----        temp <= temp  + 1 ;
--       if temp < 100 then 
--         sel_FEC_code_rate <= 0 ; 
----         current_code_rate := 0 ; 
--       elsif temp >= 100  and temp < 200  then
--         sel_FEC_code_rate <= 1 ; 
----         current_code_rate := 1 ; 
         
--       elsif  temp >= 200 and temp < 300 then 
--               sel_FEC_code_rate  <= 3 ;
----               current_code_rate  := 3 ;
--       elsif temp >= 400 then
--                data_in_last       <= '1' ;
----                data_in_valid      <= '0';
--                    if out_last = '1'and data_out_valid = '0'then
----                        data_in_valid      <= '0';        
--                        report "End of simulation" ;
--                        finish ;
--                    end if ;        
----       end if ;
       
----      tmp := tmp + 1 ;
----              elsif data_out_ready(current_code_rate)  = '0' then
----                data_in_valid      <= '0';
--       end if ;
--   end if ;          
--end process ;  
 

end Behavioral;
