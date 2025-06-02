----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2025 02:51:34 PM
-- Design Name: 
-- Module Name: MUX - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX is
 Port (
        -- Signals from Control Unit
        I_out             : in  std_logic_vector(11 downto 0);
        Q_out             : in  std_logic_vector(11 downto 0);
        data_out_valid    : in  std_logic;
        ready_out_CU      : out std_logic ;

        -- Signals from mapper 
        dpd_I_OUT         : in  std_logic_vector(11 downto 0);
        dpd_Q_OUT         : in  std_logic_vector(11 downto 0);
        dpd_valid         : in  std_logic;
        ready_out_mapper  : out std_logic ;
        -- Select Signal
        select_signal  : in  std_logic;
        -- Ready signal 
        ready_in       : in  std_logic;
 
        -- MUX Output
        mux_I          : out std_logic_vector(11 downto 0);
        mux_Q          : out std_logic_vector(11 downto 0);
        mux_valid      : out std_logic
    );
    end MUX;

architecture Behavioral of MUX is

begin
   process(I_out, Q_out, data_out_valid, dpd_I_OUT, dpd_Q_OUT, dpd_valid, select_signal, ready_in )
    begin
        if select_signal = '0' then
            mux_I     <= I_out;
            mux_Q     <= Q_out;
            mux_valid <= data_out_valid;
            ready_out_CU <= ready_in ;
            ready_out_mapper <= '0';
        else
            mux_I     <= dpd_I_OUT;
            mux_Q     <= dpd_Q_OUT;
            mux_valid <= dpd_valid;
            ready_out_CU <= '0';
            ready_out_mapper  <= ready_in ;
        end if;
    end process;

end Behavioral;
