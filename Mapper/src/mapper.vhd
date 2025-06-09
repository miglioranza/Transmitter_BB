-----------------------------------------------------------------------------------------------------------------------------------
-- Mapper for 8 modulation schemes: BPSK, QPSK, 16APSK, 32APSK, 64APSK, 16QAM, 32QAM and 64QAM
-- Mapper is reconfigurable, i.e., modulation scheme can be selected with input control signal
-- The code is based on calculated coefficients for the constellation diagram of each modulation (described in a separate document)
-----------------------------------------------------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--use work.type_package.all;

entity mapper is
   port    
   (
          -- Clock, reset
          clk               : in  std_logic                       := '0';   
          reset             : in  std_logic                       := '0';   -- active on low level
                
          -- Input ports     
          mod_type          : in  std_logic_vector(2 downto 0)    := (others => '0');   -- selection of modulation scheme (BPSK, QPSK, 16APSK, 32APSK, 64APSK, 16QAM, 32QAM, 64QAM)
          data_in           : in  std_logic_vector(5 downto 0)    := (others => '0');   -- bits are used from LSB to MSB for increasing mod_type (all 6 bits for 64QAM and 64APSK)
          data_in_valid     : in  std_logic                       := '0';               -- indicates that there is input data to be processed (output from previous stage or controller)
          data_in_ready     : in  std_logic                       := '0';    
          end_of_frame      : in  std_logic                       := '0';
          signal_field_en   : in  std_logic                       := '0';   
          pilot_insertion   : in  std_logic                       := '0';  --input port that notify when the pilot insertion has been completed or not 
          -- Output ports      
          i_out             : out std_logic_vector(11 downto 0)   := (others => '0'); -- i output (input for DAC)
          q_out             : out std_logic_vector(11 downto 0)   := (others => '0'); -- q output (input for DAC)  
          data_out_last     : out std_logic                       := '0'  ; 
          last_frame        : out std_logic                       := '0'  ; 
          data_out_ready    : out std_logic                       := '0'  ;
          data_out_valid    : out std_logic                       := '0'  --indicates that processing is finished (data is available at the output)        
   );
end entity mapper;


architecture mapper_arch of mapper is
--Buffer array for storing data because of the synchronizazion  with the DPD filter and data splitter 
type buff_register is array(5 downto 0) of std_logic_vector(5 downto 0) ;
signal buff_reg         : buff_register := (others => (others => '0')) ;     
signal buff_counter     : integer := 0 ;   
begin    
  process(clk, reset )
       variable k, symbol_counter : integer := 0 ;  
       variable input_data   : std_logic_vector(5 downto 0)    := (others => '0');  
      begin
  
    if reset = '1' then
      data_out_valid   <= '0';
      i_out        <= (others => '0');
      q_out        <= (others => '0');  
      k := 0 ;
      buff_counter <=  0;  
      buff_reg <= (others => (others => '0')) ;      
    elsif rising_edge(clk) then
        
  data_out_valid <= '0';
  data_out_last  <= '0' ;   

	 if data_in_ready =  '1'  and (data_in_valid = '1' or buff_counter > 0 ) and  pilot_insertion = '0'then 
--	   data_out_valid <= '0';
	   if data_in_valid = '1' then 
	      input_data := data_in ;
	   
	   elsif  buff_counter > 0 then
	      input_data := buff_reg(k) ;
	      buff_counter <= buff_counter - 1 ;
	      k := k + 1 ;   
	   end if ;
        case mod_type is
		
          when "000" => --bpsk
            if input_data(0) = '1' then
              i_out   <= "011111111111";   -- 2047
              q_out   <= "000000000000";
            else
              i_out   <= "100000000001";   -- -2047
              q_out   <= "000000000000";              
            end if;
			
            
          when "001" => --qpsk
            if input_data(1 downto 0) = "00" then
              i_out   <= "010110100111";            -- 1447
              q_out   <= "010110100111";            -- -1447
            elsif input_data(1 downto 0) = "01" then
              i_out   <= "101001011001";            -- -1447
              q_out   <= "010110100111";            -- 1447 
            elsif input_data(1 downto 0) = "10" then
              i_out   <= "101001011001";            -- -1447
              q_out   <= "101001011001";            -- -1447  
            else
              i_out   <= "010110100111";            -- 1447
              q_out   <= "101001011001";            -- 1447    
            end if;      
			
                
          when "010" => --qam16
            if input_data(3 downto 0) = "0000" then   --1
              i_out   <= "100000000001";            -- -2047
              q_out   <= "011111111111";            -- 2047
            elsif input_data(3 downto 0) = "0001" then --2
              i_out   <= "100000000001";            -- -2047
              q_out   <= "001010101011";            -- 683 
            elsif input_data(3 downto 0) = "0010" then --3
              i_out   <= "100000000001";            -- -2047
              q_out   <= "100000000001";            -- -2047 
			elsif input_data(3 downto 0) = "0011" then --4
              i_out   <= "100000000001";            -- -2047
              q_out   <= "110101010101";            -- -683 
            elsif input_data(3 downto 0) = "0100" then --5
              i_out   <= "110101010101";            -- -683
              q_out   <= "100000000000";            -- 1340 
			elsif input_data(3 downto 0) = "0101" then --6
              i_out   <= "110101010101";            -- -683
              q_out   <= "001010101011";            -- 683 
            elsif input_data(3 downto 0) = "0110" then --7
              i_out   <= "110101010101";            -- -683
              q_out   <= "100000000001";            -- -2047 
			elsif input_data(3 downto 0) = "0111" then --8
              i_out   <= "110101010101";            -- -683
              q_out   <= "110101010101";            -- -683
			elsif input_data(3 downto 0) = "1000" then --9
              i_out   <= "011111111111";            -- 2047
              q_out   <= "011111111111";            -- 2047
			elsif input_data(3 downto 0) = "1001" then --10
              i_out   <= "011111111111";            -- 2047
              q_out   <= "001010101011";            -- 683 
			elsif input_data(3 downto 0) = "1010" then --11
              i_out   <= "011111111111";            -- 2047
              q_out   <= "100000000001";            -- -2047 
			elsif input_data(3 downto 0) = "1011" then --12
              i_out   <= "011111111111";            -- 2047
              q_out   <= "110101010101";            -- -683 
			elsif input_data(3 downto 0) = "1100" then --13
              i_out   <= "001010101011";            -- 683
              q_out   <= "011111111111";            -- 2047 
			elsif input_data(3 downto 0) = "1101" then --14
              i_out   <= "001010101011";            -- 683
              q_out   <= "001010101011";            -- 683
			elsif input_data(3 downto 0) = "1110" then --15
              i_out   <= "001010101011";            -- 683
              q_out   <= "100000000001";            -- -2047
            else
              i_out   <= "001010101011";            -- 683
              q_out   <= "110101010101";            -- -683  
            end if;    
          
		  
		  when "011" => --qam32
            if input_data(4 downto 0) = "00000" then    --1
              i_out   <= "101100110011";            -- -1229
              q_out   <= "011111111111";            -- 2047
            elsif input_data(4 downto 0) = "00001" then --2
              i_out   <= "111001100110";            -- -410
              q_out   <= "011111111111";            -- 2047
            elsif input_data(4 downto 0) = "00010" then --3
              i_out   <= "101100110011";            -- -1229
              q_out   <= "100000000001";            -- -2047  
			elsif input_data(4 downto 0) = "00011" then --4
              i_out   <= "111001100110";            -- -410
              q_out   <= "100000000001";            -- -2047 
            elsif input_data(4 downto 0) = "00100" then --5
              i_out   <= "100000000001";            -- -2047
              q_out   <= "010011001101";            -- 1229
			elsif input_data(4 downto 0) = "00101" then --6
              i_out   <= "100000000001";            -- -2047
              q_out   <= "000110011010";            -- 410 
            elsif input_data(4 downto 0) = "00110" then --7
              i_out   <= "100000000001";            -- -2047
              q_out   <= "101100110011";            -- -1229 
			elsif input_data(4 downto 0) = "00111" then --8
              i_out   <= "100000000001";            -- -2047
              q_out   <= "111001100110";            -- -410 
			elsif input_data(4 downto 0) = "01000" then --9
              i_out   <= "111001100110";            -- -410
              q_out   <= "010011001101";            -- 1229 
			elsif input_data(4 downto 0) = "01001" then --10
              i_out   <= "111001100110";            -- -410
              q_out   <= "000110011010";            -- 410 
			elsif input_data(4 downto 0) = "01010" then --11
              i_out   <= "111001100110";            -- -410
              q_out   <= "101100110011";            -- -1229 
			elsif input_data(4 downto 0) = "01011" then --12
              i_out   <= "111001100110";            -- -410
              q_out   <= "111001100110";            -- -410 
			elsif input_data(4 downto 0) = "01100" then --13
              i_out   <= "101100110011";            -- -1229
              q_out   <= "010011001101";            -- 1229 
			elsif input_data(4 downto 0) = "01101" then --14
              i_out   <= "101100110011";            -- -1229
              q_out   <= "000110011010";            -- 410
			elsif input_data(4 downto 0) = "01110" then --15
              i_out   <= "101100110011";            -- -1229
              q_out   <= "101100110011";            -- -1229 
			elsif input_data(4 downto 0) = "01111" then --16
              i_out   <= "101100110011";            -- -1229
              q_out   <= "111001100110";            -- -410 
            elsif input_data(4 downto 0) = "10000" then --17
              i_out   <= "010011001101";            -- 1229
              q_out   <= "011111111111";            -- 2047 
			elsif input_data(4 downto 0) = "10001" then --18
              i_out   <= "000110011010";            -- 410
              q_out   <= "011111111111";            -- 2047 
            elsif input_data(4 downto 0) = "10010" then --19
              i_out   <= "010011001101";            -- 1229
              q_out   <= "100000000001";            -- -2047 
			elsif input_data(4 downto 0) = "10011" then --20
              i_out   <= "000110011010";            -- 410
              q_out   <= "100000000001";            -- -2047 
            elsif input_data(4 downto 0) = "10100" then --22
              i_out   <= "011111111111";            -- 2047
              q_out   <= "010011001101";            -- 1229 
			elsif input_data(4 downto 0) = "10101" then --22
              i_out   <= "011111111111";            -- 2047
              q_out   <= "000110011010";            -- 410 
			elsif input_data(4 downto 0) = "10110" then --23
              i_out   <= "011111111111";            -- 2047
              q_out   <= "101100110011";            -- -1229 
			elsif input_data(4 downto 0) = "10111" then --24
              i_out   <= "011111111111";            -- 2047
              q_out   <= "111001100110";            -- -410 
			elsif input_data(4 downto 0) = "11000" then --25
              i_out   <= "000110011010";            -- 410
              q_out   <= "010011001101";            -- 1229 
			elsif input_data(4 downto 0) = "11001" then --26
              i_out   <= "000110011010";            -- 410
              q_out   <= "000110011010";            -- 410
			elsif input_data(4 downto 0) = "11010" then --27
              i_out   <= "000110011010";            -- 410
              q_out   <= "101100110011";            -- -1229 
			elsif input_data(4 downto 0) = "11011" then --28
              i_out   <= "000110011010";            -- 410
              q_out   <= "111001100110";            -- -410
			elsif input_data(4 downto 0) = "11100" then --29
              i_out   <= "010011001101";            -- 1229
              q_out   <= "010011001101";            -- 1229
            elsif input_data(4 downto 0) = "11101" then --30
              i_out   <= "010011001101";            -- 1229
              q_out   <= "000110011010";            -- 410 
			elsif input_data(4 downto 0) = "11110" then --31
              i_out   <= "010011001101";            -- 1229
              q_out   <= "101100110011";            -- -1229 
			else
              i_out   <= "010011001101";            -- 1229
              q_out   <= "111001100110";            -- -410 			  
            end if; 
			
					
		  when "100" => --qam64
            if input_data(5 downto 0) = "000000" then     -- 1(first point)
              i_out   <= "100000000001";            -- -2047
              q_out   <= "011111111111";            -- 2047
            elsif input_data(5 downto 0) = "000001" then  -- 2
              i_out   <= "100000000001";            -- 1340
              q_out   <= "010110110111";            -- -1340 
            elsif input_data(5 downto 0) = "000010" then  -- 3
              i_out   <= "100000000001";            -- -1340
              q_out   <= "000100100101";            -- 1340  
			elsif input_data(5 downto 0) = "000011" then  -- 4
              i_out   <= "100000000001";            -- 1340
              q_out   <= "001101101110";            -- -1340 
            elsif input_data(5 downto 0) = "000100" then  -- 5
              i_out   <= "100000000001";            -- -1340
              q_out   <= "100000000001";            -- 1340 
			elsif input_data(5 downto 0) = "000101" then  -- 6
              i_out   <= "100000000001";            -- 1340
              q_out   <= "101001001001";            -- -1340 
            elsif input_data(5 downto 0) = "000110" then  -- 7
              i_out   <= "100000000001";            -- -1340
              q_out   <= "111011011011";            -- 1340 
			elsif input_data(5 downto 0) = "000111" then  -- 8
              i_out   <= "100000000001";            -- -1340
              q_out   <= "110010010010";            -- 1340 
			elsif input_data(5 downto 0) = "001000" then  -- 9
              i_out   <= "101001001001";            -- -1340
              q_out   <= "011111111111";            -- 1340 
			elsif input_data(5 downto 0) = "001001" then  -- 10
              i_out   <= "101001001001";            -- -1340
              q_out   <= "010110110111";            -- 1340 
			elsif input_data(5 downto 0) = "001010" then  -- 11
              i_out   <= "101001001001";            -- -1340
              q_out   <= "000100100101";            -- 1340 
			elsif input_data(3 downto 0) = "001011" then  -- 12
              i_out   <= "101001001001";            -- -1340
              q_out   <= "001101101110";            -- 1340 
			elsif input_data(5 downto 0) = "001100" then  -- 13
              i_out   <= "101001001001";            -- -1340
              q_out   <= "100000000001";            -- 1340 
			elsif input_data(5 downto 0) = "001101" then  -- 14
              i_out   <= "101001001001";            -- -1340
              q_out   <= "101001001001";            -- 1340 
			elsif input_data(5 downto 0) = "001110" then  -- 15
              i_out   <= "101001001001";            -- -1340
              q_out   <= "111011011011";            -- 1340 
            elsif input_data(5 downto 0) = "001111" then  -- 16
              i_out   <= "101001001001";            -- 1340
              q_out   <= "110010010010";            -- 1340  
			elsif input_data(5 downto 0) = "010000" then  -- 17
              i_out   <= "111011011011";            -- 1340
              q_out   <= "011111111111";            -- -1340 
            elsif input_data(5 downto 0) = "010001" then  -- 18
              i_out   <= "111011011011";            -- -1340
              q_out   <= "010110110111";            -- 1340  
			elsif input_data(5 downto 0) = "010010" then  -- 19
              i_out   <= "111011011011";            -- 1340
              q_out   <= "000100100101";            -- -1340 
            elsif input_data(5 downto 0) = "010011" then  -- 20
              i_out   <= "111011011011";            -- -1340
              q_out   <= "001101101110";            -- 1340 
			elsif input_data(5 downto 0) = "010100" then  -- 21
              i_out   <= "111011011011";            -- 1340
              q_out   <= "100000000001";            -- -1340 
            elsif input_data(5 downto 0) = "010101" then  -- 22
              i_out   <= "111011011011";            -- -1340
              q_out   <= "101001001001";            -- 1340 
			elsif input_data(5 downto 0) = "010110" then  -- 23
              i_out   <= "111011011011";            -- -1340
              q_out   <= "111011011011";            -- 1340 
			elsif input_data(5 downto 0) = "010111" then  -- 24
              i_out   <= "111011011011";            -- -1340
              q_out   <= "110010010010";            -- 1340 
			elsif input_data(5 downto 0) = "011000" then  -- 25
              i_out   <= "110010010010";            -- -1340
              q_out   <= "011111111111";            -- 1340 
			elsif input_data(5 downto 0) = "011001" then  -- 26
              i_out   <= "110010010010";            -- -1340
              q_out   <= "010110110111";            -- 1340 
			elsif input_data(5 downto 0) = "011010" then  -- 27
              i_out   <= "110010010010";            -- -1340
              q_out   <= "000100100101";            -- 1340 
			elsif input_data(5 downto 0) = "011011" then  -- 28
              i_out   <= "110010010010";            -- -1340
              q_out   <= "001101101110";            -- 1340 
			elsif input_data(5 downto 0) = "011100" then  -- 29
              i_out   <= "110010010010";            -- -1340
              q_out   <= "100000000001";            -- 1340 
			elsif input_data(5 downto 0) = "011101" then  -- 30
              i_out   <= "110010010010";            -- -1340
              q_out   <= "101001001001";            -- 1340 
            elsif input_data(5 downto 0) = "011110" then  -- 31
              i_out   <= "110010010010";            -- 1340
              q_out   <= "111011011011";            -- 1340 
			elsif input_data(5 downto 0) = "011111" then  -- 32
              i_out   <= "110010010010";            -- 1340
              q_out   <= "110010010010";            -- 1340 
			elsif input_data(5 downto 0) = "100000" then  -- 33
              i_out   <= "011111111111";            -- -1340
              q_out   <= "011111111111";            -- 1340 
			elsif input_data(5 downto 0) = "100001" then  -- 34
              i_out   <= "011111111111";            -- -1340
              q_out   <= "010110110111";            -- 1340 
			elsif input_data(5 downto 0) = "100010" then  -- 35
              i_out   <= "011111111111";            -- -1340
              q_out   <= "000100100101";            -- 1340 
			elsif input_data(5 downto 0) = "100011" then  -- 36
              i_out   <= "011111111111";            -- -1340
              q_out   <= "001101101110";            -- 1340 
			elsif input_data(5 downto 0) = "100100" then  -- 37
              i_out   <= "011111111111";            -- -1340
              q_out   <= "100000000001";            -- 1340 
            elsif input_data(5 downto 0) = "100101" then  -- 38
              i_out   <= "011111111111";            -- 1340
              q_out   <= "101001001001";            -- 1340 
			elsif input_data(5 downto 0) = "100110" then  -- 39
              i_out   <= "011111111111";            -- 1340
              q_out   <= "111011011011";            -- 1340 
			elsif input_data(5 downto 0) = "100111" then  -- 40
              i_out   <= "011111111111";            -- 1340
              q_out   <= "110010010010";            -- 1340 
			elsif input_data(5 downto 0) = "101000" then  -- 41
              i_out   <= "010110110111";            -- -1340
              q_out   <= "011111111111";            -- 1340 
			elsif input_data(5 downto 0) = "101001" then  -- 42
              i_out   <= "010110110111";            -- -1340
              q_out   <= "010110110111";            -- 1340 
			elsif input_data(5 downto 0) = "101010" then  -- 43
              i_out   <= "010110110111";            -- -1340
              q_out   <= "000100100101";            -- 1340 
			elsif input_data(5 downto 0) = "101011" then  -- 44
              i_out   <= "010110110111";            -- -1340
              q_out   <= "001101101110";            -- 1340 
			elsif input_data(5 downto 0) = "101100" then  -- 45
              i_out   <= "010110110111";            -- -1340
              q_out   <= "100000000001";            -- 1340 
            elsif input_data(5 downto 0) = "101101" then  -- 46
              i_out   <= "010110110111";            -- 1340
              q_out   <= "101001001001";            -- 1340 
			elsif input_data(5 downto 0) = "101110" then  -- 47
              i_out   <= "010110110111";            -- 1340
              q_out   <= "111011011011";            -- 1340 
			elsif input_data(5 downto 0) = "101111" then  -- 48
              i_out   <= "010110110111";            -- 1340
              q_out   <= "110010010010";            -- 1340 
			elsif input_data(5 downto 0) = "110000" then  -- 49
              i_out   <= "000100100101";            -- -1340
              q_out   <= "011111111111";            -- 1340 
			elsif input_data(5 downto 0) = "110001" then  -- 50
              i_out   <= "000100100101";            -- -1340
              q_out   <= "010110110111";            -- 1340 
			elsif input_data(5 downto 0) = "110010" then  -- 51
              i_out   <= "000100100101";            -- -1340
              q_out   <= "000100100101";            -- 1340 
			elsif input_data(5 downto 0) = "110011" then  -- 52
              i_out   <= "000100100101";            -- -1340
              q_out   <= "001101101110";            -- 1340 
			elsif input_data(5 downto 0) = "110100" then  -- 53
              i_out   <= "000100100101";            -- -1340
              q_out   <= "100000000001";            -- 1340 
            elsif input_data(5 downto 0) = "110101" then  -- 54
              i_out   <= "000100100101";            -- 1340
              q_out   <= "101001001001";            -- 1340 
			elsif input_data(5 downto 0) = "110110" then  -- 55
              i_out   <= "000100100101";            -- 1340
              q_out   <= "111011011011";            -- 1340 
			elsif input_data(5 downto 0) = "110111" then  -- 56
              i_out   <= "000100100101";            -- 1340
              q_out   <= "110010010010";            -- 1340	
			elsif input_data(5 downto 0) = "111000" then  -- 57
              i_out   <= "001101101110";            -- -1340
              q_out   <= "011111111111";            -- 1340 
			elsif input_data(5 downto 0) = "111001" then  -- 58
              i_out   <= "001101101110";            -- -1340
              q_out   <= "010110110111";            -- 1340 
			elsif input_data(5 downto 0) = "111010" then  -- 59
              i_out   <= "001101101110";            -- -1340
              q_out   <= "000100100101";            -- 1340 
			elsif input_data(5 downto 0) = "111011" then  -- 60
              i_out   <= "001101101110";            -- -1340
              q_out   <= "001101101110";            -- 1340 
			elsif input_data(5 downto 0) = "111100" then  -- 61
              i_out   <= "001101101110";            -- -1340
              q_out   <= "011111111111";            -- 1340 
            elsif input_data(5 downto 0) = "111101" then  -- 62
              i_out   <= "001101101110";            -- 1340
              q_out   <= "101001001001";            -- 1340 
			elsif input_data(5 downto 0) = "111110" then  -- 63
              i_out   <= "001101101110";            -- 1340
              q_out   <= "111011011011";            -- 1340 
			else
              i_out   <= "001101101110";            -- 1340
              q_out   <= "110010010010";            -- 1340				  
            end if; 
			
			
		  when "101" => --apsk16
            if input_data(3 downto 0) = "0000" then     --1 (first point)
              i_out   <= "000111100010";            -- 482
              q_out   <= "000111100010";            -- 482
            elsif input_data(3 downto 0) = "0001" then  --2
              i_out   <= "111000011110";            -- -482
              q_out   <= "000111100010";            -- 482 
            elsif input_data(3 downto 0) = "0010" then  --3
              i_out   <= "000111100010";            -- 482
              q_out   <= "111000011110";            -- -482  
			elsif input_data(3 downto 0) = "0011" then  --4
              i_out   <= "111000011110";            -- -482
              q_out   <= "111000011110";            -- -482 
            elsif input_data(3 downto 0) = "0100" then  --5
              i_out   <= "011111000010";            -- 1986
              q_out   <= "001000010100";            -- 532 
			elsif input_data(3 downto 0) = "0101" then  --6
              i_out   <= "100000111110";            -- -1986
              q_out   <= "001000010100";            -- 532 
            elsif input_data(3 downto 0) = "0110" then  --7
              i_out   <= "011111000010";            -- 1986
              q_out   <= "110111101100";            -- -532 
			elsif input_data(3 downto 0) = "0111" then  --8
              i_out   <= "100000111110";            -- -1986
              q_out   <= "110111101100";            -- -532 
			elsif input_data(3 downto 0) = "1000" then  --9
              i_out   <= "001000010100";            -- 532
              q_out   <= "011111000010";            -- 1986
			elsif input_data(3 downto 0) = "1001" then  --10
              i_out   <= "110111101100";            -- -532
              q_out   <= "011111000010";            -- 1986 
			elsif input_data(3 downto 0) = "1010" then  --11
              i_out   <= "001000010100";            -- 532
              q_out   <= "100000111110";            -- -1986 
			elsif input_data(3 downto 0) = "1011" then  --12
              i_out   <= "110111101100";            -- -532
              q_out   <= "100000111110";            -- -1986
			elsif input_data(3 downto 0) = "1100" then  --13
              i_out   <= "010110100111";            -- 1447
              q_out   <= "010110100111";            -- 1447 
			elsif input_data(3 downto 0) = "1101" then  --14
              i_out   <= "101001011001";            -- -1447
              q_out   <= "010110100111";            -- 1447 
			elsif input_data(3 downto 0) = "1110" then  --15
              i_out   <= "010110100111";            -- 1447
              q_out   <= "101001011001";            -- -1447
            else
              i_out   <= "101001011001";            -- -1447
              q_out   <= "101001011001";            -- -1447    
            end if; 
			
			
		  when "110" => --apsk32
            if input_data(4 downto 0) = "00000" then    --1 (first point)
              i_out   <= "000100100001";            -- 289
              q_out   <= "000100100001";            -- 289
            elsif input_data(4 downto 0) = "00001" then --2
              i_out   <= "111011011111";            -- -289
              q_out   <= "000100100001";            -- 289 
            elsif input_data(4 downto 0) = "00010" then --3
              i_out   <= "000100100001";            -- 289
              q_out   <= "111011011111";            -- -289  
			elsif input_data(4 downto 0) = "00011" then --4
              i_out   <= "111011011111";            -- -289
              q_out   <= "111011011111";            -- -289 
            elsif input_data(4 downto 0) = "00100" then --5
              i_out   <= "010010100111";            -- 1191
              q_out   <= "000100111111";            -- 319 
			elsif input_data(4 downto 0) = "00101" then --6
              i_out   <= "101101011001";            -- -1191
              q_out   <= "000100111111";            -- 319 
            elsif input_data(4 downto 0) = "00110" then --7
              i_out   <= "010010100111";            -- 1191
              q_out   <= "111011000001";            -- -319 
			elsif input_data(4 downto 0) = "00111" then --8
              i_out   <= "101101011001";            -- -1191
              q_out   <= "111011000001";            -- -319 
			elsif input_data(4 downto 0) = "01000" then --9
              i_out   <= "000100111111";            -- 319
              q_out   <= "010010100111";            -- 1191 
			elsif input_data(4 downto 0) = "01001" then --10
              i_out   <= "111011000001";            -- -319
              q_out   <= "010010100111";            -- 1191
			elsif input_data(4 downto 0) = "01010" then --11
              i_out   <= "000100111111";            -- 319
              q_out   <= "101101011001";            -- -1191
			elsif input_data(4 downto 0) = "01011" then --12
              i_out   <= "111011000001";            -- -319
              q_out   <= "101101011001";            -- -1191
			elsif input_data(4 downto 0) = "01100" then --13
              i_out   <= "001101100100";            -- 868
              q_out   <= "001101100100";            -- 868 
			elsif input_data(4 downto 0) = "01101" then --14
              i_out   <= "110010011100";            -- -868
              q_out   <= "001101100100";            -- 868 
			elsif input_data(4 downto 0) = "01110" then --15
              i_out   <= "001101100100";            -- 868
              q_out   <= "110010011100";            -- -868 
			elsif input_data(4 downto 0) = "01111" then --16
              i_out   <= "110010011100";            -- -868
              q_out   <= "110010011100";            -- -868
            elsif input_data(4 downto 0) = "10000" then --17
              i_out   <= "000110001111";            -- 399
              q_out   <= "011111010110";            -- 2006 
            elsif input_data(4 downto 0) = "10001" then --18
              i_out   <= "111001110001";            -- -399
              q_out   <= "011111010110";            -- 2006 
			elsif input_data(4 downto 0) = "10010" then --19
              i_out   <= "000110001111";            -- 399
              q_out   <= "100000101010";            -- -2006 
            elsif input_data(4 downto 0) = "10011" then --20
              i_out   <= "111001110001";            -- -399
              q_out   <= "100000101010";            -- -2006 
			elsif input_data(4 downto 0) = "10100" then --21
              i_out   <= "010001111010";            -- 1146
              q_out   <= "011010100011";            -- 1690 
            elsif input_data(4 downto 0) = "10101" then --22
              i_out   <= "101110000110";            -- -1146
              q_out   <= "011010100011";            -- 1699 
			elsif input_data(4 downto 0) = "10110" then --23
              i_out   <= "010001111010";            -- 1146
              q_out   <= "100101011101";            -- -1699 
			elsif input_data(4 downto 0) = "10111" then --24
              i_out   <= "101110000110";            -- -1146
              q_out   <= "100101011101";            -- -1699 
			elsif input_data(4 downto 0) = "11000" then --25
              i_out   <= "011111010110";            -- 2006
              q_out   <= "000110001111";            -- 399
			elsif input_data(4 downto 0) = "11001" then --26
              i_out   <= "100000101010";            -- -2006
              q_out   <= "000110001111";            -- 399
			elsif input_data(4 downto 0) = "11010" then --27
              i_out   <= "011111010110";            -- 2006
              q_out   <= "111001110001";            -- -399 
			elsif input_data(4 downto 0) = "11011" then --28
              i_out   <= "100000101010";            -- -2006
              q_out   <= "111001110001";            -- -399
			elsif input_data(4 downto 0) = "11100" then --29
              i_out   <= "011010100011";            -- 1699
              q_out   <= "010001111010";            -- 1146 
			elsif input_data(4 downto 0) = "11101" then --30
              i_out   <= "100101011101";            -- -1699
              q_out   <= "010001111010";            -- 1146
			elsif input_data(4 downto 0) = "11110" then --31
              i_out   <= "011010100011";            -- 1699
              q_out   <= "101110000110";            -- -1146
            else
              i_out   <= "100101011101";            -- -1699
              q_out   <= "101110000110";            -- -1146    
            end if; 
			
			
		  when "111" => --apsk64
            if input_data(5 downto 0) = "000000" then    --1 (first point)
              i_out   <= "000011001111";            -- -1340
              q_out   <= "000011001111";            -- -1340
            elsif input_data(5 downto 0) = "000001" then --2
              i_out   <= "111100110001";            -- 1340
              q_out   <= "000011001111";            -- -1340 
            elsif input_data(5 downto 0) = "000010" then --3
              i_out   <= "000011001111";            -- -1340
              q_out   <= "111100110001";            -- 1340  
			elsif input_data(5 downto 0) = "000011" then --4
              i_out   <= "111100110001";            -- 1340
              q_out   <= "111100110001";            -- -1340 
            elsif input_data(5 downto 0) = "000100" then --5
              i_out   <= "001101010011";            -- -1340
              q_out   <= "000011100100";            -- 1340 
			elsif input_data(5 downto 0) = "000101" then --6
              i_out   <= "110010101101";            -- 1340
              q_out   <= "000011100100";            -- -1340 
            elsif input_data(5 downto 0) = "000110" then --7
              i_out   <= "001101010011";            -- -1340
              q_out   <= "111100011100";            -- 1340 
			elsif input_data(5 downto 0) = "000111" then --8
              i_out   <= "110010101101";            -- -1340
              q_out   <= "111100011100";            -- 1340 
			elsif input_data(5 downto 0) = "001000" then --9
              i_out   <= "000011100100";            -- -1340
              q_out   <= "001101010011";            -- 1340 
			elsif input_data(5 downto 0) = "001001" then --10
              i_out   <= "111100011100";            -- -1340
              q_out   <= "001101010011";            -- 1340 
			elsif input_data(5 downto 0) = "001010" then --11
              i_out   <= "000011100100";            -- -1340
              q_out   <= "110010101101";            -- 1340 
			elsif input_data(5 downto 0) = "001011" then --12
              i_out   <= "111100011100";            -- -1340
              q_out   <= "110010101101";            -- 1340 
			elsif input_data(5 downto 0) = "001100" then --13
              i_out   <= "001001101100";            -- -1340
              q_out   <= "001001101100";            -- 1340 
			elsif input_data(5 downto 0) = "001101" then --14
              i_out   <= "110110010100";            -- -1340
              q_out   <= "001001101100";            -- 1340 
			elsif input_data(5 downto 0) = "001110" then --15
              i_out   <= "001001101100";            -- -1340
              q_out   <= "110110010100";            -- 1340 
			elsif input_data(5 downto 0) = "001111" then --16
              i_out   <= "110110010100";            -- -1340
              q_out   <= "110110010100";            -- 1340 
			elsif input_data(5 downto 0) = "010000" then --17
              i_out   <= "000100011101";            -- -1340
              q_out   <= "010110011001";            -- 1340 
			elsif input_data(5 downto 0) = "010001" then --18
              i_out   <= "111011100011";            -- -1340
              q_out   <= "010110011001";            -- 1340 
			elsif input_data(5 downto 0) = "010010" then --19
              i_out   <= "000100011101";            -- -1340
              q_out   <= "101001100111";            -- 1340 
			elsif input_data(5 downto 0) = "010011" then --20
              i_out   <= "111011100011";            -- -1340
              q_out   <= "101001100111";            -- 1340 
			elsif input_data(5 downto 0) = "010100" then --21
              i_out   <= "001100110011";            -- -1340
              q_out   <= "010010111110";            -- 1340 
			elsif input_data(5 downto 0) = "010101" then --22
              i_out   <= "110011001101";            -- -1340
              q_out   <= "010010111110";            -- 1340 
			elsif input_data(5 downto 0) = "010110" then --23
              i_out   <= "001100110011";            -- -1340
              q_out   <= "101101000010";            -- 1340 
			elsif input_data(5 downto 0) = "010111" then --24
              i_out   <= "110011001101";            -- -1340
              q_out   <= "101101000010";            -- 1340 
			elsif input_data(5 downto 0) = "011000" then --25
              i_out   <= "010110011001";            -- -1340
              q_out   <= "000100011101";            -- 1340 
			elsif input_data(5 downto 0) = "011001" then --26
              i_out   <= "101001100111";            -- -1340
              q_out   <= "000100011101";            -- 1340 
			elsif input_data(5 downto 0) = "011010" then --27
              i_out   <= "010110011001";            -- -1340
              q_out   <= "111011100011";            -- 1340 
			elsif input_data(5 downto 0) = "011011" then --28
              i_out   <= "101001100111";            -- -1340
              q_out   <= "111011100011";            -- 1340 
			elsif input_data(5 downto 0) = "011100" then --29
              i_out   <= "010010111110";            -- -1340
              q_out   <= "001100110011";            -- 1340 
			elsif input_data(5 downto 0) = "011101" then --30
              i_out   <= "101101000010";            -- -1340
              q_out   <= "001100110011";            -- 1340 
			elsif input_data(5 downto 0) = "011110" then --31
              i_out   <= "010010111110";            -- -1340
              q_out   <= "110011001101";            -- 1340 
			elsif input_data(5 downto 0) = "011111" then --32
              i_out   <= "101101000010";            -- -1340
              q_out   <= "110011001101";            -- 1340 
			elsif input_data(5 downto 0) = "100000" then --33
              i_out   <= "000011001001";            -- -1340
              q_out   <= "011111110101";            -- 1340 
			elsif input_data(5 downto 0) = "100001" then --34
              i_out   <= "111100110111";            -- -1340
              q_out   <= "011111110101";            -- 1340 
			elsif input_data(5 downto 0) = "100010" then --35
              i_out   <= "000011001001";            -- -1340
              q_out   <= "100000001011";            -- 1340 
			elsif input_data(5 downto 0) = "100011" then --36
              i_out   <= "111100110111";            -- -1340
              q_out   <= "100000001011";            -- 1340 
			elsif input_data(5 downto 0) = "100100" then --37
              i_out   <= "001001010010";            -- -1340
              q_out   <= "011110101101";            -- 1340 
			elsif input_data(5 downto 0) = "100101" then --38
              i_out   <= "110110101110";            -- -1340
              q_out   <= "011110101101";            -- 1340 
			elsif input_data(5 downto 0) = "100110" then --39
              i_out   <= "001001010010";            -- -1340
              q_out   <= "100001010011";            -- 1340 
			elsif input_data(5 downto 0) = "100111" then --40
              i_out   <= "110110101110";            -- -1340
              q_out   <= "100001010011";            -- 1340 
			elsif input_data(5 downto 0) = "101000" then --41
              i_out   <= "010100001010";            -- -1340
              q_out   <= "011000101000";            -- 1340 
			elsif input_data(5 downto 0) = "101001" then --42
              i_out   <= "101011110110";            -- -1340
              q_out   <= "011000101000";            -- 1340 
			elsif input_data(5 downto 0) = "101010" then --43
              i_out   <= "010100001010";            -- -1340
              q_out   <= "100111011000";            -- 1340 
			elsif input_data(5 downto 0) = "101011" then --44
              i_out   <= "101011110110";            -- -1340
              q_out   <= "100111011000";            -- 1340 
			elsif input_data(5 downto 0) = "101100" then --45
              i_out   <= "001111000010";            -- -1340
              q_out   <= "011100001001";            -- 1340 
			elsif input_data(5 downto 0) = "101101" then --46
              i_out   <= "110000111110";            -- -1340
              q_out   <= "011100001001";            -- 1340 
			elsif input_data(5 downto 0) = "101110" then --47
              i_out   <= "001111000010";            -- -1340
              q_out   <= "100011110111";            -- 1340 
			elsif input_data(5 downto 0) = "101111" then --48
              i_out   <= "110000111110";            -- -1340
              q_out   <= "100011110111";            -- 1340 
			elsif input_data(5 downto 0) = "110000" then --49
              i_out   <= "011111110101";            -- -1340
              q_out   <= "000011001001";            -- 1340 
			elsif input_data(5 downto 0) = "110001" then --50
              i_out   <= "100000001011";            -- -1340
              q_out   <= "000011001001";            -- 1340 
			elsif input_data(5 downto 0) = "110010" then --51
              i_out   <= "011111110101";            -- -1340
              q_out   <= "111100110111";            -- 1340 
			elsif input_data(5 downto 0) = "110011" then --52
              i_out   <= "100000001011";            -- -1340
              q_out   <= "111100110111";            -- 1340 
			elsif input_data(5 downto 0) = "110100" then --53
              i_out   <= "011110101101";            -- -1340
              q_out   <= "001001010010";            -- 1340 
			elsif input_data(5 downto 0) = "110101" then --54
              i_out   <= "100001010011";            -- -1340
              q_out   <= "001001010010";            -- 1340 
			elsif input_data(5 downto 0) = "110110" then --55
              i_out   <= "011110101101";            -- -1340
              q_out   <= "110110101110";            -- 1340 
			elsif input_data(5 downto 0) = "110111" then --56
              i_out   <= "100001010011";            -- -1340
              q_out   <= "110110101110";            -- 1340 
			elsif input_data(5 downto 0) = "111000" then --57
              i_out   <= "011000101000";            -- -1340
              q_out   <= "010100001010";            -- 1340 
			elsif input_data(5 downto 0) = "111001" then --58
              i_out   <= "100111011000";            -- -1340
              q_out   <= "010100001010";            -- 1340 
			elsif input_data(5 downto 0) = "111010" then --59
              i_out   <= "011000101000";            -- -1340
              q_out   <= "101011110110";            -- 1340 
			elsif input_data(5 downto 0) = "111011" then --60
              i_out   <= "100111011000";            -- -1340
              q_out   <= "101011110110";            -- 1340 
			elsif input_data(5 downto 0) = "111100" then --61
              i_out   <= "011100001001";            -- -1340
              q_out   <= "001111000010";            -- 1340 
			elsif input_data(5 downto 0) = "111101" then --62
              i_out   <= "100011110111";            -- -1340
              q_out   <= "001111000010";            -- 1340 
			elsif input_data(5 downto 0) = "111110" then --63
              i_out   <= "011100001001";            -- -1340
              q_out   <= "110000111110";            -- 1340 
			  
            else
              i_out   <= "100011110111";            -- 1340
              q_out   <= "110000111110";            -- 1340    
            end if; 
			
			
          when others =>
            null;
			
        end case;
             data_out_valid <= '1';
             data_out_last  <= '0' ;      
                  
             if signal_field_en = '0'  then   --if the input data is the signal field then sends to an output port a signal for noticing that the output data are coming from the singal field  
                if symbol_counter < 895 then  --2 clock cycle delay 
                   symbol_counter := symbol_counter + 1;
                else 
                 data_out_ready <= '0';  
                 data_out_last  <= '1' ;   
             end if ;            
             end if ; 
         elsif  data_in_ready =  '0' and data_in_valid = '1'then           
                  data_out_ready <= '0';
                  buff_reg(buff_counter) <= data_in;
                  buff_counter <= buff_counter + 1 ;
                  data_out_valid   <= '0';   
                 
        elsif     data_in_ready =  '1' and data_in_valid = '0' and buff_counter = 0  then
                   last_frame <= '0';
                  if pilot_insertion = '0' and end_of_frame = '0'then   
                    data_out_ready <= '1'; --starting state 
                    k := 0 ;
                    data_out_last  <= '0' ;
                  elsif pilot_insertion = '1'and end_of_frame = '0' then 
                        data_out_ready <= '0'; 
                        symbol_counter := 0 ;
                  
                  elsif   pilot_insertion = '0' and end_of_frame = '1'   then 
                         data_out_ready <= '0';                           
--                         data_out_last <= '0' ;
                   -- if the frame does not fit in the 896 symbols block, start the padding process adding only 0s (the 0 symbol value change depending from the modulation) and then add the pilot      
                    if symbol_counter < 895 then 
                       data_out_last <= '0' ;
                       last_frame <= '0';
                       case mod_type is 
                         when "000" =>  --bpsk
                            i_out   <= "100000000001";   -- -2047
                            q_out   <= "000000000000";  
                        when "001" => --qpsk
          
                            i_out   <= "010110100111";            -- 1447
                            q_out   <= "010110100111";            -- -1447
                         
                         when "010" => --qam16
                           i_out   <= "100000000001";            -- -2047
                           q_out   <= "011111111111";  
                         
                         when "011" => --qam32
            
                           i_out   <= "101100110011";            -- -1229
                           q_out   <= "011111111111";            -- 2047         
                         
                          when "100" => --qam64
            
                           i_out   <= "100000000001";            -- -2047
                           q_out   <= "011111111111";            -- 2047
                        
                          when "101" => --apsk16
                     
                          i_out   <= "000111100010";            -- 482
                          q_out   <= "000111100010";            -- 482
                          	
		                  when "110" => --apsk32
            
                          i_out   <= "000100100001";            -- 289
                          q_out   <= "000100100001";            -- 289
                          
                          when "111" => --apsk64
            
                          i_out   <= "000011001111";            -- -1340
                          q_out   <= "000011001111";            -- -1340 
                    end case ;
                    symbol_counter := symbol_counter + 1 ;   
                    data_out_valid <= '1';
                 else    
                     last_frame <= '1';
                     data_out_last <= '1' ;
                     data_out_valid <= '0';
                 end if ;
                  else 
                          data_out_ready <= '0'; 
                          data_out_valid <= '0';
                  end if ;
                        
          else 
                    data_out_ready <= '0';
                    data_out_valid <= '0';
       end if ;


      end if;

      
  end process;

end architecture mapper_arch;