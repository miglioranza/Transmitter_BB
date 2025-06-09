--
-- Testbench for mapper



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.env.finish;


entity mapper_tb is

end mapper_tb;


architecture behavior of mapper_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component mapper
    Port (
     -- Clock, reset
          clk               : in  std_logic                       := '0';   
          reset            : in  std_logic                       := '0';   -- active on low level
                
          -- Input ports     
          mod_type          : in  std_logic_vector(2 downto 0)    := (others => '0');   -- selection of modulation scheme (BPSK, QPSK, 16APSK, 32APSK, 64APSK, 16QAM, 32QAM, 64QAM)
          data_in           : in  std_logic_vector(5 downto 0)    := (others => '0');   -- bits are used from LSB to MSB for increasing mod_type (all 6 bits for 64QAM and 64APSK)
          data_in_valid     : in  std_logic                       := '0';               -- indicates that there is input data to be processed (output from previous stage or controller)
          data_in_ready     : in  std_logic                       := '0';    
          end_of_frame      : in  std_logic                       := '0';
          signal_field_en   : in  std_logic                       := '0';   
          pilot_insertion   : in  std_logic                       := '0';  --input port that notify when the pilot insertion has been completed or not 
          -- Output ports      
          i_out             : out std_logic_vector(11 downto 0)   := (others => '0'); -- i output (input for DAC)
          q_out             : out std_logic_vector(11 downto 0)   := (others => '0'); -- q output (input for DAC)  
          data_out_last     : out std_logic                       := '0'  ; 
          last_frame        : out std_logic                       := '0'  ; 
          data_out_ready    : out std_logic                       := '0'  ;
          data_out_valid    : out std_logic                      := '0'  --indicates that processing is finished (data is available at the output) 
    );
    end component;

    -- Signal declarations
    signal clk            : std_logic := '0';
    signal reset         : std_logic := '0';
	signal mode_type      : std_logic_vector(2 downto 0);
    signal data_in        : std_logic_vector(5 downto 0):= (others => '0');
	signal data_in_valid  : std_logic := '0';
    signal I_out          : std_logic_vector(11 downto 0);
    signal Q_out          : std_logic_vector(11 downto 0);
	signal data_out_valid : std_logic;
    signal data_in_ready  : std_logic;
    signal data_out_ready  : std_logic;
    signal signal_field_en : std_logic := '0';
    signal end_of_frame   : std_logic := '0';
    signal last_frame     : std_logic := '0';
    signal data_out_last  : std_logic := '0';
    signal pilot_insertion : std_logic := '0';
    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: mapper PORT MAP (
          clk               => clk,
          reset             => reset,
		  mod_type          => mode_type,
          data_in           => data_in,
		  data_in_valid     => data_in_valid,
		  data_in_ready     => data_in_ready,
          i_out             => I_out,
          q_out             => Q_out,
          data_out_ready    => data_out_ready,
          signal_field_en   => signal_field_en,
          end_of_frame      => end_of_frame,
          last_frame        => last_frame,
		  data_out_last     => data_out_last,
		  pilot_insertion   => pilot_insertion,
		  data_out_valid    => data_out_valid
        );

    -- Clock process definition
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin		
	
        -- hold reset state for 20 ns
        reset <= '1';
        wait for 20 ns;	
        reset <= '0';
		
		-- selection of modulation type
		report "Start of simulation" ;
        mode_type <= "001"; --QPSK
        data_in_ready <= '1' ;
        wait until data_out_ready = '1' ;
        wait for clk_period;	
        data_in_valid <= '1';


        -- Input data

        data_in <= "000000"; wait for 10 ns; -- LSB = 0
        data_in <= "000001"; wait for 10 ns; -- LSB = 1
        data_in <= "000000"; wait for 10 ns; -- LSB = 0
        data_in <= "000001"; wait for 10 ns; -- LSB = 1
        data_in <= "000000"; wait for 10 ns; -- LSB = 0
        data_in <= "000001"; wait for 10 ns; -- LSB = 1
        data_in <= "000000"; wait for 10 ns; -- LSB = 0
        data_in <= "000001"; wait for 10 ns; -- LSB = 1
        data_in <= "000000"; wait for 10 ns; -- LSB = 0
        data_in <= "000001"; wait for 10 ns; -- LSB = 1
        data_in <= "000000"; wait for 10 ns; -- LSB = 0
        data_in <= "000001"; wait for 10 ns; -- LSB = 1
        data_in <= "000000"; wait for 10 ns; -- LSB = 0
        data_in <= "000001"; wait for 10 ns; -- LSB = 1
        data_in <= "000000"; wait for 10 ns; -- LSB = 0
--         data_in_ready <= '0' ;
        data_in <= "000000"; wait for 10 ns;
        data_in <= "000001"; wait for 10 ns;
--         data_in_valid <= '0';
         
-- !       wait for 50 ns;
--!        data_in_ready <= '1' ;
--!        wait until data_out_ready = '1' ;
--!      wait for 10 ns ;
--!        data_in_valid <= '1';
          
        data_in <= "001000"; wait for 10 ns;       
        data_in <= "001001"; wait for 10 ns;
        data_in <= "001010"; wait for 10 ns;
        data_in <= "001011"; wait for 10 ns;
        data_in <= "001100"; wait for 10 ns;
        data_in <= "001101"; wait for 10 ns;
        data_in <= "001110"; wait for 10 ns;
        data_in <= "001111"; wait for 10 ns;
		data_in <= "010000"; wait for 10 ns;       
        data_in <= "010001"; wait for 10 ns;
        data_in <= "010010"; wait for 10 ns;
        data_in <= "010011"; wait for 10 ns;
        
--        mode_type <= "111";
        
        data_in <= "000100"; wait for 10 ns;
        data_in <= "011110"; wait for 10 ns;
        data_in <= "000000"; wait for 10 ns;
        data_in <= "001011"; wait for 10 ns;
        data_in <= "011110"; wait for 10 ns;
        data_in <= "001001"; wait for 10 ns;
        data_in <= "010111"; wait for 10 ns;
        data_in <= "001101"; wait for 10 ns;
        data_in <= "010100"; wait for 10 ns;
        data_in <= "000000"; wait for 10 ns;
        data_in <= "000100"; wait for 10 ns;
        data_in <= "010110"; wait for 10 ns;
        data_in <= "000100"; wait for 10 ns;
        data_in <= "011001"; wait for 10 ns;
        data_in <= "001000"; wait for 10 ns;
        data_in <= "010010"; wait for 10 ns;
        data_in <= "001011"; wait for 10 ns;
        data_in <= "000001"; wait for 10 ns;
        data_in <= "000111"; wait for 10 ns;
        data_in <= "001111"; wait for 10 ns;
        
--         mode_type <= "101";

        data_in <= "000000"; wait for 10 ns;
        data_in <= "000001"; wait for 10 ns;
        data_in <= "000010"; wait for 10 ns;
        data_in <= "000011"; wait for 10 ns;
        data_in <= "000100"; wait for 10 ns;
        data_in <= "000101"; wait for 10 ns;
        data_in <= "000110"; wait for 10 ns;
        data_in <= "000111"; wait for 10 ns;
        data_in <= "001000"; wait for 10 ns;
        data_in <= "001001"; wait for 10 ns;
        data_in <= "001010"; wait for 10 ns;
        data_in <= "001011"; wait for 10 ns;
        data_in <= "001100"; wait for 10 ns;
        data_in <= "001101"; wait for 10 ns;
        data_in <= "001110"; wait for 10 ns;
        data_in <= "001111"; wait for 10 ns;
		data_in <= "010000"; wait for 10 ns;
        data_in <= "010001"; wait for 10 ns;
        data_in <= "010010"; wait for 10 ns;
        data_in <= "010011"; wait for 10 ns;
        
        wait for clk_period * 5 ;
        data_in_valid <= '0';
        report "End of Simulation" ;
        wait ;
--        finish ;
        
        wait;
    end process;

end behavior;
