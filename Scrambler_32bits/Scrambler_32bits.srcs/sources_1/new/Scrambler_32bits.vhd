----------------------------------------------------------------------------------
-- Company: IHP
-- Engineer: Nicola Miglioranza
-- 
-- Create Date: 06/03/2024 12:21:55 PM
-- Design Name: 
-- Module Name: Scrambler_32bits - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: 32 bits parametric Scrambler 
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

entity Scrambler_32bits is
  generic(
  POLY_DEG : integer := 32 ; --Polynomial degree 
  DATA_DIM : integer := 32 ; -- Bitwidth of input data 
  poly     : std_logic_vector(31 downto 0)     :=  "10010000000000000000000000000001"  --PRBS31 = x31 + x28 + 1  primitive_polynomial_GF2
  );
  Port ( 
         clk        	: in  std_logic  := '0';
         rst        	: in  std_logic  := '0';
         data_in       	: in  std_logic_vector(31 downto 0) := (others => '0');
         data_out      	: out std_logic_vector(31 downto 0) := (others => '0');
         seed 		: in std_logic_vector(31 downto 0);
         data_valid  	: out std_logic    := '0'; 
         data_ready   	: out  std_logic   := '0';
         control_enable : in  std_logic    := '0' --signal from control unit 
 
  );
end Scrambler_32bits;

architecture Behavioral of Scrambler_32bits is
begin

    process(clk,rst,control_enable)
        variable tmp_xor  : std_logic;
        variable k 	  : integer ;
        variable tmp_seed : std_logic_vector(31 downto 0);
    begin 
        if rst =  '1' then 
         data_out <= (others => '0' ) ;
         data_ready <= '0';  
         data_valid <= '0' ;
        elsif rising_edge(clk) then
            if  control_enable= '1' then 
            tmp_seed := seed ;
               for i in 0 to DATA_DIM-1 loop 
                k := POLY_DEG -2;  
                tmp_xor := tmp_seed(POLY_DEG-1) ;
                    while  k > 0   loop                 
                        if poly(k) = '1' then
                        tmp_xor := tmp_xor xor tmp_seed(k); --xor feedback calculation
                        end if ;
                       k:= k - 1 ;
                    end loop ;
                     tmp_seed :=  tmp_xor & tmp_seed(POLY_DEG-1 downto 1)  ; --shifting operation 
                     data_out(i) <=  tmp_xor xor data_in(i) ; 
               end loop ;
                 data_ready <= '1';
                 data_valid <= '1' ;
            else    
               data_ready <= '0';   
               data_valid <= '0' ;
            end if ; 
        end if ;
    end process ;
end Behavioral;








