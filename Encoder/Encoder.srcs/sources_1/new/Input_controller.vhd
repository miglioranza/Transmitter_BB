----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2025 01:41:32 PM
-- Design Name: 
-- Module Name: Input_controller - Behavioral
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

entity Input_controller is
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
  reset_cores       : out std_logic  );
  
end Input_controller;

architecture Behavioral of Input_controller is
--LDPC cores signals 

type fsm_input is (idle, signal_field_encoding, encoding ,buffering ,padding) ;
signal state0,state1,state2,state3 : fsm_input := idle ;
signal cw_counter0    : integer range  0 to 55 := 0 ;
signal cw_counter1    : integer range  0 to 50 := 0 ;
signal cw_counter2    : integer range  0 to 30 := 0 ;
signal cw_counter3    : integer range  0 to 50 := 0 ;
type save_data is array(N-1 downto 0) of std_logic_vector(DATA_WIDTH -1 downto 0) ;
signal buffer_data0, buffer_data1, buffer_data2, buffer_data3  : save_data  := (others => (others => '0')) ;

begin
core0_process : process (clk, reset) 
variable counter : integer range 0 to 2 := 0 ;
begin

if reset = '1' then 
        cw_counter0     <= 0;
        reset_cores     <= '0';    
        dout_data0      <= (others => '0') ;
        dout_valid(0)   <= '0';
        dout_last(0)    <= '0';
        dout_ready(0)   <= '0';
elsif rising_edge(clk) then 
        --default values         
        reset_cores     <= '1';    
        dout_data0  <= x"000000000000000000000000" & din_data_core0  ;
        dout_ready(0)     <= din_ready(0) ; --din_ready is the signal coming from the LDPC core0 ,assign this value to dout_ready signal for informing the FIFO0 that the data_controller is ready to receive the data
        dout_valid(0)     <= '0'; 
        dout_last(0)      <= '0';

case state0 is
    
    when idle => 
    counter := 0 ; 
        dout_last(0) <= '0';
        buffer_data0    <=(others =>  (others => '0')) ;
       if din_valid(0) = '1' and din_ready(0) = '1' then 
--          state0              <= encoding ;
          state0              <= signal_field_encoding ;
--          dout_data0 <= x"000000000000000000000000" & din_data_core0  ;
--          dout_valid(0)  <= '1';
--          cw_counter0      <= cw_counter0 + 1 ;

       else  
          state0 <= idle ;
          dout_valid(0)  <= '0';
          cw_counter0 <= 0 ;
          dout_data0 <= (others => '0')  ; 
       end if ;
    when signal_field_encoding => 
        dout_valid(0) <= '1'; 
         if cw_counter0 < 8 then 
            dout_data0 <= x"000000000000000000000000" & din_data_core0  ;
            cw_counter0 <= cw_counter0  + 1; 
         elsif cw_counter0 >= 8 and cw_counter0 <= 51 then
            dout_data0 <=  x"0000000000000000000000005A5A5A5A" ;
            cw_counter0 <= cw_counter0  + 1;
            dout_ready(0) <= '0';
         else 
            cw_counter0 <= 0 ;
            dout_valid(0) <= '0'; 
            state0 <= encoding;
         end if ;
    when  encoding => 
       counter := 0  ;
             if din_valid(0) = '1' and din_ready(0) = '1' and din_last(0)= '0' then 
                   state0 <= encoding  ;
                   dout_data0 <= x"000000000000000000000000" & din_data_core0  ;
                   dout_valid(0) <= '1'; 
                   buffer_data0(0) <= din_data_core0;
                   buffer_data0(1) <= (others => '0') ;
                   
                    if cw_counter0 < 49 then 
                       cw_counter0 <= cw_counter0  + 1; 
                       dout_ready(0) <= din_ready(0) ;
                       
                    elsif  cw_counter0 = 49 then 
                     
                       dout_ready(0) <= '0' ;
                       cw_counter0 <= cw_counter0  + 1; 
                    else
--                       dout_data0 <= x"0000000000000000000000005A5A5A5A" ;
                       cw_counter0 <= 0;
                       dout_ready(0) <= din_ready(0) ;
                     
                    
                    end if ;
              --End of frame, check if the last word is the last in the block, if positive a padding value is sent out, then when since din_valid and din_last stay HIGH for 2 clock cycles, 
           --in the second clock period is sent out the normal data as first value in the block and then goes in the padding state for full filling the block of size K      
          elsif din_valid(0) = '1' and din_ready(0) = '1' and din_last(0)= '1' then      
                    buffer_data0 <= (others => ( others => '0')) ;
                    dout_ready(0) <= din_ready(0) ;
                    dout_data0 <= x"000000000000000000000000" & din_data_core0  ;
                    dout_valid(0) <= '1'; 
                    cw_counter0  <= cw_counter0  + 1; 
                    state0  <= padding ;     
                    
             --Case when the internal FIFO of the LDPC encoder is full      
           elsif din_valid(0) = '1' and din_ready(0) = '0' and din_last(0)= '0' then  
                   dout_ready(0) <= din_ready(0) ;    
                   if cw_counter0 = 49 then 
                    cw_counter0 <= cw_counter0 + 1 ; 
                   else     
                    cw_counter0  <= cw_counter0  ;  
                   end if ;
                   dout_valid(0) <= '1'; 
                   dout_data0 <= x"000000000000000000000000" & din_data_core0  ;
                   buffer_data0(1) <= din_data_core0  ;           
                   buffer_data0(0) <= buffer_data0(0)  ;
                   counter := 0 ;
                   state0 <= buffering ;
         --Case when the internal FIFO of the LDPC encoder is full and the input data is the end of frame  

             elsif din_valid(0) = '1' and din_ready(0) = '0' and din_last(0)= '1' then  
                   buffer_data0 <= (others => ( others => '0')) ;
                   dout_ready(0) <= din_ready(0) ;
                   dout_valid(0) <= '1'; 
                   dout_data0 <= x"000000000000000000000000" & din_data_core0  ;  
                   cw_counter0 <= cw_counter0  ; 
                   state0  <= encoding   ;   
                                                                                                                                                                  
             elsif din_valid(0) = '0' and din_ready(0) = '1' and din_last(0)= '1' then 
                     buffer_data0 <= (others => ( others => '0')) ;  
                     dout_data0 <= x"000000000000000000000000" & din_data_core0  ;       
                     cw_counter0     <= cw_counter0 + 1 ; 
                     state0  <= padding  ;       
                     dout_valid(0) <= '1';   
               else 
                   buffer_data0 <= (others => ( others => '0')) ;
                   dout_data0 <= (others => '0') ;                     
                   state0 <= idle ;
                   dout_valid(0) <= '0'; 
                   cw_counter0  <= cw_counter0 ;
                   dout_ready(0) <= din_ready(0) ;
               end if ;     
          when buffering => 
                 buffer_data0 <= buffer_data0;
             
                 
                 if din_ready(0) = '1' and counter < 1 then 
                    dout_data0 <=    x"000000000000000000000000" & buffer_data0(1);
                    state0 <= buffering ;
                    counter := counter + 1 ;
                    dout_valid(0) <= '1'; 
                    cw_counter0     <= cw_counter0 + 1 ; 
                    dout_ready(0)   <= (not din_ready(0)) ;
                 elsif  din_ready(0) = '1' and counter = 1 then   
                      dout_data0  <= x"000000000000000000000000" &  din_data_core0 ;
                      cw_counter0     <= cw_counter0 ; 
                      state0 <= encoding ;
                      counter := 0 ;
                      if cw_counter0 = 50 then
                        dout_ready(0) <= ( not din_ready(0)) ;
                      else 
                        dout_ready(0) <= din_ready(0) ;
                      end if ;  
--                      dout_valid(0) <= '1';
                 else 
                    dout_valid(0) <= '1';
                    cw_counter0   <= cw_counter0 ;
                    dout_data0 <= x"000000000000000000000000" & buffer_data0(0) ;
                    state0  <= buffering ;
                    counter := 0 ;
                 end if ;   
          when padding =>     
                 counter := 0 ;
                 dout_ready(0) <= din_ready(0) ;       
                 dout_valid(0) <= '1'; 
                 dout_data0 <=  x"0000000000000000000000005A5A5A5A" ;
                 buffer_data0 <= (others => (others => '0'));  

              if din_ready(0) = '1' then
                 
                 cw_counter0  <= cw_counter0  + 1; 

                 if cw_counter0 > 53 then 
                    state0  <= idle ;        
                    dout_last(0)  <= '1';
                    dout_valid(0) <= '1'; 
                 else    
                    state0  <= padding ;                    
                    dout_last(0)  <= '0';
                 end if ;
              else 
                    state0  <= padding ;        
                    cw_counter0  <= cw_counter0 ;
                    dout_last(0)  <= '0';
              end if ;
          when others => 
          counter := 0 ;
          dout_valid(0) <= '0';   
          buffer_data0 <=(others =>  (others => '0'));  
          dout_data0 <= ( others => '0') ;
          state0 <= idle ;
          cw_counter0 <= 0;
          dout_ready(0) <= '0';
      end case ;                
end if ;           
end process ;
core1_process : process (clk, reset) 
variable counter : integer range 0 to 2 := 0;
begin

if reset = '1' then 
        cw_counter1     <= 0;
        dout_data1      <= (others => '0') ;
        dout_valid(1)   <= '0';
        dout_last(1)    <= '0';
        dout_ready(1)   <= '0';
elsif rising_edge(clk) then 
        --default values         
        dout_data1  <= x"000000000000000000000000" & din_data_core1  ;
        dout_ready(1)     <= din_ready(1) ; --din_ready is the signal coming from the LDPC core1 ,assign this value to dout_ready signal for informing the FIFO1 that the data_controller is ready to receive the data
        dout_valid(1)     <= '0'; 
        dout_last(1)      <= '0';
        

case state1 is
    when idle => 
        counter := 0 ;
        dout_last(1) <= '0';
        buffer_data1    <= (others => (others => '0')) ;
       if din_valid(1) = '1' and din_ready(1) = '1' then 
--          state1              <= encoding ;
          state1              <= signal_field_encoding  ;
--          dout_data1 <= x"000000000000000000000000" & din_data_core1  ;
--          dout_valid(1)  <= '1';
--          cw_counter1      <= cw_counter1 + 1 ;
            
       else  
          state1 <= idle ;
          dout_valid(1)  <= '0';
          cw_counter1 <= 0 ;
          dout_data1 <= (others => '0')  ; 
       end if ;
      when signal_field_encoding => 
        dout_valid(1) <= '1'; 
     if cw_counter1 < 8 then 
        dout_data1 <= x"000000000000000000000000" & din_data_core1  ;
        cw_counter1 <= cw_counter1  + 1; 
     elsif cw_counter1 >= 8 and cw_counter1 <= 45 then
        dout_data1 <=  x"0000000000000000000000005A5A5A5A" ;
        cw_counter1 <= cw_counter1  + 1;
        dout_ready(1) <= '0';
     else 
        cw_counter1 <= 0 ;
        dout_valid(1) <= '0'; 
        state1 <= encoding;
     end if ;
    when  encoding => 
 counter := 0 ;
 
             if din_valid(1) = '1' and din_ready(1) = '1' and din_last(1)= '0' then 
                   state1 <= encoding  ;
                   dout_data1 <= x"000000000000000000000000" & din_data_core1  ;
                   dout_valid(1) <= '1'; 
                   
                   buffer_data1(0) <= din_data_core1;
                   buffer_data1(1) <= (others => '0') ;
                    if cw_counter1 < 44 then 
                       cw_counter1 <= cw_counter1  + 1; 
                       dout_ready(1) <= din_ready(1) ;
                       
                    elsif  cw_counter1 = 44 then 
                     
                       dout_ready(1) <= '0' ;
                       cw_counter1 <= cw_counter1  + 1; 
                    else
--                       dout_data1 <= x"0000000000000000000000005A5A5A5A" ;
                       cw_counter1 <= 0;
                       dout_ready(1) <= din_ready(1) ;
                     
                    
                    end if ;
          elsif din_valid(1) = '1' and din_ready(1) = '1' and din_last(1)= '1' then      
                    buffer_data1 <= (others => ( others => '0')) ;
                    dout_ready(1) <= din_ready(1) ;
                    dout_data1 <= x"000000000000000000000000" & din_data_core1  ;
                    dout_valid(1) <= '1'  ;                     
                    cw_counter1  <= cw_counter1  + 1; 
                    state1  <= padding ;     
                    
           elsif din_valid(1) = '1' and din_ready(1) = '0' and din_last(1)= '0' then  
                   dout_ready(1) <= din_ready(1) ;       

                    if cw_counter1 = 44 then 
                        cw_counter1 <= cw_counter1 -1 ;
                   else     
                        cw_counter1  <= cw_counter1;  
                   end if ;

                   dout_valid(1) <= '1'; 
                   buffer_data1(0) <= buffer_data1(0) ;               
                   buffer_data1(1) <= din_data_core1  ;               
                   dout_data1 <= x"000000000000000000000000" & buffer_data1(0)    ;
                   state1 <= buffering ;
                   
             elsif din_valid(1) = '1' and din_ready(1) = '0' and din_last(1)= '1' then  
                   buffer_data1 <= (others => ( others => '0')) ;
                   dout_ready(1) <= din_ready(1) ;
                   dout_valid(1) <= '1'; 
                   dout_data1 <= x"000000000000000000000000" & din_data_core1  ;  
                   cw_counter1 <= cw_counter1  ; 
                   state1  <= encoding   ;   
                                                                                                                                                                  
             elsif din_valid(1) = '0' and din_ready(1) = '1' and din_last(1)= '1' then
                     buffer_data1 <= (others => ( others => '0')) ;
                     dout_data1 <= x"000000000000000000000000" & din_data_core1  ;       
                     cw_counter1     <= cw_counter1 + 1 ; 
                     state1  <= padding  ;       
                     dout_valid(1) <= '1';   
               else 
                   buffer_data1 <= (others => ( others => '0')) ;
                   dout_data1 <= (others => '0') ;                     
                   state1 <= idle ;
                   dout_valid(1) <= '0'; 
                   cw_counter1  <= cw_counter1 ;
                   dout_ready(1) <= din_ready(1) ;
               end if ;   
          when buffering => 
                 buffer_data1 <= buffer_data1;
                 
                if din_ready(1) = '1' and counter < 1 then 
                    dout_data1 <=    x"000000000000000000000000" & buffer_data1(1);
                    state1 <= buffering ;
                    counter := counter + 1 ;
                    dout_valid(1) <= '1'; 
                    cw_counter1     <= cw_counter1 + 1 ; 
                    dout_ready(1)   <= (not din_ready(1)) ;
                 elsif  din_ready(1) = '1' and counter = 1 then   
                      dout_data1  <= x"000000000000000000000000" & din_data_core1 ;
                      cw_counter1     <= cw_counter1 ; 
                       if cw_counter1 = 45 then 
                         dout_ready(1)   <= (not din_ready(1)) ; 
                      else 
                         dout_ready(1) <= din_ready(1) ;
                      end if ;       
                      state1 <= encoding ;
                      counter := 0 ;
                 else 
                    cw_counter1   <= cw_counter1 ;
                    
                    dout_data1 <= x"000000000000000000000000" & buffer_data1(0) ;
                     dout_valid(1) <= '1'; 
                    state1  <= buffering ;
                    counter := 0 ;
                 end if ;   
          when padding =>     
                 buffer_data1 <= (others => (others => '0')) ;
                 counter := 0 ;
                 dout_ready(1) <= din_ready(1) ;       
                 dout_valid(1) <= '1'; 
                 dout_data1 <=  x"0000000000000000000000005A5A5A5A" ;

               if din_ready(1) = '1' then
                 
                 cw_counter1  <= cw_counter1  + 1; 

                 if cw_counter1 = 47 then 
                    state1  <= idle ;        
                    dout_last(1)  <= '1';
                    cw_counter1  <= 0 ;
                 else    
                    state1  <= padding ;                    
                    dout_last(1)  <= '0';
                 end if ;
              else 
                    state1  <= padding ;        
                    cw_counter1  <= cw_counter1 ;
                    dout_last(1)  <= '0';
              end if ;
          when others => 
          buffer_data1 <= (others => ( others => '0')) ;
          counter := 0 ;
          dout_valid(1) <= '0';   
          buffer_data1 <= (others => (others => '0'));  
          dout_data1 <= ( others => '0') ;
          state1 <= idle ;
          cw_counter1 <= 0;
          dout_ready(1) <= '0';
      end case ;                
end if ;           
end process ;
core2_process : process (clk, reset) 
variable counter : integer range 0 to 2 := 0;
begin

if reset = '1' then 
        cw_counter2     <= 0;
        dout_data2      <= (others => '0') ;
        dout_valid(2)   <= '0';
        dout_last(2)    <= '0';
        dout_ready(2)   <= '0';
elsif rising_edge(clk) then 
        --default values         
        dout_data2  <= x"000000000000000000000000" & din_data_core2  ;
        dout_ready(2)     <= din_ready(2) ; --din_ready is the signal coming from the LDPC core2 ,assign this value to dout_ready signal for informing the FIFO2 that the data_controller is ready to receive the data
        dout_valid(2)     <= '0'; 
        dout_last(2)      <= '0';
        

case state2 is
    when idle => 
        counter := 0 ;
        dout_last(2) <= '0';
        buffer_data2    <= (others => (others => '0')) ;
       if din_valid(2) = '1' and din_ready(2) = '1' then 
--          state2              <= encoding ;
          state2              <= signal_field_encoding ;
--          dout_data2 <= x"000000000000000000000000" & din_data_core2  ;
--          dout_valid(2)  <= '1';
--          cw_counter2      <= cw_counter2 + 1 ;
            
       else  
          state2 <= idle ;
          dout_valid(2)  <= '0';
          cw_counter2 <= 0 ;
          dout_data2 <= (others => '0')  ; 
       end if ;
      when signal_field_encoding => 
    dout_valid(2) <= '1'; 
     if cw_counter2 < 8 then 
        dout_data2 <= x"000000000000000000000000" & din_data_core2  ;
        cw_counter2 <= cw_counter2  + 1; 
     elsif cw_counter2 >= 8 and cw_counter2 <= 26 then
        dout_data2 <=  x"0000000000000000000000005A5A5A5A" ;
        cw_counter2 <= cw_counter2  + 1;
        dout_ready(2) <= '0';
     else 
        cw_counter2 <= 0 ;
        dout_valid(2) <= '0'; 
        state2 <= encoding;
     end if ;
     when  encoding => 
     counter := 0 ;
     
             if din_valid(2) = '1' and din_ready(2) = '1' and din_last(2)= '0' then 
                   state2 <= encoding  ;
                   dout_data2 <= x"000000000000000000000000" & din_data_core2  ;
                   dout_valid(2) <= '1'; 
                   dout_ready(2) <= din_ready(2) ;
                   buffer_data2(0) <= din_data_core2;
                   buffer_data2(1) <= (others => '0') ;
                  
                    if cw_counter2 < 26 then 
                       cw_counter2 <= cw_counter2  + 1;           
                    else                    
                       cw_counter2 <= 0;                                   
                    end if ;
                    
          elsif din_valid(2) = '1' and din_ready(2) = '1' and din_last(2)= '1' then      
                    buffer_data2 <= (others => ( others => '0')) ;
                    dout_ready(2) <= din_ready(2) ;
                    dout_data2 <= x"000000000000000000000000" & din_data_core2  ;
                    dout_valid(2) <= '1'; 
                    cw_counter2  <= cw_counter2  + 1; 
                    state2  <= padding ;                                      
           elsif din_valid(2) = '1' and din_ready(2) = '0' and din_last(2)= '0' then  
                   dout_ready(2) <= din_ready(2) ;       
                   cw_counter2  <= cw_counter2  ;  
                   dout_valid(2) <= '1'; 
                   buffer_data2(0) <= buffer_data2(0) ;               
                   buffer_data2(1) <= din_data_core2  ;               
                   dout_data2 <= x"000000000000000000000000" & buffer_data2(0)    ;
                   state2 <= buffering ;
                   
             elsif din_valid(2) = '1' and din_ready(2) = '0' and din_last(2)= '1' then  
                   buffer_data2 <= (others => ( others => '0')) ;
                   dout_ready(2) <= din_ready(2) ;
                   dout_valid(2) <= '1'; 
                   dout_data2 <= x"000000000000000000000000" & din_data_core2  ;  
                   cw_counter2 <= cw_counter2  ; 
                   state2  <= encoding   ;   
                                                                                                                                                                  
             elsif din_valid(2) = '0' and din_ready(2) = '1' and din_last(2)= '1' then
                     buffer_data2 <= (others => ( others => '0')) ;
                     dout_data2 <= x"000000000000000000000000" & din_data_core2  ;       
                     cw_counter2     <= cw_counter2 + 1 ; 
                     state2  <= padding  ;       
                     dout_valid(2) <= '1';   
               else 
                   buffer_data2 <= (others => ( others => '0')) ;
                   dout_data2 <= (others => '0') ;                     
                   state2 <= idle ;
                   dout_valid(2) <= '0'; 
                   cw_counter2  <= cw_counter2 ;
                   dout_ready(2) <= din_ready(2) ;
               end if ;   
          when buffering => 
                 buffer_data2 <= buffer_data2;
                 
                if din_ready(2) = '1' and counter < 1 then 
                    dout_data2 <=    x"000000000000000000000000" & buffer_data2(1);
                    state2 <= buffering ;
                    counter := counter + 1 ;
                    dout_valid(2) <= '1'; 
                    cw_counter2     <= cw_counter2 + 1 ; 
                    dout_ready(2)   <= (not din_ready(2)) ;
                 elsif  din_ready(2) = '1' and counter = 1 then   
                      dout_data2  <= x"000000000000000000000000" & din_data_core2 ;
                      cw_counter2     <= cw_counter2  ; 
                      state2 <= encoding ;
                      counter := 0 ;
                 else 
                    cw_counter2   <= cw_counter2 ;
                    dout_data2 <= x"000000000000000000000000" & buffer_data2(0) ;
                    dout_valid(2) <= '1';
                    state2  <= buffering ;
                    counter := 0 ;
                 end if ;   
          when padding =>     
                 buffer_data2 <= (others => (others => '0')) ;
                 counter := 0 ;
                 dout_ready(2) <= din_ready(2) ;       
                 dout_valid(2) <= '1'; 
                 dout_data2 <=  x"0000000000000000000000005A5A5A5A" ;
                 buffer_data2 <= (others =>  (others => '0'));  

               if din_ready(2) = '1' then
                 
                 cw_counter2  <= cw_counter2  + 1; 

                 if cw_counter2 = 28 then 
                    state2  <= idle ;        
                    dout_last(2)  <= '1';
                    cw_counter2  <= 0 ;
                 else    
                    state2  <= padding ;                    
                    dout_last(2)  <= '0';
                 end if ;
              else 
                    state2  <= padding ;        
                    cw_counter2  <= cw_counter2 ;
                    dout_last(2)  <= '0';
              end if ;
          when others => 
          buffer_data2 <= (others => ( others => '0')) ;
          counter := 0 ;
          dout_valid(2) <= '0';   
          buffer_data2 <= (others => (others => '0'));  
          dout_data2 <= ( others => '0') ;
          state2 <= idle ;
          cw_counter2 <= 0;
          dout_ready(2) <= '0';
      end case ;                
end if ;           
end process ;
core3_process : process (clk, reset) 
variable counter : integer range 0 to 2 := 0;
begin

if reset = '1' then 
        cw_counter3     <= 0;
        dout_data3      <= (others => '0') ;
        dout_valid(3)   <= '0';
        dout_last(3)    <= '0';
        dout_ready(3)   <= '0';
elsif rising_edge(clk) then 
       --default values         
        dout_data3  <= x"000000000000000000000000" & din_data_core3  ;
        dout_ready(3)     <= din_ready(3) ; --din_ready is the signal coming from the LDPC core3 ,assign this value to dout_ready signal for informing the FIFO3 that the data_controller is ready to receive the data
        dout_valid(3)     <= '0'; 
        dout_last(3)      <= '0';
        

case state3 is
    when idle => 
        counter := 0 ;
        dout_last(3) <= '0';
        buffer_data3    <= (others => (others => '0')) ;
       if din_valid(3) = '1' and din_ready(3) = '1' then 
--          state3              <= encoding ;
          state3              <= signal_field_encoding ;
--          dout_data3 <= x"000000000000000000000000" & din_data_core3  ;
--          dout_valid(3)  <= '1';
--          cw_counter3      <= cw_counter3 + 1 ;
            
       else  
          state3 <= idle ;
          dout_valid(3)  <= '0';
          cw_counter3 <= 0 ;
          dout_data3 <= (others => '0')  ; 
       end if ;
        when signal_field_encoding => 
        dout_valid(3) <= '1'; 
         if cw_counter3 < 8 then 
            dout_data0 <= x"000000000000000000000000" & din_data_core3  ;
            cw_counter3 <= cw_counter3  + 1; 
         elsif cw_counter3 >= 8 and cw_counter3 <= 20 then
            dout_data3 <=  x"0000000000000000000000005A5A5A5A" ;
            cw_counter3 <= cw_counter3  + 1;
            dout_ready(3) <= '0';
         else 
            cw_counter3 <= 0 ;
            dout_valid(3) <= '0'; 
            state3 <= encoding;
         end if ;
     when  encoding => 
     counter := 0 ;
 
             if din_valid(3) = '1' and din_ready(3) = '1' and din_last(3)= '0' then 
                   state3 <= encoding  ;
                   dout_data3 <= x"000000000000000000000000" & din_data_core3  ;
                   dout_valid(3) <= '1'; 
                   
                   buffer_data3(0) <= din_data_core3;
                   buffer_data3(1) <= (others => '0') ;
                    if cw_counter3 < 19 then 
                       cw_counter3 <= cw_counter3  + 1; 
                       dout_ready(3) <= din_ready(3) ;
                       
                    elsif  cw_counter3 = 19 then 
                     
                       dout_ready(3) <= '0' ;
                       cw_counter3 <= cw_counter3  + 1; 
                    else
--                       dout_data3 <= x"0000000000000000000000005A5A5A5A" ;
                       cw_counter3 <= 0;
                       dout_ready(3) <= din_ready(3) ;
                     
                    
                    end if ;
          elsif din_valid(3) = '1' and din_ready(3) = '1' and din_last(3)= '1' then      
                    buffer_data3 <= (others => ( others => '0')) ;
                    dout_ready(3) <= din_ready(3) ;
                    dout_data3 <= x"000000000000000000000000" & din_data_core3  ;
                    dout_valid(3) <= '1';                     
                    cw_counter3  <= cw_counter3  + 1; 
                    state3  <= padding ;     
                 
           elsif din_valid(3) = '1' and din_ready(3) = '0' and din_last(3)= '0' then  
                   dout_ready(3) <= din_ready(3) ;   
                   if cw_counter3 = 19 then 
                        cw_counter3 <= cw_counter3 -1 ;
                   else     
                        cw_counter3  <= cw_counter3;  
                   end if ;
                   dout_valid(3) <= '1'; 
                   buffer_data3(0) <= buffer_data3(0) ;               
                   buffer_data3(1) <= din_data_core3  ;               
                   dout_data3 <= x"000000000000000000000000" & buffer_data3(0)    ;
                   state3 <= buffering ;
                   
             elsif din_valid(3) = '1' and din_ready(3) = '0' and din_last(3)= '1' then  
                   buffer_data3 <= (others => ( others => '0')) ;
                   dout_ready(3) <= din_ready(3) ;
                   dout_valid(3) <= '1'; 
                   dout_data3 <= x"000000000000000000000000" & din_data_core3  ;  
                   cw_counter3 <= cw_counter3  ; 
                   state3  <= encoding   ;   
                                                                                                                                                                  
             elsif din_valid(3) = '0' and din_ready(3) = '1' and din_last(3)= '1' then
                     buffer_data3 <= (others => ( others => '0')) ;
                     dout_data3 <= x"000000000000000000000000" & din_data_core3  ;       
                     cw_counter3     <= cw_counter3 + 1 ; 
                     state3  <= padding  ;       
                     dout_valid(3) <= '1';   
               else 
                   buffer_data3 <= (others => ( others => '0')) ;
                   dout_data3 <= (others => '0') ;                     
                   state3 <= idle ;
                   dout_valid(3) <= '0'; 
                   cw_counter3  <= cw_counter3 ;
                   dout_ready(3) <= din_ready(3) ;
               end if ;   
          when buffering => 
                 buffer_data3 <= buffer_data3;
                 
                if din_ready(3) = '1' and counter < 1 then 
                    dout_data3 <=    x"000000000000000000000000" & buffer_data3(1);
                    state3 <= buffering ;            
                    dout_valid(3) <= '1';                    
                    dout_ready(3)   <= (not din_ready(3)) ;                
                    cw_counter3     <= cw_counter3 + 1 ; 
                    counter := counter + 1 ;
                elsif  din_ready(3) = '1' and counter = 1 then   
                      dout_data3  <= x"000000000000000000000000" & din_data_core3 ;
                      cw_counter3     <= cw_counter3 ; 
                      state3 <= encoding ;
                      counter := 0 ;
                      if cw_counter3 = 20 then 
                         dout_ready(3)   <= (not din_ready(3)) ; 
                      else 
                         dout_ready(3) <= din_ready(3) ;
                      end if ;       
                else 
                    cw_counter3   <= cw_counter3 ;
                    dout_data3 <=    x"000000000000000000000000" & buffer_data3(0);                 
                   dout_valid(3) <= '1';
                    state3  <= buffering ;
                    counter := 0 ;
                 end if ;   
          when padding =>     
                 buffer_data3 <= (others => (others => '0')) ;
                 counter := 0 ;
                 dout_ready(3) <= din_ready(3) ;       
                 dout_valid(3) <= '1'; 
                 dout_data3 <=  x"0000000000000000000000005A5A5A5A" ;
                 buffer_data3 <= (others =>  (others => '0'));  

               if din_ready(3) = '1' then
                 
                 cw_counter3  <= cw_counter3  + 1; 

                 if cw_counter3 = 22 then 
                    state3  <= idle ;        
                    dout_last(3)  <= '1';
                    cw_counter3  <= 0 ;
                 else    
                    state3  <= padding ;                    
                    dout_last(3)  <= '0';
                 end if ;
              else 
                    state3  <= padding ;        
                    cw_counter3  <= cw_counter3 ;
                    dout_last(3)  <= '0';
              end if ;
          when others => 
          buffer_data3 <= (others => ( others => '0')) ;
          counter := 0 ;
          dout_valid(3) <= '0';   
          buffer_data3 <= (others => (others => '0'));  
          dout_data3 <= ( others => '0') ;
          state3 <= idle ;
          cw_counter3 <= 0;
          dout_ready(3) <= '0';
      end case ;                
end if ;           
end process ;

end Behavioral;
