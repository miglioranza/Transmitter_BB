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
                     clk             : in  std_logic;
            rst             : in  std_logic;
            data_in         : in  std_logic_vector(31 downto 0);
            data_in_valid   : in  std_logic;
            data_in_ready   : in  std_logic;
            data_in_last    : in  std_logic;
            seed            : in  std_logic_vector(31 downto 1);
            control_enable  : in std_logic;
            data_out        : out std_logic_vector(32 downto 1);
            data_out_valid  : out std_logic;
            data_out_last   : out std_logic;
            data_out_ready  : out std_logic 
 
  );
end Scrambler_32bits;

architecture Behavioral of Scrambler_32bits is
signal tmp_seed : std_logic_vector(30 downto 0) := (others => '1' );  -- 31-bit LFSR
signal scrambled_data : std_logic_vector(31 downto 0) := (others => '0'); -- Scrambled output
signal feedback  : std_logic := '0';   --XOR feedback   
signal next_seed      : STD_LOGIC_VECTOR(30 downto 0); -- Next LFSR state
signal busy :std_logic := '0';
begin
--  feedback <= tmp_seed(30) xor tmp_seed(27) ;        
--  tmp_seed <=  tmp_seed(29 downto 0) &  feedback ;  
    
    process(clk,rst,control_enable)
        variable tmp_xor  : std_logic := '0';
        variable k 	  : integer := 0;
      
    begin         
        if rst =  '1' then 
         data_out       <= (others => '0' ) ;
         data_out_ready <= '0';  
         data_out_valid <= '0' ;
         tmp_seed       <= (others => '1' ) ; 
         busy <= '0';
        elsif rising_edge(clk) then
              
            data_out_ready <= '0'; 
            if control_enable = '1'then 
               tmp_seed <= seed ;
            else 
               tmp_seed <= tmp_seed  ;
            end if ;
            
             feedback <= tmp_seed(30) xor tmp_seed(27) ;        
             next_seed <=  tmp_seed(29 downto 0) &  feedback ;  
             
         if data_in_ready = '1' and  data_in_valid = '1' and busy = '0'then  
            data_out_ready <= '1'; 
            busy <='1';
                  feedback <= tmp_seed(30) xor tmp_seed(27) ;         
                  tmp_seed <=  tmp_seed(29 downto 0) &  feedback   ;        
                    for i in 0 to 31 loop
                         if i < 31 then 
                        scrambled_data(i) <= data_in(i) xor tmp_seed(30 - i);                                           
                    else                 
                        -- For the 32nd bit, use the feedback (next LFSR bit)            
                        scrambled_data(i) <= data_in(i) xor feedback;          
                    end if;            
                     end loop ;  
                      tmp_seed          <= next_seed ;  
                      data_out_valid    <= '1' ;
                      data_out          <= scrambled_data ;                    
--               for i in 1 to DATA_DIM loop 
--                k := POLY_DEG-1;  
--                tmp_xor := '0';
--                   for k in 1 to POLY_DEG -1      loop 
--                      if poly(POLY_DEG - k) = '1' then
----                        tmp_xor := tmp_xor xor tmp_seed(k); --xor feedback calculation
--                           tmp_xor := tmp_xor xor tmp_seed(POLY_DEG - k) ;
--                        end if ;
                   
--                   end loop ;

--                     tmp_seed    <=  tmp_seed(30 downto 1) &  tmp_xor   ; --shifting operation 
--                     data_out(i) <=  tmp_xor xor data_in(i) ; 
--               end loop ;
            elsif data_in_ready = '1' and  data_in_valid = '1' and busy = '1'then     
                  busy <= '0';
                  data_out_valid <= '0' ;
            else    
              busy <='0'; 
               if data_in_last = '1' then 
                 data_out_last <= '1';
               else 
                 data_out_last <= '0';
               end if ; 
            data_out_valid <= '0' ;
            data_out_ready <= '0';                      
            end if ;
        
        
        
        end if ;   
    end process ;
end Behavioral;








