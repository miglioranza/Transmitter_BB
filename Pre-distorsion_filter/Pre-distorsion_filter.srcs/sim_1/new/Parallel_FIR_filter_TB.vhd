----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2024 03:27:09 PM
-- Design Name: 
-- Module Name: Parallel_FIR_filter_TB - Behavioral
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
use std.env.finish;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Parallel_FIR_filter_TB is
 end Parallel_FIR_filter_TB;

architecture Behavioral of Parallel_FIR_filter_TB is

	signal clk				:std_logic :='0' ; 
	signal reset			: std_logic :='0';	
	signal I_input 		    : std_logic_vector(11 downto 0) := (others => '0');
	signal Q_input 		    : std_logic_vector(11 downto 0) := (others => '0');
    signal data_in_valid    : std_logic := '0' ;
    signal data_in_ready    : std_logic := '0' ;
    signal I_output		    : std_logic_vector(31 downto 0);
    signal Q_output		    : std_logic_vector(31 downto 0);
    signal data_out_ready   : std_logic := '0' ;
    signal data_out_valid   : std_logic ; 
		--Clock period 
	constant clk_period : time := 5 ns ;
	
	--UUT: Unit Under Test
	component Parallel_FIR_filter 
	
-- Generic (
--        FILTER_TAPS  : integer := 16; --Number of taps depending on the degree of the coefficients 
--        INPUT_WIDTH  : integer := 12; 
--        COEFF_WIDTH  : integer range 8 to 32 := 16 ;--bitwidth of the coefficients 
--        MEMORY_DEPTH : integer := 5 ;
--        ORDER        : integer := 3  -- Nonlinear polynomial order (odd only: 1,3,5...)
--    );
    Port ( 
            clk             : in STD_LOGIC;
           reset            : in STD_LOGIC;
           I_input          : in STD_LOGIC_VECTOR (11 downto 0);  --valid/ready AXI protocol 
           Q_input          : in STD_LOGIC_VECTOR (11 downto 0);
           data_in_ready    : in std_logic := '0' ;
           data_in_valid    : in std_logic := '0';
           data_out_valid   : out std_logic := '0' ;
           Q_output         : out STD_LOGIC_VECTOR (31 downto 0) := (others =>'0') ;
           I_output         : out STD_LOGIC_VECTOR (31 downto 0) := (others =>'0') ;
           data_out_ready   : out STD_LOGIC := '0'
           );
 end component ;	

 
begin

     uut: Parallel_FIR_filter 
--     Generic Map (
--            FILTER_TAPS  => 16,  -- Map generics
--            INPUT_WIDTH  => 12,
--            COEFF_WIDTH  => 16,
--            MEMORY_DEPTH => 5,
--            ORDER        => 3
--        )
     port map( 
     clk            => clk ,
     reset          => reset ,
     I_input        => I_input,
     Q_input        => Q_input,
     data_in_ready  => data_in_ready,
     data_in_valid  => data_in_valid,
     data_out_valid => data_out_valid, 
     data_out_ready => data_out_ready,
     I_output       => I_output,
     Q_output       => Q_output 
     );
    
    --Clock generation
    clk_process : process 
    begin 
        clk <= '1' ;
        wait for clk_period /2  ;
        clk <= '0' ;
        wait for clk_period / 2 ;
    end process ;
   
    
    --Stimulus process ;
    stim_process : process 
    begin 
        reset <= '1' ;
        wait for 20 ns ;
        reset <='0' ;
        wait for 20 ns ;
    
        --Test vectors 
        data_in_ready <= '1' ;  
        wait for clk_period ;
        data_in_valid <= '1' ;   
        I_input <= x"ABC" ;
        Q_input <= x"BCF" ;
        wait for clk_period ;
--        data_in_ready <= '0' ;     

        wait for clk_period  ;
        data_in_ready <= '1' ; 
        I_input  <= x"BCB" ; 
        Q_input  <= x"BBB" ; 
        wait for clk_period ;
--        data_in_ready <= '0' ;    
--        wait for clk_period  ;
        
--        data_in_ready <= '1' ; 
        I_input   <= x"FCC" ; 
        Q_input  <= x"CFF" ;
        wait for clk_period ;
--        data_in_ready <= '0' ; 
--        wait for clk_period  ;
        
--        data_in_ready <= '1' ; 
        I_input <= x"CBC" ; 
        Q_input <= x"BCB";
        wait for clk_period ;
--        data_in_ready <= '0' ; 
--        wait for clk_period  ;
        
--        data_in_ready <= '1' ; 
        I_input <= x"DDD" ;
        Q_input <= x"DDA" ; 
        wait for clk_period *2 ;
        data_in_ready <= '0'; 
        data_in_valid <= '0';
        wait for clk_period *10 ;
        
        -- End simulation

        report "End of simulation" ;
        finish ;
        end process ;
       

end Behavioral;



	

 
 
