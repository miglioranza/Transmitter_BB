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
       fsm_din_ready         : in std_logic := '0';
       fsm_din_last          : in STD_LOGIC;
--       fsm_control_ready     : in std_logic_vector(3 downto 0) := (others => '0');
       fsm_fifo_count        : in std_logic_vector(12 downto 0) := (others => '0') ;
       fsm_core_finish       : in std_logic := '0' ; 
--       fsm_control_valid     : out std_logic_vector(3 downto 0) := (others => '0');
       fsm_dout              : out STD_LOGIC_VECTOR (31 downto 0):= (others => '0') ;  
       fsm_dout_valid        : out std_logic := '0';
--       fsm_dout_ready        : out std_logic_vector(3 downto 0) := (others => '0');
       fsm_dout_ready        : out std_logic := '0';
--       fsm_dout_last         : out std_logic_vector(3 downto 0) := (others => '0');
       fsm_current_cr        : out std_logic_vector(1 DOWNTO 0);
--       fsm_block_count       : out std_logic_vector(7 DOWNTO 0) := (others => '0'); --Dummy port for finishing the simulation 
       fsm_dout_last         : out std_logic := '0';
       fsm_reset_core        : out std_logic_vector(3 DOWNTO 0)
 
 );
end Wifi_Input_FSM;

architecture RTL of Wifi_Input_FSM is

type encoder_fsm_input is (starting_state, encoding_process , padding_process, new_code_rate ,idle_state);
signal enc_state, enc_next_state     : encoder_fsm_input := starting_state   ;

signal change_code_rate         : std_logic := '0';
signal current_code_rate        : integer := -1  ;
signal current_data_length      : std_logic_vector(7 downto 0) := (others => '0');  
signal LDPC_data_length         : std_logic_vector(7 downto 0) := (others => '0'); 
signal codeword_counter         : std_logic_vector(7 downto 0) := (others => '0');
signal block_counter            : std_logic_vector(7 downto 0) := (others => '0');
signal tmp                      : std_logic_vector(31 downto 0) := (others => '0');
signal sel_code_rate            : integer := 0;
begin

selected_code_rate : process (clk ,reset ) 
begin 
if reset = '1'then 

change_code_rate        <= '0';

elsif rising_edge (clk) then 

 case sel_FEC_code_rate is         --Depending on the selected code rate the fsm enable the corresponding core 
   
    when "00" =>           --Code index 0 -> code rate = 1/2 and block length N = 648 
     sel_code_rate           <= 0 ;
     LDPC_data_length        <= x"0a";
    when "01" =>           --Code index 4 -> code rate = 2/3 and block length N = 1296 
     sel_code_rate           <= 1 ;
     LDPC_data_length        <= x"1b" ;
    when "10" =>           --Code index 8 -> code rate = 3/4 and block length N = 1944 
     sel_code_rate           <= 2 ; 
     LDPC_data_length        <= x"2e" ;
    when "11" =>           --Code index 11 -> code rate = 5/6 and block length N = 1944 
     sel_code_rate           <= 3 ;
     LDPC_data_length        <= x"30" ;

    when others => 
    null ;
     
end case ;    
end if ;
end process ;

input_fsm : process (clk , reset ) 

begin
if reset  = '1' then    

codeword_counter     <= (others => '0');
--fsm_dout_ready       <= (others => '0'); 
fsm_dout_ready       <=  '0';
fsm_dout_valid       <=  '0';
fsm_dout_last        <=  '0';
--fsm_control_valid    <=  '0';
--fsm_dout_last        <= (others => '0');
  fsm_reset_core       <= (others => '0'); 
enc_next_state       <= starting_state  ;

elsif rising_edge (clk) then 
enc_state  <= enc_next_state ; 

case enc_state is 

    when starting_state => 
        if sel_code_rate/= current_code_rate then 
            current_code_rate       <= sel_code_rate ;
        else 
              if fsm_din_ready = '1' then
--                 fsm_dout_ready                              <= '1';   
                 fsm_current_cr                              <= sel_FEC_code_rate ;                
                 enc_next_state                              <= encoding_process ;
                 current_data_length                         <= LDPC_data_length ; 
             else 
                 enc_next_state <= starting_state ; 
             end if ;  
           fsm_reset_core(sel_code_rate)       <= '1';   
       end if ;        
    when encoding_process => 
       if current_code_rate = sel_code_rate and fsm_din_ready = '1'then     
            fsm_dout_ready       <= '1'; 

            if fsm_din_valid = '1' then 
--              fsm_control_valid(current_code_rate) <= '1';
              fsm_dout                           <= fsm_din ;    
              fsm_dout_valid  <=  '1';              
              fsm_dout_last <= '0';   
                  if codeword_counter = current_data_length  and fsm_din_last = '0'   then  --This condition just counts how many block are needed for the data trasmission 
                    block_counter    <= block_counter + x"01" ;
                    codeword_counter <= (others => '0');
--                    fsm_dout_last <= '1';
                  elsif codeword_counter = current_data_length  and fsm_din_last = '1'   then  --This condition just counts how many block are needed for the data trasmission 
                    enc_next_state                     <= idle_state  ;
                    fsm_dout_valid                     <= '0';  --Tx has finished to transmit the symbols
--                    fsm_control_valid                  <= (others => '0');
                    fsm_dout_last  <= '1';  
                   ---This condition checks if padding is necessary
                  elsif codeword_counter /=  current_data_length and fsm_din_last = '1' then 
                    enc_next_state                     <= padding_process ;  
                    
                  elsif codeword_counter /=  current_data_length and fsm_din_last = '0' then 
                     codeword_counter                       <= codeword_counter + x"01" ;
--                     fsm_dout_last                          <= '0';
                  end if ; 
                
         else 
--            fsm_control_valid(current_code_rate)  <= '0';
            fsm_dout_valid   <= '0';   
                if fsm_din_last = '1'then 
                    fsm_dout_last                  <= '1';
                else     
                    fsm_dout_last                  <= '0'; 
                end if ;                                                                                 
         end if ;    
     
    elsif current_code_rate /= sel_code_rate and fsm_din_ready = '1'then -- if a new code rate is selected then go to new code rate state for checking if padding is necessary and for updating the current code rate signal 
         fsm_dout_ready                        <= '0';      
--         fsm_dout_valid                        <= '1';                                                       
         fsm_dout                              <= fsm_din ;    --Sends out  the latest input data before padding ,otherwise there would be a miss data in output 

--         fsm_reset_core(sel_code_rate )   <= '1'; --Test for seeing if resetting the core delete the padding in the beginning of the output message 
         if codeword_counter = current_data_length then   --This if statement is necessary because it takes 2 clock cycles for going in the next state ,so could be possible that the codeword counter exceed the max dimension of the blo
              fsm_dout_last   <= '1' ;
              block_counter    <= block_counter + x"01" ;
              enc_next_state                       <= idle_state  ;       --if padding is not necessary just go in the idle state for waiting the ready signal from the next core 
          else 
              codeword_counter                      <= codeword_counter + x"01" ;    
              enc_next_state                        <= new_code_rate;    
              fsm_dout_valid   <= '1';   

          end if ; 
    
    else                                                               
            enc_next_state  <= idle_state ;     --
            fsm_dout_ready                               <= '0'; 
            fsm_dout_valid                               <= '0'; 
                   
end if ;
  when padding_process =>                              --Perform padding for completing the required block size N 
      if codeword_counter = current_data_length then
        fsm_dout_last   <= '1' ;
--        fsm_block_count                      <= block_counter ;   
        enc_next_state                      <= idle_state  ; 
      else 
        if fsm_din_ready = '1' then                  --Check if the current core is still ready to receive the datas in input    
                fsm_dout                           <= x"5A5A5A5A" ; --Padding process 
                codeword_counter                   <= codeword_counter + x"01" ; 
                fsm_dout_valid                     <= '1';  
        else      
           enc_next_state                     <= padding_process ;     
        end if ;             
      end if ;
  when new_code_rate  =>     --This state check if a padding process is needed when the code rate changes 
      
--        fsm_dout_valid                        <=  '1';       
        fsm_dout                              <= fsm_din ;    --Sends out  the latest input data before padding ,otherwise there would be a miss data in output 
        codeword_counter                      <= codeword_counter + x"01" ;    
       if codeword_counter /=  current_data_length    then ---This condition checks if padding is necessary and if so, the complete the encoding process until codeword_counter = LDPC_data_length 
           
           enc_next_state                        <= padding_process ;
        else 
           codeword_counter                     <= (others => '0');
           block_counter                        <= (others => '0');
           fsm_dout_last   <= '1' ; 
           enc_next_state                       <= idle_state  ;
         end if ;
   when idle_state => 
--      fsm_dout_last                       <=  '0';  --Both last and valid out signals are set to 0 here for having valid signals in the input of current core for more than one clock signal  
      fsm_dout_valid                      <=  '0';
--      fsm_control_valid(current_code_rate)  <= '0'; 
        if    current_code_rate = sel_code_rate  then  --This if statement is for checking if the current core is ready to receive data and if the input stream has not finihed to feed ,otherwise wait until the core or the input stream are ready again
              if     fsm_din_ready = '1'and fsm_din_last = '0' and fsm_fifo_count = "0" then
                          
               enc_next_state          <= encoding_process  ;
--               fsm_dout_ready          <= '1'; 
          
              else
               enc_next_state          <= idle_state   ;
              end if ;
              
        else     --Thi case is for checking if the current core has completed to encode and then update both code rate and block data length 
            
--               fsm_dout_last                       <= (others => '0');  --Both last and valid out signals are set to 0 here for having valid signals in the input of current core for more than one clock signal 
--               fsm_dout_valid                      <= (others => '0');
          
                if fsm_core_finish = '1' and fsm_fifo_count = "0" then          --Wait the current core that finishes the encoding process ,then feed the reset signal to the next core and wait until it is ready 
--                       fsm_dout_ready          <= '1'; 
--                       fsm_reset_core(current_code_rate)   <= '0'; --Test for seeing if resetting the core delete the padding in the beginning of the output message 
--                       fsm_dout_valid                      <=  '0';
                       fsm_dout_last                       <=  '0'; 
                       fsm_reset_core(sel_code_rate )      <= '1';   
                       block_counter                       <= (others => '0');
                       codeword_counter                    <= (others => '0');   
                       current_code_rate                   <= sel_code_rate  ;    --Update the current code rate 
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
