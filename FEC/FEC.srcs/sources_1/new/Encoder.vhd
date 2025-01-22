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
 data_in                : in std_logic_vector(31 downto 0) ; 
 data_in_valid          : in std_logic ;  
 din_ready_ifsm2enc     : in std_logic ;  
 data_in_last           : in std_logic ; 
 sel_FEC_code_rate      : in std_logic_vector( 1 downto 0)   ;
 data_out_ready         : out std_logic_vector(3 downto 0) := (others => '0');  --LDPC encoder ready to receive data in input, the signal is fed from the fsm input control to the otuput of the encoder subsystem                   
 data_out               : out std_logic_vector(31 downto 0) ;
 data_out_valid         : out std_logic ;
 data_out_last          : out std_logic 

  );
end Encoder;

architecture rtl of Encoder is
component FSM_Input_control 
Port (     
           clk                   : in STD_LOGIC; 
           reset                 : in STD_LOGIC;
           sel_FEC_code_rate     : in integer   ;
           fsm_din               : in STD_LOGIC_VECTOR (31 downto 0);
           fsm_din_valid         : in STD_LOGIC; 
           fsm_din_last          : in STD_LOGIC;
           fsm_din_ready         : in std_logic_vector(3 downto 0) := (others => '0');
           fsm_control_ready     : in std_logic_vector(3 downto 0) := (others => '0');
           fsm_core_finish       : in STD_LOGIC := '0' ; 
           fsm_control_valid     : out std_logic ;
           fsm_dout              : out std_logic_vector(31 downto 0):= (others => '0');  
           fsm_dout_valid        : out std_logic_vector(3 downto 0) := (others => '0');
           fsm_dout_ready        : out std_logic_vector(3 downto 0) := (others => '0');
           fsm_dout_last         : out std_logic_vector(3 downto 0) := (others => '0');
           fsm_reset_core        : out std_logic_vector(3 downto 0) := (others => '0');
           fsm_bg_core 	         : out std_logic_vector(2 DOWNTO 0);
           fsm_z_set_core	     : out std_logic_vector(2 DOWNTO 0); 
           fsm_z_j_core		     : out std_logic_vector(2 DOWNTO 0);
           fsm_mb_core           : out std_logic_vector(5 DOWNTO 0)
            
            );
end component ;      

component FSM_Output_control is
Port (
            clk                   : in STD_LOGIC; 
            reset                 : in STD_LOGIC;
            sel_FEC_code_rate     : in integer   ;
            o_fsm_din             : in STD_LOGIC_VECTOR (31 downto 0);
            o_fsm_din_valid       : in STD_LOGIC_VECTOR (3 downto 0);
            o_fsm_ready_fifo      : in std_logic := '0';
            o_fsm_din_last        : in STD_LOGIC_VECTOR (3 downto 0);
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
           ctrl_valid            : in std_logic;           
           din_ready_fsm2core    : in STD_LOGIC; 
           din_last              : in std_logic ;
           dout                  : out STD_LOGIC_VECTOR (31 downto 0);
           din_ready_core2fsm    : out STD_LOGIC;  
           dout_valid            : out STD_LOGIC; 
           dout_last             : out STD_LOGIC;	
           ctrl_ready_out        : out std_logic ;	   		   
	       bg   	             : STD_LOGIC_VECTOR(2 DOWNTO 0);--:= "001";-- (base graph)
		   z_set	             : STD_LOGIC_VECTOR(2 DOWNTO 0);--:= "000";-- Base graph cyclic shift set
		   z_j		             : STD_LOGIC_VECTOR(2 DOWNTO 0);--:= "100";--
		   mb		             : STD_LOGIC_VECTOR(5 DOWNTO 0)
		   
);

end component ;
 
signal din_ready_core           : std_logic := '0'; --Output signal from core to encoder 
signal din_ready_to_fsm         : std_logic := '0';  
signal selected_code_rate       : integer   :=  0;
signal fsm_reset_core           : std_logic_vector(3 downto 0) := (others => '0');
signal ifsm_ready               : std_logic := '0';  
signal dout_valid_core          : std_logic_vector(3 downto 0) := (others => '0');
signal dout_last_fsm2core       : std_logic_vector(3 downto 0) := (others => '0');
signal dout_core                : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal dout_valid_to_cu         : std_logic := '0';   
signal dout_last_to_cu          : std_logic := '0'; 
signal dout_ready_cores         : std_logic_vector(3 downto 0) := (others => '0');
signal data_last_ofsm           : std_logic := '0';
signal dout_last_ofsm2enc       : std_logic := '0';

signal control_valid_core       : std_logic := '0' ;
signal control_ready_core       : std_logic_vector(3 downto 0) := (others => '0');

signal bg_core 	                : std_logic_vector(2 DOWNTO 0) := (others => '0');
signal z_set_core	            : std_logic_vector(2 DOWNTO 0) := (others => '0') ;
signal z_j_core		            : std_logic_vector(2 DOWNTO 0) := (others => '0');
signal mb_core                  : std_logic_vector(5 DOWNTO 0) := (others => '0');

signal data_in_core             : std_logic_vector(3 downto 0) := (others => '0');
signal dout_valid_to_ofsm       : std_logic_vector(3 downto 0) := (others => '0');

signal data_in_core0            : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal data_in_core1            : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal data_in_core2            : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal data_in_core3            : std_logic_vector(31 downto 0):= (others =>  '0') ; 

signal data_out_core0           : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal data_out_core1           : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal data_out_core2           : std_logic_vector(31 downto 0):= (others =>  '0') ; 
signal data_out_core3           : std_logic_vector(31 downto 0):= (others =>  '0') ; 

signal dout_last_core           : std_logic_vector(3 downto 0) := (others => '0');
signal data_out_cores           : std_logic_vector(31 downto 0):= (others =>  '0') ; 

signal ofsm_din_valid           : std_logic_vector(3 downto 0) := (others => '0');
signal ofsm_din_last            : std_logic_vector(3 downto 0) := (others => '0');
signal dout_ready_fsm2enc       : std_logic_vector(3 downto 0) := (others => '0');
signal finish_encoding          : std_logic := '0' ;
                    
begin

process(clk ,sel_FEC_code_rate )

begin
        
        case sel_FEC_code_rate is   
        
        when "00" => 
       selected_code_rate <= 0 ;
       data_out_cores <= data_out_core0 ; 
   
        when "01" => 
        selected_code_rate <= 1 ;
        data_out_cores <= data_out_core1 ; 
   
        when "10" =>
        selected_code_rate <= 2 ;
       data_out_cores <= data_out_core2 ;
       
        when "11" =>
       selected_code_rate <= 3 ;
       data_out_cores <= data_out_core3 ;          
        when others =>
                selected_code_rate <= selected_code_rate ;
                data_in_core0  <= (others => '0')  ;
                data_in_core1  <= (others => '0')  ;
                data_in_core2  <= (others => '0')  ;
                data_in_core3  <= (others => '0')  ;
                data_out_cores <= (others => '0')  ; 
            
        end case ;

end process ;

   FSM_Input_control_inst : FSM_Input_control 
   Port map (
       clk                   => clk,
       reset                 => reset,
       sel_FEC_code_rate     => selected_code_rate ,
       fsm_din               => data_in ,
       fsm_din_valid         => data_in_valid,
       fsm_din_ready         => dout_ready_cores,
       fsm_control_valid     => control_valid_core,
       fsm_control_ready     => control_ready_core ,
       fsm_core_finish       => finish_encoding ,
       fsm_din_last          => data_in_last,
       fsm_dout_ready        => dout_ready_fsm2enc,
       fsm_dout_last         => dout_last_fsm2core,
       fsm_dout              => dout_core ,
       fsm_dout_valid        => dout_valid_core ,
       fsm_reset_core        => fsm_reset_core, 
       fsm_bg_core           => bg_core, 
       fsm_z_set_core        => z_set_core,
       fsm_z_j_core          => z_j_core,
       fsm_mb_core           => mb_core
   
   );
  
   FSM_Output_control_inst : FSM_Output_control 
   port map(
       clk                  => clk,
       reset                => reset,
       sel_FEC_code_rate    => selected_code_rate,
       o_fsm_din            => data_out_cores,
       o_fsm_din_valid      => ofsm_din_valid ,
       o_fsm_ready_fifo     => '0'  ,
       o_fsm_din_last       => dout_last_core ,
       o_fsm_dout           => data_out ,
       o_fsm_dout_valid     => data_out_valid, 
       o_fsm_ready_core     => din_ready_core,
       o_fsm_dout_last      => data_out_last  ,
       ofsm_core_finish     => finish_encoding  
   );		

   
   LDPC_encoder_1x16_inst0 : LDPC_core
    Port map(
       clk_core             => ldpc_core_clk,
       clk                  => clk,
       reset_n              => fsm_reset_core(0),
       din                  => dout_core,      
       din_valid            => dout_valid_core(0) ,   --input	
       ctrl_valid           => control_valid_core ,
       ctrl_ready_out       => control_ready_core(0) ,
       din_ready_fsm2core   => din_ready_core,
       din_last             => dout_last_fsm2core(0),       
       dout                 => data_out_core0,            --output 
       din_ready_core2fsm   => dout_ready_cores(0) ,   
       dout_valid           => ofsm_din_valid(0) ,             --output 
       dout_last            => dout_last_core(0),	        --output
       bg   	            => bg_core ,    
       z_set	            => z_set_core,
       z_j		            => z_j_core ,
       mb		            => mb_core 
    );
    
   LDPC_encoder_1x16_inst1 : LDPC_core
    Port map(
       clk_core             => ldpc_core_clk,
       clk                  => clk,
       reset_n              => fsm_reset_core(1),
       din                  => dout_core,      
       din_valid            => dout_valid_core(1) ,   --input	
       ctrl_valid           => control_valid_core ,
       ctrl_ready_out       => control_ready_core(1) ,
       din_ready_fsm2core   => din_ready_core ,
       din_last             => dout_last_fsm2core(1),       
       dout                 => data_out_core1,            --output 
       din_ready_core2fsm   => dout_ready_cores(1) ,   
       dout_valid           => ofsm_din_valid(1) ,             --output 
       dout_last            => dout_last_core(1),	        --output		   
       bg   	            => bg_core ,    
       z_set	            => z_set_core,
       z_j		            => z_j_core ,
       mb		            => mb_core  
    );
    
   LDPC_encoder_1x16_inst2 : LDPC_core
    Port map(
       clk_core             => ldpc_core_clk,
       clk                  => clk,
       reset_n              => fsm_reset_core(2),
       din                  => dout_core,      
       din_valid            => dout_valid_core(2) ,   --input	
       ctrl_valid           => control_valid_core ,
       ctrl_ready_out       => control_ready_core(2) ,
       din_ready_fsm2core   => din_ready_core ,
       din_last             => dout_last_fsm2core(2),       
       dout                 => data_out_core2,            --output 
       din_ready_core2fsm   => dout_ready_cores(2) ,   
       dout_valid           => ofsm_din_valid(2) ,             --output 
       dout_last            => dout_last_core(2),	        --output
       bg   	            => bg_core ,    
       z_set	            => z_set_core,
       z_j		            => z_j_core ,
       mb		            => mb_core  
    );
    
   LDPC_encoder_1x16_inst3 : LDPC_core
    Port map(
       clk_core             => ldpc_core_clk,
       clk                  => clk,
       reset_n              => fsm_reset_core(3),
       din                  => dout_core,      
       din_valid            => dout_valid_core(3) ,   --input	
       ctrl_valid           => control_valid_core ,
       ctrl_ready_out       => control_ready_core(3) ,
       din_ready_fsm2core   => din_ready_core ,
       din_last             => dout_last_fsm2core(3),       
       dout                 => data_out_core3,            --output 
       din_ready_core2fsm   => dout_ready_cores(3) ,   
       dout_valid           => ofsm_din_valid(3) ,             --output 
       dout_last            => dout_last_core(3),	        --output		   
       bg   	            => bg_core ,    
       z_set	            => z_set_core,
       z_j		            => z_j_core ,
       mb		            => mb_core  
    );
       
data_out_ready <= dout_ready_fsm2enc ; 

end rtl;
