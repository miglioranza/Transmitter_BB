----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/22/2025 11:05:51 AM
-- Design Name: 
-- Module Name: Cores_controller - Behavioral
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

entity Cores_controller is
  generic 
   (
  N                 : integer := 4;
  DATA_WIDTH        : integer := 32 ;
  CORE_DATA_WIDTH   : integer := 128
 
  );  
  Port ( 
  
  clk               : in std_logic ;
  reset             : in std_logic ;
  ldpc_core_clk     : in std_logic ;
  din_last          : in std_logic_vector(N-1 downto 0);
  din_ready         : in std_logic_vector(N-1 downto 0);
  din_valid         : in std_logic_vector(N-1 downto 0);
  din_data_core0    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  din_data_core1    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  din_data_core2    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  din_data_core3    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  dout_valid        : out std_logic_vector(N-1 downto 0) := (others => '0') ;
  dout_ready        : out std_logic_vector(N-1 downto 0); 
  dout_data0        : out std_logic_vector(DATA_WIDTH-1 downto 0); 
  dout_data1        : out std_logic_vector(DATA_WIDTH-1 downto 0); 
  dout_data2        : out std_logic_vector(DATA_WIDTH-1 downto 0); 
  dout_data3        : out std_logic_vector(DATA_WIDTH-1 downto 0); 
  dout_last         : out std_logic_vector(N-1 downto 0);
  last_frame        : out std_logic 
        
  );
end Cores_controller;

architecture Behavioral of Cores_controller is
component sd_fec_0 
port ( 
    reset_n                 : IN STD_LOGIC := '0';
    core_clk                : IN STD_LOGIC;
    s_axi_aclk              : IN STD_LOGIC;
    s_axis_ctrl_aclk        : IN STD_LOGIC;
    s_axis_ctrl_tready      : OUT STD_LOGIC;
    s_axis_ctrl_tvalid      : IN STD_LOGIC := '0';
    s_axis_ctrl_tdata       : IN STD_LOGIC_VECTOR(31 DOWNTO 0):= (others => '0');
    s_axis_din_aclk         : IN STD_LOGIC;
    s_axis_din_tready       : OUT STD_LOGIC;
    s_axis_din_tvalid       : IN STD_LOGIC;
    s_axis_din_tlast        : IN STD_LOGIC;
    s_axis_din_tdata        : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axis_status_aclk      : IN STD_LOGIC;
    m_axis_status_tready    : IN STD_LOGIC := '0';
    m_axis_status_tvalid    : OUT STD_LOGIC;
    m_axis_status_tdata     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) := (others => '0');
    m_axis_dout_aclk        : IN STD_LOGIC;
    m_axis_dout_tready      : IN STD_LOGIC;  --Control Unit ready to receive the data 
    m_axis_dout_tvalid      : OUT STD_LOGIC;
    m_axis_dout_tlast       : OUT STD_LOGIC;
    m_axis_dout_tdata       : OUT STD_LOGIC_VECTOR(127 DOWNTO 0):= (others => '0')
      );
end component ;

--LDPC cores signals 
type sel_code_rate is array (N-1 downto 0) of std_logic_vector(DATA_WIDTH-1 downto 0);
signal sel_cr : sel_code_rate := ("00000000000010000000000000000001", "00000000000010000000000000000100","00000000000010000000000000001000", "00000000000010000000000000001011"); 

type data_in_128bits is array(N-1 downto 0) of std_logic_vector(CORE_DATA_WIDTH-1 downto 0) ;
signal input_data_128bits,output_data_128bits : data_in_128bits := (others => (others => '0')) ; 

signal reset_core        : std_logic := '0';
signal ldpc_core_control : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
--Sequential Logic signals
signal data_input0    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_input1    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_input2    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_input3    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_in_last   : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal din_last_cores : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal counter_value ,counter_value2  : integer := 0;
type input_buffer is array (2 downto 0) of std_logic_vector(DATA_WIDTH -1 downto 0);
signal save_data      : input_buffer := (others => (others => '0'));
signal start_encoding : std_logic := '0';
signal data_in_valid  : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal data_out_valid : std_logic_vector(N-1 downto 0 ) := (others => '0') ; 
signal clock_delay    : std_logic := '0';
signal codeword_counter     : integer := 0 ;
--Combinational logic signals
signal padding_process : std_logic := '0';
type fsm_input is (idle, encoding, padding) ;
signal state0,state1,state2,state3 : fsm_input := idle ;
signal cw_counter0,cw_counter1,cw_counter2,cw_counter3 : integer := 0 ;
--Output cores signals  
signal core_dout_valid  : std_logic_vector(N-1 downto 0) := (others => '0') ;
signal core_dout_ready  : std_logic_vector(N-1 downto 0) := (others => '0') ;
signal pad_enable       : std_logic  := '0'  ; 
begin

--Generate 4 instances of sd_fec_0 
LDCP_core_inst : for i in 0 to N-1 generate 
    inst: sd_fec_0 
    port map(
    reset_n             => reset_core,
    core_clk            => ldpc_core_clk,
    s_axi_aclk          => clk,
    s_axis_ctrl_aclk    => clk,
    s_axis_ctrl_tready  => open,
    s_axis_ctrl_tvalid  => data_out_valid(i),
    s_axis_ctrl_tdata   => sel_cr(i),
    s_axis_din_aclk     => clk,
    s_axis_din_tready   => core_dout_ready(i),
    s_axis_din_tvalid   => data_out_valid(i),
    s_axis_din_tlast    => din_last_cores(i),
    s_axis_din_tdata    => input_data_128bits(i), 
    m_axis_status_aclk  => clk,
    m_axis_status_tready=> '1',
    m_axis_status_tvalid=> open,
    m_axis_status_tdata => open ,
    m_axis_dout_aclk    => clk,
    m_axis_dout_tready  => din_ready(i),
    m_axis_dout_tvalid  => core_dout_valid(i),
    m_axis_dout_tlast   => dout_last(i),
    m_axis_dout_tdata   => output_data_128bits(i)
    );
end generate LDCP_core_inst ;  

seq_logic : process(clk, reset)
--variable codeword_counter : integer := 0;
--variable counter_value    : integer   := 0;
begin
    if reset = '1' then 
        data_input0      <= (others => '0') ;
        data_input1      <= (others => '0') ;
        data_input2      <= (others => '0') ;
        data_input3      <= (others => '0') ;
        data_in_valid    <= (others => '0') ;
        pad_enable       <= '0';
        reset_core       <= '0';
        data_in_last     <= (others => '0') ;
        codeword_counter <= 0 ;
        start_encoding   <= '0';
        counter_value    <= 0;
        counter_value2   <= 0 ;
    elsif  rising_edge(clk) then 
        data_input0      <= din_data_core0 ;
        data_input1      <= din_data_core1;
        data_input2      <= din_data_core2 ;       
       
     
--        data_input3      <= din_data_core3 ;
--        data_in_valid    <= din_valid;
        reset_core       <= '1';
        data_in_last     <= din_last ;
        if (state0 = padding) or (state1 = padding) or (state2 = padding) or (state3 = padding)   then 
               pad_enable <= not pad_enable ;
        else 
               pad_enable <= '0';   
        end if ;   
        if din_valid(3) = '1' and core_dout_ready(3) = '1' then   
                  start_encoding <= '1';
                  counter_value  <= counter_value ;
                  counter_value2 <= counter_value2 ; 
--                  counter_value := 0 ;
--               clock_delay <= '0';
                
--               if codeword_counter = 19 and clock_delay = '0'then
--                  dout_ready(3)  <=  '0' ;
--                  data_input3      <= din_data_core3 ;   
--                  codeword_counter <= codeword_counter + 1 ;
--                  data_in_valid(3)    <= '1';  
--              elsif codeword_counter = 20 and clock_delay = '0' then
--                  data_in_valid(3)    <= '1';  
--                  data_input3   <=  x"5A5A5A5A" ; 
--                  codeword_counter <= 0 ;
--                  dout_ready(3)    <= core_dout_ready(3) ;
--               elsif  codeword_counter < 20 and  clock_delay = '0'  then     
--                  data_input3      <= din_data_core3 ;
--                  dout_ready(3)    <= core_dout_ready(3) ;
--                  codeword_counter <= codeword_counter + 1 ;
--                  data_in_valid(3)    <= '1';  
--               else    
--                   dout_ready(3)    <= core_dout_ready(3) ;
--                   data_in_valid(3)    <= '0';  
--                   codeword_counter    <= codeword_counter;        
--               end if ;
             if counter_value = 0 then
                  counter_value2 <= 0 ;
                  if codeword_counter = 19 then
                      dout_ready(3)  <=  '0' ;
                      data_input3      <= din_data_core3 ;   
                      codeword_counter <= codeword_counter + 1 ;
                      data_in_valid(3)    <= '1';  
                  elsif codeword_counter = 20  then
                      data_in_valid(3)    <= '1';  
                      data_input3   <=  x"5A5A5A5A" ; 
                      codeword_counter <= 0 ;
                      dout_ready(3)    <= core_dout_ready(3) ;
                   elsif  codeword_counter < 20  then     
                      data_input3      <= din_data_core3 ;
                      dout_ready(3)    <= core_dout_ready(3) ;
                      codeword_counter <= codeword_counter + 1 ;
                      data_in_valid(3)    <= '1';  
                   else    
                       dout_ready(3)    <= core_dout_ready(3) ;
                       data_in_valid(3)    <= '0';  
                       codeword_counter    <= 0;        
                   end if ;
              else     
              
                 dout_ready(3)  <=  '1' ;

                  if codeword_counter = 19 then
                          data_input3      <=  save_data(counter_value2) ;   
                          codeword_counter <= codeword_counter + 1 ;
                          data_in_valid(3)    <= '1';  
                  elsif codeword_counter = 20  then
                          data_in_valid(3)    <= '1';  
                          data_input3   <=  x"5A5A5A5A" ; 
                          codeword_counter <= 0 ;
                  elsif  codeword_counter < 20  then     
                          data_input3      <= save_data(counter_value2)  ;
                          codeword_counter <= codeword_counter + 1 ;
                          data_in_valid(3)    <= '1';  
                  else    
                           dout_ready(3)    <= core_dout_ready(3) ;
                           data_in_valid(3)    <= '0';  
                           codeword_counter    <= 0;        
                  end if ;
                counter_value        <= counter_value -1 ;
                counter_value2       <= counter_value2 + 1  ;
                   
              end if ;
        else
        
            if start_encoding = '1' and counter_value < 2 then 
               save_data(counter_value) <= din_data_core3 ;
               counter_value <= counter_value + 1 ;
            end if ;   
--            clock_delay <= '1';
            codeword_counter <= codeword_counter ;
            data_in_valid(3)    <= '0';
            dout_ready(3)    <= core_dout_ready(3) ;
            data_input3      <= data_input3;   
        end if ;    
    end if ;     
end process ;

comb_logic_core0 : process( data_input0, data_in_valid ,data_in_last(0), pad_enable, core_dout_ready(0)) 
variable codeword_counter : integer := 0;
begin 
--Default value
case state0 is 

 when idle => 
    
--default values 
 input_data_128bits(0) <= (others => '0') ;
  codeword_counter := codeword_counter + 1 ;   
    if data_in_valid(0) = '1'  then  
       input_data_128bits(0) <=  x"000000000000000000000000" & data_input0 ;
       data_out_valid(0)     <= '1'; 
       state0 <= encoding ;
     else   
      data_out_valid(0)     <= '0'; 
      state0 <= idle ;
     codeword_counter := codeword_counter - 1 ;    
     end if ; 
  when encoding => 
  state0 <= encoding ;
  input_data_128bits(0) <=  x"000000000000000000000000" & data_input0 ;
  codeword_counter := codeword_counter + 1 ;   

  if data_in_valid(0) = '1'  then      
     data_out_valid(0)     <= '1'; 
         if codeword_counter = 20 and din_last(0) = '1' then
          codeword_counter := 0 ;
          state0 <= idle ;
         elsif codeword_counter < 20 and din_last(0) = '1' then 
          state0 <= padding ;
         elsif codeword_counter = 20 and din_last(0) = '0' then
               codeword_counter := 0 ;
         end if ; 
     else     
      data_out_valid(0)     <= '0';      
      state0 <= idle ;
     end if ;
     
   when padding => 
        input_data_128bits(0) <= x"0000000000000000000000005A5A5A5A" ;
        codeword_counter := codeword_counter + 1 ;
        if codeword_counter = 20 then 
           state0 <= idle ;
           data_out_valid(0) <= '0';
        else 
            data_out_valid(0) <= '1';
            state0 <= padding  ;
            codeword_counter := 0 ;
        end if ;  
     end case ;
 end process ; 
 
comb_logic_core1 : process( data_input1, data_in_valid ,data_in_last(1), pad_enable) 
variable codeword_counter : integer := 0;
begin 

--Default value

case state1 is 

 when idle => 
    
--default values 
 input_data_128bits(1) <= (others => '0') ;
 codeword_counter := codeword_counter + 1 ;   
    if data_in_valid(1) = '1'  then  
       input_data_128bits(1) <=  x"000000000000000000000000" & data_input1 ;
       data_out_valid(1)     <= '1'; 
       state1 <= encoding ;
     else   
      data_out_valid(1)     <= '0'; 
      state1 <= idle ;
     codeword_counter := codeword_counter - 1 ;    
     end if ; 
     
  when encoding => 
  state1 <= encoding ;
  input_data_128bits(1) <=  x"000000000000000000000000" & data_input1 ;
  codeword_counter := codeword_counter + 1 ;   

  if data_in_valid(1) = '1'  then      
     data_out_valid(1)     <= '1'; 
         if codeword_counter = 26 and din_last(1)  = '1' then
          codeword_counter := 0 ;
          state1 <= idle ;
         elsif codeword_counter < 26 and din_last(1) = '1' then 
          state1 <= padding ;

         elsif codeword_counter = 26 and din_last(1) = '0' then
               codeword_counter := 0 ;
         end if ; 
     else     
      data_out_valid(1)     <= '0';      
      state1 <= idle ;
     end if ;
     
   when padding => 
        input_data_128bits(1) <= x"0000000000000000000000005A5A5A5A" ;
        codeword_counter := codeword_counter + 1 ;
        if codeword_counter = 26 then 
           state1 <= idle ;
           data_out_valid(1) <= '0';

        else 
            data_out_valid(1) <= '1';
            state1 <= padding  ;
            codeword_counter := 0 ;
        end if ;  
     end case ;
 end process ; 
  
comb_logic_core2 : process( data_input2, data_in_valid ,data_in_last(2), pad_enable) 
variable codeword_counter : integer := 0;
begin 
--Default value

case state2 is 

 when idle => 
    
--default values 
 input_data_128bits(2) <= (others => '0') ;
  codeword_counter := codeword_counter + 1 ;   
    if data_in_valid(2) = '1'  then  
       input_data_128bits(2) <=  x"000000000000000000000000" & data_input2 ;
       data_out_valid(2)     <= '1'; 
       state2 <= encoding ;
     else   
      data_out_valid(2)     <= '0'; 
      state2 <= idle ;
     codeword_counter := codeword_counter - 1 ;    
     end if ; 
  when encoding => 
  state2 <= encoding ;
  input_data_128bits(2) <=  x"000000000000000000000000" & data_input2 ;
  codeword_counter := codeword_counter + 1 ;   

  if data_in_valid(2) = '1'  then      
     data_out_valid(2)     <= '1'; 
         if codeword_counter = 45 and din_last(2) = '1' then
          codeword_counter := 0 ;
          state2 <= idle ;
         elsif codeword_counter < 45 and din_last(2) = '1' then 
          state2 <= padding ;
         elsif codeword_counter = 45 and din_last(2) = '0' then
               codeword_counter := 0 ;
         end if ; 
     else     
      data_out_valid(2)     <= '0';      
      state2 <= idle ;
     end if ;
     
   when padding => 
        input_data_128bits(2) <= x"0000000000000000000000005A5A5A5A" ;
        codeword_counter := codeword_counter + 1 ;
        if codeword_counter = 45 then 
           state2 <= idle ;
           data_out_valid(2) <= '0';
        else 
            data_out_valid(2) <= '1';
            state2 <= padding  ;
            codeword_counter := 0 ;
        end if ;  
     end case ;
 end process ;      

comb_logic_core3 : process( data_input3, data_in_valid(3), data_in_last(3), pad_enable) 
--variable codeword_counter : integer := 0;
variable counter_value    : integer := 0;
begin 
--Default value 

case state3 is 

 when idle => 
 din_last_cores(3) <= '0';
 counter_value  := 0 ;

--default values 
          input_data_128bits(3) <= x"000000000000000000000000" & data_input3 ;

     if data_in_valid(3) = '1'  and core_dout_ready(3) = '1' then  
          state3 <= encoding ;
          data_out_valid(3)     <= '1'; 

     else  
          state3 <= idle ;
          data_out_valid(3)     <= '0'; 
     end if ;
--  codeword_counter := codeword_counter + 1 ;   
--    if data_in_valid(3) = '1'  and core_dout_ready(3) = '1' then  
--       input_data_128bits(3) <=  x"000000000000000000000000" & data_input3 ;
--       data_out_valid(3)     <= '1'; 
--       state3 <= encoding ;
--     else   
--      data_out_valid(3)     <= '0'; 
--      state3 <= idle ;
--     codeword_counter := codeword_counter - 1 ;    
--     end if ; 
  when encoding => 
  state3 <= encoding ;
  input_data_128bits(3) <=  x"000000000000000000000000" & data_input3 ;
  din_last_cores(3) <= '0';
  counter_value  := 0 ;
             data_out_valid(3)     <= '1'; 

    if data_in_valid(3) = '1'  and core_dout_ready(3) = '1' and data_in_last(3) = '0' then 
        data_out_valid(3)     <= '1'; 
--         if cw_counter3 < 21 then 
--            cw_counter3 <= cw_counter3 + 1 ;   
--         else
--            cw_counter3 <= 0 ;
--         end if ;
    elsif data_in_valid(3) = '0'  and core_dout_ready(3) = '1' and data_in_last(3) = '1' then    
         data_out_valid(3)     <= '0'; 
         
         if codeword_counter = 0 then 
            state3       <= idle ; 
--            cw_counter3 <= cw_counter3 ;
         else
            state3      <= padding ;
            din_last_cores(3) <= '1';
--            cw_counter3  <= 0 ; 
            counter_value := codeword_counter ;         
         end if ;
    else
           state3 <= idle ;  
           data_out_valid(3)     <= '0'; 
--           cw_counter3 <= cw_counter3 ;
    end if ;
   
--  if data_in_valid(3) = '1'  and core_dout_ready(3) = '1' then      
--         data_out_valid(3)     <= '1'; 
--         if codeword_counter = 21 and din_last(3) = '1' then
--          cw_counter3 <= 0 ;
--          state3 <= idle ;
--         elsif codeword_counter < 21 and din_last(3) = '1' then 
--          state3 <= padding ;
--         elsif codeword_counter = 21 and din_last(3) = '0' then
--          cw_counter3 <= 0 ;
--         elsif codeword_counter < 21 and din_last(3) = '0' then      
--          cw_counter3 <= cw_counter3 + 1 ;   
   
--         end if ; 
           
--     else     
--      data_out_valid(3)     <= '0';      
--      state3 <= idle ;
--     end if ;
   when padding => 
        input_data_128bits(3) <= x"0000000000000000000000005A5A5A5A" ;
        counter_value := counter_value + 1 ;
--        cw_counter3 <= cw_counter3 + 1 ;
        if counter_value  = 21 then 
           state3 <= idle ;
           data_out_valid(3) <= '0';
           counter_value := 0 ;
           din_last_cores(3) <= '1';

        else 
            data_out_valid(3) <= '1';
            din_last_cores(3) <= '0';
            state3 <= padding  ;
           
        end if ;  
     end case ;
 end process ;      

output_logic_core0 : process (output_data_128bits(0), core_dout_valid(0)) 
begin
dout_data0 <= output_data_128bits(0)(31 downto 0 ) ;
if output_data_128bits(0) /= x"0000000000000000000000005A5A5A5A" and core_dout_valid(0) = '1' then 
   dout_valid(0) <= '1' ;
else 
   dout_valid(0) <= '0' ;
end if ;
end process ;

output_logic_core1 : process (output_data_128bits(1), core_dout_valid(1) ) 
begin
dout_data1 <= output_data_128bits(1)(31 downto 0 ) ;
if output_data_128bits(1) /= x"0000000000000000000000005A5A5A5A" and core_dout_valid(1) = '1' then 
   dout_valid(1) <= '1' ;
else 
   dout_valid(1) <= '0' ;
end if ;
end process ;

output_logic_core2 : process (output_data_128bits(2), core_dout_valid(2) ) 
begin
dout_data2 <= output_data_128bits(2)(31 downto 0 ) ;
if output_data_128bits(2) /= x"0000000000000000000000005A5A5A5A" and core_dout_valid(2) = '1' then 
   dout_valid(2) <= '1' ;
else 
   dout_valid(2) <= '0' ;
end if ;
end process ;

output_logic_core3 : process (output_data_128bits(3), core_dout_valid(3) ) 
begin
dout_data3 <= output_data_128bits(3)(31 downto 0 ) ;
if output_data_128bits(3) /= x"0000000000000000000000005A5A5A5A" and core_dout_valid(3) = '1' then 
   dout_valid(3) <= '1' ;
else 
   dout_valid(3) <= '0' ;
end if ;
end process ;
--dout_ready <= ( core_dout_ready(0) and core_dout_ready(1) and core_dout_ready(2) and core_dout_ready(3)) ;
end Behavioral;
