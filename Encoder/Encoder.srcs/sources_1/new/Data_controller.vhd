----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/18/2025 10:54:55 AM
-- Design Name: 
-- Module Name: Data_controller - Behavioral
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

entity Data_controller is
 generic 
   (
  N                 : integer := 4;
  DATA_WIDTH        : integer := 32 ;
  CORE_DATA_WIDTH   : integer := 128
  );  
  Port ( 
  
  clk               : in std_logic ;
  reset             : in std_logic ;
  din_last          : in std_logic_vector(N-1 downto 0);
  din_ready         : in std_logic_vector(N-1 downto 0);
  din_valid         : in std_logic_vector(N-1 downto 0);
  din_data_core0    : in std_logic_vector(DATA_WIDTH-1 downto 0) ;
  din_data_core1    : in std_logic_vector(DATA_WIDTH-1 downto 0) ;
  din_data_core2    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  din_data_core3    : in std_logic_vector(DATA_WIDTH-1 downto 0) ;
  dout_valid        : out std_logic_vector(N-1 downto 0) := (others => '0') ;
  dout_ready        : out std_logic_vector(N-1 downto 0):= (others => '0') ; 
  dout_data0        : out std_logic_vector(CORE_DATA_WIDTH-1 downto 0):=(others => '0'); 
  dout_data1        : out std_logic_vector(CORE_DATA_WIDTH-1 downto 0):= (others => '0'); 
  dout_data2        : out std_logic_vector(CORE_DATA_WIDTH-1 downto 0):= (others => '0'); 
  dout_data3        : out std_logic_vector(CORE_DATA_WIDTH-1 downto 0):= (others => '0'); 
  dout_last         : out std_logic_vector(N-1 downto 0);
  reset_cores       : out std_logic;       
  last_frame        : out std_logic 
        
  ); 
  end Data_controller;



architecture Behavioral of Data_controller is

--LDPC cores signals 
type sel_code_rate is array (N-1 downto 0) of std_logic_vector(DATA_WIDTH-1 downto 0);
signal sel_cr : sel_code_rate := (
"00000000000010000000000000000001", --Code rate = 1/2 , N = 1296 
"00000000000010000000000000000100", --Code rate = 2/3 , N = 1296 
"00000000000010000000000000001000", --Code rate = 3/4 , N = 1944
"00000000000010000000000000001011");--Code Rate = 5/6 , N = 1944 
type data_in_128bits is array(N-1 downto 0) of std_logic_vector(CORE_DATA_WIDTH-1 downto 0) ;
signal input_data_128bits,output_data_128bits : data_in_128bits := (others => (others => '0')) ; 
--Sequential Logic signals

signal data_in_last   : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal core_in_ready  : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal data_in_valid  : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal data_out_valid : std_logic_vector(N-1 downto 0 ) := (others => '0') ; 
signal pad_counter0,pad_counter1,pad_counter2,pad_counter3 : integer range 0 to 50:= 0 ;
signal data_input0, data_input1, data_input2, data_input3 : std_logic_vector(DATA_WIDTH -1 downto 0) := (others => '0') ;
--attribute dont_touch : string ;
--attribute dont_touch  of pad_counter0  : signal is "true" ;
--attribute dont_touch  of pad_counter1  : signal is "true" ;
--attribute dont_touch  of pad_counter2  : signal is "true" ;
--attribute dont_touch  of pad_counter3  : signal is "true" ;

signal reset_core     : std_logic := '0';
signal cw_counter0    : integer range  0 to 50 := 0 ;
signal cw_counter1    : integer range  0 to 50 := 0 ;
signal cw_counter2    : integer range  0 to 30 := 0 ;
signal cw_counter3    : integer range  0 to 50 := 0 ;
signal buff_count0, buff_count1, buff_count2, buff_count3  : integer range 0 to 3:= 0 ;

--Combinational logic signals
signal padding_process : std_logic := '0';
type fsm_input is (idle, encoding, buffering , padding) ;
signal state0,state1,state2,state3 : fsm_input := idle ;
signal next_state0,next_state1,next_state2,next_state3 : fsm_input := idle ;
signal next_counter0  : integer range  0 to 50 := 0 ;
signal next_counter1  : integer range  0 to 50 := 0 ;
signal next_counter2  : integer range  0 to 50 := 0 ;
signal next_counter3  : integer range  0 to 50 := 0 ;
signal next_dout_ready: std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal next_dout_valid: std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal next_din_valid : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal next_dout_last : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal next_dout_data0, next_dout_data1, next_dout_data2, next_dout_data3  : std_logic_vector(CORE_DATA_WIDTH-1 downto 0 ) := (others => '0') ;
type save_data is array( N-1 downto 0) of std_logic_vector(DATA_WIDTH-1 downto 0) ;
 signal buffer_data0, buffer_data1, buffer_data2, buffer_data3  : std_logic_vector(31 downto 0)  := (others => '0') ;

begin

seq_process : process(clk,reset)
begin
if reset = '1' then 
        cw_counter0      <= 0;
        cw_counter1      <= 0;
        cw_counter2      <= 0;
        cw_counter3      <= 0;
        reset_cores      <= '0';       
        data_input0      <= (others => '0') ;
        data_input1      <= (others => '0') ;
        data_input2      <= (others => '0') ;
        data_input3      <= (others => '0') ;       
        state0           <= idle;
        state1           <= idle;
        state2           <= idle;
        state3           <= idle;
elsif rising_edge (clk) then 
 
         reset_cores   <= '1';
         cw_counter0   <= next_counter0 ;  
         cw_counter1   <= next_counter1;
         cw_counter2   <= next_counter2;
         cw_counter3   <= next_counter3;
         data_input0   <= din_data_core0 ;
         data_input1   <= din_data_core1 ;
         data_input2   <= din_data_core2 ;
         data_input3   <= din_data_core3 ;      
         state0        <= next_state0  ;
         state1        <= next_state1  ;
         state2        <= next_state2  ;
         state3        <= next_state3  ;
         
 end if ;

end process ;

--This process is needed for enabling the padding process in the combinational logics , inserting the pad_counter signals in their sensitivity list
pad_enable : process (clk , reset)
begin
if reset = '1'then 
        pad_counter0     <= 0 ;
        pad_counter1     <= 0 ;
        pad_counter2     <= 0 ;
        pad_counter3     <= 0 ;
        
elsif rising_edge (clk) then          
            
            if state0 = padding  then 
                  pad_counter0 <= pad_counter0 + 1  ;
            else 
                  pad_counter0 <= 0 ;
            end if ;
            
             if state1 = padding  then 
                  pad_counter1 <= pad_counter1 + 1  ;
            else 
                  pad_counter1 <= 0 ;
            end if ;
            
             if state2 = padding  then 
                  pad_counter2 <= pad_counter2 + 1  ;
            else 
                  pad_counter2 <= 0 ;
            end if ;
            
             if state3 = padding  then 
                  pad_counter3 <= pad_counter3 + 1  ;
            else 
                  pad_counter3 <= 0 ;
            end if ;
end if ;               
end process; 
buffering_process : process (clk, reset) 

begin 
if reset = '1'then 
        saved_data0     <= (others => (others => '0')) ;  
        saved_data1     <= (others => (others => '0')) ;  
        saved_data2     <= (others => (others => '0')) ;  
        saved_data3     <= (others => (others => '0')) ; 
        buff_count0      <= 0 ;   
        buff_count1      <= 0 ;   
        buff_count2      <= 0 ;   
        buff_count3      <= 0 ;   
elsif rising_edge (clk) then 
     if state0 = buffering  then
        if buff_count0 < 2 then
         saved_data0(buff_count0) <= buffer_data0;
         buff_count0   <= buff_count0 +1 ;            
        end if ;       
     else 
        buff_count0 <= 0 ;  
     end if ; 
     
    if state1 = buffering  then
        if buff_count1 < 2 then
         saved_data1 (buff_count1) <= buffer_data1  ;
         buff_count1   <= buff_count1 +1 ;            
        end if ;       
     else 
        buff_count1 <= 0 ;  
     end if ; 
      if state2 = buffering  then
        if buff_count2 < 2 then
         saved_data2(buff_count2) <= buffer_data2   ;
         buff_count2   <= buff_count2 +1 ;            
        end if ;       
     else 
        buff_count2 <= 0 ;  
     end if ; 
     
      if state3 = buffering  then
        if buff_count3 < 2  then
         saved_data3(buff_count3) <= buffer_data3   ;
         buff_count3   <= buff_count3 +1 ;            
        end if ;       
     else 
        buff_count3 <= 0 ;  
     end if ; 
     
   
   end if ;        
end process ;

--Combinational process with 3 states : Idle ( starting state) , encoding  and padding when the last stream of data does not complete an entire block of size K (info bits)
comb_logic_core0 : process(data_input0 ,din_ready(0), din_valid(0), din_last(0), pad_counter0, cw_counter0 , saved_data0, state0 ) 
variable counter  : integer range 0 to 2 := 0 ;

begin
--Default values 
dout_data0  <= x"000000000000000000000000" & data_input0 ;
dout_ready(0)     <= din_ready(0) ; --din_ready is the signal coming from the LDPC core0 ,assign this value to dout_ready signal for informing the FIFO0 that the data_controller is ready to receive the data
dout_valid(0)     <= '0'; 
dout_last(0)      <= '0';
next_counter0          <= cw_counter0 ; --It is fundamental to count the input words since depending from the size of K ,the LDPC encoder truncates the last word , so the last word of the input block is padded 
next_state0 <= state0;

case state0 is
    when idle => 
        buffer_data0 <= (others => '0');
        counter  := 0 ;
        dout_last(0) <= '0';
        next_counter0     <= 0;
        dout_valid(0)  <= '1';

       if din_valid(0) = '1' and din_ready(0) = '1' then 
          next_state0              <= encoding ;
     dout_data0 <= x"000000000000000000000000" & data_input0 ;
          next_counter0     <= 0;
       else  
          next_state0 <= idle ;
          dout_valid(0)  <= '0';
          dout_data0 <= (others => '0')  ; 
       end if ;
    when  encoding => 
         
          --Normal encoding case 
             counter  := 0 ;
             buffer_data0 <=  (others => '0') ; 
             dout_data0 <= x"000000000000000000000000" & data_input0 ;
             
             if din_valid(0) = '1' and din_ready(0) = '1' and din_last(0)= '0' then 
                   next_state0 <= encoding  ;
                   dout_valid(0) <= '1'; 

                    if cw_counter0 < 49 then 
                       next_counter0 <= cw_counter0  + 1; 
                       dout_ready(0) <= din_ready(0) ;
                       dout_data0 <= x"000000000000000000000000" & data_input0 ;
                    elsif  cw_counter0 = 49 then 
                       dout_data0 <= x"000000000000000000000000" & data_input0 ;
                       dout_ready(0) <= '0' ;
                       next_counter0 <= cw_counter0  + 1; 
                    else
                       dout_data0 <= x"0000000000000000000000005A5A5A5A" ;
                       next_counter0 <= 0;
                       dout_ready(0) <= din_ready(0) ;
                     
                    
                    end if ;
           --End of frame, check if the last word is the last in the block, if positive a padding value is sent out, then when since din_valid and din_last stay HIGH for 2 clock cycles, 
           --in the second clock period is sent out the normal data as first value in the block and then goes in the padding state for full filling the block of size K      
              elsif din_valid(0) = '1' and din_ready(0) = '1' and din_last(0)= '1' then      
                    dout_ready(0) <= din_ready(0) ;
                    if cw_counter0 < 50 then 
                       dout_data0 <= x"000000000000000000000000" & data_input0 ;
                       next_counter0 <= cw_counter0  + 1; 
                       next_state0 <= padding ;     
                    else  
                       dout_data0  <= x"0000000000000000000000005A5A5A5A" ;   
                       next_counter0 <= 0 ;
                       next_state0 <= encoding ;       
                    end if ;   
           --Case when the internal FIFO of the LDPC encoder is full      
              elsif din_valid(0) = '1' and din_ready(0) = '0' and din_last(0)= '0' then  
                   dout_ready(0) <= din_ready(0) ;       
                   next_counter0 <= cw_counter0  ;  
                   dout_valid(0) <= '1'; 
                   dout_data0 <= x"000000000000000000000000" & data_input0 ;
                   buffer_data0 <= data_input0 ;
                   counter := counter + 1 ;
                   next_state0 <= buffering  ;
           --Case when the internal FIFO of the LDPC encoder is full and the input data is the end of frame  

              elsif din_valid(0) = '1' and din_ready(0) = '0' and din_last(0)= '1' then  
                   dout_ready(0) <= din_ready(0) ;
                   dout_valid(0) <= '1'; 
                   dout_data0 <= x"000000000000000000000000" & data_input0 ;                      
                      if cw_counter0 < 50  then 
                         next_counter0 <= cw_counter0 + 1 ; 
                         next_state0 <= padding  ;   
                                                             
                      else
                         dout_data0 <= x"0000000000000000000000005A5A5A5A" ;
                         next_state0 <= encoding ;
                         next_counter0 <= 0 ;
                      end if ; 
            --Case when  input data is the end of frame and the FIFO is ready again 
         
              elsif din_valid(0) = '0' and din_ready(0) = '1' and din_last(0)= '1' then   
                         dout_data0 <= x"000000000000000000000000" & data_input0 ;       
                         next_counter0    <= cw_counter0 + 1 ; 
                         next_state0 <= padding  ;       
                         dout_valid(0) <= '1'; 
                           
              else 
                   dout_data0 <= (others => '0') ;                     
                   next_state0 <= encoding ;
                   dout_valid(0) <= '0'; 
                   next_counter0 <= cw_counter0 ;
                   dout_ready(0) <= din_ready(0) ;
                    
              end if ;
     when buffering => 
         buffer_data0 <= data_input0  ;
         dout_valid(0) <= '1'; 
         if din_ready(0)  =  '1' and counter /= 0 then
               dout_data0 <= x"000000000000000000000000" & saved_data0(0) ;
               next_counter0    <= cw_counter0 + 1 ; 
               next_state0 <= buffering ;
               counter := 0 ;
               dout_ready(0) <= '1' ; 
         elsif din_ready(0)  = '1' and counter = 0 then 
               counter  := 0 ;
               dout_data0 <=x"000000000000000000000000" &  saved_data0(1)  ;  
               next_counter0    <= cw_counter0 + 1 ;
               dout_ready(0) <= '1' ; 
               next_state0             <= encoding ;
         else 
--              buffer_data0(counter) <= data_input0  ;
              counter  := counter + 1 ;
              dout_ready(0) <= '0' ; 
              next_counter0      <= cw_counter0 ;
              next_state0        <= buffering ;
          end if ;    
     when padding => 
          counter  := 0 ;
          buffer_data0 <= (others => '0')  ;
          dout_ready(0) <= din_ready(0) ;       
          dout_valid(0) <= '1'; 
          dout_data0 <=  x"0000000000000000000000005A5A5A5A" ;
              if din_ready(0) = '1' then
                 
                 next_counter0 <= cw_counter0  + 1; 

                 if cw_counter0 = 52 then 
                    next_state0 <= idle ;        
                    dout_last(0)  <= '1';
                    next_counter0 <= 0 ;
                 else    
                    next_state0 <= padding ;                    
                    dout_last(0)  <= '0';
                 end if ;
              else 
                    next_state0 <= padding ;        
                    next_counter0 <= cw_counter0 ;
                    dout_last(0)  <= '0';

              end if ;
      when others => 
          counter  := 0 ;
          dout_valid(0) <= '0';   
          buffer_data0 <= (others => '0');  
          dout_data0 <= ( others => '0') ;
          next_state0 <= idle ;
          next_counter0 <= 0;
          dout_ready(0) <= '0';
      end case ;    
end process ;
comb_logic_core1 : process(data_input1 ,din_ready(1), din_valid(1), din_last(1), pad_counter1,cw_counter1, saved_data1,state1 ) 
variable counter : integer range 0 to 2 := 0 ;
begin
--Default values 
--dout_data0 <= (others => '0')  ;
dout_ready(1)     <= din_ready(1) ; --din_ready is the signal coming from the LDPC core1 ,assign this value to dout_ready signal for informing the FIFO1 that the data_controller is ready to receive the data
dout_valid(1)          <= '0'; 
dout_last(1)      <= '0';
next_counter1          <= cw_counter1 ; --It is fundamental to count the input words since depending from the size of K ,the LDPC encoder truncates the last word , so the last word of the input block is padded 
dout_last(1)      <= '0';
dout_data1             <= (others => '0')  ;
next_state1            <= state1;

case state1 is
    when idle => 
        counter  := 0 ;
        dout_last(1) <= '0';
        next_counter1     <= 0;
       
        buffer_data1 <= (others => '0')  ; 
       if din_valid(1) = '1' and din_ready(1) = '1' then 
          next_state1              <= encoding ;
          dout_valid(1)  <= '1';
          dout_data1 <= x"000000000000000000000000" & data_input1 ;
          next_counter1 <= 0; 
       else  
          next_state1 <= idle ;
          dout_valid(1)  <= '0';
          dout_data1 <= (others => '0')  ;
       end if ;
    when  encoding => 
          --Normal encoding case 
             counter  := 0 ;
             buffer_data1 <= (others => '0');
             dout_data1 <= x"000000000000000000000000" & data_input1 ;

             if din_valid(1) = '1' and din_ready(1) = '1' and din_last(1)= '0' then 
                   next_state1 <= encoding  ;
                   dout_valid(1) <= '1'; 

                    if cw_counter1 < 44 then 
                       next_counter1 <= cw_counter1  + 1; 
                       dout_ready(1) <= din_ready(1) ;
                       dout_data1 <= x"000000000000000000000000" & data_input1 ;
                    elsif  cw_counter1 = 44 then 
                       dout_data1 <= x"000000000000000000000000" & data_input1 ;
                       dout_ready(1) <= not (din_ready(1)) ;
                       next_counter1 <= cw_counter1  + 1; 
                    else
                       dout_data1 <= x"0000000000000000000000005A5A5A5A" ;
                       next_counter1 <= 0;
                       dout_ready(1) <= din_ready(1) ;
                    end if ;
           --End of frame, check if the last word is the last in the block, if positive a padding value is sent out, then when since din_valid and din_last stay HIGH for 2 clock cycles, 
           --in the second clock period is sent out the normal data as first value in the block and then goes in the padding state for full filling the block of size K      
              elsif din_valid(1) = '1' and din_ready(1) = '1' and din_last(1)= '1' then      
                    dout_ready(1) <= din_ready(1) ;
                    if cw_counter1 < 45 then 
                       dout_data1 <= x"000000000000000000000000" & data_input1 ;
                       next_counter1 <= cw_counter1  + 1; 
                       next_state1 <= padding ;     
                    else  
                       dout_data1  <= x"0000000000000000000000005A5A5A5A" ;   
                       next_counter1 <= 0 ;
                       next_state1 <= encoding ;       
                    end if ;   
           --Case when the internal FIFO of the LDPC encoder is full      
              elsif din_valid(1) = '1' and din_ready(1) = '0' and din_last(1)= '0' then  
                   dout_ready(1) <= din_ready(1) ;       
                   next_counter1 <= cw_counter1 ;    
                   dout_valid(1) <= '1'; 
                   dout_data1 <= x"000000000000000000000000" & data_input1 ;
                   buffer_data1 <= data_input1 ;
                   counter := counter + 1 ;
                   next_state1 <= buffering  ;
           --Case when the internal FIFO of the LDPC encoder is full and the input data is the end of frame  

              elsif din_valid(1) = '1' and din_ready(1) = '0' and din_last(1)= '1' then  
                   dout_ready(1) <= din_ready(1) ;
                   dout_valid(1) <= '1'; 

                      if cw_counter1 < 45  then 
                         dout_data1 <= x"000000000000000000000000" & data_input1 ;                      
                         next_counter1 <= cw_counter1 + 1 ; 
                         next_state1 <= padding  ;   
                                                             
                      else
                         dout_data1 <= x"0000000000000000000000005A5A5A5A" ;
                         next_state1 <= encoding ;
                         next_counter1 <= 0 ;
                      end if ; 
            --Case when  input data is the end of frame and the FIFO is rady again 
         
              elsif din_valid(1) = '0' and din_ready(1) = '1' and din_last(1)= '1' then   
                         dout_data1 <= x"000000000000000000000000" & data_input1 ;       
                         next_counter1    <= cw_counter1 + 1 ; 
                         next_state1 <= padding  ;       
                         dout_valid(1) <= '1'; 

                           
              else 
                   dout_data1 <= (others => '0') ;                     
                   next_state1 <= encoding ;
                   dout_valid(1) <= '0'; 
                   next_counter1 <= cw_counter1 ;
                   dout_ready(1) <= din_ready(1) ;

              end if ; 
       when buffering => 
         buffer_data1 <= data_input1 ;
         dout_valid(1) <= '1'; 
         dout_ready(1) <= din_ready(1) ;
         if din_ready(1)  =  '1' and counter /= 0 then
               dout_data1 <= x"000000000000000000000000" & saved_data1(0) ;
               next_counter1    <= cw_counter1 + 1 ; 
               next_state1 <= buffering ;
               counter  := 0 ;
         elsif din_ready(1)  = '1' and counter = 0 then 
               counter  := 0 ;
               dout_data1 <= x"000000000000000000000000" & saved_data1(1)  ;  
               next_counter1    <= cw_counter1 + 1 ;
               next_state1             <= encoding ;

         else 
              counter := counter + 1 ;
              next_counter1      <= cw_counter1 ;
              next_state1        <= buffering ;           
--              dout_data1 <= x"000000000000000000000000" &  data_input1 ;
          end if ;              
     when padding => 
          dout_valid(1) <= '1'; 
          counter  := 0 ;
          dout_data1 <=  x"0000000000000000000000005A5A5A5A" ;
          buffer_data1 <= (others => '0');
   
              if din_ready(1) = '1' then                
                 next_counter1 <= cw_counter1  + 1; 
                 dout_ready(1) <= not(din_ready(1)) ;       

                 if cw_counter1 = 47 then 
                    next_state1 <= idle ;        
                    dout_last(1)  <= '1';
                    next_counter1 <= 0 ;
                 else    
                    next_state1 <= padding ;                    
                    dout_last(1)  <= '0';
                 end if ;
                 
              else 
                   dout_ready(1) <= din_ready(1) ;       
                    next_state1 <= padding ;        
                    next_counter1 <= cw_counter1 ;
                    dout_last(1)  <= '0';

              end if ;
      when others => 
          counter  := 0 ;
          dout_valid(1) <= '0';     
          dout_data1 <= ( others => '0') ;
          buffer_data1 <=  (others => '0') ;
          next_state1 <= idle ;
          next_counter1 <= 0;
          dout_ready(1) <= '0';
      end case ;    
end process ;
comb_logic_core2 : process(data_input2, din_ready(2), din_valid(2), din_last(2), pad_counter2,cw_counter2, saved_data2,state2 )
    variable counter : integer range 0 to 2 := 0 ;
    begin
        -- Default values
        dout_data2 <= (others => '0') ;
        dout_ready(2) <= din_ready(2); -- Pass ready signal from LDPC core
        dout_valid(2) <= '0';
        dout_last(2) <= '0';
        next_counter2 <= cw_counter2;
        dout_data2 <= x"000000000000000000000000" & data_input2;
        next_state2 <= state2;

        case state2 is
            when idle =>
                counter  := 0 ;
                dout_last(2) <= '0';
                next_counter2 <= 0;
                buffer_data2 <= (others => '0') ;
--               dout_data2 <= (others => '0') ;
                if din_valid(2) = '1' and din_ready(2) = '1' then
                    next_state2 <= encoding;
                    dout_valid(2) <= '1';
                    dout_data2 <= x"000000000000000000000000" & data_input2;

                else
                    next_state2 <= idle;
                    dout_valid(2) <= '0';   
                    dout_data2 <= (others => '0') ;

                    
                end if;

            when encoding =>
                counter  := 0 ;           
                buffer_data2 <= (others => '0') ;
                if din_valid(2) = '1' and din_ready(2) = '1' and din_last(2) = '0' then
                    next_state2 <= encoding;
                    dout_valid(2) <= '1';
                   dout_data2 <= x"000000000000000000000000" & data_input2;
                    dout_ready(2) <= din_ready(2);
                    if cw_counter2 < 26 then
                        next_counter2 <= cw_counter2 + 1;
                    else
                        next_counter2 <= 0;
                    end if;
                elsif din_valid(2) = '1' and din_ready(2) = '1' and din_last(2) = '1' then
                    dout_ready(2) <= din_ready(2);
                   dout_data2 <= x"000000000000000000000000" & data_input2;
                    dout_valid(2) <= '1';

                    if cw_counter2 < 26 then                     
                       
                        next_counter2 <= cw_counter2 +1 ;
                        next_state2 <= padding;
                        dout_last(2) <= '0';           
                        
                    else                 
                        next_counter2 <= 0;
                        next_state2 <= idle;                       
                        dout_last(2) <= '1';

                    end if;
                elsif din_valid(2) = '1' and din_ready(2) = '0' and din_last(2) = '0' then
                    dout_ready(2) <= din_ready(2);
                    next_counter2 <= cw_counter2;
                    dout_valid(2) <= '1';
                    dout_data2 <= x"000000000000000000000000" & data_input2;
                    buffer_data2 <= data_input2 ;
                    counter := counter + 1 ;
                    next_state2 <= buffering;                   
                elsif din_valid(2) = '1' and din_ready(2) = '0' and din_last(2) = '1' then
                    dout_ready(2) <= din_ready(2);
                    dout_data2 <= x"000000000000000000000000" & data_input2;
                    dout_valid(2) <= '1';
                    next_counter2 <= cw_counter2;
                    

                    if cw_counter2 < 26  then
                       next_state2 <= padding;                       
                    else
                       next_state2 <= encoding;
                    end if;
                elsif din_valid(2) = '0' and din_ready(2) = '1' and din_last(2) = '1' then  
                      next_counter2 <= 0 ;
                      dout_valid(2) <= '1';
                      next_state2 <= idle ;
                      dout_data2 <= x"000000000000000000000000" & data_input2;
                else
                    dout_data2 <= (others => '0');
                    next_state2 <= encoding;
                    dout_valid(2) <= '0';
                    next_counter2 <= cw_counter2;
                    dout_ready(2) <= din_ready(2);
                end if;
           when buffering => 
                buffer_data2 <= data_input2 ;
                dout_valid(2) <= '1'; 
                dout_ready(2) <= din_ready(2) ;
                 if din_ready(2)  =  '1' and counter /= 0 then
                       dout_data2 <= x"000000000000000000000000" & saved_data2(0) ;
                       next_counter2    <= cw_counter2 + 1 ; 
                       next_state2 <= buffering ;
                       counter  := 0 ;
                 elsif din_ready(2)  = '1' and counter = 0 then 
                       counter  := 0 ;
                       dout_data2 <= x"000000000000000000000000" &  saved_data2(1)  ;  
                       next_counter2    <= cw_counter2 + 1 ;
                       next_state2             <= encoding ;
                 else 
                      counter  := counter + 1 ;
                      next_counter2      <= cw_counter2 ;
                      next_state2        <= buffering ;

                 end if ;  
            when padding =>
                counter  := 0 ;            
                buffer_data2 <=  (others => '0') ;              
                dout_valid(2) <= '1';
                dout_data2 <= x"0000000000000000000000005A5A5A5A";
                if din_ready(2) = '1' then
                    next_counter2 <= cw_counter2 + 1;
                    dout_ready(2) <= not(din_ready(2)) ;       
                    if cw_counter2 = 28 then
                        next_state2 <= idle;
                        dout_last(2) <= '1';
                        next_counter2 <= 0;
                    else
                        next_state2 <= padding;
                        dout_last(2) <= '0';
                    end if;
                else
                    dout_ready(2) <= din_ready(2) ;       
                    next_state2 <= padding;
                    next_counter2 <= cw_counter2;
                    dout_last(2) <= '0';
                end if;
        when others => 
                dout_valid(2) <= '0';
                dout_data2 <= (others => '0');
                next_state2 <= idle;
                next_counter2 <= 0;
                dout_ready(2) <= '0';
        end case;
    end process;
comb_logic_core3 : process(data_input3 ,din_ready(3), din_valid(3), din_last(3), pad_counter3, cw_counter3, saved_data3, state3 ) 
variable counter : integer range 0 to 2 := 0;
begin
--Default values 
dout_ready(3)     <= din_ready(3) ; --din_ready is the signal coming from the LDPC core3 ,assign this value to dout_ready signal for informing the FIFO3 that the data_controller is ready to receive the data
dout_valid(3)     <= '0'; 
dout_last(3)      <= '0';
next_counter3          <= cw_counter3 ; --It is fundamental to count the input words since depending from the size of K ,the LDPC encoder truncates the last word , so the last word of the input block is padded 
dout_last(3)      <= '0';
dout_data3 <= x"000000000000000000000000" & data_input3  ;  
next_state3 <= state3 ;

case state3 is
    when idle => 
        counter  := 0 ;
        dout_last(3) <= '0';
        next_counter3     <= 0;
        buffer_data3 <=(others => '0');
        dout_last(3)      <= '0';
 
--        dout_data3 <= (others => '0') ;  
       if din_valid(3) = '1' and din_ready(3) = '1' then 
          next_state3               <= encoding ;
          dout_valid(3)  <= '1';
          next_counter3 <= 0; 
          dout_data3 <= x"000000000000000000000000" & data_input3 ;

       else  
          next_state3  <= idle ;
          dout_data3 <= (others => '0') ;  
          dout_valid(3)  <= '0';
       end if ;
    when  encoding => 
          --Normal encoding case 
             counter  := 0 ;
             buffer_data3 <= (others => '0') ;
             dout_data3 <= x"000000000000000000000000" & data_input3 ;

             if din_valid(3) = '1' and din_ready(3) = '1' and din_last(3)= '0' then 
                   next_state3 <= encoding  ;
                   dout_valid(3) <= '1'; 
                   
                    if cw_counter3 < 19 then 
                       next_counter3 <= cw_counter3  + 1; 
                       dout_ready(3) <= din_ready(3) ;
                       dout_data3 <= x"000000000000000000000000" & data_input3 ;
                    elsif  cw_counter3 = 19 then 
                       dout_data3 <= x"000000000000000000000000" & data_input3 ;
                       dout_ready(3) <= (not din_ready(3)) ;
                       next_counter3 <= cw_counter3  + 1; 
                    else
                       dout_data3 <= x"0000000000000000000000005A5A5A5A" ;
                       next_counter3 <= 0;
                       dout_ready(3) <= din_ready(3) ;
                    end if ;
           --End of frame, check if the last word is the last in the block, if positive a padding value is sent out, then when since din_valid and din_last stay HIGH for 2 clock cycles, 
           --in the second clock period is sent out the normal data as first value in the block and then goes in the padding state for full filling the block of size K      
              elsif din_valid(3) = '1' and din_ready(3) = '1' and din_last(3)= '1' then      
                    dout_ready(3) <= din_ready(3) ;
                    if cw_counter3 < 20 then 
                       dout_data3 <= x"000000000000000000000000" & data_input3 ;
                       next_counter3 <= cw_counter3  + 1; 
                       next_state3 <= padding ;     
                    else  
                       dout_data3  <= x"0000000000000000000000005A5A5A5A" ;   
                       next_counter3 <= 0 ;
                       next_state3 <= encoding ;       
                    end if ;   
           --Case when the internal FIFO of the LDPC encoder is full      
              elsif din_valid(3) = '1' and din_ready(3) = '0' and din_last(3)= '0' then  
                   dout_ready(3) <= din_ready(3) ;       
--                   next_counter3 <= cw_counter3 + 1 ;  
                   dout_valid(3) <= '1'; 
                   dout_data3 <= x"000000000000000000000000" & data_input3 ;
                   buffer_data3       <= data_input3 ;
--                   counter := counter + 1 ;
                   next_state3 <= buffering;                 
        --Case when the internal FIFO of the LDPC encoder is full and the input data is the end of frame  

              elsif din_valid(3) = '1' and din_ready(3) = '0' and din_last(3)= '1' then  
                   dout_ready(3) <= din_ready(3) ;
                   dout_valid(3) <= '1'; 
                   
                      if cw_counter3 < 20  then 
                         dout_data3 <= x"000000000000000000000000" & data_input3 ;                      
                         next_counter3 <= cw_counter3 + 1 ; 
                         next_state3 <= padding  ;   
                                                             
                      else
                         dout_data3 <= x"0000000000000000000000005A5A5A5A" ;
                         next_state3 <= encoding ;
                         next_counter3 <= 0 ;
                      end if ; 
            --Case when  input data is the end of frame and the FIFO is rady again 
         
              elsif din_valid(3) = '0' and din_ready(3) = '1' and din_last(3)= '1' then   
                         dout_data3 <= x"000000000000000000000000" & data_input3 ;       
                         next_counter3    <= cw_counter3 + 1 ; 
                         next_state3 <= padding  ;       
                         dout_valid(3) <= '1'; 
    
                           
              else 
                   dout_data3 <= (others => '0') ;                     
                   next_state3 <= encoding ;
                   dout_valid(3) <= '0'; 
                   next_counter3 <= cw_counter3 ;
                   dout_ready(3) <= din_ready(3) ;

              end if ;
       when buffering => 
         buffer_data3       <= data_input3 ;
         dout_valid(3) <= '1'; 
         dout_ready(3) <=  din_ready(3) ; 

         if din_ready(3)  =  '1' and counter /= 0 then
               dout_data3 <= x"000000000000000000000000" & saved_data3(0) ;
               next_counter3    <= cw_counter3 + 1 ; 
               next_state3 <= buffering ;
               counter := 0 ;

         elsif din_ready(3)  = '1' and counter = 0 then 
               counter  := 0 ; 
               dout_data3 <= x"000000000000000000000000" & saved_data3(1)  ;  
               next_state3 <= encoding  ;

               next_counter3    <= cw_counter3 + 1 ;
         else 
              dout_data3  <= x"000000000000000000000000" & data_input3 ;
              counter := counter + 1 ;
              next_state3   <= buffering ;
              next_counter3 <= cw_counter3 ;
          end if ;               
     when padding => 
          counter  := 0 ;
          buffer_data3 <= (others => '0');
          dout_valid(3) <= '1'; 
          dout_data3 <=  x"0000000000000000000000005A5A5A5A" ;
           
              if din_ready(3) = '1' then      
                 dout_ready(3) <= not (din_ready(3)) ;       
          
                 next_counter3 <= cw_counter3  + 1; 

                 if cw_counter3 = 22 then 
                    next_state3 <= idle ;        
                    dout_last(3)  <= '1';
                    next_counter3 <= 0 ;
                 else    
                    next_state3 <= padding ;                    
                    dout_last(3)  <= '0';
                 end if ;
                 
              else 
                    dout_ready(3) <= din_ready(3) ;       
                    next_state3 <= padding ;        
                    next_counter3 <= cw_counter3 ;
                    dout_last(3)  <= '0';

              end if ;
      when others => 
          counter  := 0 ;
          buffer_data3 <= (others => '0') ;
          dout_valid(3) <= '0';     
          dout_data3 <= ( others => '0') ;
          next_state3 <= idle ;
          next_counter3 <= 0;
          dout_ready(3) <= '0';
      end case ;    
end process ;

end Behavioral;
