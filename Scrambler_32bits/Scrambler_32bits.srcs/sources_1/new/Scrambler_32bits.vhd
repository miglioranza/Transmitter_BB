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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

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
            clk             : in  std_logic;
            rst             : in  std_logic;
            data_in         : in  std_logic_vector(32 downto 1);
            data_in_valid   : in  std_logic;
            data_in_last    : in  std_logic;
            seed            : in  std_logic_vector(30 downto 0);
            control_enable  : in  std_logic;
            data_out        : out std_logic_vector(32 downto 1);
            data_out_valid  : out std_logic;
            data_out_last   : out std_logic
 
  );
end Scrambler_32bits;

architecture Behavioral of Scrambler_32bits is

signal tmp_seed : std_logic_vector(30 downto 0) := (others => '1' );  -- 31-bit LFSR
signal feedback  : std_logic := '0';   --XOR feedback   

begin

    process(clk,rst)
        variable tmp_xor      : std_logic := '0';
        variable k 	          : integer := 0;
    begin         
        if rst =  '1' then 
         data_out       <= (others => '0' ) ;
         data_out_valid <= '0' ;
         tmp_seed       <= (others => '1' ) ; 
        elsif rising_edge(clk) then
            if control_enable = '1'then 
               tmp_seed <= seed ;
            else 
               tmp_seed <= tmp_seed  ;
            end if ;            
             data_out_last <= data_in_last ;
            if  data_in_valid = '1' then
                feedback       <= tmp_seed(30) xor tmp_seed(27) ;        
                tmp_seed       <=  tmp_seed(29 downto 0) &  feedback ;  
                data_out       <= data_in xor ("0" & tmp_seed);  -- XOR input data with LFSR output (32 bits)
                data_out_valid <= '1' ;                 
            else                 
                data_out_valid <= '0' ;
                data_out <= (others => '0') ;
            end if ;       
        end if ;   
    end process ;

end Behavioral;








