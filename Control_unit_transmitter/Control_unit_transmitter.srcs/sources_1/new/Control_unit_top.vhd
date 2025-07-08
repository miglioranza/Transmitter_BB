----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2025 10:05:05 AM
-- Design Name: 
-- Module Name: Control_unit_top - Behavioral
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

entity Control_unit_top is
  Port ( 
  --General input port 
    clk                         : in std_logic := '0';
    reset                       : in std_logic := '0';
    control_unit_din_data       : in std_logic_vector(31 downto 0 ) := (others => '0') ; 
    control_unit_din_valid      : in std_logic := '0';
    control_unit_end_of_frame   : in std_logic := '0';
    control_unit_dout_ready     : out std_logic := '0';
    control_unit_last_frame     : out std_logic := '0';
    control_unit_enable         : out std_logic := '0';
   -- Interface to MAC 
    mod_cod_schemes             : in std_logic_vector(4 downto 0)   := (others => '0') ; --modulation and coding schemes --> Possible values :   BPSK and CR = 1/2  => 0001 ,QPSK and CR = 2/3 => 0010 ,16-QAM/16-APSK  and CR = 3/4 => 0100  ,64-QAM/64-APSK  and CR = 5/6 => 1000              
    num_streams                 : in std_logic_vector(4 downto 0)   := (others => '0') ;
    ref_distance                : in std_logic_vector(7 downto 0)   := (others => '0') ;
    scrambler_init              : in std_logic_vector(31 downto 1)  := (others => '0') ;
    num_words                   : in std_logic_vector(15 downto 0)  := (others => '0') ; --Number of bytes per frame (payload) 
    start_tx                    : in std_logic := '0';   
    phy_src_address             : in std_logic_vector(4 downto 0 ) := (others => '0') ; 
    phy_dest_address            : in std_logic_vector(4 downto 0 ) := (others => '0') ; 
   
  
 --Scrambler ports 
    
--    scrambler_dout_valid        : in std_logic := '0';
--    scrambler_dout_last         : in std_logic := '0';
    scrambler_dout_ready        : in std_logic := '0'; --Scrambler ready to receive data from control unit  
    scrambler_din_data          : out std_logic_vector(31 downto 0) := (others => '0') ;  --Data stream coming from Scrambler 
    scrambler_seed              : out std_logic_vector(31 downto 1) := (others => '0') ;
    scrambler_din_valid         : out std_logic := '0';
    scrambler_din_last          : out std_logic := '0' ; --end of frame data
--    scrambler_din_ready         : out std_logic := '0'; --Encoder ready to receive data from scrambler
    scrambler_control_enable    : out std_logic := '0' ;  --input seed valid    
    --Scrambler ready to receives the input frames 
--    scrambler_error_detect  : in std_logic := '0';  --signal coming from scrambler voter 
   
   --Because the Signal Field must be added before the encoder, the data coming from the scrambler pass throught the TCU and then to the enconder 
    --Encoder ports 

      encoder_code_rate           : out std_logic_vector(1 downto 0) := (others => '0'); --coding scheme selected for encoder --> starting CR = 1/2 ;

--    --Interleaver ports 
--      interleaver_dout_ready      : in std_logic := '0'; --Interleaver ready to receive data stream 
    interleaver_dout_valid      : in std_logic := '0';
    interleaver_dout_data       : in std_logic_vector(31 downto 0) := (others => '0'); 
--    interleaver_out_code_rate   : in std_logic_vector(2 downto 0) := (others => '0'); 
    interleaver_dout_last       : in std_logic := '0';
    interleaver_last_frame      : in std_logic := '0';    

    interleaver_din_ready       : out std_logic := '0';
     

 -- Mapper ports 
   
   mapper_dout_ready           : in std_logic  := '0' ; --Mapper ready to receive data stream 
   mapper_dout_last            : in std_logic := '0'; -- This port signals if the mapper finished to processing the signal field block
   mapper_last_frame           : in std_logic := '0'; 
   mapper_selected_mod         : out std_logic_vector(2 downto 0) := (others => '0') ; 
   mapper_din_data             : out std_logic_vector(5 downto 0) := (others => '0') ; --Preamble input data to mapper 
   mapper_din_valid            : out std_logic := '0' ;
   mapper_din_last             : out std_logic := '0';
   mapper_end_of_frame         : out std_logic := '0' ; 

--   --DPD filter 
   
   dpd_dout_ready              :  in std_logic := '0';
   dpd_din_valid               :  out std_logic := '0';
   dpd_din_data_I              :  out std_logic_vector(11 downto 0)  := (others => '0') ;
   dpd_din_data_Q              :  out std_logic_vector(11 downto 0)  := (others => '0') ;
--   dpd_din_ready               :  out std_logic := '0'
   --Multi-rate filter 
   multi_din_ready             : out std_logic := '0'
   
--   dpd_error_detected          : in std_logic := '0' 
             );
end Control_unit_top;
 
architecture Behavioral of Control_unit_top is

--Preambles definition , must be stored in a ROM memory
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
signal signal_field_counter : integer := 0 ;  
signal signal_field_bits    : std_logic_vector(255 downto 0) := (others => '0') ;
signal signal_field_en  : std_logic := '0'; --This signal notice if the signal field has been sent or not yet 
--Payload signals
signal payload_counter   : integer :=  0 ;
signal mapper_buf_I      : std_logic_vector(11 downto 0 ) := (others => '0') ;
signal temp              : std_logic := '0';
signal splitter_data_in  : std_logic_vector(31 downto 0)  := (others => '0') ;
signal data_process      : std_logic := '0';
--!signal preambles_inserted : std_logic := '0' ; --Signal that checks if the 2 preambles have been added to the packet structure 
signal preambles_finish  : std_logic  := '0'; 

--!signals Pilot insertion
--signal pilot_insertion : std_logic := '1' ;
signal pilot_counter, pilot_symbols   : integer := 0 ;

signal padding_value_I : std_logic_vector(11 downto 0)  := (others => '0' ) ;
signal padding_value_Q : std_logic_vector(11 downto 0)  := (others => '0' ) ;
signal padding_payload : std_logic := '0';
type control_unit is (IDLE ,PREAMBLE_A, PREAMBLE_B, SIGNAL_FIELD, PAYLOAD, PILOT) ; --, ERROR_DETECTION)
signal state : control_unit := IDLE ;

--Splitter signal 
--signal done              : std_logic := '1' ;  --Determines the end of the data data_out procedure 
 

begin
    -- Assigning each field to its respective position within the 256-bit vector
    signal_field_bits(4 downto 0)    <= mod_cod_schemes;  
    signal_field_bits(9 downto 5)    <= num_streams;
    signal_field_bits(17 downto 10)  <= ref_distance;
    signal_field_bits(48 downto 18)  <= scrambler_init;
    signal_field_bits(64 downto 49)  <= num_words;
    signal_field_bits(65)            <= start_tx;  -- Single bit
    signal_field_bits(70 downto 66)  <= phy_src_address;
    signal_field_bits(75 downto 71)  <= phy_dest_address;
    -- The remaining bits are reserved 


control_unit_states : process (clk , reset)
variable i,j,k,n : integer := 0 ;
--variable index   : integer := 0 ;


begin
if reset = '1' then 
scrambler_din_data   <= (others => '0') ;  --Data stream cominng from Scrambler 
scrambler_din_valid  <= '0' ;
scrambler_din_last   <= '0';
--scrambler_din_ready  <= '0';
scrambler_control_enable <= '0' ;
control_unit_dout_ready  <= '0';
control_unit_last_frame  <= '0';
dpd_din_valid            <= '0';
multi_din_ready          <= '0';
--dpd_din_ready            <= '0';
--interleaver_code_rate <= (others => '0' ) ;

state                 <= IDLE ;
control_unit_dout_ready <= '0';
elsif rising_edge(clk)  then 
 
  case state is
  
  when IDLE => 
     --Packets ready to be processed by transmitter
     if  start_tx = '1' then  
           state <= PREAMBLE_A ;
           control_unit_enable <= '1';
           multi_din_ready <= '1';
     else 
         state <= IDLE ; -- control unit is ready to receive packets
         multi_din_ready <=   '0' ;
        control_unit_enable <= '0';

     end if ;     
         
  when PREAMBLE_A =>    --Short_term_sequence      
           
  -- Short term preamble insertion , 10 sequences of 64 symbols each 
       if  start_tx = '1'then 
            if  dpd_dout_ready = '1' then 
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
            else  
--               dpd_din_ready <= '1';
            end if ;   
        else 
           dpd_din_valid <= '0' ;
--           dpd_din_ready <= '0';
      end if ;
  when PREAMBLE_B => 
  --short preamble insertion , 2 sequences of 128 symbols each
  if   start_tx = '1'  then
  
       if dpd_dout_ready = '1' then 
        
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
              preambles_finish  <= '1' ;
              dpd_din_valid <= '0' ;   
          end if ;     
--           if mapper_dout_valid =  '1' then  --if Signal field is processed before completing the preamble_B processing wait 
--              mapper_din_ready <= '0';
--              mapper_buf_I     <= mapper_dout_data_I  ;
----              mapper_buf_Q     <= mapper_dout_data_Q ; --if data_in valid , store only the I symbol, Q is always 0 for BPSK
--           else 
--             mapper_din_ready  <= '1';
--           end if ;     
        dpd_din_valid <= '0' ;
      end if ;
 
 
   if  preambles_finish = '1'then 
       state <= SIGNAL_FIELD ;
       control_unit_enable <= '0';
--       encoder_din_last <= '0';
       n := 0 ;
       preambles_finish     <= '0';
--       signal_field_counter <= 0 ;
    else 
      control_unit_enable <= '1';
    end if ; 
  
 else                              --Start_tx = '0'
     dpd_din_valid     <= '0' ;
  end if ;       
    
  when SIGNAL_FIELD =>
  --!Signal field insertion , it goes through the SCRAMBLER and then to the others blocks
  if start_tx = '1' then 
     encoder_code_rate          <=  mod_cod_schemes(1 downto 0) ;
     signal_field_en <= '1';
  
     if scrambler_dout_ready =  '1'  then 
        control_unit_dout_ready <= '1';
       if control_unit_din_valid = '1' and n < 8   then 
          signal_field_en       <= '1' ; --start sending the signal field to the encoder 
          scrambler_din_valid     <= '1';
          scrambler_din_data      <= signal_field_bits(((n+1)*32)-1  downto n*32); --256-bits --> 32-bits vectors  x 8 
          n := n + 1 ;
       elsif control_unit_din_valid = '0' and n < 8 then 
          scrambler_din_valid     <= '0';
       else       
          scrambler_din_valid     <= '0';
          scrambler_din_last      <= '1';
       end if ;
      else
     control_unit_dout_ready <= '0';          
     scrambler_din_valid     <= '0';
    end if ;  
               
  
  -- If mapper finishes to process the signal field then start sending the pilot 
  if mapper_dout_last = '1' then 
     state <= PILOT ;
     signal_field_en <= '0';
     control_unit_enable  <= '1';
     n := 0 ;
  else 
       signal_field_en <= '1';
--     pilot_insertion <= '0'; 
     control_unit_enable <= '0';
  end if ;
 else 
  scrambler_din_valid     <= '0';
 end if ; 
  when PILOT => 
  if dpd_dout_ready = '1' then
   if pilot_symbols < 128 then     
           control_unit_enable <= '1';
           dpd_din_valid       <= '1';                          
           dpd_din_data_I      <= pilot_I(pilot_symbols) ;      
           dpd_din_data_Q      <= pilot_Q  ;                    
           pilot_symbols       <= pilot_symbols  + 1  ;   
           state               <= PILOT ;          
          else                              
           control_unit_enable <= '0';
           pilot_symbols       <=  0 ;                                
           dpd_din_valid       <= '0'; 
           --if mapper finishes to process the last input data of the last frame, go to the IDLE state  
           if mapper_last_frame =  '1' and mapper_dout_last = '0' then 
             state <= IDLE ;
           else  
             state <= PAYLOAD ;
--           else   
--            state <= PILOT ;
            end if ;       
        end if ;
        --To be added an else statement  
     else 
 dpd_din_valid       <= '0';                              
    end if ;    
  when PAYLOAD =>  
      
         if start_tx = '1' then 
         
         if scrambler_dout_ready = '1' and control_unit_din_valid = '1' then --check if pilot insertion is processing
            scrambler_din_data        <= control_unit_din_data ;
            scrambler_seed            <= scrambler_init ;
              
            if mapper_dout_last = '1' then  
                control_unit_dout_ready   <= '0' ;
                state <= PILOT ;
                scrambler_din_valid       <= '0';
                scrambler_control_enable  <= '0' ;

            else     
                control_unit_dout_ready   <= '1' ;
                state <= PAYLOAD ;
                scrambler_din_valid       <= '1';
                scrambler_control_enable  <= '1' ;
            end if ;
            if control_unit_end_of_frame = '1' then 
--                scrambler_din_valid       <= '1';
--                scrambler_control_enable  <= '1' ;
                scrambler_din_last        <= '1';  

            else 
--                scrambler_din_valid       <= '0';
--                scrambler_control_enable  <= '0' ;
                scrambler_din_last        <= '0';  
            end if ;      
         elsif scrambler_dout_ready = '1' and control_unit_din_valid = '0' then 
            control_unit_dout_ready   <= '1' ;
            scrambler_din_valid       <= '0';
            scrambler_control_enable  <= '0' ;
            scrambler_din_last        <= '0' ;
         else        
                     control_unit_dout_ready   <= '0' ;
                     scrambler_din_valid       <= '0';
                     scrambler_control_enable  <= '0' ;
                     scrambler_din_last        <= '0';
         end if ;  
                   
     else    
              
             scrambler_din_valid       <= '0';
             scrambler_control_enable  <= '0' ;
--             mapper_pilot_insertion_en <= '0';
    end if ;    

  
end case ;
end if;
end process ; 

data_splitter: process(clk,reset) 
variable index          : integer := 0 ;
--variable temp           : integer := 0 ;
variable start          : integer := 0 ;
variable symbol_counter : integer := 0 ; 
variable padding        : std_logic := '0';
begin 
   if reset = '1' then 
      symbol_counter := 0 ;
      mapper_din_valid <= '0';   
      index := 0 ;
      temp  <= '0' ; 
--      start <= '0' ;
      padding := '0';
      mapper_din_last <= '0';
   elsif rising_edge (clk) then    
if mapper_dout_ready = '1' then 

if temp = '0' and  interleaver_dout_valid = '1' then 
splitter_data_in <= interleaver_dout_data ;
interleaver_din_ready <= '0';
data_process <= '1';
--mapper_din_last <= '0';   
--    if interleaver_dout_valid = '1'  then
    mapper_selected_mod <= mod_cod_schemes(4 downto 2) ;
     case mod_cod_schemes(4 downto 2) is    
            when "000" =>  --BPSK  
                if index < (32 -1 ) then 
                     mapper_din_data <=  "00000" &  splitter_data_in(index) ; --Correct way for adding zeros 
--                     interleaver_din_ready <= '0';
                     temp <=  '0' ;
--                     mapper_split_end <= '0';
                elsif index=  (32 -1 )  then 
                    mapper_din_data <=  "00000" &  splitter_data_in(index) ;
                    temp <=  '1'  ;   
--                    interleaver_din_ready <= '1';
--                    interleaver_din_valid <= '0';                    
--                    mapper_split_end <= '1';
                end if ;
                index:= index+ 1 ;
            when "001" => --QPSK 
                if index< (32 /2) - 1   then
                     mapper_din_data <=  "0000" & splitter_data_in((index+1)*2-1  downto index*2)  ;
--                     interleaver_din_ready <= '0';
                     temp <=  '0' ;
--                     mapper_split_end <= '0';
                 elsif index= (32 /2) - 1   then
                     mapper_din_data <=  "0000" & splitter_data_in((index+1)*2-1  downto index*2)  ;
                     temp <=  '1'  ;     
--                     interleaver_din_ready <= '1';   
--                     mapper_split_end <= '1';

                end if  ;
                  index:= index+ 1 ;
            
            when "101"  => -- 16-APSK
                if index<((32 /4) - 1) then
                    mapper_din_data <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
--                    interleaver_din_ready <= '0';
                    temp <=  '0' ;
--                    mapper_split_end <= '0';
                 elsif index= ((32 /4) - 1)  then 
                     mapper_din_data <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
                     temp <=  '1'  ;
--                     interleaver_din_ready <= '1';
--                    mapper_split_end <= '1';

                end if ;
                index:= index+ 1 ;
             when "010" => -- 16-QAM 
                if index<((32 /4) - 1) then
                    mapper_din_data <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
--                    interleaver_din_ready <= '0';
                    temp <=  '0' ;
--                     mapper_split_end <= '0';
                 elsif index= ((32 /4) - 1)  then 
                     mapper_din_data <=  "00" & splitter_data_in((index+1)*4-1  downto index*4)  ;
                     temp <=  '1'  ;
--                     interleaver_din_ready <= '1';
--                     interleaver_din_valid <= '0';                 
--                     mapper_split_end <= '1';

                end if ;
              index:= index+ 1 ;
            
            when "110"  => -- 32-APSK

                if index<= 5 then 
                    mapper_din_data <= "0" & splitter_data_in((index+1)*5-1  downto index*5) ;
--                    interleaver_din_ready <= '0';
--                    mapper_split_end <= '0';

                    temp <=  '0' ;
                elsif index=6  then  
                    mapper_din_data <=   "0000" & splitter_data_in(31 downto 30); 
--                    interleaver_din_ready <= '1';
                    temp <=  '1'  ;  
--                    interleaver_din_valid <= '0';
--                    mapper_split_end <= '1';

                end if ;
                index:= index+ 1 ;
              when  "011" => -- 32-QAM 

                if index<= 5 then 
                    mapper_din_data <= "0" & splitter_data_in((index+1)*5-1  downto index*5) ;
--                    interleaver_din_ready <= '0';
--                    mapper_split_end <= '0';
                    temp <=  '0' ;
                elsif index=6  then  
                    mapper_din_data <=   "0000" & splitter_data_in(31 downto 30); 
--                    interleaver_din_ready <= '1';
                    temp <=  '1'  ;  
--                    interleaver_din_valid <= '0';
--                    mapper_split_end <= '1';

                end if ;
                index:= index+ 1 ; 
            when "111"  => -- 64-APSK
                
                if index <= 4 then 
                    mapper_din_data <= splitter_data_in((index+1)*6-1  downto index*6) ;
--                    interleaver_din_ready <= '0';
--                    mapper_split_end <= '0';
                    temp <=  '0' ;
                elsif index=5 then 
                    mapper_din_data <=   "0000" & splitter_data_in(31 downto 30);
--                    interleaver_din_ready <= '1';   
                    temp <=  '1'  ;
--                    mapper_split_end <= '1';
--                    interleaver_din_valid <= '0';
                end if ;
                index := index + 1 ;
            when "100" => -- 64-QAM 
                
                if index <= 4 then 
                    mapper_din_data <= splitter_data_in((index+1)*6-1  downto index*6) ;
--                    interleaver_din_ready <= '0';
--                    mapper_split_end <= '0';
                    temp <=  '0' ;
                elsif index=5 then 
                    mapper_din_data <=   "0000" & splitter_data_in(31 downto 30);
--                    interleaver_din_ready <= '1';   
                    temp <=  '1'  ;
--                    mapper_split_end <= '1';
--                    interleaver_din_valid <= '0';
                end if ;
                index := index + 1 ;
            when others =>
                mapper_din_data <= (others => '0');
                temp <=  '0' ;
--                mapper_split_end <= '0';
            end case ;
                 mapper_din_valid <= '1';   
--            if temp = '1' then 
--               interleaver_din_ready <= '1';
--               index := 0 ;              
--               end if ;               
--            else 
--             interleaver_din_ready <= '0';
--            end if ; 
                if  interleaver_dout_last = '1' then 
                    mapper_din_last <= '1';
                else
                    mapper_din_last <= '0';     
               end if ;    
                --Control if padding for the last frame is necessary
               if signal_field_en = '0' then   
                     if  symbol_counter = 896 and interleaver_last_frame = '0' then 
                         symbol_counter := 0 ;
                          padding := '0' ;
                     elsif symbol_counter <  896 and interleaver_last_frame = '1' then 
                           symbol_counter := symbol_counter + 1 ;
                           padding := '1' ;
                    else    
                           symbol_counter := symbol_counter + 1 ;
                    end if ;
               else 
               --Control if all signal field words has ebeen fed to the mapper, if so, start feeding the pilot symbols
                   symbol_counter := 0 ;
                  
               end if ;
elsif temp = '1' and interleaver_dout_valid = '0' then 
          interleaver_din_ready <= '1';
          temp <= '0';
elsif start = 0 and interleaver_dout_valid = '0'  then   --starting state 
          interleaver_din_ready <= '1';
          start := 1 ;

end if ;
                  --Padding process
   if padding = '1' then 
       mapper_din_data <=  (others => '0') ;
       symbol_counter := symbol_counter + 1 ;
       if symbol_counter = 897 then 
           mapper_din_valid <= '0';
           padding := '0';  
           symbol_counter := 0 ;
       else  
          mapper_din_valid <= '1';  
       end if ;  
    else      
             mapper_din_valid <= '0';
       end if ;
               
 else     
      mapper_din_valid <= '0';                    
      interleaver_din_ready <= '0';
       
   end if ;  
end if ;   
end process ;             
end Behavioral;
         