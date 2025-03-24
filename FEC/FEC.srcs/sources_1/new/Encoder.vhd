----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/27/2024 11:40:09 AM
-- Design Name: 
-- Module Name: Encoder - Behavioral
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

entity Encoder is
 Port (
 ldpc_core_clk          : in std_logic ;
 clk                    : in std_logic ;
 reset                  : in std_logic ;
 aresetn                : in std_logic ;    
 data_in                : in std_logic_vector(31 downto 0) ; 
 data_in_valid          : in std_logic ;  
 din_ready_ifsm2enc     : in std_logic ;  
 data_in_last           : in std_logic := '0'; 
 sel_FEC_code_rate      : in std_logic_vector( 1 downto 0)   ;
 data_out_ready         : out std_logic := '0';  --LDPC encoder ready to receive data in input, the signal is fed from the fsm input control to the otuput of the encoder subsystem                   
 data_out               : out std_logic_vector(31 downto 0) ;
 data_out_valid         : out std_logic ;
 core_finish            : out std_logic := '0';
 axis_data_count        : out std_logic_vector(12 downto 0) := (others => '0') ; 
-- current_code_rate      : out std_logic_vector( 1 downto 0)   ;
 data_out_last          : out std_logic 

  );
end Encoder;

architecture rtl of Encoder is

component Wifi_Input_FSM 
 Port ( 
       clk                   : in STD_LOGIC; 
       reset                 : in STD_LOGIC;
       sel_FEC_code_rate     : in std_logic_vector(1 downto 0) := (others => '0')   ;
       fsm_din               : in STD_LOGIC_VECTOR (31 downto 0);
       fsm_din_valid         : in STD_LOGIC; 
       fsm_din_ready         : in std_logic_vector(3 DOWNTO 0):= (others => '0') ;
       fsm_din_last          : in STD_LOGIC;
       fsm_core_finish       : in std_logic := '0' ; 
       fsm_dout              : out STD_LOGIC_VECTOR (31 downto 0):= (others => '0') ;  
       fsm_dout_valid        : out std_logic_vector(3 DOWNTO 0);
       fsm_dout_ready        : out std_logic := '0';
       fsm_dout_last         : out std_logic_vector(3 downto 0) := (others => '0');
       fsm_current_cr        : out std_logic_vector(1 DOWNTO 0);
       fsm_reset_core        : out std_logic_vector(3 DOWNTO 0)              
 
 );
end component ;
--component FSM_Output_control is
--Port (
--            clk                   : in STD_LOGIC; 
--            reset                 : in STD_LOGIC;
--            sel_FEC_code_rate     : in std_logic_vector(1 downto 0) := (others => '0')      ;
--            o_fsm_din             : in STD_LOGIC_VECTOR (31 downto 0);
--            o_fsm_din_valid       : in STD_LOGIC_VECTOR (3 downto 0);
--            o_fsm_ready_fifo      : in std_logic := '0';
--            o_fsm_din_last        : in STD_LOGIC_VECTOR (3 downto 0);
--            o_fsm_block_count     : in STD_LOGIC_VECTOR (7 downto 0);
--            o_fsm_dout            : out std_logic_vector(31 downto 0 ) := (others => '0') ;
--            o_fsm_dout_valid      : out std_logic ;
--            o_fsm_ready_core      : out std_logic ;
--            o_fsm_dout_last       : out std_logic := '0' 
----            ofsm_core_finish      : out std_logic := '0'

-- );
--end component ;   

component LDPC_core 
Port (

           clk_core              : in STD_LOGIC;
           clk                   : in STD_LOGIC;
           reset_n               : in STD_LOGIC;
           din                   : in STD_LOGIC_VECTOR (31 downto 0);
           din_valid             : in STD_LOGIC;
           ctrl_input            : in std_logic_vector(3 downto 0) := (others => '0') ;	   	
           din_ready_fsm2core    : in STD_LOGIC; 
           din_last              : in std_logic ;
           dout                  : out STD_LOGIC_VECTOR (31 downto 0);
           din_ready_core2fsm    : out STD_LOGIC;  
           dout_valid            : out STD_LOGIC; 
           dout_last             : out STD_LOGIC;
           ctrl_ready_out        : out std_logic 
--	       bg   	             : STD_LOGIC_VECTOR(2 DOWNTO 0);--:= "001";-- (base graph)
--		   z_set	             : STD_LOGIC_VECTOR(2 DOWNTO 0);--:= "000";-- Base graph cyclic shift set
--		   z_j		             : STD_LOGIC_VECTOR(2 DOWNTO 0);--:= "100";--
--		   mb		             : STD_LOGIC_VECTOR(5 DOWNTO 0)
		   
);

end component ;

--component Data_input_FIFO
--port (
--           clk                   : in STD_LOGIC; 
--           reset                 : in STD_LOGIC;
--           sel_code_rate         : in std_logic_vector(1 downto 0)  :=(others => '0') ;
--           tdata_in              : in std_logic_vector(31 downto 0) :=(others => '0') ;
--           tdata_last            : in std_logic := '0';
--           tdata_ready           : in std_logic_vector(3 downto 0) :=(others => '0') ;
--           tdata_valid           : in std_logic := '0' ;
--           data_out              : out std_logic_vector(31 downto 0):=(others => '0');
--           data_out_last         : out std_logic_vector(3 downto 0) :=(others => '0');
--           data_out_ready        : out std_logic := '0';
--           axis_data_count       : out std_logic_vector(12 downto 0) ;
--           data_out_valid        : out std_logic_vector(3 downto 0) := (others => '0')
             

--);
--end component ; 


component Output_fifo
  Port ( 

       clk                   : in STD_LOGIC; 
       reset                 : in STD_LOGIC;
       sel_code_rate         : in std_logic_vector(1 downto 0)  :=(others => '0') ;
       tdata_in              : in std_logic_vector(31 downto 0) :=(others => '0') ;
       tdata_last            : in std_logic_vector(3 downto 0) :=(others => '0') ;
       tdata_ready           : in std_logic := '0' ;
       tdata_valid           : in std_logic_vector(3 downto 0) :=(others => '0') ;
       data_out              : out std_logic_vector(31 downto 0):=(others => '0');
       data_out_last         : out std_logic := '0';
       data_out_ready        : out std_logic_vector(3 downto 0) :=(others => '0');
       data_out_valid        : out std_logic := '0';
--       code_rate             : out std_logic_vector(1 downto 0):=(others => '0');   
       axis_data_counts      : out std_logic_vector(12 downto 0):=(others => '0');    
       finish_encoding       : out std_logic := '0'
  );
end component ;


signal din_ready_core           : std_logic_vector(3 downto 0) := (others => '0');
signal selected_code_rate       : std_logic_vector(1 downto 0) := (others => '0');
signal fsm_reset_core           : std_logic_vector(3 downto 0) := (others => '0');

signal dout_last_fsm2core       : std_logic_vector(3 downto 0) := (others => '0');
signal dout_core                : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal dout_ready_cores         : std_logic_vector(3 downto 0) := (others => '0');
signal control_ready_core       : std_logic_vector(3 downto 0) := (others => '0');

signal data_out_core0           : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal data_out_core1           : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal data_out_core2           : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal data_out_core3           : std_logic_vector(31 downto 0):= (others =>  '0') ; 

signal dout_last_core           : std_logic_vector(3 downto 0) := (others => '0');
signal data_out_cores           : std_logic_vector(31 downto 0):= (others =>  '0') ; 

signal core2fifo_din_valid      : std_logic_vector(3 downto 0) := (others => '0');
signal finish_encoding          : std_logic :=  '0';
signal current_CR               : std_logic_vector(1 downto 0) := (others => '0') ;  
signal dout_valid_fsm2core      : std_logic_vector(3 downto 0) := (others => '0') ;   
signal out_valid_data           : std_logic := '0' ;

--fifo signals 
--signal data_in_ready_core2fsm   : std_logic_vector(3 downto 0) := (others => '0') ;
--signal tdata_valid_fifo2cores   : std_logic_vector(3 downto 0) := (others => '0') ;
--signal tdata_last_fifo2cores    : std_logic_vector(3 downto 0) := (others => '0') ;
--signal axis_data_count          : std_logic_vector(12 downto 0):= (others => '0') ; 
--signal data_out_fifo2core       : std_logic_vector(31 downto 0):= (others =>  '0'); 
--signal tdata_last_ifsm2fifo     : std_logic := '0' ;



begin

process(clk , reset, core2fifo_din_valid )
begin
if reset = '1' then
  data_out_cores  <= (others => '0') ;
elsif rising_edge (clk) then 
  
if core2fifo_din_valid(0) = '1' then 
     data_out_cores <= data_out_core0 ; 
elsif core2fifo_din_valid(1) = '1' then 
     data_out_cores <= data_out_core1 ; 
elsif core2fifo_din_valid(2) = '1' then 
    data_out_cores <= data_out_core2 ;
elsif core2fifo_din_valid(3) = '1' then 
    data_out_cores <= data_out_core3 ;
else 
    data_out_cores <= (others => '0')  ;
end if ;
end if ;
end process ;


  FSM_Input : Wifi_Input_FSM 
  port map (
       clk                   => clk,
       reset                 => reset,
       sel_FEC_code_rate     => sel_FEC_code_rate ,
       fsm_din               => data_in ,
       fsm_din_valid         => data_in_valid,
       fsm_din_ready         => dout_ready_cores,   
       fsm_core_finish       => finish_encoding ,
       fsm_din_last          => data_in_last,
       fsm_dout_ready        => data_out_ready,
       fsm_current_cr        => current_CR ,
       fsm_dout_last         => dout_last_fsm2core,
       fsm_dout              => dout_core ,
       fsm_dout_valid        => dout_valid_fsm2core ,
       fsm_reset_core        => fsm_reset_core
  
  );
  
--   input_fifo : Data_input_FIFO 
--   port map(
--   clk                  =>  clk,
--   reset                => aresetn,
--   sel_code_rate        => current_CR ,
--   tdata_in             => dout_core ,
--   tdata_last           => tdata_last_ifsm2fifo,
--   tdata_ready          => dout_ready_cores,
--   tdata_valid          => dout_valid_fsm2core ,
--   data_out             => data_out_fifo2core ,
--   data_out_last        => tdata_last_fifo2cores,
--   data_out_ready       => din_ready_core2fsm,
--   axis_data_count      => axis_data_count,  
--   data_out_valid       => tdata_valid_fifo2cores 
   
--   );
   
--   FSM_Output_control_inst : FSM_Output_control 
--   port map(
--       clk                  => clk,
--       reset                => reset,
--       sel_FEC_code_rate    => sel_FEC_code_rate,
--       o_fsm_din            => data_out_cores,
--       o_fsm_din_valid      => core2fifo_din_valid ,
--       o_fsm_ready_fifo     => '0'  ,
--       o_fsm_din_last       => dout_last_core ,
--       o_fsm_dout           => data_out ,
--       o_fsm_dout_valid     => data_out_valid, 
--       o_fsm_ready_core     => din_ready_core,
--       o_fsm_block_count    => block_counter ,
--       o_fsm_dout_last      => data_out_last  
----       ofsm_core_finish     => finish_encoding   
--   );	
   	
out_fifo : Output_fifo 
port map ( 
clk              => clk ,
reset            => aresetn ,
sel_code_rate    => current_CR ,
tdata_in         => data_out_cores ,
tdata_last       => dout_last_core ,
tdata_valid      => core2fifo_din_valid ,
tdata_ready      => din_ready_ifsm2enc,
data_out         => data_out ,
data_out_last    => data_out_last ,
data_out_valid   => out_valid_data ,
data_out_ready   => din_ready_core,
--code_rate        => current_code_rate,
axis_data_counts => axis_data_count,
finish_encoding  => finish_encoding
); 
   
   LDPC_encoder_1x16_inst0 : LDPC_core
    Port map(
       clk_core             => ldpc_core_clk,
       clk                  => clk,
       reset_n              => fsm_reset_core(0),
       din                  => dout_core,      
       din_valid            => dout_valid_fsm2core(0) ,   --input	
       ctrl_input           => "0001" ,  --CR = 1/2 with Block Length N = 1296
       ctrl_ready_out       => control_ready_core(0) ,
       din_ready_fsm2core   => din_ready_core(0),
       din_last             => dout_last_fsm2core(0),       
       dout                 => data_out_core0,            --output 
       din_ready_core2fsm   => dout_ready_cores(0) ,   
       dout_valid           => core2fifo_din_valid(0) ,  
       dout_last            => dout_last_core(0)	        --output
--       bg   	            => bg_core ,    
--       z_set	            => z_set_core,
--       z_j		        => z_j_core ,
--       mb		            => mb_core 
    );
    
   LDPC_encoder_1x16_inst1 : LDPC_core
    Port map(
       clk_core             => ldpc_core_clk,
       clk                  => clk,
       reset_n              => fsm_reset_core(1),
       din                  => dout_core,      
       din_valid            => dout_valid_fsm2core(1) ,   --input	  
       ctrl_input           => "0100" ,    
       ctrl_ready_out       => control_ready_core(1) ,
       din_ready_fsm2core   => din_ready_core(1) ,
       din_last             => dout_last_fsm2core(1),       
       dout                 => data_out_core1,            --output 
       din_ready_core2fsm   => dout_ready_cores(1) ,   
       dout_valid           => core2fifo_din_valid(1) , 
       dout_last            => dout_last_core(1)	        --output		   
--       bg   	            => bg_core ,    
--       z_set	            => z_set_core,
--       z_j		        => z_j_core ,
--       mb		            => mb_core  
    );
    
   LDPC_encoder_1x16_inst2 : LDPC_core
    Port map(
       clk_core             => ldpc_core_clk,
       clk                  => clk,
       reset_n              => fsm_reset_core(2),
       din                  => dout_core,      
       din_valid            => dout_valid_fsm2core(2) ,   --input	
       ctrl_input           => "1000" ,     
       ctrl_ready_out       => control_ready_core(2) ,
       din_ready_fsm2core   => din_ready_core(2) ,
       din_last             => dout_last_fsm2core(2),       
       dout                 => data_out_core2,            --output 
       din_ready_core2fsm   => dout_ready_cores(2) ,   
       dout_valid           => core2fifo_din_valid(2) , 
       dout_last            => dout_last_core(2)	        --output
--       bg   	            => bg_core ,    
--       z_set	            => z_set_core,
--       z_j		        => z_j_core ,
--       mb		            => mb_core  
    );
    
   LDPC_encoder_1x16_inst3 : LDPC_core
    Port map(
       clk_core             => ldpc_core_clk,
       clk                  => clk,
       reset_n              => fsm_reset_core(3),
       din                  => dout_core,      
       din_valid            => dout_valid_fsm2core(3) ,   --input	
       ctrl_input           => "1011" ,
       ctrl_ready_out       => control_ready_core(3) ,
       din_ready_fsm2core   => din_ready_core(3) ,
       din_last             => dout_last_fsm2core(3),       
       dout                 => data_out_core3,            --output 
       din_ready_core2fsm   => dout_ready_cores(3) ,   
       dout_valid           => core2fifo_din_valid(3) , 
       dout_last            => dout_last_core(3)	        --output		   
--       bg   	            => bg_core ,    
--       z_set	            => z_set_core,
--       z_j		        => z_j_core ,
--       mb		            => mb_core  
    );
data_out_valid <= out_valid_data ;
core_finish <= finish_encoding ;
end rtl;
