----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/21/2024 09:14:48 AM
-- Design Name: 
-- Module Name: Mapper_Splitter - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mapper_Splitter is
 generic (
 INPUT_BW       : integer := 32 ;
 OUTPUT_BW      : integer := 6 
 );
 Port ( 
 clk            : in std_logic ;
 reset          : in std_logic ;
 mod_type       : in std_logic_vector(2 downto 0) ;
 control_ready  : in std_logic;
 data_in        : in std_logic_vector(INPUT_BW-1 downto 0 ) ;
 data_valid     : out std_logic ;
 data_out       : out std_logic_vector(OUTPUT_BW-1 downto 0) 
 );
end Mapper_Splitter;

----------------------------------------------------------------
-- Modulation types
----------------------------------------------------------------

--BPSK      :  000 -> 0
--QPSK      :  001 -> 1
--16-APSK   :  010 -> 2 
--16-QAM    :  011 -> 3
--32-APSK   :  100 -> 4
--32-QAM    :  101 -> 5
--64-APSK   :  110 -> 6
--64-QAM    :  111 -> 7

-----------------------------------------------------------------

architecture Behavioral of Mapper_Splitter is

signal data_input   : std_logic_vector(INPUT_BW-1 downto 0) := (others => '0') ;
signal temp_out     : std_logic_vector(OUTPUT_BW-1 downto 0) := (others => '0') ;
signal index        : integer  ;
signal  bpm         : integer := 0; --bits per modulation  

begin

process(clk ,reset,mod_type) 
variable temp       : integer ;
variable i          : integer := 0 ;
variable reminder   : integer  ;


begin 
    case mod_type is 
          when "000" =>  --BPSK  
            bpm <= 1 ;
          when "001" => --QPSK 
            bpm <= 2 ;
          when ("011" or "010") => -- 16-APSK/16-QAM
            bpm <= 4 ;
          when ("101" or "100") => -- 32-APSK/32-QAM
            bpm <= 5 ;       
          when ("110" or "111") => -- 64-APSK/64-QAM
            bpm <= 6 ;            
          when others => 
            bpm <= 0 ;
     end case ;
    temp := (INPUT_BW + 1)/ bpm;        
    index <= OUTPUT_BW - bpm ;  
    data_valid <= '0' ;
    if bpm /= 0 then
        reminder := (INPUT_BW) mod (bpm) ;
    else
        reminder := 0 ;      
    end if ;
    
    data_valid <= '0' ;
    
    if reset = '1' then
        data_valid <= '0' ;
        data_out <= (others => '0') ;
    elsif rising_edge(clk) then 
        if control_ready = '1' then    
            temp_out <= (others => '0');   
--                 if (i <  temp ) then             
--                    temp_out(OUTPUT_BW-1 downto index) <= data_in( INPUT_BW - (i * index) -1 downto INPUT_BW - ((i+1) * index))  ; --To be corrected  
--                    i:= i + 1 ; 
--                 else      
--                    if  reminder = 0 then           
--                        temp_out(OUTPUT_BW-1 downto index) <= data_in(INPUT_BW - (i * index) - 1 downto 0) ;
--                    else 
--                        temp_out(OUTPUT_BW-1 downto OUTPUT_BW - reminder ) <= data_in(INPUT_BW - (i * index) - 1  downto 0) ;
--                    end if ; 
--                        i:= 0 ;                 
--                 end if ;
                    data_valid <= '1' ;
                    data_out <= temp_out ; 
         end if ;
    end if ;
end process ;

end Behavioral;
