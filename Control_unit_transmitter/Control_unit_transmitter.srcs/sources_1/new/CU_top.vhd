----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/06/2025 10:16:52 AM
-- Design Name: 
-- Module Name: CU_top - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CU_top is
 generic (
    DATA_WIDTH                  : integer := 4      --Bytes per word 
    );
 Port (  --General input port 
    clk                         : in std_logic := '0';
    reset                       : in std_logic := '0';
    tx_data                     : in std_logic_vector(31 downto 0 ) := (others => '0') ; 
    tx_data_valid               : in std_logic := '0';
    control_unit_enable         : out std_logic := '0';   
    tx_almost_full              : out std_logic  ;
   -- Interface to Packet generator  
    tx_init                     : in std_logic                       := '0';
    tx_start                    : in std_logic                       := '0'; 
    tx_scrambler_ena            : in std_logic                       := '0';
    tx_dst_addr                 : in std_logic_vector(7 downto 0)    := (others => '0');
    tx_length                   : in std_logic_vector(17 downto 0)   := (others => '0');
    tx_modulation               : in std_logic_vector(3 downto 0)    := (others => '0');
    tx_fec                      : in std_logic_vector(7 downto 0)    := (others => '0');
    scrambler_init              : in std_logic_vector(31 downto 1)  := (others => '0') ;
 --Scrambler ports 
    scrambler_din_data          : out std_logic_vector(31 downto 0)  ;  --Data stream coming from Scrambler 
    scrambler_seed              : out std_logic_vector(31 downto 1)  ;
    scrambler_din_valid         : out std_logic;
    scrambler_din_last          : out std_logic  ; --end of frame data
    scrambler_control_enable    : out std_logic  ;  --input seed valid    
--    scrambler_last_frame        : out std_logic  ;    
    --Encoder ports 
    encoder_code_rate           : out std_logic_vector(1 downto 0) ; --coding scheme selected for encoder --> starting CR = 1/2 ;
--    encoder_reset_fifos         : out std_logic ;
--    --Interleaver ports 
    interleaver_dout_valid      : in std_logic := '0';
    interleaver_dout_data       : in std_logic_vector(31 downto 0) := (others => '0'); 
--    interleaver_dout_last       : in std_logic := '0';
    interleaver_last_frame      : in std_logic := '0';   
    interleaver_din_ready       : out std_logic ;   
 -- Mapper ports 
--   mapper_last_frame           : in std_logic := '0'; 
    mapper_selected_mod         : out std_logic_vector(2 downto 0)  ; 
    mapper_din_data             : out std_logic_vector(5 downto 0)  ; --Preamble input data to mapper 
    mapper_din_valid            : out std_logic  ;
    mapper_din_last             : out std_logic ;
--   mapper_end_of_frame         : out std_logic := '0' ; 
  --DPD filter 
    dpd_din_valid               :  out std_logic ;
    dpd_din_data_I              :  out std_logic_vector(11 downto 0)   ;
    dpd_din_data_Q              :  out std_logic_vector(11 downto 0)  
   );
end CU_top;

architecture Behavioral of CU_top is

COMPONENT tx_data_fifo
  PORT (
    s_axis_aresetn : IN STD_LOGIC;
    s_axis_aclk    : IN STD_LOGIC;
    s_axis_tvalid  : IN STD_LOGIC;
    s_axis_tready  : OUT STD_LOGIC;
    s_axis_tdata   : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_tvalid  : OUT STD_LOGIC;
    m_axis_tready  : IN STD_LOGIC;
    m_axis_tdata   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    almost_full    : OUT STD_LOGIC
  );
END COMPONENT;

--FIFO Signals 
signal fifo_reset     : std_logic;
signal s_axis_tvalid  : std_logic;
signal s_axis_tready  : std_logic;
signal s_axis_tdata   : std_logic_vector(31 downto 0);
signal fifo_out_valid : std_logic;
signal m_axis_tready  : std_logic;
signal fifo_data_out  : std_logic_vector(31 downto 0);
--Preambles  mapped using BPSK mod.scheme

type preamble_sts is array (0 to 63) of STD_LOGIC_VECTOR(11 downto 0); --In-phase symbols --> 96 Bytes 
    constant preamble_sts_ROM : preamble_sts := (
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" 


    );

type preamble_lts is array (0 to 127) of std_logic_vector(11 downto 0) ; --In-phase symbols for Preamble B --> 192 Bytes
constant preamble_lts_ROM : preamble_lts := (
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" 
);

constant preamble_Q : std_logic_vector(11 downto 0) := (others => '0') ;

type  pilot_vector_ROM is array(0 to 127) of  STD_LOGIC_VECTOR(11 downto 0) ; -- In-phase symbols for pilot --> 192 Bytes 
constant pilot_I : pilot_vector_ROM  := (
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"100000000001" ,
"100000000001" ,
"011111111111" ,
"100000000001" ,
"011111111111" ,
"011111111111" ,
"100000000001" ,
"100000000001" 
);

constant pilot_Q : std_logic_vector(11 downto 0) := (others => '0') ;

--Signal field signals 
signal signal_field_bits    : std_logic_vector(255 downto 0) := (others => '0') ;
signal signal_field_en  : std_logic := '0'; --This signal notice if the signal field has been sent or not yet 
--Payload signals
signal payload_counter   : integer :=  0 ;
signal mapper_buf_I      : std_logic_vector(11 downto 0 ) := (others => '0') ;
signal temp              : std_logic := '0';
signal splitter_data_in  : std_logic_vector(31 downto 0)  := (others => '0') ;
signal last_word         : std_logic := '0';
--!signal preambles_inserted : std_logic := '0' ; --Signal that checks if the 2 preambles have been added to the packet structure 
signal start_data_splitter  : std_logic  := '0'; 
--!signals Pilot insertion
signal pilot_counter, pilot_symbols   : integer := 0 ;

type control_unit is (START_TX, IDLE ,PREAMBLE_A, PREAMBLE_B, PILOT_STATE, PAYLOAD_STREAM) ;
signal state : control_unit := START_TX ;

type data_stream is (INIT, SIGNAL_FIELD, PAYLOAD) ;
signal data_state : data_stream := INIT ; 
--Splitter signals 
type splitter_control is (INIT_TX, START, DATA_PROCESSING, FINISH, PADDING, PILOT);
signal splitter_case : splitter_control := INIT_TX ;
signal symbol_counter     : integer range 0 to 898 := 0 ;

begin

-- Assigning each field to its respective position within the 256-bit vector
signal_field_bits(3 downto 0)    <= tx_modulation ;  
signal_field_bits(11 downto 4)   <= tx_dst_addr;
signal_field_bits(29 downto 12)  <= tx_length;
signal_field_bits(60 downto 30)  <= scrambler_init;
signal_field_bits(68 downto 61)  <= tx_fec ;


Input_data_fifo : tx_data_fifo
  PORT MAP (
    s_axis_aresetn  => fifo_reset,
    s_axis_aclk     => clk,
    s_axis_tvalid   => tx_data_valid,
    s_axis_tready   => open,
    s_axis_tdata    => tx_data,
    m_axis_tvalid   => fifo_out_valid,
    m_axis_tready   => m_axis_tready,
    m_axis_tdata    => fifo_data_out,
    almost_full     => tx_almost_full
  );
  
payload_process : process (clk,reset) 
variable n             : integer range 0 to 7   := 0;
variable frame_counter : integer := 0 ;
variable delay_cnt     : integer range 0 to 10 := 0 ;     
begin
if reset = '1' then 
    n := 0 ;
    m_axis_tready <= '0';
    scrambler_din_valid       <= '0';
    scrambler_din_data        <= (others => '0') ;  --Data stream coming from Scrambler 
    scrambler_din_valid       <= '0' ;
    scrambler_din_last        <= '0';
    scrambler_control_enable  <= '0' ;
    scrambler_seed            <= ( others => '0') ;   
    frame_counter             := 0 ;
    delay_cnt                 := 0 ;
elsif rising_edge (clk) then 
  --Default value
  scrambler_din_last        <= '0';

    case data_state is 
        when INIT => 
            --default state 
              data_state                <= INIT ;           
              scrambler_control_enable  <= '0' ;
              scrambler_din_valid       <= '0';
              m_axis_tready             <= '0';

             if  tx_start = '1' then   
                 data_state                <= SIGNAL_FIELD ;
                 frame_counter             := ((to_integer(unsigned(tx_length)) / DATA_WIDTH ) ) ;  --This counter counts how many 4-bytes words of have been fed to the transmitter for establishing when the data stream ends
                 scrambler_seed            <= scrambler_init ;   
                 scrambler_control_enable  <= tx_scrambler_ena  ;                 
             else 
                 scrambler_din_data      <= (others => '0') ;
                 scrambler_seed          <= (others => '0') ;
                 frame_counter           := 0 ;
             end if ;
        when SIGNAL_FIELD  => 
              scrambler_din_valid       <= '1';  
              scrambler_din_data        <= signal_field_bits(((n+1)*32)-1  downto n*32); --256-bits --> 32-bits vectors  x 8 
              data_state                <= SIGNAL_FIELD ;
              m_axis_tready <= '0';
                
              if n < 7 then             
                    n:= n + 1 ;
              else 
                    n := 0 ;   
--                    m_axis_tready <= '1';
                    scrambler_din_last        <= '1';
                    data_state  <= PAYLOAD ;                         
               end if ;    
        when PAYLOAD  => 
        --Delay of 50 ns between Signal Field and Payload 
          if delay_cnt < 10 then 
            delay_cnt := delay_cnt + 1 ;
            scrambler_din_valid       <= '0';  
            scrambler_din_last        <= '1';
          else 
                m_axis_tready <= '1';
                scrambler_din_valid       <= fifo_out_valid    ;    
                scrambler_din_data        <= fifo_data_out ;           
                if frame_counter = 0 then 
                    scrambler_din_last    <= '1';
                    data_state            <= INIT ;
                else 
                    frame_counter         := frame_counter - 1 ;                 
                end if ;   
           end if ;  
       when others =>  
            n                         := 0 ;
            delay_cnt                 := 0 ;
            m_axis_tready             <= '0';
            scrambler_din_valid       <= '0';
            scrambler_din_data        <= (others => '0') ;  --Data stream coming from Scrambler 
            scrambler_din_valid       <= '0' ;
            scrambler_din_last        <= '0';
            scrambler_control_enable  <= '0' ;
            scrambler_seed            <= ( others => '0') ;   
            frame_counter             := 0 ;   
       end case ;     
             
end if ;    
end process ;  
control_unit_process : process (clk , reset)
variable i             : integer range 0 to 10  := 0;
variable k             : integer range 0 to 127 := 0;
variable delay_cnt     : integer range 0 to 10  := 0 ;     
begin

if reset = '1' then 
    k                         := 0 ;
    i                         := 0 ;
    delay_cnt                 := 0 ;
    dpd_din_valid             <= '0';
    state                     <= START_TX  ;
    dpd_din_valid             <= '0';
    dpd_din_data_Q            <= (others => '0') ;
    dpd_din_data_Q            <= (others => '0') ; 
    encoder_code_rate         <= (others => '0') ;
    start_data_splitter       <= '0' ;
    fifo_reset                <= '0';
elsif rising_edge(clk)  then 
    encoder_code_rate         <=  tx_fec(1 downto 0) ;
    dpd_din_data_Q            <= (others => '0') ;
    dpd_din_data_Q            <= (others => '0') ; 
    dpd_din_valid             <= '0'; 
  
 case state is 
 
    when START_TX =>      
       
        start_data_splitter  <= '0' ;
        delay_cnt            := 0 ;
         if tx_init = '1' then
             fifo_reset   <= '1';
             state <= IDLE ;
         else  
             fifo_reset   <= '0';  
         end if ; 
             
    when IDLE => 
       --Packets ready to be processed by transmitter  
     start_data_splitter  <= '0' ;
      if  tx_start = '1' then  
            state <= PREAMBLE_A ;
            control_unit_enable <= '1';     
     else 
           state <= IDLE ; -- control unit is ready to receive packets
           control_unit_enable <= '0';
     end if ;  
    when PREAMBLE_A =>    --Short_term_sequence      
         start_data_splitter  <= '0' ;
      
  -- Short term preamble insertion , 10 sequences of 64 symbols each 
--            if  dpd_dout_ready = '1' then 
         dpd_din_valid <= '1' ;
         dpd_din_data_Q <= preamble_Q ;
              if i < 10 then --feed 10 sequences of 64 symbols each 
                   if k < 63 then 
                      dpd_din_data_I <= preamble_sts_ROM(k) ;
                      k := k + 1 ;
                   else     
                      K := 0 ;
                      i:= i + 1 ;
                   end if ;
               else 
               i := 0 ;
               state <= PREAMBLE_B ; --when Preamble A finishes go to preamble B state 
               dpd_din_valid <= '0' ;   
              end if ;     
--            else  
----               dpd_din_ready <= '1';
--            end if ;   
       
    when PREAMBLE_B => 
  --short preamble insertion , 2 sequences of 128 symbols each
              start_data_splitter  <= '0' ;
        if delay_cnt < 10 then 
           delay_cnt := delay_cnt + 1 ;  --Time delay between 2 Preambles ,to be adjusted depending from the case 
        else         
          if i < 2 then 
            dpd_din_valid  <= '1' ;
            dpd_din_data_Q <= preamble_Q ;
               if k < 127 then 
                  dpd_din_data_I <= preamble_lts_ROM(k) ;
                  k := k + 1 ;
               else     
                  K := 0 ;
                  i := i + 1 ;
               end if ;
           else 
--           i := 0 ;
              state         <= PILOT_STATE ; 
              delay_cnt     := 0 ;
              dpd_din_valid <= '0' ;   
          end if ;    
       end if ;    
    when PILOT_STATE => 
  --This state check if the symbols that are sent from the data splitter process full fill an entire block N = 896 symbols, if so,start sending the pilot symbols
  --default values 
    state               <= PILOT_STATE ;   
--    start_data_splitter  <= '1' ;  
--        if symbol_counter = 0 then 
         if delay_cnt < 10 then 
           delay_cnt := delay_cnt + 1 ;
         else  
            if pilot_symbols < 128 then
                        control_unit_enable <= '1';
                        dpd_din_valid       <= '1';                          
                        dpd_din_data_I      <= pilot_I(pilot_symbols) ;      
                        dpd_din_data_Q      <= pilot_Q  ;                    
                        pilot_symbols       <= pilot_symbols  + 1  ; 
                        start_data_splitter <= '0' ;
        
             else   
                       control_unit_enable  <= '0';         
                       start_data_splitter  <= '1' ;
        
                      if interleaver_last_frame = '1' then
                        state <= START_TX  ;       
                      else  
                        state <= PAYLOAD_STREAM ;
                      end if ;  
              end if ;        
         end if ;
     when PAYLOAD_STREAM => 
        pilot_symbols <= 0;      
         if splitter_case = PILOT then 
            state <= PILOT_STATE ;
         else 
            state <= PAYLOAD_STREAM ;
         end if ;      

     when others => 
        dpd_din_valid       <= '0';
        state               <= START_TX  ;
        dpd_din_valid       <= '0';
        dpd_din_data_Q      <= (others => '0') ;
        dpd_din_data_Q      <= (others => '0') ; 
        start_data_splitter <= '0' ;                       
end case ;
end if ;
end process ;


data_splitter : process (clk, reset ) 
variable index          : integer range 0 to 32:= 0 ;
variable delay_counter  : integer range 0 to 1 := 0 ;
begin
--default values 
if reset = '1' then 
     splitter_case          <= START ;  
     interleaver_din_ready  <= '0';      
     splitter_data_in       <= (others => '0');        
     mapper_din_data        <= (others => '0');
     mapper_selected_mod    <= (others => '0');
     mapper_din_last        <= '0';      
     mapper_din_valid       <= '0'; 
     symbol_counter         <= 0 ;
     delay_counter          := 0;
elsif rising_edge (clk) then
    --Default values 
     mapper_selected_mod    <= tx_modulation (2 downto 0) ;
     mapper_din_data        <= (others => '0');
     mapper_din_valid       <= '0'; 
--     splitter_data_in       <= (others => '0');        

case splitter_case is 
    when INIT_TX => 
        if tx_init = '1' then 
            splitter_case <= START ;
        else
            splitter_case <= INIT_TX ;
        end if ;        
    when START => 
    --default case
     delay_counter := 0 ;
     splitter_case <= START ; 
     temp          <= '0';  
     last_word     <= '0';
--        if start_data_splitter = '1' and interleaver_dout_valid = '1' then 
--           splitter_case          <= DATA_PROCESSING ;
--           splitter_data_in       <= interleaver_dout_data ;
--           interleaver_din_ready  <= '0';    
--        elsif start_data_splitter = '1' and interleaver_dout_valid = '0' then
--           interleaver_din_ready  <= '1'; 
--        else   
--           interleaver_din_ready  <= '0';                
--        end if ;
        if start_data_splitter = '1' and interleaver_dout_valid = '1' then 
           splitter_case          <= DATA_PROCESSING ;
--           splitter_data_in       <= interleaver_dout_data ;
           interleaver_din_ready  <= '1';    
           temp          <= '1';  
    
        else   
           interleaver_din_ready  <= '0';                
        end if ;
     when DATA_PROCESSING => 
         
        if temp = '0' then 
          delay_counter         := 0 ;
          interleaver_din_ready <= '0'; 
           case tx_modulation (2 downto 0) is    
                when "000" =>  --BPSK  
                    if index < (32 -1 ) then 
                         mapper_din_data       <=  "00000" &  splitter_data_in(index) ; --Correct way for adding zeros 
                         temp                  <=  '0' ;
                    elsif index=(32 -1 )  then 
                         temp                  <=  '1'  ;   
                         interleaver_din_ready <= '1';  
                    end if ;
                    index:= index+ 1 ;
                when "001" => --QPSK 
                    if index< (32 /2) - 1   then
                         mapper_din_data       <=  "0000" & splitter_data_in((index+1)*2-1  downto index*2)  ;
                         temp                  <=  '0' ;
                     elsif index= (32 /2) - 1   then
                         mapper_din_data       <=  "0000" & splitter_data_in((index+1)*2-1  downto index*2)  ;
                         temp                  <=  '1'  ; 
                         interleaver_din_ready <= '1';      
                    end if  ;
                      index:= index+ 1 ;
                
                when "101"  => -- 16-APSK
                    if index<((32 /4) - 1) then
                         mapper_din_data       <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
                         temp                  <=  '0' ;
                     elsif index= ((32 /4) - 1)  then 
                         mapper_din_data       <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
                         temp                  <=  '1'  ;   
                         interleaver_din_ready <= '1'; 
                    end if ;
                      index:= index+ 1 ;
                when "010" => -- 16-QAM 
                    if index<((32 /4) - 1) then
                         mapper_din_data       <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
                         temp                  <=  '0' ;
                     elsif index= ((32 /4) - 1)  then 
                         mapper_din_data       <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
                         temp                  <=  '1'  ;    
                         interleaver_din_ready <= '1';
                    end if ;
                      index:= index+ 1 ;
                
                when "110"  => -- 32-APSK
    
                    if index<= 5 then 
                         mapper_din_data       <= "0" & splitter_data_in((index+1)*5-1  downto index*5) ;
                         temp                  <=  '0' ;
                    elsif index=6  then  
                         mapper_din_data       <=   "0000" & splitter_data_in(31 downto 30); 
                         temp                  <=  '1'  ; 
                         interleaver_din_ready <= '1';                        
                    end if ;
                      index:= index+ 1 ;
                when "011" => -- 32-QAM 
    
                    if index<= 5 then 
                         mapper_din_data       <= "0" & splitter_data_in((index+1)*5-1  downto index*5) ;
                         temp                  <=  '0' ;
                    elsif index=6  then  
                         mapper_din_data       <=   "0000" & splitter_data_in(31 downto 30); 
                         temp                  <=  '1'  ; 
                         interleaver_din_ready <= '1';     
                    end if ;
                      index:= index+ 1 ; 
                when "111"  => -- 64-APSK
                    
                    if index <= 4 then 
                         mapper_din_data       <= splitter_data_in((index+1)*6-1  downto index*6) ;
                         temp                  <=  '0' ;
                    elsif index=5 then 
                         mapper_din_data       <=   "0000" & splitter_data_in(31 downto 30);
                         temp                  <=  '1'  ;
                         interleaver_din_ready <= '1';   
                    end if ;
                      index := index + 1 ;
                when "100" => -- 64-QAM 
                    
                    if index <= 4 then 
                         mapper_din_data       <= splitter_data_in((index+1)*6-1  downto index*6) ;
                         temp                  <=  '0' ;
                    elsif index=5 then 
                         mapper_din_data       <=   "0000" & splitter_data_in(31 downto 30);
                         temp                  <=  '1'  ;    
                         interleaver_din_ready <= '1';                       
                    end if ;
                      index := index + 1 ;
                when others =>
                        mapper_din_data <= (others => '0');
                        temp <=  '0' ;
                end case ;
                     mapper_din_valid <= '1';              
                  
                    if symbol_counter < 896 then
                        symbol_counter <= symbol_counter + 1 ;            
                    else 
                        interleaver_din_ready <= '0' ;
                        symbol_counter        <= 0 ;
                        splitter_case         <= PILOT ;
                    end if ;
       elsif temp = '1' and interleaver_dout_valid = '1' then  
             interleaver_din_ready  <= '0';          
             mapper_din_valid       <= '0';
             index := 0 ;
     
             if delay_counter = 1  then                                                          
                splitter_data_in       <= interleaver_dout_data;
                delay_counter          := 0 ;
                temp                   <= '0'; 
                last_word              <= interleaver_last_frame ;
             else 
               delay_counter := delay_counter + 1  ;
               temp          <= '1';               
             end if ;  
                if  last_word = '1' then 
                    splitter_case <= PADDING ;
                else 
                    splitter_case <= DATA_PROCESSING ;        
                end if ;             
     
       else 
             interleaver_din_ready  <= '0';
             mapper_din_valid       <= '0'; 
             delay_counter          := 0 ;
             splitter_case          <= START ; 
            
       end if ;
   when PADDING => 
        interleaver_din_ready <= '0';                     
        delay_counter := 0 ;
        if symbol_counter < 896 then 
             mapper_din_data <=  (others => '0') ;           
             mapper_din_valid <= '1';   
             symbol_counter <= symbol_counter + 1 ;    
             splitter_case <= PADDING ;
        else 
            symbol_counter   <= 0 ;  
            mapper_din_valid <= '0';   
            splitter_case <= PILOT ;
        end if ;
    when PILOT =>      
       mapper_din_valid       <= '0';     
       delay_counter          := 0 ;  
       interleaver_din_ready  <= '0';                            
        if pilot_symbols < 128 then 
           splitter_case  <= PILOT ;     
        else  
           if temp = '1' and interleaver_last_frame = '0'then 
              interleaver_din_ready <= '1'; 
              splitter_case         <= DATA_PROCESSING  ;     
           elsif  temp = '1' and interleaver_last_frame = '1' then
              splitter_case         <= INIT_TX  ;   
              mapper_din_last       <= '1';           
           else 
              splitter_case         <= DATA_PROCESSING  ;                         
           end if ;
         end if ;  
     when others => 
         splitter_case          <= START ;
         interleaver_din_ready  <= '0' ;
         mapper_din_valid       <= '0'; 
         mapper_din_data        <= (others => '0');
         delay_counter          := 0 ;   
         index                  := 0 ;
end case ;
end if ;
end process ;             
end Behavioral;
