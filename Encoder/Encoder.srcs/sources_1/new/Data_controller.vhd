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
  din_data_core0    : in std_logic_vector(DATA_WIDTH-1 downto 0):= (others => '0') ;
  din_data_core1    : in std_logic_vector(DATA_WIDTH-1 downto 0):= (others => '0') ;
  din_data_core2    : in std_logic_vector(DATA_WIDTH-1 downto 0):= (others => '0') ;
  din_data_core3    : in std_logic_vector(DATA_WIDTH-1 downto 0):= (others => '0') ;
  dout_valid        : out std_logic_vector(N-1 downto 0) := (others => '0') ;
  dout_ready        : out std_logic_vector(N-1 downto 0):= (others => '0') ; 
  dout_data0        : out std_logic_vector(CORE_DATA_WIDTH-1 downto 0); 
  dout_data1        : out std_logic_vector(CORE_DATA_WIDTH-1 downto 0); 
  dout_data2        : out std_logic_vector(CORE_DATA_WIDTH-1 downto 0); 
  dout_data3        : out std_logic_vector(CORE_DATA_WIDTH-1 downto 0); 
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
signal next_input_128bits : data_in_128bits := (others => (others => '0')) ; 
--Sequential Logic signals
signal data_input0    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_input1    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_input2    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_input3    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_in_last   : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal core_in_ready  : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal data_in_valid  : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal data_out_valid : std_logic_vector(N-1 downto 0 ) := (others => '0') ; 
signal pad_counter0,pad_counter1,pad_counter2,pad_counter3 : integer range 0 to 50:= 0 ;
signal reset_core     : std_logic := '0';
signal cw_counter0    : integer range  0 to 50 := 0 ;
signal cw_counter1    : integer range  0 to 50 := 0 ;
signal cw_counter2    : integer range  0 to 30 := 0 ;
signal cw_counter3    : integer range  0 to 50 := 0 ;


--Combinational logic signals
signal padding_process : std_logic := '0';
type fsm_input is (idle, encoding, padding) ;
signal state0,state1,state2,state3 : fsm_input := idle ;
signal next_counter0  : integer range  0 to 50 := 0 ;
signal next_counter1  : integer range  0 to 50 := 0 ;
signal next_counter2  : integer range  0 to 50 := 0 ;
signal next_counter3  : integer range  0 to 50 := 0 ;
signal next_dout_ready: std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal next_dout_valid: std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal next_din_valid : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal next_dout_last  : std_logic_vector(N-1 downto 0 ) := (others => '0') ;

begin

seq_process : process(clk,reset)
begin
if reset = '1' then 
        data_in_valid    <= (others => '0') ;
        cw_counter0      <= 0;
        cw_counter1      <= 0;
        cw_counter2      <= 0;
        cw_counter3      <= 0;
        dout_data0       <= (others => '0') ;
        dout_data1       <= (others => '0') ;
        dout_data2       <= (others => '0') ;
        dout_data3       <= (others => '0') ;
--        pad_enable       <= (others => '0') ;
        reset_cores       <= '0';
        data_in_last     <= (others => '0') ;
        dout_ready       <= (others => '0') ;
        dout_valid       <= (others => '0') ;
        dout_last        <= (others => '0') ;
--        start_encoding   <= '0';
--        counter_value    <= (others => 0) ;
--        counter_value2   <= (others => 0) ; 
--        data_out_valid       <= (others => '0') ;
--        core_ctrl_valid  <= (others => '0') ;
--        din_last_reg     <= (others => '0') ;
 elsif rising_edge (clk) then 
 
         reset_cores    <= '1';
         cw_counter0   <= next_counter0;
         cw_counter1   <= next_counter1;
         cw_counter2   <= next_counter2;
         cw_counter3   <= next_counter3;
         dout_ready    <= next_dout_ready ;           
         dout_data0  <= next_input_128bits(0) ;
         dout_data1  <= next_input_128bits(1) ;
         dout_data2  <= next_input_128bits(2) ;
         dout_data3  <= next_input_128bits(3) ;
--         data_in_valid <= next_din_valid ;                       
--         data_input0   <= din_data_core0;
--         data_input1   <= din_data_core1;
--         data_input2   <= din_data_core2;
--         data_input3   <= din_data_core3;
         dout_last     <= next_dout_last;
         dout_valid    <= next_dout_valid;
            if state0 = padding and next_dout_ready(0) = '1' then 
                  pad_counter0 <= pad_counter0 + 1  ;
            else 
                  pad_counter0 <= 0 ;
            end if ;
            
             if state1 = padding and next_dout_ready(1) = '1' then 
                  pad_counter1 <= pad_counter1 + 1  ;
            else 
                  pad_counter1 <= 0 ;
            end if ;
            
             if state2 = padding and next_dout_ready(2) = '1' then 
                  pad_counter2 <= pad_counter2 + 1  ;
            else 
                  pad_counter2 <= 0 ;
            end if ;
            
             if state3 = padding and next_dout_ready(3) = '1' then 
                  pad_counter3 <= pad_counter3 + 1  ;
            else 
                  pad_counter3 <= 0 ;
            end if ;
            
 end if ;
end process ;

comb_logic_core0 : process(din_data_core0 ,din_ready(0), din_valid(0), din_last(0),pad_counter0) 
begin
--Default value 
next_input_128bits(0)  <= (others => '0');
next_dout_ready(0)     <= din_ready(0) ; --din_ready is the signal coming from the LDPC core0 ,assign this value to next_dout_ready signal for informing the FIFO0 that the data_controller is ready to receive the data
next_dout_valid(0)     <= '0'; 
next_dout_last(0)      <= '0';
next_counter0          <= cw_counter0 ;
next_dout_last(0)      <= '0';

case state0 is 
    when idle => 
        next_dout_last(0) <= '0';
        next_counter0     <= 0;
        next_input_128bits(0) <= x"000000000000000000000000" & din_data_core0 ;
         
       if din_valid(0) = '1' and din_ready(0) = '1' then 
          state0              <= encoding ;
          next_dout_valid(0)  <= '1';
          next_counter0 <= cw_counter0  + 1; 
       else  
          state0 <= idle ;
          next_dout_valid(0)  <= '0';
       end if ;
    when  encoding => 
          
             if din_valid(0) = '1' and din_ready(0) = '1' and din_last(0)= '0' then 
                   state0 <= encoding  ;
                   next_dout_valid(0) <= '1'; 

                    if cw_counter0 < 49 then 
                       next_counter0 <= cw_counter0  + 1; 
                       next_dout_ready(0) <= din_ready(0) ;
                       next_input_128bits(0) <= x"000000000000000000000000" & din_data_core0 ;
                    elsif  cw_counter0 = 49 then 
                       next_input_128bits(0) <= x"000000000000000000000000" & din_data_core0 ;
                       next_dout_ready(0) <= '0' ;
                       next_counter0 <= cw_counter0  + 1; 
                    else
                       next_input_128bits(0) <= x"0000000000000000000000005A5A5A5A" ;
                       next_counter0 <= 0;
                       next_dout_ready(0) <= din_ready(0) ;
                    end if ;
              elsif din_valid(0) = '1' and din_ready(0) = '1' and din_last(0)= '1' then      
                    next_dout_ready(0) <= din_ready(0) ;

                      if cw_counter0 < 50  then 
                         next_input_128bits(0) <= x"000000000000000000000000" & din_data_core0 ;
                         next_counter0 <= cw_counter0  + 1; 
                         state0 <= padding ;     
                         next_dout_last(0)  <= '1';
                                  
                      else
                         next_input_128bits(0) <= x"0000000000000000000000005A5A5A5A" ;
                         next_counter0 <= 0;
                         state0 <= idle ;
                         next_dout_last(0)  <= '1';

                      end if ; 
              elsif din_valid(0) = '1' and din_ready(0) = '0' and din_last(0)= '0' then  
                   next_dout_ready(0) <= din_ready(0) ;       
                   next_counter0 <= cw_counter0 ;  
                   next_dout_valid(0) <= '1'; 
                   next_input_128bits(0) <= x"000000000000000000000000" & din_data_core0 ;
                   state0 <= encoding  ;
              elsif din_valid(0) = '1' and din_ready(0) = '0' and din_last(0)= '1' then  
                   next_dout_ready(0) <= din_ready(0) ;
                   next_counter0 <= cw_counter0; 
                      if cw_counter0 < 50  then 
                         next_input_128bits(0) <= x"000000000000000000000000" & din_data_core0 ;                      
                         state0 <= padding  ;                                       
                      else
                         next_input_128bits(0) <= x"0000000000000000000000005A5A5A5A" ;
                         state0 <= encoding ;
                      end if ; 
              else 
                   next_input_128bits(0) <= (others => '0') ;                     
                   state0 <= encoding ;
                   next_dout_valid(0) <= '0'; 
                   next_counter0 <= cw_counter0 ;
                   next_dout_ready(0) <= din_ready(0) ;

              end if ;    
     when padding => 
          next_dout_ready(0) <= din_ready(0) ;       
          next_dout_valid(0) <= '1'; 
          next_input_128bits(0) <=  x"0000000000000000000000005A5A5A5A" ;
              if din_ready(0) = '1' then
                 
                 next_counter0 <= cw_counter0  + 1; 

                 if cw_counter0 = 52 then 
                    state0 <= idle ;        
                    next_dout_last(0)  <= '1';
                    next_counter0 <= 0 ;
                 else    
                    state0 <= padding ;                    
                    next_dout_last(0)  <= '0';
                 end if ;
              else 
                    state0 <= padding ;        
                    next_counter0 <= cw_counter0 ;
                    next_dout_last(0)  <= '0';

              end if ;
      when others => 
          next_dout_valid(0) <= '0';     
          next_input_128bits(0) <= ( others => '0') ;
          state0 <= idle ;
          next_counter0 <= 0;
          next_dout_ready(0) <= '0';
      end case ;    
end process ;
comb_logic_core1 : process(din_data_core1 ,din_ready(1), din_valid(1), din_last(1),pad_counter1) 
begin
--Default value 
next_input_128bits(1)  <= (others => '0');
next_dout_ready(1)     <= din_ready(1) ; --din_ready is the signal coming from the LDPC core0 ,assign this value to next_dout_ready signal for informing the FIFO0 that the data_controller is ready to receive the data
next_dout_valid(1)     <= '0'; 
next_dout_last(1)      <= '0';
next_counter1          <= cw_counter1 ;
next_dout_last(1)      <= '0';

case state1 is 
    when idle => 
        next_dout_last(1) <= '0';
        next_counter1     <= 0;
        next_input_128bits(1) <= x"000000000000000000000000" & din_data_core1 ;
         
       if din_valid(1) = '1' and din_ready(1) = '1' then 
          state1              <= encoding ;
          next_dout_valid(1)  <= '1';
          next_counter1 <= cw_counter1  + 1; 
       else  
          state1 <= idle ;
          next_dout_valid(1)  <= '0';
       end if ;
    when  encoding => 
          
             if din_valid(1) = '1' and din_ready(1) = '1' and din_last(1)= '0' then 
                   state1 <= encoding  ;
                   next_dout_valid(1) <= '1'; 

                    if cw_counter1 < 44 then 
                       next_counter1 <= cw_counter1  + 1; 
                       next_dout_ready(1) <= din_ready(1) ;
                       next_input_128bits(1) <= x"000000000000000000000000" & din_data_core1 ;
                    elsif  cw_counter1 = 45 then 
                       next_input_128bits(1) <= x"000000000000000000000000" & din_data_core1 ;
                       next_dout_ready(1) <= '0' ;
                       next_counter1 <= cw_counter1  + 1; 
                    else
                       next_input_128bits(1) <= x"0000000000000000000000005A5A5A5A" ;
                       next_counter1 <= 0;
                       next_dout_ready(1) <= din_ready(1) ;
                    end if ;
              elsif din_valid(1) = '1' and din_ready(1) = '1' and din_last(1)= '1' then      
                    next_dout_ready(1) <= din_ready(1) ;

                      if cw_counter1 < 45  then 
                         next_input_128bits(1) <= x"000000000000000000000000" & din_data_core1 ;
                         next_counter1 <= cw_counter1  + 1; 
                         state0 <= padding ;   
                         next_dout_last(1)  <= '0';
                                    
                      else
                         next_input_128bits(1) <= x"0000000000000000000000005A5A5A5A" ;
                         next_counter1 <= 0;
                         state1 <= idle ;
                         next_dout_last(1)  <= '1';

                      end if ; 
              elsif din_valid(1) = '1' and din_ready(1) = '0' and din_last(1)= '0' then  
                   next_dout_ready(1) <= din_ready(1) ;       
                   next_counter1 <= cw_counter1 ;  
                   next_dout_valid(1) <= '1'; 
                   next_input_128bits(1) <= x"000000000000000000000000" & din_data_core1 ;
                   state1 <= encoding  ;
              elsif din_valid(1) = '1' and din_ready(1) = '0' and din_last(1)= '1' then  
                   next_dout_ready(1) <= din_ready(1) ;
                   next_counter1 <= cw_counter1; 
                      if cw_counter1 < 50  then 
                         next_input_128bits(1) <= x"000000000000000000000000" & din_data_core1 ;                      
                         state1 <= padding  ;                                       
                      else
                         next_input_128bits(1) <= x"0000000000000000000000005A5A5A5A" ;
                         state1 <= encoding ;
                      end if ; 
              else 
                   next_input_128bits(1) <= (others => '0') ;                     
                   state1 <= encoding ;
                   next_dout_valid(1) <= '0'; 
                   next_counter1 <= cw_counter0 ;
                   next_dout_ready(1) <= din_ready(1) ;

              end if ;    
     when padding => 
          next_dout_ready(1) <= din_ready(1) ;       
          next_dout_valid(1) <= '1'; 
          next_input_128bits(1) <=  x"0000000000000000000000005A5A5A5A" ;
              if din_ready(1) = '1' then
                 
                 next_counter1 <= cw_counter1  + 1; 

                 if cw_counter1 = 52 then 
                    state1 <= idle ;        
                    next_dout_last(1)  <= '1';
                    next_counter1 <= 0 ;
                 else    
                    state1 <= padding ;                    
                    next_dout_last(1)  <= '0';
                 end if ;
              else 
                    state1 <= padding ;        
                    next_counter1 <= cw_counter1 ;
                    next_dout_last(1)  <= '0';

              end if ;
      when others => 
          next_dout_valid(1) <= '0';     
          next_input_128bits(1) <= ( others => '0') ;
          state1 <= idle ;
          next_counter1 <= 0;
          next_dout_ready(1) <= '0';
      end case ;    
end process ;
comb_logic_core2 : process(din_data_core2, din_ready(2), din_valid(2), din_last(2), pad_counter2)
    begin
        -- Default values
        next_input_128bits(2) <= (others => '0');
        next_dout_ready(2) <= din_ready(2); -- Pass ready signal from LDPC core
        next_dout_valid(2) <= '0';
        next_dout_last(2) <= '0';
        next_counter2 <= cw_counter2;

        case state2 is
            when idle =>
                next_dout_last(2) <= '0';
                next_counter2 <= 0;
                next_input_128bits <= x"000000000000000000000000" & din_data_core2;

                if din_valid(2) = '1' and din_ready(2) = '1' then
                    state2 <= encoding;
                    next_dout_valid <= '1';
                    next_counter2 <= cw_counter2 + 1;
                else
                    state2 <= idle;
                    next_dout_valid(2) <= '0';
                end if;

            when encoding =>
                if din_valid(2) = '1' and din_ready(2) = '1' and din_last(2) = '0' then
                    state2 <= encoding;
                    next_dout_valid(2) <= '1';
                    next_input_128bits <= x"000000000000000000000000" & din_data_core2;
                    next_dout_ready(2) <= din_ready(2);
                    if cw_counter2 < 26 then
                        next_counter2 <= cw_counter2 + 1;
                    else
                        next_counter2 <= 0;
                    end if;
                elsif din_valid(2) = '1' and din_ready(2) = '1' and din_last(2) = '1' then
                    next_dout_ready(2) <= din_ready(2);
                    next_input_128bits <= x"000000000000000000000000" & din_data_core2;
                    next_dout_valid(2) <= '1';

                    if cw_counter2 = 0 then                     
                        next_counter2 <= 0;
                        state2 <= idle;                       
                         next_dout_last(2) <= '1';

                        
                    else                 
                        next_counter2 <= cw_counter2 +1 ;
                        state2 <= padding;
                        next_dout_last(2) <= '0';

                    end if;
                elsif din_valid(2) = '1' and din_ready(2) = '0' and din_last(2) = '0' then
                    next_dout_ready(2) <= din_ready(2);
                    next_counter2 <= cw_counter2;
                    next_dout_valid(2) <= '1';
                    next_input_128bits <= x"000000000000000000000000" & din_data_core2;
                    state2 <= encoding;
                elsif din_valid(2) = '1' and din_ready(2) = '0' and din_last(2) = '1' then
                    next_dout_ready(2) <= din_ready(2);
                    next_input_128bits <= x"000000000000000000000000" & din_data_core2;
                    next_dout_valid(2) <= '0';
                    next_counter2 <= cw_counter2;

                    if cw_counter2 = 0 then
                        state2 <= encoding;
                    else
                        state2 <= padding;
                    end if;
                else
                    next_input_128bits(2) <= (others => '0');
                    state2 <= encoding;
                    next_dout_valid(2) <= '0';
                    next_counter2 <= cw_counter2;
                    next_dout_ready(2) <= din_ready(2);
                end if;

            when padding =>
                next_dout_ready(2) <= '0';
                next_dout_valid(2) <= '1';
                next_input_128bits(2) <= x"0000000000000000000000005A5A5A5A";
                if din_ready(2) = '1' then
                    next_counter2 <= cw_counter2 + 1;

                    if cw_counter2 = 28 then
                        state2 <= idle;
                        next_dout_last(2) <= '1';
                        next_counter2 <= 0;
                    else
                        state2 <= padding;
                        next_dout_last(2) <= '0';
                    end if;
                else
                    state2 <= padding;
                    next_counter2 <= cw_counter2;
                    next_dout_last(2) <= '0';
                end if;

            when others =>
                next_dout_valid(2) <= '0';
                next_input_128bits(2) <= (others => '0');
                state2 <= idle;
                next_counter2 <= 0;
                next_dout_ready(2) <= '0';
        end case;
    end process;
    comb_logic_core3 : process(din_data_core3 ,din_ready(3), din_valid(3), din_last(3),pad_counter3) 
begin
--Default value 
next_input_128bits(3)  <= (others => '0');
next_dout_ready(3)     <= din_ready(3) ; --din_ready is the signal coming from the LDPC core3 ,assign this value to next_dout_ready signal for informing the FIFO3 that the data_controller is ready to receive the data
next_dout_valid(3)     <= '0'; 
next_dout_last(3)      <= '0';
next_counter3          <= cw_counter3 ;
next_dout_last(3)      <= '0';

case state3 is 
    when idle => 
        next_dout_last(3) <= '0';
        next_counter3     <= 0;
        next_input_128bits(3) <= x"000000000000000000000000" & din_data_core3 ;
         
       if din_valid(3) = '1' and din_ready(3) = '1' then 
          state3              <= encoding ;
          next_dout_valid(3)  <= '1';
          next_counter3 <= cw_counter3  + 1; 
       else  
          state3 <= idle ;
          next_dout_valid(3)  <= '0';
       end if ;
    when  encoding => 
          
             if din_valid(3) = '1' and din_ready(3) = '1' and din_last(3)= '0' then 
                   state3 <= encoding  ;
                   next_dout_valid(3) <= '1'; 

                    if cw_counter3 < 19 then 
                       next_counter3 <= cw_counter3  + 1; 
                       next_dout_ready(3) <= din_ready(3) ;
                       next_input_128bits(3) <= x"000000000000000000000000" & din_data_core3 ;
                    elsif  cw_counter3 = 19 then 
                       next_input_128bits(3) <= x"000000000000000000000000" & din_data_core3 ;
                       next_dout_ready(3) <= '0' ;
                       next_counter3 <= cw_counter3  + 1; 
                    else
                       next_input_128bits(3) <= x"0000000000000000000000005A5A5A5A" ;
                       next_counter3 <= 0;
                       next_dout_ready(3) <= din_ready(3) ;
                    end if ;
              elsif din_valid(3) = '1' and din_ready(3) = '1' and din_last(3)= '1' then      
                    next_dout_ready(3) <= din_ready(3) ;

                      if cw_counter3 < 20  then 
                         next_input_128bits(3) <= x"000000000000000000000000" & din_data_core3 ;
                         next_counter3 <= cw_counter3  + 1; 
                         state3 <= padding ;                                       
                      else
                         next_input_128bits(3) <= x"0000000000000000000000005A5A5A5A" ;
                         next_counter3 <= 0;
                         state3 <= idle ;
                      end if ; 
              elsif din_valid(3) = '1' and din_ready(3) = '0' and din_last(3)= '0' then  
                   next_dout_ready(3) <= din_ready(3) ;       
                   next_counter3 <= cw_counter3 ;  
                   next_dout_valid(3) <= '1'; 
                   next_input_128bits(3) <= x"000000000000000000000000" & din_data_core3 ;
                   state3 <= encoding  ;
              elsif din_valid(3) = '1' and din_ready(3) = '0' and din_last(3)= '1' then  
                   next_dout_ready(3) <= din_ready(3) ;
                   next_counter3 <= cw_counter3; 
                      if cw_counter3 < 20  then 
                         next_input_128bits(3) <= x"000000000000000000000000" & din_data_core3 ;                      
                         state3 <= padding  ;                                       
                      else
                         next_input_128bits(3) <= x"0000000000000000000000005A5A5A5A" ;
                         state3 <= encoding ;
                      end if ; 
              else 
                   next_input_128bits(3) <= (others => '0') ;                     
                   state3 <= encoding ;
                   next_dout_valid(3) <= '0'; 
                   next_counter3 <= cw_counter3 ;
                   next_dout_ready(3) <= din_ready(3) ;

              end if ;    
     when padding => 
          next_dout_ready(3) <= din_ready(3) ;       
          next_dout_valid(3) <= '1'; 
          next_input_128bits(3) <=  x"0000000000000000000000005A5A5A5A" ;
              if din_ready(3) = '1' then
                 
                 next_counter3 <= cw_counter3  + 1; 

                 if cw_counter3 = 22 then 
                    state3 <= idle ;        
                    next_dout_last(3)  <= '1';
                    next_counter3 <= 0 ;
                 else    
                    state3 <= padding ;                    
                    next_dout_last(3)  <= '0';
                 end if ;
              else 
                    state3 <= padding ;        
                    next_counter3 <= cw_counter3 ;
                    next_dout_last(3)  <= '0';

              end if ;
      when others => 
          next_dout_valid(3) <= '0';     
          next_input_128bits(3) <= ( others => '0') ;
          state3 <= idle ;
          next_counter3 <= 0;
          next_dout_ready(3) <= '0';
      end case ;    
end process ;

end Behavioral;
