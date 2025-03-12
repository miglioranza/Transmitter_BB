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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Parallel_FIR_filter_TB is
 end Parallel_FIR_filter_TB;

architecture Behavioral of Parallel_FIR_filter_TB is

constant INPUT_WIDTH : integer := 12; -- Input bit width
constant CLK_PERIOD  : time := 5 ns ;

    -- Signals for the DUT (Device Under Test)
    signal clk           : std_logic := '0';
    signal reset         : std_logic := '0';
    signal I_input       : std_logic_vector(INPUT_WIDTH-1 downto 0) := (others => '0');
    signal Q_input       : std_logic_vector(INPUT_WIDTH-1 downto 0) := (others => '0');
    signal data_in_ready : std_logic := '0';
    signal data_in_valid : std_logic := '0';
    signal data_out_valid: std_logic;
    signal Q_output      : std_logic_vector(31 downto 0);
    signal I_output      : std_logic_vector(31 downto 0);
    signal data_out_ready: std_logic; 
		--Clock period 
	
	--UUT: Unit Under Test
	component Parallel_FIR_filter 
	

    Port ( 
           clk              : in STD_LOGIC;
           reset            : in STD_LOGIC;
           I_input          : in STD_LOGIC_VECTOR (INPUT_WIDTH-1 downto 0);  --valid/ready AXI protocol 
           Q_input          : in STD_LOGIC_VECTOR (INPUT_WIDTH-1 downto 0);
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
     clk           => clk,
            reset         => reset,
            I_input       => I_input,
            Q_input       => Q_input,
            data_in_ready => data_in_ready,
            data_in_valid => data_in_valid,
            data_out_valid=> data_out_valid,
            Q_output      => Q_output,
            I_output      => I_output,
            data_out_ready=> data_out_ready
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
      --Stimulus process ;
          stimulus_process: process

    begin
        -- Initialize signals
        reset <= '1';
        I_input <= (others => '0');
        Q_input <= (others => '0');
        data_in_ready <= '0';
        data_in_valid <= '0';
        wait for CLK_PERIOD * 2;

        -- Release reset
        reset <= '0';
        wait for CLK_PERIOD;

        -- Apply test stimulus
        for i in 1 to 10 loop
            -- Set input data
            I_input <= std_logic_vector(to_signed(i, INPUT_WIDTH));  -- Example I input
            Q_input <= std_logic_vector(to_signed(-i, INPUT_WIDTH)); -- Example Q input
            data_in_valid <= '1';  -- Assert valid signal
            data_in_ready <= '1';  -- Simulate ready signal from downstream
            wait for CLK_PERIOD;

--            data_in_valid <= '0';
--            wait for CLK_PERIOD;
        end loop;
    
    
    
    
--    stim_process : process 
--    begin 
--        reset <= '1' ;
--        wait for 20 ns ;
--        reset <='0' ;
--        wait for 20 ns ;
    
--        --Test vectors 
--        data_in_ready <= '1' ;  
--        wait for clk_period ;
--        data_in_valid <= '1' ;   
--        I_input <= x"ABC" ;
--        Q_input <= x"BCF" ;
--        wait for clk_period ;
----        data_in_ready <= '0' ;     

--        wait for clk_period  ;
--        data_in_ready <= '1' ; 
--        I_input  <= x"BCB" ; 
--        Q_input  <= x"BBB" ; 
--        wait for clk_period ;
----        data_in_ready <= '0' ;    
----        wait for clk_period  ;
        
----        data_in_ready <= '1' ; 
--        I_input   <= x"FCC" ; 
--        Q_input  <= x"CFF" ;
--        wait for clk_period ;
----        data_in_ready <= '0' ; 
----        wait for clk_period  ;
        
----        data_in_ready <= '1' ; 
--        I_input <= x"CBC" ; 
--        Q_input <= x"BCB";
--        wait for clk_period ;
----        data_in_ready <= '0' ; 
----        wait for clk_period  ;
        
----        data_in_ready <= '1' ; 
--        I_input <= x"DDD" ;
--        Q_input <= x"DDA" ; 
--        wait for clk_period *2 ;
--        data_in_ready <= '0'; 
--        data_in_valid <= '0';
        wait for clk_period  ;
        
        -- End simulation

        report "End of simulation" ;
        finish ;
        end process ;
       

end Behavioral;



	

 
 
