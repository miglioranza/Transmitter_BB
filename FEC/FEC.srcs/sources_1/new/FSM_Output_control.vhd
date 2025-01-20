----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/09/2024 11:09:54 AM
-- Design Name: 
-- Module Name: FSM_Output_control - rtl
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM_Output_control is
Port (
clk                   : in STD_LOGIC; 
reset                 : in STD_LOGIC;
sel_FEC_code_rate     : in integer   ;
o_fsm_din             : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0') ;
o_fsm_din_valid       : in STD_LOGIC_VECTOR (3 downto 0);
o_fsm_ready_fifo      : in std_logic := '0';
o_fsm_din_last        : in STD_LOGIC_VECTOR (3 downto 0);
o_fsm_dout            : out std_logic_vector(31 downto 0 ) := (others => '0') ;
o_fsm_dout_valid      : out std_logic ;
o_fsm_ready_core      : out std_logic ;
o_fsm_dout_last       : out std_logic := '0' ;
ofsm_core_finish      : out std_logic := '0' 
 );
end FSM_Output_control;

architecture rtl of FSM_Output_control is

signal data_in_last      : std_logic := '0';
signal data_in_valid     : std_logic := '0';
signal current_code_rate : integer   := 0   ;
signal temp              : std_logic := '0'; 
signal last              : std_logic := '0';
signal test              : std_logic_vector(31 downto 0) := (others => '0');  
signal counter           : std_logic_vector(16 downto 0) := (others => '0');
signal counter1          : std_logic_vector(16 downto 0) := (others => '0');

begin

selected_core : process (clk ,reset ) 
begin 
if reset = '1' then 
    current_code_rate <=  0 ;
    temp <= '0' ;
elsif rising_edge (clk) then 
    temp <= (o_fsm_din_valid(0) or o_fsm_din_valid(1) or o_fsm_din_valid(2) or o_fsm_din_valid(3)) ;
    
    if temp = '1' then 
            o_fsm_dout_valid    <= '1';
        if o_fsm_din_valid(0) = '1'then 
            current_code_rate  <= 0 ;
        elsif o_fsm_din_valid(1) = '1' then 
            current_code_rate  <= 1 ;
        elsif o_fsm_din_valid(2) = '1' then 
            current_code_rate  <= 2 ;
        elsif o_fsm_din_valid(3) = '1' then 
            current_code_rate  <= 3 ;
        else 
            current_code_rate <= current_code_rate  ;
        end if ;
     else 
        o_fsm_dout_valid    <= '0';
        --current_code_rate <= 0 ;
        end if ;
end if ;
end process ;

Output_fsm_control : process( clk, reset)
begin

if reset = '1' then 
o_fsm_ready_core    <= '0';
o_fsm_dout_valid    <= '0';
o_fsm_dout_last     <= '0';
data_in_last        <= '0';
ofsm_core_finish <= '0';          
o_fsm_dout           <= (others => '0') ;  
elsif rising_edge (clk) then
  o_fsm_ready_core    <= '1';

if temp = '1'   and (o_fsm_din_last(current_code_rate ) = '0' or o_fsm_din_last(current_code_rate ) = '1')  then 
   
    o_fsm_dout           <= o_fsm_din ;  
    o_fsm_dout_valid     <= '1';
    o_fsm_dout_last      <= '0';
    ofsm_core_finish     <= '0';
    counter              <= counter  +  x"01" ;   
elsif  temp = '0'  and o_fsm_din_last(current_code_rate ) = '1' then  
--    o_fsm_dout           <= o_fsm_din ;  
    o_fsm_dout_valid     <= '0';
    o_fsm_dout_last      <= '1';
    ofsm_core_finish     <= '1';
    counter <= (others => '0') ;
    else 
    o_fsm_dout_valid     <= '0';
    o_fsm_dout_last      <= '0';
    ofsm_core_finish     <= '0';   
end if ;

  end if ;
end process ; 
end rtl;
