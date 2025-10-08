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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CU_top is
 Port (  --General input port 
    clk                         : in std_logic := '0';
    reset                       : in std_logic := '0';
    tx_data                     : in std_logic_vector(31 downto 0 ) := (others => '0') ; 
    tx_data_valid               : in std_logic := '0';
--    control_unit_end_of_frame   : in std_logic := '0';
--    control_unit_dout_ready     : out std_logic := '0';
--    control_unit_last_frame     : out std_logic := '0';
    control_unit_enable         : out std_logic := '0';
   -- Interface to Packet generator  
    tx_init                     : in std_logic                       := '0';
    tx_start                    : in std_logic                       := '0'; 
    tx_scrambler_ena            : in std_logic                       := '0';
    tx_dst_addr                 : in std_logic_vector(7 downto 0)    := (others => '0');
    tx_length                   : in std_logic_vector(17 downto 0)   := (others => '0');
    tx_modulation               : in std_logic_vector(3 downto 0)    := (others => '0');
    tx_fec                      : in std_logic_vector(7 downto 0)    := (others => '0');
--    mod_cod_schemes             : in std_logic_vector(4 downto 0)   := (others => '0') ; --modulation and coding schemes --> Possible values :   BPSK and CR = 1/2  => 0001 ,QPSK and CR = 2/3 => 0010 ,16-QAM/16-APSK  and CR = 3/4 => 0100  ,64-QAM/64-APSK  and CR = 5/6 => 1000              
--    num_streams                 : in std_logic_vector(4 downto 0)   := (others => '0') ;
--    ref_distance                : in std_logic_vector(7 downto 0)   := (others => '0') ;
    scrambler_init              : in std_logic_vector(31 downto 1)  := (others => '0') ;
--    num_words                   : in std_logic_vector(15 downto 0)  := (others => '0') ; --Number of bytes per frame (payload) 
--    start_tx                    : in std_logic := '0';   
--    phy_src_address             : in std_logic_vector(4 downto 0 ) := (others => '0') ; 
--    phy_dest_address            : in std_logic_vector(4 downto 0 ) := (others => '0') ; 
   
  
 --Scrambler ports 

    scrambler_din_data          : out std_logic_vector(31 downto 0)  ;  --Data stream coming from Scrambler 
    scrambler_seed              : out std_logic_vector(31 downto 1)  ;
    scrambler_din_valid         : out std_logic;
    scrambler_din_last          : out std_logic  ; --end of frame data
    scrambler_control_enable    : out std_logic  ;  --input seed valid    
    scrambler_last_frame        : out std_logic  ;    
    --Encoder ports 
    encoder_code_rate           : out std_logic_vector(1 downto 0) ; --coding scheme selected for encoder --> starting CR = 1/2 ;
    encoder_reset_fifos         : out std_logic ;
    encoder_almost_full         : in std_logic  ;
--    --Interleaver ports 
    interleaver_dout_valid      : in std_logic := '0';
    interleaver_dout_data       : in std_logic_vector(31 downto 0) := (others => '0'); 
--    interleaver_dout_last       : in std_logic := '0';
    interleaver_last_frame      : in std_logic := '0';   
    interleaver_din_ready       : out std_logic ;   
 -- Mapper ports 
    mapper_dout_last            : in std_logic := '0'; -- This port signals if the mapper finished to processing the signal field block
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
    s_axis_aclk : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    almost_full : OUT STD_LOGIC
  );
END COMPONENT;

--FIFO Signals 
signal s_axis_aresetn : std_logic;
signal s_axis_aclk    : std_logic;
signal s_axis_tvalid  : std_logic;
signal s_axis_tready  : std_logic;
signal s_axis_tdata   : std_logic_vector(7 downto 0);
signal m_axis_tvalid  : std_logic;
signal m_axis_tready  : std_logic;
signal m_axis_tdata   : std_logic_vector(7 downto 0);
signal almost_full    : std_logic;
--Preambles definition , must be stored in a ROM memory, they are mapper using BPSK mod.scheme
--Preamble A short training sequence ,The Sync field consists of a string of 0s or 1s, alerting the receiver that a potentially receivable signal is present

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
signal data_process      : std_logic := '0';
--!signal preambles_inserted : std_logic := '0' ; --Signal that checks if the 2 preambles have been added to the packet structure 
signal start_data_splitter  : std_logic  := '0'; 

--!signals Pilot insertion
signal pilot_counter, pilot_symbols   : integer := 0 ;

signal padding_value_I : std_logic_vector(11 downto 0)  := (others => '0' ) ;
signal padding_value_Q : std_logic_vector(11 downto 0)  := (others => '0' ) ;
signal padding_payload : std_logic := '0';

type control_unit is (IDLE ,PREAMBLE_A, PREAMBLE_B, PAYLOAD) ;
signal state : control_unit := IDLE ;
--Splitter signals 
type splitter_control is (START, DATA_PROCESSING, FINISH, PADDING, PILOT);
signal splitter_case : splitter_control := START ;
signal symbol_counter     : integer range 0 to 898 := 0 ;

begin

-- Assigning each field to its respective position within the 256-bit vector
signal_field_bits(3 downto 0)    <= tx_modulation ;  
signal_field_bits(11 downto 4)   <= tx_dst_addr;
signal_field_bits(29 downto 12)  <= tx_length;
signal_field_bits(60 downto 31)  <= scrambler_init;
signal_field_bits(68 downto 61)  <= tx_fec ;


Input_data_fifo : tx_data_fifo
  PORT MAP (
    s_axis_aresetn  => s_axis_aresetn,
    s_axis_aclk     => s_axis_aclk,
    s_axis_tvalid   => s_axis_tvalid,
    s_axis_tready   => s_axis_tready,
    s_axis_tdata    => s_axis_tdata,
    m_axis_tvalid   => m_axis_tvalid,
    m_axis_tready   => m_axis_tready,
    m_axis_tdata    => m_axis_tdata,
    almost_full     => almost_full
  );
control_unit_process : process (clk , reset)
variable i   : integer range 0 to 10  := 0;
variable k   : integer range 0 to 127 := 0;
variable n   : integer range 0 to 8   := 0;

begin

if reset = '1' then 
    scrambler_din_data        <= (others => '0') ;  --Data stream coming from Scrambler 
    scrambler_din_valid       <= '0' ;
    scrambler_din_last        <= '0';
    scrambler_control_enable  <= '0' ;
    n := 0 ;
    k := 0 ;
    i := 0 ;
--    control_unit_last_frame  <= '0';
    dpd_din_valid             <= '0';
    scrambler_last_frame      <= '0'; 
    state                     <= IDLE ;
--    control_unit_dout_ready   <= '0';
    dpd_din_valid             <= '0';
    dpd_din_data_Q            <= (others => '0') ;
    dpd_din_data_Q            <= (others => '0') ; 
    encoder_reset_fifos       <= '1';
    encoder_code_rate         <= (others => '0') ;
    start_data_splitter          <= '0' ;
elsif rising_edge(clk)  then 
--    control_unit_dout_ready   <= '1';
    scrambler_din_last        <= '0';
    scrambler_seed            <= scrambler_init ;
    scrambler_din_valid       <= tx_data_valid ;
    scrambler_control_enable  <= tx_scrambler_ena  ;
--    scrambler_last_frame      <= control_unit_end_of_frame ;
--    scrambler_din_last        <= control_unit_end_of_frame ;
    encoder_reset_fifos       <= '0';
    encoder_code_rate          <=  tx_fec(1 downto 0) ;

    dpd_din_data_Q            <= (others => '0') ;
    dpd_din_data_Q            <= (others => '0') ; 
    dpd_din_valid             <= '0'; 
    
    
-- if tx_data_valid = '1' and n < 8 then 
--      scrambler_din_data      <= signal_field_bits(((n+1)*32)-1  downto n*32); --256-bits --> 32-bits vectors  x 8 
--      n := n + 1 ;
-- else 
--      scrambler_din_data        <= tx_data ;
-- end if ;
  
 case state is 
 
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
               state <= PREAMBLE_B ; --when Preamble A finishe go to preamble B state 
               dpd_din_valid <= '0' ;   
              end if ;     
--            else  
----               dpd_din_ready <= '1';
--            end if ;   
       
  when PREAMBLE_B => 
  --short preamble insertion , 2 sequences of 128 symbols each
              start_data_splitter  <= '0' ;

          if i < 2 then 
            dpd_din_valid <= '1' ;
            dpd_din_data_Q <= preamble_Q ;
               if k < 127 then 
                  dpd_din_data_I <= preamble_lts_ROM(k) ;
                  k := k + 1 ;
               else     
                  K := 0 ;
                  i:= i + 1 ;
               end if ;
           else 
--           i := 0 ;
              state <= PAYLOAD ; 
              dpd_din_valid <= '0' ;   
          end if ;     
  when PAYLOAD => 
  --This state check if the symbols that are sent from the data splitter process full fill an entire block N = 896 symbols, if so,start sending the pilot symbols
  --default values 
    state               <= PAYLOAD ;   
--    start_data_splitter  <= '1' ;
--   if mapper_dout_last = '1'  then           

--     if pilot_symbols < 128 then     
--               control_unit_enable <= '1';
--               dpd_din_valid       <= '1';                          
--               dpd_din_data_I      <= pilot_I(pilot_symbols) ;      
--               dpd_din_data_Q      <= pilot_Q  ;                    
--               pilot_symbols       <= pilot_symbols  + 1  ;   
                 
--      else                              
--               control_unit_enable <= '0';
--              if interleaver_last_frame = '1' then
--                state <= IDLE ;       
--              else  
--                state <= PAYLOAD ;
--              end if ;       
--      end if ; 
--  else 
--       pilot_symbols       <=  0 ;                                
--       control_unit_enable <= '0';
if tx_data_valid = '1' then 
    scrambler_last_frame  <= '0';
else 
    scrambler_last_frame  <= '1';
end if ;     
if symbol_counter = 0 then 
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
                state <= IDLE ;       
              else  
                state <= PAYLOAD ;
              end if ;  
      end if ;        
 else 
        pilot_symbols <= 0;      
 end if ; 
 when others => 
--    control_unit_dout_ready  <= '0';
    dpd_din_valid       <= '0';
    state               <= IDLE ;
    dpd_din_valid       <= '0';
    dpd_din_data_Q      <= (others => '0') ;
    dpd_din_data_Q      <= (others => '0') ; 
    start_data_splitter <= '0' ;                       
end case ;
end if ;
end process ;


data_splitter : process (clk, reset) 
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
     mapper_selected_mod <= tx_modulation (2 downto 0) ;
     mapper_din_data        <= (others => '0');
     mapper_din_valid       <= '0'; 
     splitter_data_in       <= (others => '0');        

case splitter_case is 

    when START => 
    --default case
     delay_counter := 0 ;
     splitter_case <= START ; 
        if start_data_splitter = '1' and interleaver_dout_valid = '1' then 
           splitter_case          <= DATA_PROCESSING ;
           splitter_data_in       <= interleaver_dout_data ;
           interleaver_din_ready  <= '0';      
        elsif start_data_splitter = '1' and interleaver_dout_valid = '0' then
           interleaver_din_ready  <= '1'; 
        else   
           interleaver_din_ready  <= '0';                
        end if ;
     when DATA_PROCESSING => 
        if temp = '0' and interleaver_dout_valid = '1' then 
          delay_counter := 0 ;
          interleaver_din_ready <= '0'; 
           case tx_modulation (2 downto 0) is    
                when "000" =>  --BPSK  
                    if index < (32 -1 ) then 
                         mapper_din_data <=  "00000" &  splitter_data_in(index) ; --Correct way for adding zeros 
                         temp <=  '0' ;
                    elsif index=  (32 -1 )  then 
                         temp <=  '1'  ;   
                         interleaver_din_ready <= '1';  
                    end if ;
                    index:= index+ 1 ;
                when "001" => --QPSK 
                    if index< (32 /2) - 1   then
                         mapper_din_data <=  "0000" & splitter_data_in((index+1)*2-1  downto index*2)  ;
                         temp <=  '0' ;
                     elsif index= (32 /2) - 1   then
                         mapper_din_data <=  "0000" & splitter_data_in((index+1)*2-1  downto index*2)  ;
                         temp <=  '1'  ; 
                         interleaver_din_ready <= '1';      
                    end if  ;
                      index:= index+ 1 ;
                
                when "101"  => -- 16-APSK
                    if index<((32 /4) - 1) then
                         mapper_din_data <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
                         temp <=  '0' ;
                     elsif index= ((32 /4) - 1)  then 
                         mapper_din_data <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
                         temp <=  '1'  ;   
                         interleaver_din_ready <= '1'; 
                    end if ;
                      index:= index+ 1 ;
                when "010" => -- 16-QAM 
                    if index<((32 /4) - 1) then
                         mapper_din_data <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
                         temp <=  '0' ;
                     elsif index= ((32 /4) - 1)  then 
                         mapper_din_data <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
                         temp <=  '1'  ;    
                         interleaver_din_ready <= '1';
                    end if ;
                      index:= index+ 1 ;
                
                when "110"  => -- 32-APSK
    
                    if index<= 5 then 
                         mapper_din_data <= "0" & splitter_data_in((index+1)*5-1  downto index*5) ;
                         temp <=  '0' ;
                    elsif index=6  then  
                         mapper_din_data <=   "0000" & splitter_data_in(31 downto 30); 
                         temp <=  '1'  ; 
                         interleaver_din_ready <= '1';                        
                    end if ;
                      index:= index+ 1 ;
                when "011" => -- 32-QAM 
    
                    if index<= 5 then 
                         mapper_din_data <= "0" & splitter_data_in((index+1)*5-1  downto index*5) ;
                         temp <=  '0' ;
                    elsif index=6  then  
                         mapper_din_data <=   "0000" & splitter_data_in(31 downto 30); 
                         temp <=  '1'  ; 
                         interleaver_din_ready <= '1';     
                    end if ;
                      index:= index+ 1 ; 
                when "111"  => -- 64-APSK
                    
                    if index <= 4 then 
                         mapper_din_data <= splitter_data_in((index+1)*6-1  downto index*6) ;
                         temp <=  '0' ;
    --                    mapper_din_last <= '0';
                    elsif index=5 then 
                         mapper_din_data <=   "0000" & splitter_data_in(31 downto 30);
                         temp <=  '1'  ;
                         interleaver_din_ready <= '1';   
                    end if ;
                      index := index + 1 ;
                when "100" => -- 64-QAM 
                    
                    if index <= 4 then 
                         mapper_din_data <= splitter_data_in((index+1)*6-1  downto index*6) ;
                         temp <=  '0' ;
                    elsif index=5 then 
                         mapper_din_data <=   "0000" & splitter_data_in(31 downto 30);
                         temp <=  '1'  ;    
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
                delay_counter := 0 ;
                temp <= '0'; 

             else 
               delay_counter := delay_counter + 1  ;
               temp <= '1'; 
             end if ;  
                if interleaver_last_frame = '0' then 
                    splitter_case <= DATA_PROCESSING ;
                else 
                    splitter_case <= PADDING ;
                end if ;  
       else 
             interleaver_din_ready  <= '0';
             mapper_din_valid       <= '0'; 
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
       delay_counter := 0 ;                             
        if pilot_symbols < 128 then 
           splitter_case  <= PILOT ;     
        else  
           if temp = '1' and interleaver_last_frame = '0'then 
              interleaver_din_ready <= '1'; 
              splitter_case  <= DATA_PROCESSING  ;     
           elsif  temp = '1' and interleaver_last_frame = '1' then
              splitter_case  <= START  ;   
              mapper_din_last        <= '1';      
       
           else 
              interleaver_din_ready <= '0'; 
              splitter_case  <= DATA_PROCESSING  ;                         
           end if ;
         end if ;  
     when others => 
         splitter_case  <= START ;
         interleaver_din_ready  <= '0' ;
         mapper_din_valid       <= '0'; 
         mapper_din_data        <= (others => '0');
         delay_counter := 0 ;
end case ;
end if ;
end process ;
--data_splitter: process(clk,reset) 
--variable index          : integer range 0 to 32:= 0 ;

--begin 
-- if reset = '1' then 
--      symbol_counter <= 0 ;
--      mapper_din_valid <= '0';   
--      index := 0 ;
--      temp  <= '0' ; 
--      mapper_din_last <= '0';
--      mapper_din_data  <= (others => '0') ;
-- elsif rising_edge (clk) then    
----default values 
--mapper_selected_mod <= mod_cod_schemes(4 downto 2) ;
--symbol_counter      <= symbol_counter ;
--mapper_din_last     <= '0';      
--if start_data_splitter  = '1' then 
    
--    if temp = '0' and data_process = '1' and  interleaver_dout_valid = '0'  then           
--         case mod_cod_schemes(4 downto 2) is    
--                when "000" =>  --BPSK  
--                    if index < (32 -1 ) then 
--                         mapper_din_data <=  "00000" &  splitter_data_in(index) ; --Correct way for adding zeros 
--                         temp <=  '0' ;
--                    elsif index=  (32 -1 )  then 
--                          temp <=  '1'  ;     
--                    end if ;
--                    index:= index+ 1 ;
--                when "001" => --QPSK 
--                    if index< (32 /2) - 1   then
--                         mapper_din_data <=  "0000" & splitter_data_in((index+1)*2-1  downto index*2)  ;
--                         temp <=  '0' ;
--                     elsif index= (32 /2) - 1   then
--                         mapper_din_data <=  "0000" & splitter_data_in((index+1)*2-1  downto index*2)  ;
--                         temp <=  '1'  ;     
--                    end if  ;
--                      index:= index+ 1 ;
                
--                when "101"  => -- 16-APSK
--                    if index<((32 /4) - 1) then
--                        mapper_din_data <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
--                        temp <=  '0' ;
--                     elsif index= ((32 /4) - 1)  then 
--                         mapper_din_data <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
--                         temp <=  '1'  ;    
--                    end if ;
--                    index:= index+ 1 ;
--                when "010" => -- 16-QAM 
--                    if index<((32 /4) - 1) then
--                        mapper_din_data <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
--                        temp <=  '0' ;
--                     elsif index= ((32 /4) - 1)  then 
--                         mapper_din_data <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
--                         temp <=  '1'  ;    
--                    end if ;
--                  index:= index+ 1 ;
                
--                when "110"  => -- 32-APSK
    
--                    if index<= 5 then 
--                        mapper_din_data <= "0" & splitter_data_in((index+1)*5-1  downto index*5) ;
--                        temp <=  '0' ;
--                    elsif index=6  then  
--                        mapper_din_data <=   "0000" & splitter_data_in(31 downto 30); 
--                        temp <=  '1'  ;  
--                    end if ;
--                    index:= index+ 1 ;
--                when "011" => -- 32-QAM 
    
--                    if index<= 5 then 
--                        mapper_din_data <= "0" & splitter_data_in((index+1)*5-1  downto index*5) ;
--                        temp <=  '0' ;
--                    elsif index=6  then  
--                        mapper_din_data <=   "0000" & splitter_data_in(31 downto 30); 
--                        temp <=  '1'  ;      
--                    end if ;
--                    index:= index+ 1 ; 
--                when "111"  => -- 64-APSK
                    
--                    if index <= 4 then 
--                        mapper_din_data <= splitter_data_in((index+1)*6-1  downto index*6) ;
--                        temp <=  '0' ;
--    --                    mapper_din_last <= '0';
--                    elsif index=5 then 
--                        mapper_din_data <=   "0000" & splitter_data_in(31 downto 30);
--                        temp <=  '1'  ;
--    --                    mapper_din_last <= last_value ;
    
--                    end if ;
--                    index := index + 1 ;
--                when "100" => -- 64-QAM 
                    
--                    if index <= 4 then 
--                        mapper_din_data <= splitter_data_in((index+1)*6-1  downto index*6) ;
--                        temp <=  '0' ;
--                    elsif index=5 then 
--                        mapper_din_data <=   "0000" & splitter_data_in(31 downto 30);
--                        temp <=  '1'  ;    
--                    end if ;
--                    index := index + 1 ;
--                when others =>
--                    mapper_din_data <= (others => '0');
--                    temp <=  '0' ;
--                end case ;
--                     mapper_din_valid <= '1';      

--                         if  symbol_counter < 896  then 
--                               symbol_counter <= symbol_counter + 1 ;
--                         else 
--                               symbol_counter <= 0 ;                        
--                               mapper_din_last <= '1';
--                         end if ;       
    
--    --               else 
--    --               --Control if all signal field words has been fed to the mapper, if so, start feeding the pilot symbols
--    --                   symbol_counter <= 0 ;                 
--    --               end if ;
--    elsif temp = '0' and   data_process = '0' and interleaver_dout_valid = '1' then 
--        splitter_data_in <= interleaver_dout_data ;
--        interleaver_din_ready <= '0';
--        index := 0 ;  
--        mapper_din_data <=  (others => '0') ; 
--        mapper_din_valid <= '0';   
--        data_process <= '1';
--    elsif temp = '1'  and   data_process = '1' and interleaver_dout_valid = '0' then 
--         mapper_din_data  <=  (others => '0') ; 
--         mapper_din_valid <= '0';   
--         temp <= '0';
--         data_process <= '0';  
--           --Check if an entire block is completed, if so, wait the Pilot insertion to be completed 
--             if symbol_counter < 896  and interleaver_last_frame = '0' then 
--                  interleaver_din_ready <= '1';
                 
--            elsif  symbol_counter < 896  and interleaver_last_frame = '1' then 
--                    mapper_din_data <=  (others => '0') ;
--                    mapper_din_valid <= '1';   
--                    interleaver_din_ready <= '0';  
--                    symbol_counter <= symbol_counter + 1 ;
--                    temp <= '1';
--                    data_process <= '1';      
--             else   
                   
--                   mapper_din_last <= '1';      
                  
--                 if pilot_symbols < 128 then              
--                    interleaver_din_ready <= '0';
--                    temp <= '1';
--                    data_process <= '1';           
--                 else                          
--                    interleaver_din_ready <= '1';
--                    mapper_din_last <= '0';      

--                 end if ;    
--              end if ;    
       
--    else
--                interleaver_din_ready <= '1';
--                mapper_din_valid <= '0'; 
--    end if ;
--else 
--        interleaver_din_ready <= '0';
--        mapper_din_data       <= (others => '0') ;   
--        mapper_din_valid      <= '0' ;
-- end if ;              
--end if ;   
--end process ;             
end Behavioral;
