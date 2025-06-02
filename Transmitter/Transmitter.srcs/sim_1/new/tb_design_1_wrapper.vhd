----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2025 03:51:49 PM
-- Design Name: 
-- Module Name: tb_design_1_wrapper - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.env.finish;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity tb_design_1_wrapper is
end tb_design_1_wrapper;

architecture Behavioral of tb_design_1_wrapper is
    -- Signals for the DUT (Design Under Test)
    signal clk_0 : STD_LOGIC := '0';
    signal ldpc_core_clk_0 : STD_LOGIC := '0';
    signal clk_50MHz: STD_LOGIC := '0';
    signal aresetn_0 : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '1';
    signal reset_0 : STD_LOGIC := '1';
    signal reset_PolyFilter : STD_LOGIC := '0';
    signal control_enable_0 : STD_LOGIC := '0';
    signal core_finish_0 : STD_LOGIC;
    signal data_out_ready_0 : STD_LOGIC;
    signal data_out_valid_0 : STD_LOGIC;
    signal i_out_0 : STD_LOGIC_VECTOR(51 downto 0);
    signal m_axis_data_tlast_0 : STD_LOGIC;
    signal mod_type_0 : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    signal q_out_0 : STD_LOGIC_VECTOR(51 downto 0);
    signal seed_0 : STD_LOGIC_VECTOR(30 downto 0) := (others => '0');
    signal sel_FEC_code_rate_0 : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
    signal S_AXIS_0_tdata : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal S_AXIS_0_tlast : STD_LOGIC := '0';
    signal S_AXIS_0_tready : STD_LOGIC;
    signal S_AXIS_0_tvalid : STD_LOGIC := '0';
    signal data_in_ready_0 : std_logic := '0';
    signal axis_data_counter : STD_LOGIC_VECTOR(12 downto 0) := (others => '0');
    signal code_rate2Interleaver : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
        -- Clock period definitions
    constant clk_0_period : time := 5 ns;  -- 200 MHz
    constant ldpc_core_clk_0_period : time := 3.333 ns;  -- 300 MHz
    constant clk_50_MHz_Poly : time := 20 ns ;
begin
    -- Instantiate the DUT
    uut: entity work.Design_2_wrapper
        port map (
            S_AXIS_0_tdata => S_AXIS_0_tdata,
            S_AXIS_0_tlast => S_AXIS_0_tlast,
            S_AXIS_0_tready => S_AXIS_0_tready,
            S_AXIS_0_tvalid => S_AXIS_0_tvalid,
            aresetn_0 => aresetn_0,
            clk => clk_0,
            control_enable_0 => control_enable_0,
            core_finish_0 => core_finish_0,
            data_in_ready_0 => data_in_ready_0,
            data_out_valid_0 => data_out_valid_0,
            data_out_I_0 => i_out_0,
            ldpc_core_clk => ldpc_core_clk_0,
            mod_type_0 => mod_type_0,
            data_out_Q_0 => q_out_0,
            reset => reset,
            reset_0 => reset_0,
            seed_0 => seed_0,
            sel_FEC_code_rate_0 => sel_FEC_code_rate_0,
            code_rate_0   => code_rate2Interleaver ,
            axis_data_count_0 => axis_data_counter ,
            clk_50MHz      =>  clk_50MHz 

        );

    -- Clock generation
    clk_0_process: process
    begin
        clk_0 <= '0';
        wait for clk_0_period / 2;
        clk_0 <= '1';
        wait for clk_0_period / 2;
       
    end process;  
    
     -- Clock_50MHz generation
    clk_50MHz_process: process
    begin
       
        clk_50MHz <= '0';
        wait for clk_50_MHz_Poly / 2;
        clk_50MHz <= '1';
        wait for clk_50_MHz_Poly / 2;
    end process;

    ldpc_core_clk_0_process: process
    begin
        ldpc_core_clk_0 <= '0';
        wait for ldpc_core_clk_0_period / 2;
        ldpc_core_clk_0 <= '1';
        wait for ldpc_core_clk_0_period / 2;
    end process;

    -- Reset generation
    reset_0_process: process
    begin
        reset_0 <= '1';  -- Active high reset
        wait for 10 ns;
        reset_0 <= '0';
        
        reset <= '1';  -- Active high reset
        wait for 10 ns;
        reset <= '0';
        
        reset_PolyFilter <= '1';  -- Active high reset
        wait for 10 ns;
        reset_PolyFilter <= '0';
        wait;
        
    end process;

    aresetn_0_process: process
    begin
        aresetn_0 <= '0';  -- Active low reset
        wait for 50 ns;
        aresetn_0 <= '1';
        wait;
    end process;

    -- Stimulus process
    stim_proc: process
    variable i : integer := 1 ;
    begin
        -- Wait for resets to complete
        wait for 100 ns;

        -- Set initial values for control signals
        control_enable_0 <= '1';  -- Enable the core
        mod_type_0 <= "000";      -- BPSK modulation (assuming "000" represents BPSK)
        sel_FEC_code_rate_0 <= "00";  -- Code rate 0.5 (assuming "00" represents 0.5)
        code_rate2Interleaver <= "00" ;
        seed_0 <= "1001001000101001000100101111101";  -- Initialize seed (if needed)
        data_in_ready_0 <= '1' ;
        -- Generate first 100 values with code rate 0.5 and BPSK modulation
        S_AXIS_0_tvalid <= '1';
        S_AXIS_0_tdata <= std_logic_vector(to_unsigned(i, 32));
        while i <= 100 loop
          
            if S_AXIS_0_tready = '1' then
                 -- Assert valid signal 
--            S_AXIS_0_tvalid <= '1';  -- Assert valid signal
            i := i + 1 ;
            S_AXIS_0_tdata <= std_logic_vector(to_unsigned(i, 32));  -- Input data (32-bit counter)
            wait for clk_0_period ;
            
            if i = 100 then
                S_AXIS_0_tlast <= '1';  -- Assert tlast for the last data word
            else
                S_AXIS_0_tlast <= '0';
            end if;
            else 
--             S_AXIS_0_tvalid <= '0';
             wait until rising_edge(clk_0);
             -- Wait for 2 clock cycles between data
            end if ;
        end loop;
         S_AXIS_0_tvalid <= '0';
--         S_AXIS_0_tlast <= '0';

        -- Wait for a short period before changing parameters
        -- Change to QPSK modulation and code rate 2/3
        sel_FEC_code_rate_0 <= "01";  -- Code rate 2/3 (assuming "01" represents 3/4)
        wait until core_finish_0 = '1' ;
         S_AXIS_0_tlast <= '0';
        wait until axis_data_counter = "0";
        code_rate2Interleaver <= "01" ;
        mod_type_0 <= "001";      -- QPSK modulation (assuming "001" represents QPSK)
        wait for clk_0_period ;

--        wait for 200 ns;
        -- Generate next 100 values with code rate 3/4 and QPSK modulation
        while i >= 101 and i< 300 loop
            S_AXIS_0_tvalid <= '1';
            if S_AXIS_0_tready = '1' then
                 -- Assert valid signal 
--            S_AXIS_0_tvalid <= '1';  -- Assert valid signal
            S_AXIS_0_tdata <= std_logic_vector(to_unsigned(i, 32));  -- Input data (32-bit counter)
            wait for clk_0_period ;
            i := i + 1 ;
            if i = 300 then
                S_AXIS_0_tlast <= '1';  -- Assert tlast for the last data word
            else
                S_AXIS_0_tlast <= '0';
            end if;
            else 
--             S_AXIS_0_tvalid <= '0';
             wait until rising_edge(clk_0);
             -- Wait for 2 clock cycles between data
            end if ;
        end loop;
        S_AXIS_0_tvalid <= '0';
--        S_AXIS_0_tlast <= '0';


        -- Wait for a short period before changing parameters
        sel_FEC_code_rate_0 <= "10";  -- Code rate 3/4 (assuming "01" represents 3/4)
        wait until core_finish_0 = '1' ;
        S_AXIS_0_tlast <= '0';
        wait until axis_data_counter = "0";
        code_rate2Interleaver <= "10" ;
        mod_type_0 <= "101";      -- 16-QAM  modulation (assuming "010" represents QPSK)
--        wait for 100 ns ;
        wait for clk_0_period ;
        -- Change to QPSK modulation and code rate 3/4
        -- Generate next 100 values with code rate 3/4 and QPSK modulation
               while i >= 300 and i< 450 loop
            S_AXIS_0_tvalid <= '1';
            if S_AXIS_0_tready = '1' then
                 -- Assert valid signal 
--            S_AXIS_0_tvalid <= '1';  -- Assert valid signal
            S_AXIS_0_tdata <= std_logic_vector(to_unsigned(i, 32));  -- Input data (32-bit counter)
            wait for clk_0_period ;
            i := i + 1 ;
            if i = 450 then
                S_AXIS_0_tlast <= '1';  -- Assert tlast for the last data word
            else
                S_AXIS_0_tlast <= '0';
            end if;
            else 
--             S_AXIS_0_tvalid <= '0';
             wait until rising_edge(clk_0);
             -- Wait for 2 clock cycles between data
            end if ;
        end loop;
 S_AXIS_0_tvalid <= '0';
    wait until core_finish_0 = '1' ;
    wait until axis_data_counter = "0";
--wait until m_axis_data_tvalid_0 = '0';

        -- End of stimulus
        wait ;
        report "End of simulation" ;
        finish ;
    end process;
end Behavioral;