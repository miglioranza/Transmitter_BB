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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Parallel_FIR_filter_TB is
 end Parallel_FIR_filter_TB;

architecture Behavioral of Parallel_FIR_filter_TB is

constant INPUT_WIDTH : integer := 12; -- Input bit width
constant CLK_PERIOD  : time := 5 ns ;
constant FILTER_TAPS : integer := 16 ;
    -- Signals for the DUT (Device Under Test)
    signal clk           : std_logic := '0';
    signal reset         : std_logic := '0';
    signal I_input       : std_logic_vector(INPUT_WIDTH-1 downto 0) := (others => '0');
    signal Q_input       : std_logic_vector(INPUT_WIDTH-1 downto 0) := (others => '0');
--    signal data_in_ready : std_logic := '0';
    signal data_in_valid : std_logic := '0';
    signal data_out_valid: std_logic;
    signal Q_output      : std_logic_vector (15 downto 0);
    signal I_output      : std_logic_vector (15 downto 0);
--    signal data_out_ready: std_logic; 

-- Self-checking test signals 
   type coefficients is array(15 downto 0) of signed(15 downto 0);
signal coeff : coefficients := (
    x"6AAA", x"5555", x"2666", x"2000", x"1999", x"1333", x"0CCD", x"4000",
    x"4000", x"0CCD", x"1333", x"1999", x"2000", x"2666", x"5555", x"6AAA"

);
    type shift_array is array(0 to FILTER_TAPS-1) of signed(INPUT_WIDTH-1 downto 0);
    signal I_shift_reg , Q_shift_reg : shift_array := (others => (others => '0')) ;
    signal results_I,results_Q : std_logic_vector(15 downto 0) := (others => '0') ;
    signal acc_stage_I, acc_stage_Q : signed(31 downto 0) := (others => '0') ;
    signal check_enable : boolean := false ;
    
begin

	DUT : entity work.Parallel_FIR_filter 

     port map( 
            clk           => clk,
            reset         => reset,
            I_input       => I_input,
            Q_input       => Q_input,
--            data_in_ready => data_in_ready,
            data_in_valid => data_in_valid,
            data_out_valid=> data_out_valid,
            Q_output      => Q_output,
            I_output      => I_output
--            data_out_ready=> data_out_ready
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
          stimulus_process: process

    begin
    
        -- Initialize signals
        reset <= '1' ;
        I_input <= (others => '0');
        Q_input <= (others => '0');
--        data_in_ready <= '0';
        data_in_valid <= '0';
        wait for 30 ns;
        reset <= '0' ;

-----------------------------------------------------------------------
-- Stimuli generation 
-----------------------------------------------------------------------                       
      
        for i in 1 to 50 loop
            -- Set input data
            I_input <= std_logic_vector (to_signed(i*10, INPUT_WIDTH));  -- Example I input
            Q_input <= std_logic_vector(to_signed(-i, INPUT_WIDTH)); -- Example Q input
            data_in_valid <= '1';  -- Assert valid signal
            wait for CLK_PERIOD;
        end loop;  

       I_input <= (others => '0');
       Q_input <= (others => '0');
       data_in_valid <= '0';  -- Assert valid signal
       report "End of simulation" ;
   
        wait for 20 ns;
        -- End simulation

        finish ;
        end process ;
        
----------------------------------------------------------
--Self-checking results 
------------------------------------------------------------
check_proc : process 
variable acc_reg_I, acc_reg_Q : signed(31 downto 0) := (others => '0') ;
begin

wait on I_input ;

if data_in_valid = '1' then 
   
   for j in FILTER_TAPS -1 downto 1 loop 
    I_shift_reg(j) <= I_shift_reg(j-1) ;
    Q_shift_reg(j) <= Q_shift_reg(j-1) ;
   end loop ;
   I_shift_reg(0) <= signed(I_input) ; 
   Q_shift_reg(0) <= signed(Q_input) ; 
 --Multiplication results  
   acc_reg_I := (others => '0') ;
   acc_reg_Q := (others => '0') ;
   
   for k in 0 to FILTER_TAPS -1 loop 
   acc_reg_I := acc_reg_I + I_shift_reg(k) * coeff(k) ;
   acc_reg_Q := acc_reg_Q + Q_shift_reg(k) * coeff(k) ;
   end loop ;
   --Delay registers
   acc_stage_I <= acc_reg_I ;
   acc_stage_Q <= acc_reg_Q ;
   
   results_I <= std_logic_vector(acc_stage_I(15 downto 0)) ;
   results_Q <= std_logic_vector(acc_stage_Q(15 downto 0)) ;
   check_enable <= true ; 
 else 
   results_I <= (others => '0') ;
   results_Q <= (others => '0') ;
   check_enable <= false ; 
   acc_reg_I := (others => '0') ;
   acc_reg_Q := (others => '0') ;
   I_shift_reg  <= (others => (others => '0')) ;
   Q_shift_reg  <= (others => (others => '0')) ;
   
 end if ;  
------------------------------------------------------------ 
 --Results checker
------------------------------------------------------------
if check_enable = true and data_out_valid = '1' then 
   assert I_output = results_I 
        report "Mismatch in I_output. Expected: " & integer'image(to_integer(signed(results_I))) &
                           " Got: " & integer'image(to_integer(signed(I_output)))
       severity error;
   assert Q_output = results_Q 
        report "Mismatch in Q_output. Expected: "& integer'image(to_integer(signed(results_Q))) &   
                        "Got: "& integer'image(to_integer(signed(Q_output))) 
        severity error ;                 
  end if ;  
end process ;      

        
end Behavioral;

    

       




	

 
 
