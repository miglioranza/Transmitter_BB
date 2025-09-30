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
use std.textio.all;
use ieee.std_logic_textio.all; -- useful for reading into std_logic_vector

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


--entity tb_design_1_wrapper is
--end tb_design_1_wrapper;

entity tb_Design_2_wrapper is
end tb_Design_2_wrapper;

architecture Behavioral of tb_Design_2_wrapper is
    -- Signals for the DUT (Design Under Test)
signal clk                     : STD_LOGIC := '0';
signal control_unit_din_data_0 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
signal control_unit_din_valid_0: STD_LOGIC := '0';
signal control_unit_dout_ready_0: STD_LOGIC;
signal control_unit_end_of_frame_0 : STD_LOGIC := '0';
signal data_out_I_0            : STD_LOGIC_VECTOR (15 downto 0);
signal data_out_Q_0            : STD_LOGIC_VECTOR (15 downto 0);
signal data_out_valid_0        : STD_LOGIC;
signal ldpc_core_clk           : STD_LOGIC := '0';
signal mod_cod_schemes_0       : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
signal num_streams_0           : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
signal num_words_0             : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
signal phy_dest_address_0      : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
signal phy_src_address_0       : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
signal ref_distance_0          : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
signal reset                   : STD_LOGIC := '0';
signal scrambler_init_0        : STD_LOGIC_VECTOR (31 downto 1) := (others => '0');
signal start_tx_0              : STD_LOGIC := '0';
constant clk_0_period : time := 5 ns;  -- 200 MHz
constant ldpc_core_clk_0_period : time := 3.333 ns;  -- 300 MHz
--constant clk_50_MHz_Poly : time := 20 ns ;
    
begin
    -- Instantiate the DUT
    uut: entity work.Design_2_wrapper
       port map (
    clk                     => clk,
    control_unit_din_data_0 => control_unit_din_data_0,
    control_unit_din_valid_0=> control_unit_din_valid_0,
    control_unit_dout_ready_0=> control_unit_dout_ready_0,
    control_unit_end_of_frame_0 => control_unit_end_of_frame_0,
    data_out_I_0            => data_out_I_0,
    data_out_Q_0            => data_out_Q_0,
    data_out_valid_0        => data_out_valid_0,
    ldpc_core_clk           => ldpc_core_clk,
    mod_cod_schemes_1       => mod_cod_schemes_0,
    num_streams_0           => num_streams_0,
    num_words_0             => num_words_0,
    phy_dest_address_0      => phy_dest_address_0,
    phy_src_address_0       => phy_src_address_0,
    ref_distance_0          => ref_distance_0,
    reset                   => reset,
    scrambler_init_0        => scrambler_init_0,
    start_tx_0              => start_tx_0
    );

  
    -- Clock generation
    clk_0_process: process
    begin
        clk <= '0';
        wait for clk_0_period / 2;
        clk <= '1';
        wait for clk_0_period / 2;
       
    end process;  
    
  
    ldpc_core_clk_0_process: process
    begin
        ldpc_core_clk <= '0';
        wait for ldpc_core_clk_0_period / 2;
        ldpc_core_clk <= '1';
        wait for ldpc_core_clk_0_period / 2;
    end process;

    -- Reset generation
       reset <= '1', '0' after 30 ns ;



    -- Stimulus process
stim_proc: process
--variable i     : integer := 1 ;
variable temp           : integer := 0 ;
file     text_file      : text open read_mode is "/home/miglioranza/Transmitter/Transmitter.srcs/Input_stimuli.txt" ;
variable text_line      : line ;
variable  data          : std_logic_vector(31 downto 0);
begin
 -- Wait for resets to complete
 wait for 100 ns;       
-- Start sending the Preambles 
start_tx_0 <= '1';
control_unit_din_data_0 <= (others => '0') ;
control_unit_end_of_frame_0  <= '0';
wait for 50 ns ; --To be adjusted
--Start sending signal field 
control_unit_din_valid_0 <= '1';
mod_cod_schemes_0    <= "00000"; 
num_streams_0        <= "10000" ;
num_words_0          <= "0101101011001010" ;
phy_dest_address_0   <= "10000"  ;
phy_src_address_0    <= "00010" ;
ref_distance_0       <= "00100000" ;
scrambler_init_0     <= "1001001000101001000100101111101";  
wait for clk_0_period ;
control_unit_din_valid_0 <= '0';
wait for 20 ns ;

--Start sending the input stimuli from Pyhton script 
while not endfile (text_file)  loop 
readline(text_file , text_line) ;

--if text_line.all'length = 0 then 
--    next ;
--end if ;

read(text_line,temp) ;
data := std_logic_vector(to_unsigned(temp,32));
control_unit_din_data_0 <= data;
control_unit_din_valid_0 <= '1';
wait for clk_0_period ;    

end loop ;
control_unit_end_of_frame_0  <= '1';
control_unit_din_valid_0 <= '0';
control_unit_din_data_0  <= (others => '0') ;
--while temp < 300 loop
--if control_unit_dout_ready_0 = '1' then 

--control_unit_din_valid_0 <= '1';
--control_unit_din_data_0  <= std_logic_vector(to_unsigned(temp,control_unit_din_data_0'length)) ;
--temp := temp + 1 ;
--wait for clk_0_period ;

--    if temp = 300 then 
--        control_unit_end_of_frame_0  <= '1';
--     else 
--        control_unit_end_of_frame_0  <= '0';
--     end if ;
-- else    
--control_unit_din_valid_0 <= '0';
--wait until clk'event and clk = '1' ;
--end if ;
--end loop ;

--wait for 50 ns ;
--temp := 0 ;
--control_unit_end_of_frame_0  <= '0';
--mod_cod_schemes_0 <= "01001"; 
--while temp < 300 loop
--if control_unit_dout_ready_0 = '1' then 

--control_unit_din_valid_0 <= '1';
--control_unit_din_data_0  <= std_logic_vector(to_unsigned(temp,control_unit_din_data_0'length)) ;
--temp := temp + 1 ;
--wait for clk_0_period ;

--    if temp = 300 then 
--        control_unit_end_of_frame_0  <= '1';
--     else 
--        control_unit_end_of_frame_0  <= '0';
--     end if ;
-- else    
--control_unit_din_valid_0 <= '0';
--wait until clk'event and clk = '1' ;
--end if ;
--end loop ;

        -- End of stimulus
        wait ;
        report "End of simulation" ;
        finish ;
    end process;
end Behavioral;
--        control_enable_0 <= '1';  -- Enable the core
--        mod_type_0 <= "000";      -- BPSK modulation (assuming "000" represents BPSK)
--        sel_FEC_code_rate_0 <= "00";  -- Code rate 0.5 (assuming "00" represents 0.5)
--        code_rate2Interleaver <= "00" ;
--        seed_0 <= "1001001000101001000100101111101";  -- Initialize seed (if needed)
--        data_in_ready_0 <= '1' ;
--        -- Generate first 100 values with code rate 0.5 and BPSK modulation
--        S_AXIS_0_tvalid <= '1';
--        S_AXIS_0_tdata <= std_logic_vector(to_unsigned(i, 32));
--        while i <= 100 loop
          
--            if S_AXIS_0_tready = '1' then
--                 -- Assert valid signal 
----            S_AXIS_0_tvalid <= '1';  -- Assert valid signal
--            i := i + 1 ;
--            S_AXIS_0_tdata <= std_logic_vector(to_unsigned(i, 32));  -- Input data (32-bit counter)
--            wait for clk_0_period ;
            
--            if i = 100 then
--                S_AXIS_0_tlast <= '1';  -- Assert tlast for the last data word
--            else
--                S_AXIS_0_tlast <= '0';
--            end if;
--            else 
----             S_AXIS_0_tvalid <= '0';
--             wait until rising_edge(clk_0);
--             -- Wait for 2 clock cycles between data
--            end if ;
--        end loop;
--         S_AXIS_0_tvalid <= '0';
----         S_AXIS_0_tlast <= '0';

--        -- Wait for a short period before changing parameters
--        -- Change to QPSK modulation and code rate 2/3
--        sel_FEC_code_rate_0 <= "01";  -- Code rate 2/3 (assuming "01" represents 3/4)
--        wait until core_finish_0 = '1' ;
--         S_AXIS_0_tlast <= '0';
--        wait until axis_data_counter = "0";
--        code_rate2Interleaver <= "01" ;
--        mod_type_0 <= "001";      -- QPSK modulation (assuming "001" represents QPSK)
--        wait for clk_0_period ;

----        wait for 200 ns;
--        -- Generate next 100 values with code rate 3/4 and QPSK modulation
--        while i >= 101 and i< 300 loop
--            S_AXIS_0_tvalid <= '1';
--            if S_AXIS_0_tready = '1' then
--                 -- Assert valid signal 
----            S_AXIS_0_tvalid <= '1';  -- Assert valid signal
--            S_AXIS_0_tdata <= std_logic_vector(to_unsigned(i, 32));  -- Input data (32-bit counter)
--            wait for clk_0_period ;
--            i := i + 1 ;
--            if i = 300 then
--                S_AXIS_0_tlast <= '1';  -- Assert tlast for the last data word
--            else
--                S_AXIS_0_tlast <= '0';
--            end if;
--            else 
----             S_AXIS_0_tvalid <= '0';
--             wait until rising_edge(clk_0);
--             -- Wait for 2 clock cycles between data
--            end if ;
--        end loop;
--        S_AXIS_0_tvalid <= '0';
----        S_AXIS_0_tlast <= '0';


--        -- Wait for a short period before changing parameters
--        sel_FEC_code_rate_0 <= "10";  -- Code rate 3/4 (assuming "01" represents 3/4)
--        wait until core_finish_0 = '1' ;
--        S_AXIS_0_tlast <= '0';
--        wait until axis_data_counter = "0";
--        code_rate2Interleaver <= "10" ;
--        mod_type_0 <= "101";      -- 16-QAM  modulation (assuming "010" represents QPSK)
----        wait for 100 ns ;
--        wait for clk_0_period ;
--        -- Change to QPSK modulation and code rate 3/4
--        -- Generate next 100 values with code rate 3/4 and QPSK modulation
--               while i >= 300 and i< 450 loop
--            S_AXIS_0_tvalid <= '1';
--            if S_AXIS_0_tready = '1' then
--                 -- Assert valid signal 
----            S_AXIS_0_tvalid <= '1';  -- Assert valid signal
--            S_AXIS_0_tdata <= std_logic_vector(to_unsigned(i, 32));  -- Input data (32-bit counter)
--            wait for clk_0_period ;
--            i := i + 1 ;
--            if i = 450 then
--                S_AXIS_0_tlast <= '1';  -- Assert tlast for the last data word
--            else
--                S_AXIS_0_tlast <= '0';
--            end if;
--            else 
----             S_AXIS_0_tvalid <= '0';
--             wait until rising_edge(clk_0);
--             -- Wait for 2 clock cycles between data
--            end if ;
--        end loop;
-- S_AXIS_0_tvalid <= '0';
--    wait until core_finish_0 = '1' ;
--    wait until axis_data_counter = "0";
--wait until m_axis_data_tvalid_0 = '0';

--        -- End of stimulus
--        wait ;
--        report "End of simulation" ;
--        finish ;
--    end process;
--end Behavioral;