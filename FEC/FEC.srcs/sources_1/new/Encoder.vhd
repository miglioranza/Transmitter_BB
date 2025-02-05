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
 data_in_last           : in std_logic ; 
 sel_FEC_code_rate      : in std_logic_vector( 1 downto 0)   ;
 data_out_ready         : out std_logic := '0';  --LDPC encoder ready to receive data in input, the signal is fed from the fsm input control to the otuput of the encoder subsystem                   
 data_out               : out std_logic_vector(31 downto 0) ;
 data_out_valid         : out std_logic ;
 core_finish            : out std_logic ;
 data_out_last          : out std_logic 

  );
end Encoder;

architecture rtl of Encoder is
--component FSM_Input_control 
--Port (     
--           clk                   : in STD_LOGIC; 
--           reset                 : in STD_LOGIC;
--           sel_FEC_code_rate     : in std_logic_vector(1 downto 0) := (others => '0')   ;  
--           fsm_din               : in STD_LOGIC_VECTOR (31 downto 0);
--           fsm_din_valid         : in STD_LOGIC; 
--           fsm_din_last          : in STD_LOGIC;
----           fsm_din_ready         : in std_logic_vector(3 downto 0) := (others => '0');
--           fsm_din_ready         : in std_logic :=  '0';
--           fsm_control_ready     : in std_logic_vector(3 downto 0) := (others => '0');
--           fsm_core_finish       : in STD_LOGIC := '0' ; 
--           fsm_control_valid     : out std_logic ;
--           fsm_dout              : out std_logic_vector(31 downto 0):= (others => '0');  
--           fsm_dout_valid        : out std_logic:= '0';
--           fsm_dout_ready        : out std_logic_vector(3 downto 0) := (others => '0');
----           fsm_dout_last         : out std_logic_vector(3 downto 0) := (others => '0');
--           fsm_current_cr        : out std_logic_vector(1 DOWNTO 0);
--           fsm_dout_last         : out std_logic  :=  '0';
--           fsm_reset_core        : out std_logic_vector(3 downto 0) := (others => '0')
----           fsm_bg_core 	         : out std_logic_vector(2 DOWNTO 0);
----           fsm_z_set_core	     : out std_logic_vector(2 DOWNTO 0); 
----           fsm_z_j_core		     : out std_logic_vector(2 DOWNTO 0);
----           fsm_mb_core           : out std_logic_vector(5 DOWNTO 0)
            
--            );
--end component ;      

component Wifi_Input_FSM 
 Port ( 
       clk                   : in STD_LOGIC; 
       reset                 : in STD_LOGIC;
       sel_FEC_code_rate     : in std_logic_vector(1 downto 0) := (others => '0')   ;
       fsm_din               : in STD_LOGIC_VECTOR (31 downto 0);
       fsm_din_valid         : in STD_LOGIC; 
       fsm_din_ready         : in std_logic := '0';
       fsm_din_last          : in STD_LOGIC;
--       fsm_control_ready     : in std_logic_vector(3 downto 0) := (others => '0');
       fsm_core_finish       : in STD_LOGIC := '0' ; 
       fsm_fifo_count        : in std_logic_vector(12 downto 0) := (others => '0') ;
--       fsm_control_valid     : out std_logic_vector(3 downto 0) := (others => '0');
       fsm_dout              : out STD_LOGIC_VECTOR (31 downto 0):= (others => '0') ;  
       fsm_dout_valid        : out std_logic := '0';
--       fsm_dout_ready        : out std_logic_vector(3 downto 0) := (others => '0');
       fsm_dout_ready        : out std_logic := '0';
--       fsm_dout_last         : out std_logic_vector(3 downto 0) := (others => '0');
       fsm_current_cr        : out std_logic_vector(1 DOWNTO 0);
--       fsm_block_count       : out std_logic_vector(7 DOWNTO 0) := (others => '0'); --Dummy port for finishing the simulation 
       fsm_dout_last         : out std_logic := '0';
       fsm_reset_core        : out std_logic_vector(3 DOWNTO 0)              
 
 );
end component ;
component FSM_Output_control is
Port (
            clk                   : in STD_LOGIC; 
            reset                 : in STD_LOGIC;
            sel_FEC_code_rate     : in std_logic_vector(1 downto 0) := (others => '0')      ;
            o_fsm_din             : in STD_LOGIC_VECTOR (31 downto 0);
            o_fsm_din_valid       : in STD_LOGIC_VECTOR (3 downto 0);
            o_fsm_ready_fifo      : in std_logic := '0';
            o_fsm_din_last        : in STD_LOGIC_VECTOR (3 downto 0);
            o_fsm_block_count     : in STD_LOGIC_VECTOR (7 downto 0);
            o_fsm_dout            : out std_logic_vector(31 downto 0 ) := (others => '0') ;
            o_fsm_dout_valid      : out std_logic ;
            o_fsm_ready_core      : out std_logic ;
            o_fsm_dout_last       : out std_logic := '0' ;
            ofsm_core_finish      : out std_logic := '0'

 );
end component ;   

component LDPC_core 
Port (

           clk_core              : in STD_LOGIC;
           clk                   : in STD_LOGIC;
           reset_n               : in STD_LOGIC;
           din                   : in STD_LOGIC_VECTOR (31 downto 0);
           din_valid             : in STD_LOGIC;
--           ctrl_valid            : in std_logic; 
           ctrl_input            : in std_logic_vector(3 downto 0) := (others => '0') ;	   	
           axis_data_count       : in std_logic_vector(12 downto 0) ;
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

component Data_input_FIFO
port (
           clk                   : in STD_LOGIC; 
           reset                 : in STD_LOGIC;
           sel_code_rate         : in std_logic_vector(1 downto 0)  :=(others => '0') ;
           tdata_in              : in std_logic_vector(31 downto 0) :=(others => '0') ;
           tdata_last            : in std_logic := '0';
           tdata_ready           : in std_logic_vector(3 downto 0) :=(others => '0') ;
           tdata_valid           : in std_logic := '0' ;
           data_out              : out std_logic_vector(31 downto 0):=(others => '0');
           data_out_last         : out std_logic_vector(3 downto 0) :=(others => '0');
           data_out_ready        : out std_logic := '0';
           axis_data_count       :out std_logic_vector(12 downto 0) ;
           data_out_valid        : out std_logic_vector(3 downto 0) := (others => '0')
             

);
end component ; 

signal din_ready_core           : std_logic := '0'; --Output signal from core to encoder 
signal din_ready_to_fsm         : std_logic := '0';  
signal selected_code_rate       : std_logic_vector(1 downto 0) := (others => '0');
signal fsm_reset_core           : std_logic_vector(3 downto 0) := (others => '0');
signal ifsm_ready               : std_logic := '0';  
signal dout_valid_core          : std_logic_vector(3 downto 0) := (others => '0');
signal dout_valid_fsm2fifo      : std_logic  := '0';

signal dout_last_fsm2core       : std_logic_vector(3 downto 0) := (others => '0');
signal dout_core                : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal dout_valid_to_cu         : std_logic := '0';   
signal dout_last_to_cu          : std_logic := '0'; 
signal dout_ready_cores         : std_logic_vector(3 downto 0) := (others => '0');
signal data_last_ofsm           : std_logic := '0';
signal dout_last_ofsm2enc       : std_logic := '0';

signal control_valid_core       : std_logic_vector(3 downto 0) := (others => '0');
signal control_ready_core       : std_logic_vector(3 downto 0) := (others => '0');


signal data_in_core             : std_logic_vector(3 downto 0) := (others => '0');
signal dout_valid_to_ofsm       : std_logic_vector(3 downto 0) := (others => '0');

signal data_out_core0           : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal data_out_core1           : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal data_out_core2           : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal data_out_core3           : std_logic_vector(31 downto 0):= (others =>  '0') ; 

signal dout_last_core           : std_logic_vector(3 downto 0) := (others => '0');
signal data_out_cores           : std_logic_vector(31 downto 0):= (others =>  '0') ; 

signal ofsm_din_valid           : std_logic_vector(3 downto 0) := (others => '0');
signal ofsm_din_last            : std_logic_vector(3 downto 0) := (others => '0');
signal dout_ready_fsm2input     : std_logic := '0';
signal finish_encoding          : std_logic := '0' ;

signal block_counter             : std_logic_vector (7 downto 0) := (others => '0') ;

--fifo signals 
signal tdata_ready_fifo2fsm     : std_logic := '0' ;
signal tdata_valid_fifo2cores   : std_logic_vector(3 downto 0) := (others => '0') ;
signal tdata_last_fifo2cores    : std_logic_vector(3 downto 0) := (others => '0') ;
signal axis_data_count          : std_logic_vector(12 downto 0) := (others => '0') ; 
signal data_out_fifo2core       : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal current_CR               : std_logic_vector(1 downto 0) := (others => '0') ;   
signal tdata_last_ifsm2fifo     : std_logic := '0' ;
signal tdata_valid_ifsm2fifo    : std_logic := '0' ;

begin

process(clk ,sel_FEC_code_rate )

begin
if ofsm_din_valid(0) = '1' then 
     data_out_cores <= data_out_core0 ; 
elsif ofsm_din_valid(1) = '1' then 
     data_out_cores <= data_out_core1 ; 
elsif ofsm_din_valid(2) = '1' then 
    data_out_cores <= data_out_core2 ;
elsif ofsm_din_valid(3) = '1' then 
    data_out_cores <= data_out_core3 ;
else 
    data_out_cores <= data_out_cores ;
end if ;

end process ;

--   FSM_Input_control_inst : FSM_Input_control 
--   Port map (
--       clk                   => clk,
--       reset                 => reset,
--       sel_FEC_code_rate     => sel_FEC_code_rate ,
--       fsm_din               => data_in ,
--       fsm_din_valid         => data_in_valid,
----       fsm_din_ready         => dout_ready_cores,
--       fsm_din_ready         => tdata_ready_fifo2fsm,
--       fsm_control_valid     => control_valid_core,
--       fsm_control_ready     => control_ready_core ,
--       fsm_core_finish       => finish_encoding ,
--       fsm_din_last          => data_in_last,
--       fsm_dout_ready        => dout_ready_fsm2enc,
--       fsm_current_cr        => current_CR ,
--       fsm_dout_last         => dout_last_fsm2core,
--       fsm_dout              => dout_core ,
--       fsm_dout_valid        => dout_valid_core ,
--       fsm_reset_core        => fsm_reset_core
----       fsm_bg_core           => bg_core, 
----       fsm_z_set_core        => z_set_core,
----       fsm_z_j_core          => z_j_core,
----       fsm_mb_core           => mb_core
   
--   );
  FSM_Input : Wifi_Input_FSM 
  port map (
       clk                   => clk,
       reset                 => reset,
       sel_FEC_code_rate     => sel_FEC_code_rate ,
       fsm_din               => data_in ,
       fsm_din_valid         => data_in_valid,
--       fsm_din_ready         => dout_ready_cores,
       fsm_din_ready         => tdata_ready_fifo2fsm,
       fsm_fifo_count        => axis_data_count ,
--       fsm_control_valid     => control_valid_core,
--       fsm_control_ready     => control_ready_core ,
       fsm_core_finish       => finish_encoding ,
       fsm_din_last          => data_in_last,
       fsm_dout_ready        => data_out_ready,
       fsm_current_cr        => current_CR ,
--       fsm_block_count       => block_counter ,       
       fsm_dout_last         => tdata_last_ifsm2fifo,
       fsm_dout              => dout_core ,
       fsm_dout_valid        => tdata_valid_ifsm2fifo ,
       fsm_reset_core        => fsm_reset_core
  
  );
  
   input_fifo : Data_input_FIFO 
   port map(
   clk                  =>  clk,
   reset                => aresetn,
   sel_code_rate        => current_CR ,
   tdata_in             => dout_core ,
   tdata_last           => tdata_last_ifsm2fifo,
   tdata_ready          => dout_ready_cores,
   tdata_valid          => tdata_valid_ifsm2fifo ,
   data_out             => data_out_fifo2core ,
   data_out_last        => tdata_last_fifo2cores,
   data_out_ready       => tdata_ready_fifo2fsm,
   axis_data_count      => axis_data_count,  
   data_out_valid       => tdata_valid_fifo2cores 
   
   );
   
   FSM_Output_control_inst : FSM_Output_control 
   port map(
       clk                  => clk,
       reset                => reset,
       sel_FEC_code_rate    => sel_FEC_code_rate,
       o_fsm_din            => data_out_cores,
       o_fsm_din_valid      => ofsm_din_valid ,
       o_fsm_ready_fifo     => '0'  ,
       o_fsm_din_last       => dout_last_core ,
       o_fsm_dout           => data_out ,
       o_fsm_dout_valid     => data_out_valid, 
       o_fsm_ready_core     => din_ready_core,
       o_fsm_block_count    => block_counter ,
       o_fsm_dout_last      => data_out_last  ,
       ofsm_core_finish     => finish_encoding   
   );		

   
   LDPC_encoder_1x16_inst0 : LDPC_core
    Port map(
       clk_core             => ldpc_core_clk,
       clk                  => clk,
       reset_n              => fsm_reset_core(0),
       din                  => data_out_fifo2core,      
       din_valid            => tdata_valid_fifo2cores(0) ,   --input	
--       ctrl_valid           => control_valid_core(0) ,
       axis_data_count      => axis_data_count ,
       ctrl_input           => "0000" ,
       ctrl_ready_out       => control_ready_core(0) ,
       din_ready_fsm2core   => din_ready_core,
       din_last             => tdata_last_fifo2cores(0),       
       dout                 => data_out_core0,            --output 
       din_ready_core2fsm   => dout_ready_cores(0) ,   
       dout_valid           => ofsm_din_valid(0) ,  
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
       din                  => data_out_fifo2core,      
       din_valid            => tdata_valid_fifo2cores(1) ,   --input	
--       ctrl_valid           => control_valid_core(1) ,
       axis_data_count      => axis_data_count ,    
       ctrl_input           => "0100" ,    
       ctrl_ready_out       => control_ready_core(1) ,
       din_ready_fsm2core   => din_ready_core ,
       din_last             => tdata_last_fifo2cores(1),       
       dout                 => data_out_core1,            --output 
       din_ready_core2fsm   => dout_ready_cores(1) ,   
       dout_valid           => ofsm_din_valid(1) , 
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
       din                  => data_out_fifo2core,      
       din_valid            => tdata_valid_fifo2cores(2) ,   --input	
--       ctrl_valid           => control_valid_core(2) ,
       ctrl_input           => "1000" ,     
       axis_data_count      => axis_data_count ,
       ctrl_ready_out       => control_ready_core(2) ,
       din_ready_fsm2core   => din_ready_core ,
       din_last             => tdata_last_fifo2cores(2),       
       dout                 => data_out_core2,            --output 
       din_ready_core2fsm   => dout_ready_cores(2) ,   
       dout_valid           => ofsm_din_valid(2) , 
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
       din                  => data_out_fifo2core,      
       din_valid            => tdata_valid_fifo2cores(3) ,   --input	
--       ctrl_valid           => control_valid_core(3) ,
       ctrl_input           => "1011" ,
       axis_data_count      => axis_data_count ,
       ctrl_ready_out       => control_ready_core(3) ,
       din_ready_fsm2core   => din_ready_core ,
       din_last             => tdata_last_fifo2cores(3),       
       dout                 => data_out_core3,            --output 
       din_ready_core2fsm   => dout_ready_cores(3) ,   
       dout_valid           => ofsm_din_valid(3) , 
       dout_last            => dout_last_core(3)	        --output		   
--       bg   	            => bg_core ,    
--       z_set	            => z_set_core,
--       z_j		        => z_j_core ,
--       mb		            => mb_core  
    );
       
core_finish <= finish_encoding ;
end rtl;
