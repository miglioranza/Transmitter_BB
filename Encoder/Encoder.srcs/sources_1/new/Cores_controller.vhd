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
  end_of_frame      : in  std_logic;
  code_rate         : in std_logic_vector(N-1 downto 0);
  din_ready         : in std_logic_vector(N-1 downto 0);
  din_valid         : in std_logic_vector(N-1 downto 0);
  din_data_core0    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  din_data_core1    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  din_data_core2    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  din_data_core3    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  dout_valid        : out std_logic_vector(N-1 downto 0); 
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

signal reset_core        : std_logic_vector(N-1 downto 0)  := (others => '0');
signal din_last          : std_logic_vector(N-1 downto 0)  := (others => '0');
signal ldpc_core_control : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
--Sequential Logic signals
signal data_input0    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_input1    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_input2    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_input3    : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0') ;
signal data_in_valid  : std_logic_vector(N-1 downto 0 ) := (others => '0') ;
signal data_out_valid : std_logic_vector(N-1 downto 0 ) := (others => '0') ; 
--Combinational logic signals
signal padding_process : std_logic := '0';
type fsm_input is (idle, encoding, padding) ;
signal state                 : fsm_input := idle ;
begin

--Generate 4 instances of sd_fec_0 
LDCP_core_inst : for i in 0 to N-1 generate 
    inst: sd_fec_0 
    port map(
    reset_n             => reset_core(i),
    core_clk            => ldpc_core_clk,
    s_axi_aclk          => clk,
    s_axis_ctrl_aclk    => clk,
    s_axis_ctrl_tready  => open,
    s_axis_ctrl_tvalid  => din_valid(i),
    s_axis_ctrl_tdata   => sel_cr(i),
    s_axis_din_aclk     => clk,
    s_axis_din_tready   => dout_ready(i),
    s_axis_din_tvalid   => din_valid(i),
    s_axis_din_tlast    => din_last(i),
    s_axis_din_tdata    => input_data_128bits(i), 
    m_axis_status_aclk  => clk,
    m_axis_status_tready=> '1',
    m_axis_status_tvalid=> dout_valid(i),
    m_axis_status_tdata => open ,
    m_axis_dout_aclk    => clk,
    m_axis_dout_tready  => din_ready(i),
    m_axis_dout_tvalid  => dout_valid(i),
    m_axis_dout_tlast   => dout_last(i),
    m_axis_dout_tdata   => output_data_128bits(i)
    );
end generate LDCP_core_inst ;  

seq_logic : process(clk, reset)
begin
    if reset = '1' then 
        data_input0      <= (others => '0') ;
        data_input1      <= (others => '0') ;
        data_input2      <= (others => '0') ;
        data_input3      <= (others => '0') ;
        data_in_valid    <= (others => '0') ;
    elsif  rising_edge(clk) then 
        data_input0 <= din_data_core0 ;
        data_input1 <= din_data_core1 ;
        data_input2 <= din_data_core2 ;
        data_input3 <= din_data_core3 ;
        data_in_valid <= din_valid;
    end if ;    
end process ;

comb_logic_core0 : process( data_input0, data_in_valid(0), din_ready ,din_last) 
variable codeword_counter : integer := 0;
begin 

case state is 

 when idle => 
    
--default values 
 input_data_128bits(0) <= (others => '0') ;
  codeword_counter := codeword_counter + 1 ;   
    if data_in_valid(0) = '1'  then  
       input_data_128bits(0) <=  x"000000000000000000000000" & data_input0 ;
       data_out_valid(0)     <= '1'; 
       state <= encoding ;
     else   
      data_out_valid(0)     <= '0'; 
      state <= idle ;
     codeword_counter := codeword_counter - 1 ;    
     end if ; 
  when encoding => 
  state <= encoding ;
  input_data_128bits(0) <=  x"000000000000000000000000" & data_input0 ;
  codeword_counter := codeword_counter + 1 ;   

  if data_in_valid(0) = '1'  then      
     data_out_valid(0)     <= '1'; 
         if codeword_counter = 20 and din_last(0) = '1' then
          codeword_counter := 0 ;
          state <= idle ;
         elsif codeword_counter < 20 and din_last(0) = '1' then 
          state <= padding ;
         elsif codeword_counter = 20 and din_last(0) = '0' then
               codeword_counter := 0 ;
         end if ; 
     else     
      data_out_valid(0)     <= '0';      
      state <= idle ;
     end if ;
     
   when padding => 
        input_data_128bits(0) <= x"0000000000000000000000005A5A5A5A" ;
        codeword_counter := codeword_counter + 1 ;
        if codeword_counter = 20 then 
           state <= idle ;
           data_out_valid(0) <= '0';
        else 
            data_out_valid(0) <= '1';
            state <= padding  ;
        end if ;  
     end case ;
 end process ; 
 
 
 comb_logic_core1 : process( data_input0, data_in_valid(1), din_ready ,din_last) 
variable codeword_counter : integer := 0;
begin 

case state is 

 when idle => 
    
--default values 
 input_data_128bits(1) <= (others => '0') ;
  codeword_counter := codeword_counter + 1 ;   
    if data_in_valid(1) = '1'  then  
       input_data_128bits(1) <=  x"000000000000000000000000" & data_input1 ;
       data_out_valid(1)     <= '1'; 
       state <= encoding ;
     else   
      data_out_valid(1)     <= '0'; 
      state <= idle ;
     codeword_counter := codeword_counter - 1 ;    
     end if ; 
  when encoding => 
  state <= encoding ;
  input_data_128bits(1) <=  x"000000000000000000000000" & data_input1 ;
  codeword_counter := codeword_counter + 1 ;   

  if data_in_valid(1) = '1'  then      
     data_out_valid(1)     <= '1'; 
         if codeword_counter = 26 and din_last(1) = '1' then
          codeword_counter := 0 ;
          state <= idle ;
         elsif codeword_counter < 26 and din_last(1) = '1' then 
          state <= padding ;
         elsif codeword_counter = 26 and din_last(1) = '0' then
               codeword_counter := 0 ;
         end if ; 
     else     
      data_out_valid(1)     <= '0';      
      state <= idle ;
     end if ;
     
   when padding => 
        input_data_128bits(1) <= x"0000000000000000000000005A5A5A5A" ;
        codeword_counter := codeword_counter + 1 ;
        if codeword_counter = 26 then 
           state <= idle ;
           data_out_valid(1) <= '0';
        else 
            data_out_valid(1) <= '1';
            state <= padding  ;
        end if ;  
     end case ;
 end process ; 
   
  comb_logic_core2 : process( data_input0, data_in_valid(2), din_ready ,din_last) 
variable codeword_counter : integer := 0;
begin 

case state is 

 when idle => 
    
--default values 
 input_data_128bits(2) <= (others => '0') ;
  codeword_counter := codeword_counter + 1 ;   
    if data_in_valid(2) = '1'  then  
       input_data_128bits(2) <=  x"000000000000000000000000" & data_input2 ;
       data_out_valid(2)     <= '1'; 
       state <= encoding ;
     else   
      data_out_valid(2)     <= '0'; 
      state <= idle ;
     codeword_counter := codeword_counter - 1 ;    
     end if ; 
  when encoding => 
  state <= encoding ;
  input_data_128bits(2) <=  x"000000000000000000000000" & data_input2 ;
  codeword_counter := codeword_counter + 1 ;   

  if data_in_valid(2) = '1'  then      
     data_out_valid(2)     <= '1'; 
         if codeword_counter = 45 and din_last(2) = '1' then
          codeword_counter := 0 ;
          state <= idle ;
         elsif codeword_counter < 45 and din_last(2) = '1' then 
          state <= padding ;
         elsif codeword_counter = 45 and din_last(2) = '0' then
               codeword_counter := 0 ;
         end if ; 
     else     
      data_out_valid(2)     <= '0';      
      state <= idle ;
     end if ;
     
   when padding => 
        input_data_128bits(2) <= x"0000000000000000000000005A5A5A5A" ;
        codeword_counter := codeword_counter + 1 ;
        if codeword_counter = 45 then 
           state <= idle ;
           data_out_valid(2) <= '0';
        else 
            data_out_valid(2) <= '1';
            state <= padding  ;
        end if ;  
     end case ;
 end process ;      
 comb_logic_core3 : process( data_input0, data_in_valid(3), din_ready ,din_last) 
variable codeword_counter : integer := 0;
begin 

case state is 

 when idle => 
    
--default values 
 input_data_128bits(3) <= (others => '0') ;
  codeword_counter := codeword_counter + 1 ;   
    if data_in_valid(3) = '1'  then  
       input_data_128bits(3) <=  x"000000000000000000000000" & data_input3 ;
       data_out_valid(3)     <= '1'; 
       state <= encoding ;
     else   
      data_out_valid(3)     <= '0'; 
      state <= idle ;
     codeword_counter := codeword_counter - 1 ;    
     end if ; 
  when encoding => 
  state <= encoding ;
  input_data_128bits(3) <=  x"000000000000000000000000" & data_input3 ;
  codeword_counter := codeword_counter + 1 ;   

  if data_in_valid(3) = '1'  then      
     data_out_valid(3)     <= '1'; 
         if codeword_counter = 50 and din_last(3) = '1' then
          codeword_counter := 0 ;
          state <= idle ;
         elsif codeword_counter < 50 and din_last(3) = '1' then 
          state <= padding ;
         elsif codeword_counter = 50 and din_last(3) = '0' then
               codeword_counter := 0 ;
         end if ; 
     else     
      data_out_valid(3)     <= '0';      
      state <= idle ;
     end if ;
     
   when padding => 
        input_data_128bits(3) <= x"0000000000000000000000005A5A5A5A" ;
        codeword_counter := codeword_counter + 1 ;
        if codeword_counter = 50 then 
           state <= idle ;
           data_out_valid(3) <= '0';
        else 
            data_out_valid(3) <= '1';
            state <= padding  ;
        end if ;  
     end case ;
 end process ;      
end Behavioral;
