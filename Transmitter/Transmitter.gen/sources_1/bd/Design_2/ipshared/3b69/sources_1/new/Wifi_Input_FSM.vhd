----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/29/2025 12:18:51 PM
-- Design Name: 
-- Module Name: Wifi_Input_FSM - RTL
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

entity Wifi_Input_FSM is
 Port ( 
       clk                   : in STD_LOGIC; 
       reset                 : in STD_LOGIC;
       sel_FEC_code_rate     : in std_logic_vector(1 downto 0) := (others => '0')   ;
       fsm_din               : in STD_LOGIC_VECTOR (31 downto 0);
       fsm_din_valid         : in STD_LOGIC; 
       fsm_din_ready         : in std_logic_vector(3 DOWNTO 0):= (others => '0') ;
       fsm_din_last          : in STD_LOGIC := '0';
       fsm_core_finish       : in std_logic := '0' ; 
       fsm_dout              : out STD_LOGIC_VECTOR (31 downto 0):= (others => '0') ;  
       fsm_dout_valid        : out std_logic_vector(3 DOWNTO 0);
       fsm_dout_ready        : out std_logic := '0';
       fsm_current_cr        : out std_logic_vector(1 DOWNTO 0);
       fsm_dout_last         : out std_logic_vector(3 DOWNTO 0) := (others => '0');
       fsm_reset_core        : out std_logic_vector(3 DOWNTO 0)
 
 );
end Wifi_Input_FSM;

architecture RTL of Wifi_Input_FSM is

type encoder_fsm_input is (starting_state, encoding_process , padding_process ,idle_state);
signal enc_state, enc_next_state     : encoder_fsm_input := starting_state   ;

type buffer_data is array (0 to 3) of std_logic_vector(31 downto 0) ;
signal data_input : buffer_data :=(others =>(others => '0')) ;

signal current_code_rate        : integer := -1  ;
signal current_data_length      : std_logic_vector(7 downto 0) := (others => '0');  
signal LDPC_data_length         : std_logic_vector(7 downto 0) := (others => '0'); 
signal codeword_counter         : std_logic_vector(7 downto 0) := (others => '0');
signal block_counter            : std_logic_vector(7 downto 0) := (others => '0');
signal sel_code_rate            : integer := 0;
signal padding_counter          : std_logic_vector(7 downto 0) := (others => '0');
begin

selected_code_rate : process (clk ,reset ) 
begin 
if reset = '1'then 

sel_code_rate <= 0 ;

elsif rising_edge (clk) then 

 case sel_FEC_code_rate is         --Depending on the selected code rate the fsm enable the corresponding core 
   
    when "00" =>           --Code index 0 -> code rate = 1/2 and block length N = 648 
     sel_code_rate           <= 0 ;
     LDPC_data_length        <= x"0a";
    when "01" =>           --Code index 4 -> code rate = 2/3 and block length N = 1296 
     sel_code_rate           <= 1 ;
     LDPC_data_length        <= x"1a" ;
    when "10" =>           --Code index 8 -> code rate = 3/4 and block length N = 1944 
     sel_code_rate           <= 2 ; 
     LDPC_data_length        <= x"2d" ;
    when "11" =>           --Code index 11 -> code rate = 5/6 and block length N = 1944 
     sel_code_rate           <= 3 ;
     LDPC_data_length        <= x"32" ;

    when others => 
    null ;
     
end case ;    
end if ;
end process ;

input_fsm : process (clk , reset ) 
variable index      : integer := 0 ;
variable index2     : integer := 0 ;
variable bit_padd   : integer := 0 ;
variable bit_padd2  : integer := 0 ;
begin
if reset  = '1' then    

codeword_counter     <= (others => '0');
fsm_dout_ready       <=  '0';
fsm_dout_valid       <= (others => '0');
fsm_dout_last        <= (others => '0');
fsm_reset_core       <= (others => '0'); 
enc_next_state       <= starting_state  ;

elsif rising_edge (clk) then 
enc_state  <= enc_next_state ; 

case enc_state is 

--Starting state ,assign the selected code rate to the current code rate and wait until the core is ready to encode   
    when starting_state => 
        if sel_code_rate/= current_code_rate then 
            current_code_rate       <= sel_code_rate ;
        else 
              if fsm_din_ready(current_code_rate)  = '1' then
--                 fsm_dout_ready                              <= '1';   
                 fsm_current_cr                              <= sel_FEC_code_rate ;                
                 enc_next_state                              <= encoding_process ;
                 current_data_length                         <= LDPC_data_length ; 
             else 
                 enc_next_state <= starting_state ; 
             end if ;  
           fsm_reset_core       <= "1111";  --For "switching on" the cores is necessary to reset them at the beginning 
       end if ;      
       
       
         
    when encoding_process => 
-- Main If-statement #1 --> check if the selected code rate changed or not and if the the current core is ready to receive, furthemore it checks if the buffer (see below) is empty or not 
       if current_code_rate = sel_code_rate and fsm_din_ready(current_code_rate) = '1' and index = 0 then     

            index2 := 0 ; 
            --Secondary if-statement #1 --> Controls that the input data are valid, if so, feeds the data to the core until the number of codewords fullfill an entire block. 
            --When a complete block is sent out, the last value of each block must remain valid for 2 clock cycles, this  because the cores tend to truncate the last value of the blocks.
            if fsm_din_valid = '1' and codeword_counter /=  current_data_length  then 
--              fsm_control_valid(current_code_rate) <= '1';
              fsm_dout                           <= fsm_din ;    
              fsm_dout_valid(current_code_rate)  <=  '1';              
              fsm_dout_last(current_code_rate)   <= '0';                    
                   if fsm_din_last = '1' then 
                     enc_next_state                     <= padding_process ;  
                     fsm_dout_ready <= '0';  
                   else   
                     codeword_counter                       <= codeword_counter + x"01" ;
                   end if ;
   
           else 
           
           --Secondary if-statement #2 -->  When the input valid signal goes to 0, this if-statement saves the last 2 values in input in a buffer, otherwise there would be a missed data for synchronization reason
           if    codeword_counter = current_data_length  and fsm_din_last = '0' and bit_padd < 2  then               
--                    fsm_dout_ready <= '1' ;  
--                    block_counter    <= block_counter + x"01" ;
--                    codeword_counter <= x"01" ;
                  fsm_dout_valid(current_code_rate)  <=  '0';
                  fsm_dout_ready <= '0' ;
                  data_input( bit_padd) <= fsm_din ;     
                  bit_padd := bit_padd + 1 ;
                  bit_padd2 := 0 ; 
           elsif  codeword_counter = current_data_length  and bit_padd = 2  then    
--                   fsm_dout_ready <= '1' ;
                   fsm_dout_valid(current_code_rate)  <=  '1';
                   codeword_counter <=  (others => '0') ; 
                   block_counter <= block_counter + x"01"  ;      
--                   bit_padd := 0 ; 
           elsif   codeword_counter = current_data_length  and fsm_din_last = '1' and bit_padd < 2    then 
--                   codeword_counter                  <= codeword_counter + x"01" ;  
                   fsm_dout_ready <= '0' ;  
                   fsm_dout_valid(current_code_rate)  <=  '0';
                   enc_next_state                     <= padding_process ;  
           elsif   codeword_counter /= current_data_length   and fsm_din_last = '0' and bit_padd > 0  then 
                   fsm_dout <= data_input(bit_padd2) ;
                   bit_padd := bit_padd - 1 ;  
                   bit_padd2 := bit_padd2 + 1 ;
                   fsm_dout_valid(current_code_rate)  <=  '1';
                   codeword_counter                       <= codeword_counter + x"01" ;       
           elsif   codeword_counter /= current_data_length   and fsm_din_last = '1'   then 
                    fsm_dout  <= fsm_din ;
                    codeword_counter                       <= codeword_counter + x"01" ; 
                    fsm_dout_ready <= '0' ;  
                    enc_next_state                     <= padding_process ;  
           else 
                   fsm_dout_ready <= '1' ;  
                   fsm_dout_valid(current_code_rate)  <=  '0';   
                    
            end if ;       
                                                                                                        
         end if ;    
-- Main If-statement #2 --> Same as  main If-statement #1,moreover because of the synchronization bewteen the cores and the FSM , when the ready signal from the cores goes to 0, saves in a buffer the last values in input until also the input valid signal goes to 0
       elsif  current_code_rate = sel_code_rate and fsm_din_ready(current_code_rate) = '1' and index > 0 then
                --Secondary if-statement #3 --> Check if there ara data in the buffer due to the valid-ready sinchro.,thus checks also if the previous data was last in the block,if so applies the 2 clock cycles process 
               if codeword_counter /= current_data_length  and bit_padd = 0 then      
                  fsm_dout <= data_input(index2) ;
                  fsm_dout_valid(current_code_rate)  <=  '1';
                  codeword_counter                       <= codeword_counter + x"01" ;              
                  index  := index -1 ;
                  index2 := index2 + 1 ; 
                       if index = 0 and fsm_din_last = '0'then 
                             fsm_dout_ready <= '1' ;
                         elsif  index = 0 and fsm_din_last = '1' then 
                             fsm_dout_ready <= '0' ;
                             enc_next_state                     <= padding_process   ;  
                         else            
                             fsm_dout_ready <= '0' ;
                         end if ;    
                  
               elsif codeword_counter = current_data_length  and bit_padd < 2 then     
                        
                        fsm_dout_valid(current_code_rate)  <=  '1';
                        fsm_dout <= (others => '0') ;
                        bit_padd := bit_padd + 1 ;
                      
               elsif  codeword_counter = current_data_length  and bit_padd = 2     then 
                       codeword_counter <= (others => '0') ;
                       block_counter <= block_counter + x"01"  ;      
                       bit_padd := 0 ;     
                       fsm_dout_valid(current_code_rate)  <=  '0';   
                       
               else 
                     fsm_dout_ready <= '1' ;       
                     fsm_dout_valid(current_code_rate)  <=  '0';  
              end if ;    
      
-- Main If-statement #3 -->  The selected code rate has changed , so it saves the last values in the buffer and, if necessary perform padding       
       elsif current_code_rate /= sel_code_rate and fsm_din_ready(current_code_rate) = '1'then -- if a new code rate is selected then go to new code rate state for checking if padding is necessary and for updating the current code rate signal 
         fsm_dout_ready                        <= '0';      
         
          --This if-statement is  needed for saving the input data in a buffer whenever there is a change in the code rate or for synchronization reason with the s_axis_ready signal from the current core 
            if fsm_din_valid = '1'and index < 4 then 
                     data_input(index) <= fsm_din ; 
                     index := index + 1 ;
                     enc_next_state                       <= encoding_process  ;   
                                
            else         
                    
                    enc_next_state                       <= padding_process  ; 
            end if ;
      
-- Main If-statement #4 -->  If the core is not ready ,controls if is necessary to saves the last data in the buffer and then goes in idle state              
       elsif  current_code_rate = sel_code_rate and fsm_din_ready(current_code_rate) = '0' then     
       
        fsm_dout_ready                     <= '0';  
        fsm_dout_valid(current_code_rate)  <=  '0';       

             if fsm_din_valid = '1'and index < 4 then 
                     data_input(index) <= fsm_din ; 
                     index := index + 1 ;
             else         
                     enc_next_state                        <= idle_state  ;
--                     fsm_dout_valid(current_code_rate) <= '0';    
             end if ;
-- Main If-statement #5 -->  The cores are not ready           
        else    
           fsm_dout_ready                        <= '0';   
           enc_next_state                        <= idle_state  ;

end if ;

when padding_process => 
   if codeword_counter = current_data_length  and padding_counter /= current_data_length + 3 and fsm_din_ready(current_code_rate) = '1' then 
       fsm_dout_valid(current_code_rate)   <= '1';   
       fsm_dout          <= x"5A5A5A5A" ; --Padding process  
       padding_counter   <= padding_counter + 1 ;
   elsif  codeword_counter /= current_data_length and fsm_din_ready(current_code_rate) = '1' then
        fsm_dout_valid(current_code_rate)   <= '1';     
--        padding_counter                    <= current_data_length ;
        fsm_dout                           <= x"5A5A5A5A" ; --Padding process 
        codeword_counter                   <= codeword_counter + x"01" ; 
   elsif  codeword_counter = current_data_length and  padding_counter = current_data_length + 3 and fsm_din_ready(current_code_rate) = '1' then 
          fsm_dout_last(current_code_rate)  <= '1';
          fsm_dout_valid(current_code_rate) <= '0';
         fsm_dout_valid(current_code_rate)   <= '0';     
          block_counter    <= block_counter + x"01" ;
          enc_next_state                        <= idle_state  ;
   else 
         fsm_dout_valid(current_code_rate)   <= '0';     
         enc_next_state <= padding_process ;
   end if ;             

   when idle_state => 
      fsm_dout_valid                      <=  (others => '0');
--      fsm_control_valid(current_code_rate)  <= '0'; 
        if    current_code_rate = sel_code_rate  then  --This if statement is for checking if the current core is ready to receive data and if the input stream has not finihed to feed ,otherwise wait until the core or the input stream are ready again
              if     fsm_din_ready(current_code_rate) = '1'and fsm_din_last = '0' then
               enc_next_state                      <= encoding_process  ;                          
               fsm_reset_core <= "1111";   
                   if codeword_counter = x"01" and  enc_next_state = encoding_process   then                
                     fsm_dout_valid(current_code_rate)  <=  '1';
--                     codeword_counter <= codeword_counter + x"01" ;
                   else 
                    fsm_dout_valid(current_code_rate)  <=  '0';
                   end if ;
--               fsm_dout_ready          <= '1'; 
--               fsm_dout_valid(current_code_rate)          <= '1' ;
              else
               enc_next_state          <= idle_state   ;
              end if ;
              
        else     --Thi case is for checking if the current core has completed to encode and then update both code rate and block data length 
            
--               fsm_dout_last(current_code_rate)                       <= (others => '0');  --Both last and valid out signals are set to 0 here for having valid signals in the input of current core for more than one clock signal 
--               fsm_dout_valid                      <= (others => '0');
          
                if fsm_core_finish = '1'  then          --Wait the current core that finishes the encoding process ,then feed the reset signal to the next core and wait until it is ready 
--                       fsm_dout_valid                      <=  '0';
                       bit_padd := 0 ;        
                       fsm_dout_last(current_code_rate)    <=  '0'; 
                       fsm_reset_core(current_code_rate  ) <= '0';    
                       block_counter                       <= (others => '0');
                       codeword_counter                    <= (others => '0');
                       padding_counter                     <= (others => '0');   
                       current_code_rate                   <= sel_code_rate  ;      --Update the current code rate 
                       fsm_current_cr                      <= sel_FEC_code_rate  ;  --output value for updating the fifo about which current rate iss selected , if a new code rate arrives in input the output value is updated only when the current core has finished 
                       current_data_length                 <= LDPC_data_length ;       --Update the current data length  
               else      
               
                   enc_next_state          <= idle_state  ;  
              end if ;   

       end if ;
       
    when others => 
     null ;
    
    end case ;           
end if ;
end process ;

end RTL;
