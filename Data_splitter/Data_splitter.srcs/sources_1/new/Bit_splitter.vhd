----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2024 03:01:14 PM
-- Design Name: 
-- Module Name: Bit_splitter - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Bit_splitter is
 generic (
 INPUT_BW       : integer := 32 ;
 OUTPUT_BW      : integer := 6 
 );
 Port ( 
 clk            : in std_logic ;
 reset          : in std_logic ;
 mod_type       : in std_logic_vector(2 downto 0) ;
 data_in_valid  : in std_logic;
 data_in        : in std_logic_vector(INPUT_BW-1 downto 0 ) ;
 data_out_valid  : out std_logic ;
-- data_out       : out std_logic_vector(OUTPUT_BW-1 downto 0) := (others => '0');
 output         : out std_logic_vector(5 downto 0) := (others => '0');
 data_last      : out std_logic 
 );
 end Bit_splitter;


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


architecture rtl of Bit_splitter is

signal  bpm      : integer           := -1;       --bits per modulation  
signal sincro    : std_logic         := '0' ; --Sincronization between the input and output 
signal done      : std_logic         := '0' ;  --Determines the end of the data output procedure 
signal index     : integer := 0 ;  --index for giving out the output
signal complete  : std_logic         := '0' ; 
type temp_out is array (0 to INPUT_BW - 1) of std_logic_vector(OUTPUT_BW - 1  downto 0 ) ; 
--signal output : temp_out :=( others =>(others => '0')); --Copy the input values in tamporary array 

begin

process(clk ,reset,mod_type) 

variable temp       : integer := 0  ;  
variable temp_int   : integer := 0 ;
variable i          : integer := 0 ;
begin

if reset = '1'then 

    output <= (others => '0');
    data_out_valid <= '0';
    data_last  <= '0' ;

elsif rising_edge (clk) then

    
--    if data_in_valid = '1' and sincro = '0' then
    if data_in_valid = '1'  then
    
        case mod_type is 
        
            when "000" =>  --BPSK  
                if i < (INPUT_BW -1 ) then 
                     output <=  "00000" &  data_in(i) ; --Correct way for adding zeros 
                elsif i =  (INPUT_BW -1 ) then 
                    output <=  "00000" &  data_in(i) ;
                    done  <= '1' ;     
                end if ;
                i := i + 1 ;
            when "001" => --QPSK 
                if i < (INPUT_BW /2) - 1   then
                     output <=  "0000" & data_in((i+1)*2-1  downto i*2)  ;
                 elsif i = (INPUT_BW /2) - 1  then
                     output <=  "0000" & data_in((i+1)*2-1  downto i*2)  ;
                     done  <= '1' ;        
                end if  ;
                  i := i + 1 ;
            
            when ("011" or "010") => -- 16-APSK/16-QAM 
                if i <((INPUT_BW /4) - 1) then
                    output <=  "00" & data_in((i+1)*4-1  downto i*4)  ;
                 elsif i = ((INPUT_BW /4) - 1) then 
                     output <=  "00" & data_in((i+1)*4-1  downto i*4)  ;
                     done  <= '1' ;
                end if ;
                i := i + 1 ;
            bpm <= 4;  
            
            when ("101" or "100") => -- 32-APSK/32-QAM 

                if i <= 5 then 
                    output <= "0" & data_in((i+1)*5-1  downto i*5) ;
                elsif i=6 then  
                    output <=   "0000" & data_in(31 downto 30); 
                    done  <= '1' ;  
                end if ;
                i := i + 1 ;
            
            when ("110" or "111") => -- 64-APSK/64-QAM 
                
                if i <= 4 then 
                    output <= data_in((i+1)*6-1  downto i*6) ;  
                elsif i=5 then 
                    output <=   "0000" & data_in(31 downto 30);   
                    done  <= '1' ;
                end if ;
                i := i + 1 ;
            
            when others =>
                output <= (others => '0');
                bpm <= -1 ;
                done  <= '1' ;
            end case ;
            
           
            if done = '1'then 
                data_out_valid<= '0';                    
                data_last <= '1';
                i := 0 ;
                done  <= '0' ;
            else 
                data_last <= '0';
                data_out_valid<= '1';
                i := i ;
            end if ;

--   
     else    
     data_out_valid<= '0';                    
     end if ;   
              
end if ;
       
end process ;

end rtl;
