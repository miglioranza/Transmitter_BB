----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/16/2024 02:18:28 PM
-- Design Name: 
-- Module Name: FSM_Input_control - Behavioral
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
use ieee.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM_Input_control is
Port (     
       clk                   : in STD_LOGIC; 
       reset                 : in STD_LOGIC;
       sel_FEC_code_rate     : in integer   ;
       fsm_din               : in STD_LOGIC_VECTOR (31 downto 0);
       fsm_din_valid         : in STD_LOGIC; 
       fsm_din_ready         : in std_logic_vector(3 downto 0) := (others => '0');
       fsm_din_last          : in STD_LOGIC;
       fsm_control_ready     : in std_logic_vector(3 downto 0) := (others => '0');
       fsm_core_finish       : in STD_LOGIC := '0' ; 
       fsm_control_valid     : out std_logic ;
       fsm_dout              : out std_logic_vector(31 downto 0):= (others => '0');  
       fsm_dout_valid        : out std_logic_vector(3 downto 0) := (others => '0');
--       fsm_dout_ready        : out std_logic := '0';
       fsm_dout_ready        : out std_logic_vector(3 downto 0) := (others => '0');
       fsm_dout_last         : out std_logic_vector(3 downto 0) := (others => '0');
       fsm_reset_core        : out std_logic_vector(3 downto 0) := (others => '0');
       fsm_bg_core 	         : out std_logic_vector(2 DOWNTO 0);
       fsm_z_set_core	     : out std_logic_vector(2 DOWNTO 0); 
       fsm_z_j_core		     : out std_logic_vector(2 DOWNTO 0);
       fsm_mb_core           : out std_logic_vector(5 DOWNTO 0)
       );     
end FSM_Input_control;

architecture rtl of FSM_Input_control is


type encoder_fsm_input is (starting_state, encoding_process , padding_process, new_code_rate ,idle_state);
signal enc_state, enc_next_state     : encoder_fsm_input := starting_state   ;

signal change_code_rate         : std_logic := '0';
signal current_code_rate        : integer := -1  ;
signal LDPC_data_length         : std_logic_vector(7 downto 0) := (others => '0'); 
signal sel_code_rate            : integer := 0;
signal din_valid_core           : std_logic_vector(3 downto 0) := (others => '0');
signal codeword_counter         : std_logic_vector(7 downto 0) := (others => '0');
signal block_counter            : std_logic_vector(7 downto 0) := (others => '0'); 
signal change_FEC_code_rate     : std_logic := '0';
signal new_code_rate_state      : std_logic := '0'; 
signal current_data_length      : std_logic_vector(7 downto 0) := (others => '0');  
begin

select_code_rate : process(clk, reset, sel_FEC_code_rate ) 
begin
if reset = '1'then 
change_code_rate        <= '0';

elsif rising_edge (clk) then 

    if     (fsm_din_ready(sel_FEC_code_rate) = '1') then    

             case sel_FEC_code_rate is         --Depending on the selected code rate the fsm enable the corresponding core 
               
                when 0 => 
                LDPC_data_length        <= x"0a";      -- (544,320) R=0,588 throughput = 0.931  --> 320/32 = 10
                fsm_bg_core             <= "001";		-- (base graph)
                fsm_z_set_core          <= "000";		-- Base graph cyclic shift set
                fsm_z_j_core 	        <= "100";		--
                fsm_mb_core		        <= "00" & x"7"; --number of pirity bits defined as: Z * mb; Z == 128; CR = 22/(22+mb) (mb - descirbed as number of parity bits)   
                --Because of information bits puncturing, the code rate should be calculated as CR = 22 / ( 22 - 2 + mb)         
               
			    
                when 1 => 
                LDPC_data_length        <= x"28";      -- (2176,1280) R=0,588 throughput = 2.03 --> 1280bit/32 = 40
                fsm_bg_core   		    <= "001";		
			    fsm_z_set_core 	        <= "000";		
			    fsm_z_j_core	        <= "110";		
			    fsm_mb_core	            <= "00" & x"7";
                
                when 2 => 
                LDPC_data_length        <= x"16";      -- (864,704) R=0,815 throughput = 1.99   --> 704bit/32 = 22         
                fsm_bg_core             <= "000";		-- (base graph)
			    fsm_z_set_core          <= "000";		-- Base graph cyclic shift set
			    fsm_z_j_core 	        <= "100";		--
			    fsm_mb_core 		    <= "00" & x"5";
                
--   
                when 3 =>
                LDPC_data_length        <= x"14" ;    -- (1088,640) R=0,588 throughput = 1.605 -->  640bit/32 = 20
                fsm_bg_core   	        <= "001";		
		      	fsm_z_set_core          <= "000";		
			    fsm_z_j_core	        <= "101";		
			    fsm_mb_core		        <= "00" & x"7" ;
			    
                when others =>
                LDPC_data_length        <= (others => '0') ;  
                fsm_bg_core   	        <= (others => '0');		
		      	fsm_z_set_core          <= (others => '0');		
			    fsm_z_j_core	        <= (others => '0');		
			    fsm_mb_core		        <= (others => '0') ;
            end case ;
            
       end if ;
    end if ;
end process ;     
 
Input_fsm_control : process(clk, fsm_din_valid, change_code_rate )
variable temp : std_logic_vector(31 downto 0) := (others => '0') ;

begin

if reset  = '1' then    

codeword_counter     <= (others => '0');
block_counter        <= (others => '0'); 
fsm_dout_ready       <= (others => '0'); 
fsm_dout_valid       <= (others => '0') ;
--fsm_dout_last        <= '0';
fsm_dout_last        <= (others => '0');
enc_next_state       <= starting_state  ;

elsif rising_edge (clk) then 
enc_state  <= enc_next_state ; 

    case enc_state is 
       

    when encoding_process =>
    if current_code_rate = sel_FEC_code_rate and fsm_din_ready(current_code_rate ) = '1'then   --It checks if a new code rate is required depending on the channel conditions 

        fsm_dout_valid(current_code_rate)          <= '1';     
      
        if fsm_din_valid = '1' then           

                if fsm_control_ready(current_code_rate ) = '1'then
                    fsm_control_valid              <= '1';
                else
                    fsm_control_valid              <= '0';
                end if ;
            
            if codeword_counter = current_data_length  and fsm_din_last = '0'   then  --This condition just counts how many block are needed for the data trasmission 
                block_counter    <= block_counter + x"01" ;
                codeword_counter <= (others => '0');
                
            elsif codeword_counter = current_data_length  and fsm_din_last = '1'   then  --This condition just counts how many block are needed for the data trasmission 
                enc_next_state                     <= idle_state  ;
                fsm_dout_valid(current_code_rate)  <= '0';   --Tx has finished to transmit the symbols
                fsm_control_valid                  <= '0';
                fsm_dout_last(current_code_rate)   <= '1';
                
---This condition checks if padding is necessary
            elsif codeword_counter /=  current_data_length and fsm_din_last = '1' then 
                enc_next_state                     <= padding_process ;  
           elsif codeword_counter /=  current_data_length and fsm_din_last = '0' then 
                 codeword_counter                       <= codeword_counter + x"01" ;
           end if ; 
--          else 
--            fsm_dout_valid(current_code_rate)      <= '0';                                                                                 
        end if ;   

      elsif current_code_rate /= sel_FEC_code_rate then

             fsm_dout_ready(current_code_rate)     <= '0';   
             enc_next_state                        <= new_code_rate;            
         else     
            enc_next_state  <= idle_state ;     --
            fsm_dout_ready(current_code_rate)      <= '0';   
--            fsm_dout_valid(current_code_rate)      <= '0';  
                if fsm_din_last = '1'then 
                    fsm_dout_last(current_code_rate)    <= '1';
                    fsm_dout_valid(current_code_rate)   <= '0';  
                else     
                    fsm_dout_last(current_code_rate) <= '0'; 
                end if ;
          
     end if ;  
                   fsm_dout                              <= fsm_din ;    
                    
                      
     when padding_process => 
     
            
            if codeword_counter = current_data_length  then  --If the previous state is the encoding process then execute padding and finish encoding process and go to the idle state           
               fsm_dout_valid(current_code_rate)   <= '0';
               fsm_control_valid                   <= '0';
               fsm_dout_last(current_code_rate)    <= '1' ; 
--               fsm_dout                            <= fsm_din ;
--               block_counter                       <= (others => '0');   --When the transmission is completed reset the counters 
--               codeword_counter                    <= (others => '0');  
               enc_next_state                      <= idle_state  ; 
            
            elsif  codeword_counter /= current_data_length then
                  if fsm_din_ready(current_code_rate ) = '1' then
                    fsm_dout                           <= x"5A5A5A5A" ; --Padding process 
    --              fsm_dout_valid(current_code_rate)                 <= '1' ;
                    codeword_counter                   <= codeword_counter + x"01" ;              
                  else      
                    enc_next_state                     <= padding_process ;     
                    end if ;             
                end if ;
      when new_code_rate  => --Add the final logic for changing the current code rate value to the new sel_fec-code-rate value !!!
          --If necessary, finish to code the blocks with the previous code rate 
--          fsm_reset_core(sel_FEC_code_rate  )   <= '1'; --The reset signal for new LDPC core goes high 
             new_code_rate_state                   <= '1' ;       
           
             if codeword_counter /=  current_data_length    then ---This condition checks if padding is necessary and if so, the complete the encoding process until codeword_counter = LDPC_data_length 
                enc_next_state                        <= padding_process ; 
             else     
                 codeword_counter                     <= (others => '0');
                 block_counter                        <= (others => '0');
                 fsm_dout_valid(current_code_rate)    <= '0';
                 fsm_control_valid                    <= '0';
                 fsm_dout_last(current_code_rate)     <= '1' ; 
                 enc_next_state                       <= idle_state  ;
            end if ; 
      when idle_state => 
                       
--            if  current_code_rate /=sel_FEC_code_rate and fsm_din_ready(sel_FEC_code_rate ) = '0' then --Initial state
--            if      fsm_din_ready(sel_FEC_code_rate ) = '0' and new_code_rate_state  = '0' and fsm_din_last = '0' then  
--                        fsm_reset_core(sel_FEC_code_rate )       <= '1';      --To be fixed ,the selected code rate = 0  in the beginning is wrongly set equal to 1 
--                        enc_next_state                           <= idle_state  ;
--            if   fsm_din_ready(sel_FEC_code_rate ) = '1' and new_code_rate_state  = '0' and fsm_din_last = '0' then
            if   fsm_din_ready(sel_FEC_code_rate ) = '1' and current_code_rate = sel_FEC_code_rate and fsm_din_last = '0' then
                         fsm_dout_ready(current_code_rate)           <= '1';                  
--                         current_code_rate       <= sel_FEC_code_rate ;
                         enc_next_state          <= encoding_process  ;
                          
--            elsif fsm_din_ready(sel_FEC_code_rate ) = '1' and new_code_rate_state  = '1' then
            elsif fsm_din_ready(sel_FEC_code_rate ) = '1' and current_code_rate /= sel_FEC_code_rate  then

--                         block_counter                       <= (others => '0'); 
--                         codeword_counter                    <= (others => '0');    
                 if fsm_core_finish = '1' then
    --                       fsm_dout_ready          <= '1'; 
                           new_code_rate_state                 <= '0' ;         
                           fsm_reset_core(current_code_rate  ) <= '0';
                           fsm_dout_last(current_code_rate)    <= '0' ;
                           block_counter                       <= (others => '0');   --When the transmission is completed reset the counters 
                           codeword_counter                    <= (others => '0');   
                           current_code_rate                   <= sel_FEC_code_rate ;
                           current_data_length                 <= LDPC_data_length ;
--                           enc_next_state                      <= encoding_process  ; 
       
             else      
--                           fsm_dout_valid(current_code_rate)      <= '0';  
                           fsm_dout_ready(current_code_rate)     <= '0';    
                           enc_next_state          <= idle_state  ;
                 end if ;      
                   elsif  fsm_din_ready(sel_FEC_code_rate ) = '0' and current_code_rate /= sel_FEC_code_rate then
                   fsm_reset_core(sel_FEC_code_rate )       <= '1'; 
             else   
--                   fsm_dout                           <= fsm_din ;
                      
                  enc_next_state                    <= idle_state  ;
             end if ;    
      when starting_state  =>
      
          if sel_FEC_code_rate /= current_code_rate  then 
                 enc_next_state         <= starting_state ;
                 current_data_length    <= LDPC_data_length ; 
                 current_code_rate <= sel_FEC_code_rate ;
               else 
                 fsm_reset_core(current_code_rate )       <= '1';      --To be fixed ,the selected code rate = 0  in the beginning is wrongly set equal to 1 
                     if fsm_din_ready(current_code_rate ) = '1' then
                         fsm_dout_ready(current_code_rate)           <= '1';                   
                         enc_next_state         <= encoding_process ;
                         current_data_length    <= LDPC_data_length ; 
                     else 
                         enc_next_state <= starting_state ; 
                     end if ;
               end if ; 
               
      when others => 
     
               enc_next_state <= idle_state ;
       
     end case ;
end if ;    

end process ;
      
end rtl;
