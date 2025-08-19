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
  din_data_core0    : in std_logic_vector(DATA_WIDTH-1 downto 0):= (others => '0') ;
  din_data_core1    : in std_logic_vector(DATA_WIDTH-1 downto 0):= (others => '0') ;
  din_data_core2    : in std_logic_vector(DATA_WIDTH-1 downto 0):= (others => '0') ;
  din_data_core3    : in std_logic_vector(DATA_WIDTH-1 downto 0):= (others => '0') ;
  dout_valid        : out std_logic_vector(N-1 downto 0) := (others => '0') ;
  dout_ready        : out std_logic_vector(N-1 downto 0):= (others => '0') ; 
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
signal sel_cr : sel_code_rate := (
"00000000000010000000000000000001", --Code rate = 1/2 , N = 1296 
"00000000000010000000000000000100", --Code rate = 2/3 , N = 1296 
"00000000000010000000000000001000", --Code rate = 3/4 , N = 1944
"00000000000010000000000000001011");--Code Rate = 5/6 , N = 1944 
type data_in_128bits is array(N-1 downto 0) of std_logic_vector(CORE_DATA_WIDTH-1 downto 0) ;
signal input_data_128bits,output_data_128bits : data_in_128bits := (others => (others => '0')) ; 
signal input_data_128bits_reg                 : data_in_128bits := (others => (others => '0')) ; 
signal reset_core        : std_logic := '0';
signal ldpc_core_control : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
--Sequential Logic signals
signal data_input0    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_input1    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_input2    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_input3    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_in_last   : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal core_in_ready  : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
type counters is array(N-1 downto 0) of integer ;
signal counter_value ,counter_value2  : counters := (others => 0);
type input_buffer is array (2 downto 0) of std_logic_vector(DATA_WIDTH -1 downto 0);
signal save_data0,save_data1,save_data3      : input_buffer := (others => (others => '0'));
signal start_encoding0, start_encoding1, start_encoding3 : std_logic := '0';
signal data_in_valid  : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal data_out_valid : std_logic_vector(N-1 downto 0 ) := (others => '0') ; 
--signal core_valid     : std_logic_vector(N-1 downto 0 ) := (others => '0') ; 
signal core_ctrl_valid: std_logic_vector(N-1 downto 0 ) := (others => '0') ; 
signal din_last_reg   : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal pad_counter0,pad_counter1,pad_counter2,pad_counter3 : integer := 0 ;

--Combinational logic signals
signal padding_process : std_logic := '0';
type fsm_input is (idle, encoding, padding) ;
signal state0,state1,state2,state3 : fsm_input := idle ;
signal din_last_cores : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal cw_counter0,cw_counter1,cw_counter2,cw_counter3 : integer := 0 ;
signal end_of_encoding : std_logic_vector(N-1 downto 0) := (others => '0') ;
--Output cores signals  
signal core_dout_valid  : std_logic_vector(N-1 downto 0) := (others => '0') ;
signal core_dout_ready  : std_logic_vector(N-1 downto 0) := (others => '0') ;
--signal pad_cw_counter   : integer := 0;
signal test_ready       : std_logic := '0';
signal pad_enable       : std_logic_vector(N-1 downto 0) := (others => '0') ;
begin

----Generate 4 instances of sd_fec_0 
--LDPC_core_inst : for i in 0 to N-1 generate 
--    inst: sd_fec_0 
--    port map(
--    reset_n             => reset_core,
--    core_clk            => ldpc_core_clk,
--    s_axi_aclk          => clk,
--    s_axis_ctrl_aclk    => clk,
--    s_axis_ctrl_tready  => open,
--    s_axis_ctrl_tvalid  => core_valid (i),
--    s_axis_ctrl_tdata   => sel_cr(i),
--    s_axis_din_aclk     => clk,
--    s_axis_din_tready   => core_dout_ready(i),
--    s_axis_din_tvalid   => core_valid(i),
--    s_axis_din_tlast    => din_last_reg(i),
--    s_axis_din_tdata    => input_data_128bits_reg(i), 
--    m_axis_status_aclk  => clk,
--    m_axis_status_tready=> '1',
--    m_axis_status_tvalid=> open,
--    m_axis_status_tdata => open ,
--    m_axis_dout_aclk    => clk,
--    m_axis_dout_tready  => din_ready(i),
--    m_axis_dout_tvalid  => core_dout_valid(i),
--    m_axis_dout_tlast   => dout_last(i),
--    m_axis_dout_tdata   => output_data_128bits(i)
--    );
--end generate LDPC_core_inst ; 
LDPC_core0 : sd_fec_0 
    port map(
    reset_n             => reset_core,
    core_clk            => ldpc_core_clk,
    s_axi_aclk          => clk,
    s_axis_ctrl_aclk    => clk,
    s_axis_ctrl_tready  => open,
    s_axis_ctrl_tvalid  => data_out_valid(0),
    s_axis_ctrl_tdata   => sel_cr(0),
    s_axis_din_aclk     => clk,
    s_axis_din_tready   => core_dout_ready(0),
    s_axis_din_tvalid   => data_out_valid(0),
    s_axis_din_tlast    => din_last_cores(0),
    s_axis_din_tdata    => input_data_128bits_reg(0), 
    m_axis_status_aclk  => clk,
    m_axis_status_tready=> '1',
    m_axis_status_tvalid=> open,
    m_axis_status_tdata => open ,
    m_axis_dout_aclk    => clk,
    m_axis_dout_tready  => din_ready(0),
    m_axis_dout_tvalid  => core_dout_valid(0),
    m_axis_dout_tlast   => dout_last(0),
    m_axis_dout_tdata   => output_data_128bits(0)
);
LDPC_core1 : sd_fec_0 
    port map(
    reset_n             => reset_core,
    core_clk            => ldpc_core_clk,
    s_axi_aclk          => clk,
    s_axis_ctrl_aclk    => clk,
    s_axis_ctrl_tready  => open,
    s_axis_ctrl_tvalid  => data_out_valid(1),
    s_axis_ctrl_tdata   => sel_cr(1),
    s_axis_din_aclk     => clk,
    s_axis_din_tready   => core_dout_ready(1),
    s_axis_din_tvalid   => data_out_valid(1),
    s_axis_din_tlast    =>  din_last_cores(1),
    s_axis_din_tdata    => input_data_128bits_reg(1), 
    m_axis_status_aclk  => clk,
    m_axis_status_tready=> '1',
    m_axis_status_tvalid=> open,
    m_axis_status_tdata => open ,
    m_axis_dout_aclk    => clk,
    m_axis_dout_tready  => din_ready(1),
    m_axis_dout_tvalid  => core_dout_valid(1),
    m_axis_dout_tlast   => dout_last(1),
    m_axis_dout_tdata   => output_data_128bits(1)
);
LDPC_core2 : sd_fec_0 
    port map(
    reset_n             => reset_core,
    core_clk            => ldpc_core_clk,
    s_axi_aclk          => clk,
    s_axis_ctrl_aclk    => clk,
    s_axis_ctrl_tready  => open,
    s_axis_ctrl_tvalid  => data_out_valid(2),
    s_axis_ctrl_tdata   => sel_cr(2),
    s_axis_din_aclk     => clk,
    s_axis_din_tready   => core_dout_ready(2),
    s_axis_din_tvalid   => data_out_valid(2),
    s_axis_din_tlast    =>  din_last_cores(2),
    s_axis_din_tdata    => input_data_128bits_reg(2), 
    m_axis_status_aclk  => clk,
    m_axis_status_tready=> '1',
    m_axis_status_tvalid=> open,
    m_axis_status_tdata => open ,
    m_axis_dout_aclk    => clk,
    m_axis_dout_tready  => din_ready(2),
    m_axis_dout_tvalid  => core_dout_valid(2),
    m_axis_dout_tlast   => dout_last(2),
    m_axis_dout_tdata   => output_data_128bits(2)
);
LDPC_core3 : sd_fec_0 
    port map(
    reset_n             => reset_core,
    core_clk            => ldpc_core_clk,
    s_axi_aclk          => clk,
    s_axis_ctrl_aclk    => clk,
    s_axis_ctrl_tready  => open,
    s_axis_ctrl_tvalid  => data_out_valid(3),
    s_axis_ctrl_tdata   => sel_cr(3),
    s_axis_din_aclk     => clk,
    s_axis_din_tready   => core_dout_ready(3),
    s_axis_din_tvalid   => data_out_valid(3),
    s_axis_din_tlast    =>  din_last_cores(3),
    s_axis_din_tdata    => input_data_128bits_reg(3), 
    m_axis_status_aclk  => clk,
    m_axis_status_tready=> '1',
    m_axis_status_tvalid=> open,
    m_axis_status_tdata => open ,
    m_axis_dout_aclk    => clk,
    m_axis_dout_tready  => din_ready(3),
    m_axis_dout_tvalid  => core_dout_valid(3),
    m_axis_dout_tlast   => dout_last(3),
    m_axis_dout_tdata   => output_data_128bits(3)
);

--seq_logic : process(clk, reset)

--begin
--    if reset = '1' then 
--        data_input0      <= (others => '0') ;
--        data_input1      <= (others => '0') ;
--        data_input2      <= (others => '0') ;
--        data_input3      <= (others => '0') ;
--        data_in_valid    <= (others => '0') ;
--        cw_counter0      <= 0;
--        cw_counter1      <= 0;
--        cw_counter2      <= 0;
--        cw_counter3      <= 0;
--        pad_enable       <= (others => '0') ;
--        reset_core       <= '0';
--        data_in_last     <= (others => '0') ;
--        start_encoding   <= '0';
--        counter_value    <= (others => 0) ;
--        counter_value2   <= (others => 0) ; 
----        data_out_valid       <= (others => '0') ;
--        core_ctrl_valid  <= (others => '0') ;
--        din_last_reg     <= (others => '0') ;
--        dout_ready       <= (others => '0') ;
----        input_data_128bits_reg <= (others =>(others => '0'));
--    elsif  rising_edge(clk) then 
----        data_out_valid       <= data_out_valid ;
----        core_ctrl_valid  <= data_out_valid  ;
--        reset_core       <= '1';
--        data_in_last     <= din_last ;
--        din_last_reg     <= din_last_cores ;
      
----        input_data_128bits_reg  <= input_data_128bits;
--       -- 
          
----        if (state0 = padding) and core_dout_ready(0) = '1' then 
----              pad_enable(0)  <= not pad_enable(0) ;
----        else 
----              pad_enable(0) <= '0';
----        end if ;
        
----        if (state1 = padding) and core_dout_ready(1) = '1' then 
----              pad_enable(1)  <= not pad_enable(1) ;
----        else 
----              pad_enable(1)<= '0';
----        end if ;
        
----        if (state2 = padding) and core_dout_ready(2) = '1'then 
----              pad_enable(2)  <= not pad_enable(2) ;
----        else 
----              pad_enable(2) <= '0';
----        end if ;
        
----        if (state3 = padding) and core_dout_ready(3) = '1' then 
----              pad_enable(3)  <= not pad_enable(3) ;
----        else 
----              pad_enable(3)  <= '0';
----        end if ;
--        if (state0 = padding) and core_dout_ready(0) = '1' then 
--              pad_counter0 <= pad_counter0 + 1  ;
--        else 
--              pad_counter0 <= 0 ;
--        end if ;
--        if (state1 = padding) and core_dout_ready(1) = '1' then 
--              pad_counter1 <= pad_counter1 + 1  ;
--        else 
--              pad_counter1 <= 0 ;
--        end if ;
--        if (state2 = padding) and core_dout_ready(2) = '1' then 
--              pad_counter2 <= pad_counter2 + 1  ;
--        else 
--              pad_counter2 <= 0 ;
--        end if ;
--        if (state3 = padding) and core_dout_ready(3) = '1' then 
--              pad_counter3 <= pad_counter3 + 1  ;
--        else 
--              pad_counter3 <= 0 ;
--        end if ;
        
--                --Data feeding in the core #0 ,padding needed since K = 50.62
--         if din_valid(0) = '1' and core_dout_ready(0) = '1' then   
--                  start_encoding <= '1';
--                  counter_value(0)  <= counter_value(0) ;
--                  counter_value2(0) <= counter_value2(0) ; 
                  
--             if counter_value(0) = 0 then
--                  counter_value2(0) <= 0 ;
--                  if cw_counter0 = 49 then
--                      dout_ready(0)  <=  '0' ;
--                      data_input0    <= din_data_core0 ;   
--                      cw_counter0 <= cw_counter0 + 1 ;
--                      data_in_valid(0)    <= '1';  
--                  elsif cw_counter0 = 50  then
--                      data_in_valid(0)    <= '1';  
--                      data_input0   <=  x"5A5A5A5A" ; 
--                      cw_counter0 <= 0 ;
--                      dout_ready(0)    <= core_dout_ready(0) ;
--                   elsif  cw_counter0 < 49  then     
--                      data_input0    <= din_data_core0  ;
--                      dout_ready(0)    <= core_dout_ready(0) ;
--                      cw_counter0 <= cw_counter0 + 1 ;
--                      data_in_valid(0)    <= '1';  
--                   else    
--                       dout_ready(0)    <= core_dout_ready(0) ;
--                       data_in_valid(0)    <= '0';  
--                       cw_counter0    <= 0;        
--                       data_input0    <= (others => '0') ;
--                   end if ;
--              else     
              
--                 dout_ready(0)  <=  '1' ;

--                  if cw_counter0 = 49 then
--                          data_input0     <=  save_data0(counter_value2(0)) ;   
--                          cw_counter0 <= cw_counter0 + 1 ;
--                          data_in_valid(0)    <= '1';  
--                  elsif cw_counter0 = 50  then
--                          data_in_valid(0)    <= '1';  
--                          data_input0  <=  x"5A5A5A5A" ; 
--                          cw_counter0 <= 0 ;
--                  elsif  cw_counter0 < 49  then     
--                          data_input0     <= save_data0(counter_value2(0))  ;
--                          cw_counter0 <= cw_counter0 + 1 ;
--                          data_in_valid(0)    <= '1';  
--                  else    
--                           dout_ready(0)    <= core_dout_ready(0) ;
--                           data_in_valid(0)    <= '0';  
--                           cw_counter0    <= 0;  
--                            data_input0    <= (others => '0') ;
      
--                  end if ;
--                counter_value(0)        <= counter_value(0) -1 ;
--                counter_value2(0)       <= counter_value2(0) + 1  ;
                   
--              end if ;
--        else
        
--            if start_encoding = '1' and counter_value(0) < 2 then 
--               save_data0(counter_value(0)) <= din_data_core0 ;
--               counter_value(0) <= counter_value(0) + 1 ;
--            end if ;   
----            clock_delay <= '1';
--            cw_counter0 <= cw_counter0 ;
--            data_in_valid(0)    <= '0';
--            dout_ready(0)    <= core_dout_ready(0) ;
--            data_input0     <= (others => '0');   
--        end if ;      
    
         
         
--           --Data feeding in the core #1 ,padding needed since K = 45.56 
--      if din_valid(1) = '1' and core_dout_ready(1) = '1' then   
--        start_encoding <= '1';
--        counter_value(1)  <= counter_value(1) ;
--        counter_value2(1) <= counter_value2(1) ; 
        
--        if counter_value(1) = 0 then
--            counter_value2(1) <= 0 ;
--            if cw_counter1 = 44 then
--                dout_ready(1)  <=  '0' ;
--                data_input1    <= din_data_core1 ;   
--                cw_counter1 <= cw_counter1 + 1 ;
--                data_in_valid(1)    <= '1';  
--            elsif cw_counter1 = 45  then
--                data_in_valid(1)    <= '1';  
--                data_input1   <=  x"5A5A5A5A" ; 
--                cw_counter1 <= 0 ;
--                dout_ready(1)    <= core_dout_ready(1) ;
--            elsif  cw_counter1 < 44  then     
--                data_input1    <= din_data_core1 ;
--                dout_ready(1)    <= core_dout_ready(1) ;
--                cw_counter1 <= cw_counter1 + 1 ;
--                data_in_valid(1)    <= '1';  
--            else    
--                dout_ready(1)    <= core_dout_ready(1) ;
--                data_in_valid(1)    <= '0';  
--                cw_counter1    <= 0;   
--                data_input1    <= (others => '0') ;     
--            end if ;
--        else     
--            dout_ready(1)  <=  '1' ;
    
--            if cw_counter1 = 44 then
--                data_input1     <=  save_data1(counter_value2(1)) ;   
--                cw_counter1 <= cw_counter1 + 1 ;
--                data_in_valid(1)    <= '1';  
--            elsif cw_counter1 = 45  then
--                data_in_valid(1)    <= '1';  
--                data_input1  <=  x"5A5A5A5A" ; 
--                cw_counter1 <= 0 ;
--            elsif  cw_counter1 < 44  then     
--                data_input1     <= save_data1(counter_value2(1))  ;
--                cw_counter1 <= cw_counter1 + 1 ;
--                data_in_valid(1)    <= '1';  
--            else    
--                dout_ready(1)    <= core_dout_ready(1) ;
--                data_in_valid(1)    <= '0';  
--                cw_counter1    <= 0;   
--                data_input1    <= (others => '0') ;
     
--            end if ;
--            counter_value(1)        <= counter_value(1) - 1 ;
--            counter_value2(1)       <= counter_value2(1) + 1  ;
--        end if ;
--    else
--        if start_encoding = '1' and counter_value(1) < 2 then 
--            save_data1(counter_value(1)) <= din_data_core1 ;
--            counter_value(1) <= counter_value(1) + 1 ;
--        end if ;   
--        cw_counter1 <= cw_counter1 ;
--        data_in_valid(1)    <= '0';
--        dout_ready(1)    <= core_dout_ready(1) ;
--        data_input1     <= (others => '0');   
--    end if ;  
         
         
--         --Data feeding in the core #2 , No padding needed since K = 27 
--          data_input2       <= din_data_core2 ;
--         if din_valid(2) = '1' and core_dout_ready(2) = '1' then   
--             dout_ready(2)     <=  '1' ;
--             data_in_valid(2)  <= '1';
--             if cw_counter2 < 26 then 
--                cw_counter2 <= cw_counter2 + 1 ;  
--             else 
--                cw_counter2 <= 0 ;   
--             end if ;   
--         else     
--             dout_ready(2)    <= core_dout_ready(2) ;
--             data_in_valid(2) <= '0'; 
--             cw_counter2      <= cw_counter2 ;
----             data_input2    <= (others => '0') ;

--         end if ;      
         
--        --Data feeding in the core #3 , padding needed since K = 20.25
--        if din_valid(3) = '1' and core_dout_ready(3) = '1' then   
--                  start_encoding <= '1';
--                  counter_value(3)  <= counter_value(3) ;
--                  counter_value2(3) <= counter_value2(3) ; 
                  
--             if counter_value(3) = 0 then
--                  counter_value2(3) <= 0 ;
--                  if cw_counter3 = 19 then
--                      dout_ready(3)  <=  '0' ;
--                      data_input3    <= din_data_core3 ;   
--                      cw_counter3    <= cw_counter3 + 1 ;
--                      data_in_valid(3)    <= '1';  
--                  elsif cw_counter3 = 20  then
--                      data_in_valid(3)    <= '1';  
--                      data_input3    <=  x"5A5A5A5A" ; 
--                      cw_counter3    <= 0 ;
--                      dout_ready(3)  <= core_dout_ready(3) ;
--                  elsif  cw_counter3 < 19  then     
--                      data_input3    <= din_data_core3 ;
--                      dout_ready(3)  <= core_dout_ready(3) ;
--                      cw_counter3    <= cw_counter3 + 1 ;
--                      data_in_valid(3) <= '1';  
--                   else    
--                       dout_ready(3)    <= core_dout_ready(3) ;
--                       data_in_valid(3) <= '0';  
--                       cw_counter3      <= 0;
--                       data_input3    <= (others => '0') ;
        
--                   end if ;
--              else     
              
--                 dout_ready(3)  <=  '1' ;

--                  if cw_counter3 = 19 then
--                          data_input3      <=  save_data3(counter_value2(3)) ;   
--                          cw_counter3 <= cw_counter3 + 1 ;
--                          data_in_valid(3)    <= '1';  
--                  elsif cw_counter3 = 20  then
--                          data_in_valid(3)    <= '1';  
--                          data_input3   <=  x"5A5A5A5A" ; 
--                          cw_counter3 <= 0 ;
--                  elsif  cw_counter3 < 19  then     
--                          data_input3      <= save_data3(counter_value2(3))  ;
--                          cw_counter3 <= cw_counter3 + 1 ;
--                          data_in_valid(3)    <= '1';  
--                  else    
--                           dout_ready(3)    <= core_dout_ready(3) ;
--                           data_in_valid(3)    <= '0';  
--                           cw_counter3    <= 0;    
--                           data_input3    <= (others => '0') ;
    
--                  end if ;
--                counter_value(3)        <= counter_value(3) -1 ;
--                counter_value2(3)       <= counter_value2(3) + 1  ;
                   
--              end if ;
--        else
        
--            if start_encoding = '1' and counter_value(3) < 2 then 
--               save_data3(counter_value(3)) <= din_data_core3 ;
--               counter_value(3) <= counter_value(3) + 1 ;
--            end if ;   
----            clock_delay <= '1';
--            cw_counter3 <= cw_counter3 ;
--            data_in_valid(3)    <= '0';
--            dout_ready(3)    <= core_dout_ready(3) ;
--            data_input3      <= (others => '0');   
--        end if ;    
 
--    end if ;     
--end process ;

seq_logic_core0 : process (reset,clk) 
begin 
if reset = '1'then 
    data_input0       <= (others => '0') ;
    cw_counter0       <= 0;
    data_in_last(0)   <= '0' ;
    counter_value(0)  <= 0;
    counter_value2(0) <= 0;
--    data_out_valid(0) <= '0';
--    din_last_cores(0) <= '0';
    dout_ready(0)     <= '0';
    start_encoding0  <= '0';
    pad_counter0      <= 0 ;
    input_data_128bits_reg(0)  <= (others => '0') ;
     
elsif rising_edge(clk) then
    reset_core      <= '1';
    data_in_last(0)     <= din_last(0) ;
--    din_last_reg(0)    <= din_last_cores(0) ;

     input_data_128bits_reg(0) <= input_data_128bits(0);
    
     
       if (state0 = padding) and core_dout_ready(0) = '1' then 
              pad_counter0 <= pad_counter0 + 1  ;
        else 
              pad_counter0 <= 0 ;
        end if ;
            --Data feeding in the core #0 ,padding needed since K = 50.62
         if din_valid(0) = '1' and core_dout_ready(0) = '1' then   
                  start_encoding0 <= '1';
--                  counter_value(0)  <= counter_value(0) ;
--                  counter_value2(0) <= counter_value2(0) ; 
                  
             if counter_value(0) = 0 then
                  counter_value2(0) <= 0 ;
                  if cw_counter0 = 49 then
                      dout_ready(0)  <=  '0' ;
                      data_input0    <= din_data_core0 ;   
                      cw_counter0 <= cw_counter0 + 1 ;
                      data_in_valid(0)    <= '1';  
                  elsif cw_counter0 = 50  then
                      data_in_valid(0)    <= '1';  
                      data_input0   <=  x"5A5A5A5A" ; 
                      cw_counter0 <= 0 ;
                      dout_ready(0)    <= core_dout_ready(0) ;
                   elsif  cw_counter0 < 49  then     
                      data_input0    <= din_data_core0  ;
                      dout_ready(0)    <= core_dout_ready(0) ;
                      cw_counter0 <= cw_counter0 + 1 ;
                      data_in_valid(0)    <= '1';  
                   else    
                       dout_ready(0)    <= core_dout_ready(0) ;
                       data_in_valid(0)    <= '0';  
                       cw_counter0    <= 0;        
                       data_input0    <= (others => '0') ;
                   end if ;
              else     
              
                 dout_ready(0)  <=  '1' ;

                  if cw_counter0 = 49 then
                          data_input0     <=  save_data0(counter_value2(0)) ;   
                          cw_counter0 <= cw_counter0 + 1 ;
                          data_in_valid(0)    <= '1';  
                  elsif cw_counter0 = 50  then
                          data_in_valid(0)    <= '1';  
                          data_input0  <=  x"5A5A5A5A" ; 
                          cw_counter0 <= 0 ;
                  elsif  cw_counter0 < 49  then     
                          data_input0     <= save_data0(counter_value2(0))  ;
                          cw_counter0 <= cw_counter0 + 1 ;
                          data_in_valid(0)    <= '1';  
                  else    
                           dout_ready(0)    <= core_dout_ready(0) ;
                           data_in_valid(0)    <= '0';  
                           cw_counter0    <= 0;  
                           data_input0    <= (others => '0') ;
      
                  end if ;
                counter_value(0)        <= counter_value(0)-1 ;
                counter_value2(0)       <= counter_value2(0) + 1  ;
                   
              end if ; 
         else
        
            if start_encoding0 = '1' and counter_value(0) < 2 then 
               save_data0(counter_value(0)) <= din_data_core0 ;
               counter_value(0) <= counter_value(0) + 1 ;
            end if ;   
            cw_counter0 <= cw_counter0 ;
            data_in_valid(0)    <= '0';
            dout_ready(0)    <= core_dout_ready(0) ;
            data_input0     <= (others => '0');   
        end if ;    
end if ;    
end process ;
seq_logic_core1 : process (reset,clk)
    begin
        if reset = '1' then
            data_input1       <= (others => '0');
            cw_counter1       <= 0;
            data_in_last(1)   <= '0';
            counter_value(1)     <= 0;
            counter_value2(1)    <= 0;
--            data_out_valid(1) <= '0';
--            din_last_cores(1) <= '0';
            dout_ready(1)     <= '0';
            pad_counter1      <= 0;
            pad_enable(1)     <= '0';
--            reset_core        <= '0';
            start_encoding1    <= '0';
            din_last_reg(1)   <= '0';
            input_data_128bits_reg(1) <= (others => '0') ; 
        elsif rising_edge(clk) then
--            reset_core      <= '1';
            data_in_last(1) <= din_last(1);
--            din_last_reg(1) <= din_last_cores(1);
                 input_data_128bits_reg(1) <= input_data_128bits(1);

            -- Pad_enable oscillator (counter-based)
            if (state0 = padding) and core_dout_ready(1) = '1' then
                pad_counter1 <= pad_counter1 + 1;
            else              
                pad_enable(1) <= '0';
            end if;

            -- Data feeding in the core #1, padding needed since K = 50.62
            if din_valid(1) = '1' and core_dout_ready(1) = '1' then
                start_encoding1 <= '1';
                counter_value(1)  <= counter_value(1);
                counter_value2(1) <= counter_value2(1);

                if counter_value(1) = 0 then
                    counter_value2(1) <= 0;
                    if cw_counter1 = 44 then
                        dout_ready(1)  <= '0';
                        data_input1    <= din_data_core1;
                        cw_counter1    <= cw_counter1 + 1;
                        data_in_valid(1) <= '1';
                    elsif cw_counter1 = 45 then
                        data_in_valid(1) <= '1';
                        data_input1   <= x"5A5A5A5A";
                        cw_counter1   <= 0;
                        dout_ready(1) <= core_dout_ready(1);
                    elsif cw_counter1 < 44 then
                        data_input1    <= din_data_core1;
                        dout_ready(1)  <= core_dout_ready(1);
                        cw_counter1    <= cw_counter1 + 1;
                        data_in_valid(1) <= '1';
                    else
                        dout_ready(1)    <= core_dout_ready(1);
                        data_in_valid(1) <= '0';
                        cw_counter1      <= 0;
                        data_input1      <= (others => '0');
                    end if;
                else
                    dout_ready(1) <= '1';
                    if cw_counter1 = 44 then
                        data_input1    <= save_data1(counter_value2(1));
                        cw_counter1    <= cw_counter1 + 1;
                        data_in_valid(1) <= '1';
                    elsif cw_counter1 = 45 then
                        data_in_valid(1) <= '1';
                        data_input1   <= x"5A5A5A5A";
                        cw_counter1   <= 0;
                    elsif cw_counter1 < 44 then
                        data_input1    <= save_data1(counter_value2(1));
                        cw_counter1    <= cw_counter1 + 1;
                        data_in_valid(1) <= '1';
                    else
                        dout_ready(1)    <= core_dout_ready(1);
                        data_in_valid(1) <= '0';
                        cw_counter1      <= 0;
                        data_input1      <= (others => '0');
                    end if;
                    counter_value(1)  <= counter_value(1) - 1;
                    counter_value2(1) <= counter_value2(1) + 1;
                end if;
            else
                if start_encoding1 = '1' and counter_value(1) < 2 then
                    save_data1(counter_value(1)) <= din_data_core1;
                    counter_value(1) <= counter_value(1) + 1;
                end if;
                cw_counter1      <= cw_counter1;
                data_in_valid(1) <= '0';
                dout_ready(1)    <= core_dout_ready(1);
                data_input1      <= (others => '0');
            end if;
        end if;
    end process;
seq_logic_core2 : process (reset,clk) 
begin 
if reset = '1' then 
            data_input2      <= (others => '0') ;
            cw_counter2      <= 0;
            pad_counter2     <= 0 ;    
            data_in_last(2)   <= '0' ;
--            din_last_cores(2) <= '0';
--            data_out_valid(2) <= '0';
            dout_ready(2)     <= '0';
            input_data_128bits_reg(2) <= (others => '0') ; 

elsif rising_edge(clk) then
              --Data feeding in the core #2 , No padding needed since K = 27 
        data_in_last(2)   <=    din_last(2)   ;
         input_data_128bits_reg(2) <=   input_data_128bits(2);

--        din_last_reg     <= din_last_cores ;
        if (state2 = padding) and core_dout_ready(2) = '1'then 
              pad_counter2  <= pad_counter2 + 1;
        else 
              pad_counter2      <= 0;
        end if ;
        
          data_input2       <= din_data_core2 ;
         if din_valid(2) = '1' and core_dout_ready(2) = '1' then   
             dout_ready(2)     <=  '1' ;
             data_in_valid(2)  <= '1';
             if cw_counter2 < 26 then 
                cw_counter2 <= cw_counter2 + 1 ;  
             else 
                cw_counter2 <= 0 ;   
             end if ;   
         else     
             dout_ready(2)    <= core_dout_ready(2) ;
             data_in_valid(2) <= '0'; 
             cw_counter2      <= cw_counter2 ;
--             data_input2    <= (others => '0') ;

         end if ;
  end if ;              
end process ;
seq_logic_core3 : process (reset, clk)
    begin
        if reset = '1' then
            data_input3       <= (others => '0');
            cw_counter3       <= 0;
            data_in_last(3)   <= '0';
            counter_value(3)     <= 0;
            counter_value2(3)    <= 0;
--            data_out_valid(3) <= '0';
--            din_last_cores(3) <= '0';
            dout_ready(3)     <= '0';
            start_encoding3    <= '0';
            din_last_reg(3)   <= '0';
            input_data_128bits_reg(3) <= (others => '0') ;
        elsif rising_edge(clk) then
            data_in_last(3) <= din_last(3);
--            din_last_reg(3) <= din_last_cores(3);
             input_data_128bits_reg(3) <=  input_data_128bits(3);

            -- Data feeding in the core #3, padding needed since K = 20.25
            if din_valid(3) = '1' and core_dout_ready(3) = '1' then
                start_encoding3 <= '1';
                counter_value(3)  <= counter_value(3);
                counter_value2(3) <= counter_value2(3);

                if counter_value(3) = 0 then
                    counter_value2(3) <= 0;
                    if cw_counter3 = 19 then
                        dout_ready(3)  <= '0';
                        data_input3    <= din_data_core3;
                        cw_counter3    <= cw_counter3 + 1;
                        data_in_valid(3) <= '1';
                    elsif cw_counter3 = 20 then
                        data_in_valid(3) <= '1';
                        data_input3   <= x"5A5A5A5A";
                        cw_counter3   <= 0;
                        dout_ready(3) <= core_dout_ready(3);
                    elsif cw_counter3 < 19 then
                        data_input3    <= din_data_core3;
                        dout_ready(3)  <= core_dout_ready(3);
                        cw_counter3    <= cw_counter3 + 1;
                        data_in_valid(3) <= '1';
                    else
                        dout_ready(3)    <= core_dout_ready(3);
                        data_in_valid(3) <= '0';
                        cw_counter3      <= 0;
                        data_input3      <= (others => '0');
                    end if;
                else
                    dout_ready(3) <= '1';
                    if cw_counter3 = 19 then
                        data_input3    <= save_data3(counter_value2(3));
                        cw_counter3    <= cw_counter3 + 1;
                        data_in_valid(3) <= '1';
                    elsif cw_counter3 = 20 then
                        data_in_valid(3) <= '1';
                        data_input3   <= x"5A5A5A5A";
                        cw_counter3   <= 0;
                    elsif cw_counter3 < 19 then
                        data_input3    <= save_data3(counter_value2(3));
                        cw_counter3    <= cw_counter3 + 1;
                        data_in_valid(3) <= '1';
                    else
                        dout_ready(3)    <= core_dout_ready(3);
                        data_in_valid(3) <= '0';
                        cw_counter3      <= 0;
                        data_input3      <= (others => '0');
                    end if;
                    counter_value(3)  <= counter_value(3) - 1;
                    counter_value2(3) <= counter_value2(3) + 1;
                end if;
            else
                if start_encoding3 = '1' and counter_value(3) < 2 then
                    save_data3(counter_value(3)) <= din_data_core3;
                    counter_value(3) <= counter_value(3) + 1;
                end if;
                cw_counter3      <= cw_counter3;
                data_in_valid(3) <= '0';
                dout_ready(3)    <= core_dout_ready(3);
                data_input3      <= (others => '0') ;
            end if;
        end if;
    end process;
comb_logic_core0 : process(data_input0, data_in_valid(0), data_in_last(0), pad_counter0) 
--variable codeword_counter : integer := 0;
variable counter_value0    : integer := 0;
begin 
--Default value 
input_data_128bits(0)  <= (others => '0');
end_of_encoding(0) <= '0';
case state0 is 

 when idle => 
 din_last_cores(0) <= '0';
 counter_value0  := 0 ;
 
--default values 
          input_data_128bits(0) <= x"000000000000000000000000" & data_input0 ;
     if data_in_valid(0) = '1'  and core_dout_ready(0) = '1' then  
          state0 <= encoding ;
          data_out_valid(0)     <= '1'; 
     else  
          state0 <= idle ;
          data_out_valid(0)     <= '0'; 
     end if ;

  when encoding => 
  state0 <= encoding ;
  input_data_128bits(0) <=  x"000000000000000000000000" & data_input0 ;
  din_last_cores(0) <= '0';
  counter_value0  := 0 ;
--  data_out_valid(0)     <= '0'; 

    if data_in_valid(0) = '1'  and core_dout_ready(0) = '1' and data_in_last(0) = '0' then 
        data_out_valid(0)     <= '1'; 

    elsif data_in_valid(0) = '0'  and core_dout_ready(0) = '1' and data_in_last(0) = '1' then    
         data_out_valid(0)     <= '0'; 
         
         if cw_counter0  = 0 then 
            state0       <= idle ; 
         else
            state0      <= padding ;
            din_last_cores(0) <= '1';
            counter_value0 := cw_counter0  ;         
         end if ;
    elsif data_in_valid(0) = '0'  and core_dout_ready(0) = '1' and data_in_last(0) = '0'  then 
          data_out_valid(0)     <= '1'; 
    else 
      data_out_valid(0)     <= '1'; 
       
    end if ;

   when padding => 
        input_data_128bits(0) <= x"0000000000000000000000005A5A5A5A" ;
        counter_value0 := counter_value0 + 1 ;
        if counter_value0  = 52 then 
           state0 <= idle ;
           counter_value0 := 0 ;
           din_last_cores(0) <= '1';
           data_out_valid(0) <= '0';
           end_of_encoding(0) <= '1';

        else 
            data_out_valid(0) <= '1';
            din_last_cores(0) <= '0';
            state0   <= padding  ;
           
        end if ; 
   when others => 
                data_out_valid(0)     <= '0'; 
                din_last_cores(0)     <= '0';
                state0               <= idle;
                input_data_128bits(0) <= (others => '0') ;
                counter_value0 := 0 ;

     end case ;
 end process ;      

 
comb_logic_core1 : process(data_input1, data_in_valid(1), data_in_last(1),   pad_counter1) 
--variable codeword_counter : integer := 0;
variable counter_value1    : integer := 0;
begin 
end_of_encoding(1) <= '0';
input_data_128bits(1)  <= (others => '0');

case state1 is 

 when idle => 
 din_last_cores(1) <= '0';
 counter_value1  := 0 ;

          input_data_128bits(1) <= x"000000000000000000000000" & data_input1 ;
     if data_in_valid(1) = '1'  and core_dout_ready(1) = '1' then  
          state1 <= encoding ;
          data_out_valid(1)     <= '1'; 
     else  
          data_out_valid(1)     <= '0'; 

          state1  <= idle ;
     end if ;

  when encoding => 
  state1   <= encoding ;
  input_data_128bits(1) <=  x"000000000000000000000000" & data_input1 ;
  din_last_cores(1) <= '0';
--  data_out_valid(1)     <= '0'; 
 counter_value1  := 0 ;

    if data_in_valid(1) = '1'  and core_dout_ready(1) = '1' and data_in_last(1) = '0' then 
        data_out_valid(1)     <= '1'; 

    elsif data_in_valid(1) = '0'  and core_dout_ready(1) = '1' and data_in_last(1) = '1' then    
         data_out_valid(1)     <= '0'; 
         
         if cw_counter1 = 0 then 
            state1       <= idle ; 
         else
            state1     <= padding ;
            din_last_cores(1) <= '1';
            counter_value1 := cw_counter1 ;         
         end if ;
    elsif data_in_valid(1) = '0'  and core_dout_ready(1) = '1' and data_in_last(1) = '0'  then 
          data_out_valid(1)     <= '1'; 
    else 
          data_out_valid(1)     <= '1'; 
       
    end if ;

   when padding => 
        input_data_128bits(1) <= x"0000000000000000000000005A5A5A5A" ;
        counter_value1 := counter_value1 + 1 ;
        if counter_value1  = 47 then 
           state1 <= idle ;
           data_out_valid(1) <= '0';
           counter_value1 := 0 ;
           din_last_cores(1) <= '1';
           end_of_encoding(1) <= '1';

        else 
            data_out_valid(1) <= '1';
            din_last_cores(1) <= '0';
            state1 <= padding  ;
           
        end if ; 
   when others => 
     data_out_valid(1)     <= '0';   
     din_last_cores(1) <= '0';
     state1               <= idle;
     input_data_128bits(1) <= (others => '0') ;
      counter_value1  := 0 ; 
     end case ;
 end process ;  
  
comb_logic_core2 : process(data_input2, data_in_valid(2), data_in_last(2),   pad_counter2) 
--variable codeword_counter : integer := 0;
variable counter_value2    : integer := 0;
begin 
--Default value 
end_of_encoding(2) <= '0';
input_data_128bits(2)  <= (others => '0');

case state2 is 

 when idle => 
 din_last_cores(2) <= '0';
 counter_value2  := 0 ;

--default values 
          input_data_128bits(2) <= x"000000000000000000000000" & data_input2 ;
     if data_in_valid(2) = '1'  and core_dout_ready(2) = '1' then  
          state2 <= encoding ;
          data_out_valid(2)     <= '1'; 
     else  
          state2 <= idle ;
          data_out_valid(2)     <= '0'; 
     end if ;

  when encoding => 
  state2 <= encoding ;
  input_data_128bits(2) <=  x"000000000000000000000000" & data_input2 ;
  din_last_cores(2) <= '0';
  counter_value2  := 0 ;

    if data_in_valid(2) = '1'  and core_dout_ready(2) = '1' and data_in_last(2) = '0' then 
        data_out_valid(2)     <= '1'; 

    elsif data_in_valid(2) = '0'  and core_dout_ready(2) = '1' and data_in_last(2) = '1' then    
         data_out_valid(2)     <= '0'; 
         
         if cw_counter2 = 0 then 
            state2       <= idle ; 
         else
            state2      <= padding ;
            din_last_cores(2) <= '1';
            counter_value2 := cw_counter2 ;         
         end if ;
    elsif data_in_valid(2) = '0'  and core_dout_ready(2) = '1' and data_in_last(2) = '0'  then 
          data_out_valid(2)     <= '1'; 
    else 
      data_out_valid(2)     <= '1'; 
      
    end if ;

   when padding => 
        input_data_128bits(2) <= x"0000000000000000000000005A5A5A5A" ;
        counter_value2 := counter_value2 + 1 ;
--        pad_cw_counter  <= counter_value ;
        if counter_value2 = 28 then 
           state2 <= idle ;
           counter_value2 := 0 ;
           din_last_cores(2) <= '1';
           data_out_valid(2) <= '0';
           end_of_encoding(2) <= '1';

        else 
            data_out_valid(2) <= '1';
            din_last_cores(2) <= '0';
            state2 <= padding  ;
           
        end if ; 
  when others => 
              data_out_valid(2) <= '0';
              din_last_cores(2) <= '0';
              state2               <= idle;
              input_data_128bits(2) <= (others => '0') ;
              counter_value2 := 0;
     end case ;
 end process ;  
comb_logic_core3 : process(data_input3, data_in_valid(3), data_in_last(3), pad_counter3) 
--variable codeword_counter : integer := 0;
variable counter_value3    : integer := 0;
begin 
--Default value 
--input_data_128bits(3)  <= (others => '0');

case state3 is 

 when idle => 
 din_last_cores(3) <= '0';
 counter_value3  := 0 ;
--default values 
          input_data_128bits(3) <= x"000000000000000000000000" & data_input3 ;
     if data_in_valid(3) = '1'  and core_dout_ready(3) = '1' then  
          state3 <= encoding ;
          data_out_valid(3)     <= '1';  
             
     else  
          state3 <= idle ;
          data_out_valid(3)     <= '0'; 
     end if ;

  when encoding => 
  state3 <= encoding ;
  input_data_128bits(3) <=  x"000000000000000000000000" & data_input3 ;
  din_last_cores(3) <= '0';
  counter_value3  := 0 ;
--  data_out_valid(3)     <= '0'; 
    if data_in_valid(3) = '1'  and core_dout_ready(3) = '1' and data_in_last(3) = '0' then 
        data_out_valid(3)     <= '1'; 

    elsif data_in_valid(3) = '0'  and core_dout_ready(3) = '1' and data_in_last(3) = '1' then    
         data_out_valid(3)     <= '0'; 
         
         if cw_counter3 = 0 then 
            state3       <= idle ; 
         else
            state3      <= padding ;
            din_last_cores(3) <= '1';
            counter_value3 := cw_counter3 ;         
         end if ;
    elsif data_in_valid(3) = '0'  and core_dout_ready(3) = '1' and data_in_last(3) = '0'  then 
          data_out_valid(3)     <= '1'; 
    else 
          data_out_valid(3)     <= '1'; 
          
    end if ;

   when padding => 
        input_data_128bits(3) <= x"0000000000000000000000005A5A5A5A" ;
        counter_value3 := counter_value3 + 1   ;
        
    
        if counter_value3  = 23 then 
           state3 <= idle ;
           data_out_valid(3) <= '0';
--           data_out_valid(3) <= '0';
           counter_value3 := 0 ;
           din_last_cores(3) <= '1';

        else 
            data_out_valid(3) <= '1';
            din_last_cores(3) <= '0';
            state3 <= padding  ;
           
        end if ; 
      
   when others => 
          data_out_valid(3)     <= '0';
          din_last_cores(3)     <= '0';
          state3                <= idle;
          input_data_128bits(3) <= (others => '0') ;
          counter_value3 := 0 ;
     end case ;
 end process ;      

output_logic_core0 : process (output_data_128bits(0), core_dout_valid(0)) 
begin
dout_data0 <= output_data_128bits(0)(31 downto 0 ) ;
if output_data_128bits(0) /= x"0000000000000000000000005A5A5A5A" and core_dout_valid(0) = '1' then 
   dout_valid(0) <= '1' ;
elsif  output_data_128bits(0) = x"0000000000000000000000005A5A5A5A" and core_dout_valid(0) = '1' then   
dout_valid(0) <= '0' ;
else 
   dout_valid(0) <= '0' ;
end if ;
end process ;

output_logic_core1 : process (output_data_128bits(1), core_dout_valid(1) ) 
begin
dout_data1 <= output_data_128bits(1)(31 downto 0 ) ;
if output_data_128bits(1) /= x"0000000000000000000000005A5A5A5A" and core_dout_valid(1) = '1' then 
   dout_valid(1) <= '1' ;
elsif  output_data_128bits(1) = x"0000000000000000000000005A5A5A5A" and core_dout_valid(1) = '1' then   
dout_valid(1) <= '0' ;   
else 
   dout_valid(1) <= '0' ;
end if ;
end process ;

output_logic_core2 : process (output_data_128bits(2), core_dout_valid(2) ) 
begin
dout_data2 <= output_data_128bits(2)(31 downto 0 ) ;
if output_data_128bits(2) /= x"0000000000000000000000005A5A5A5A" and core_dout_valid(2) = '1' then 
   dout_valid(2) <= '1' ;
elsif  output_data_128bits(2) = x"0000000000000000000000005A5A5A5A" and core_dout_valid(2) = '1' then   
dout_valid(2) <= '0' ;
else 
   dout_valid(2) <= '0' ;
end if ;
end process ;

output_logic_core3 : process (output_data_128bits(3), core_dout_valid(3) ) 
begin
dout_data3 <= output_data_128bits(3)(31 downto 0 ) ;
if output_data_128bits(3) /= x"0000000000000000000000005A5A5A5A" and core_dout_valid(3) = '1' then 
   dout_valid(3) <= '1' ;
elsif output_data_128bits(3) = x"0000000000000000000000005A5A5A5A" and core_dout_valid(3) = '1' then 
   dout_valid(3) <= '0' ;
else 
   dout_valid(3) <= '0' ;
end if ;
end process ;
end Behavioral;
