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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Parallel_FIR_filter_TB is
 end Parallel_FIR_filter_TB;

architecture Behavioral of Parallel_FIR_filter_TB is

	signal clk				:std_logic :='0' ; 
	signal reset			: std_logic :='0';	
	signal data_i 		    : std_logic_vector(15 downto 0) := (others => '0');
    signal data_o		    :  std_logic_vector(15 downto 0);
    signal data_o_valid     : std_logic ; 
 	signal data_ready       : std_logic := '0';
		--Clock period 
	constant clk_period : time := 5 ns ;
	
	--UUT: Unit Under Test
	component Parallel_FIR_filter 
	

 Generic (
        FILTER_TAPS  : integer := 60;
        INPUT_WIDTH  : integer := 16; 
        COEFF_WIDTH  : integer range 8 to 32 := 16
    );
    Port ( 
           clk    : in STD_LOGIC;
           reset  : in STD_LOGIC;
           data_i : in STD_LOGIC_VECTOR (INPUT_WIDTH-1 downto 0);
           data_o_valid : out std_logic ;
           data_ready : in std_logic ;
           data_o : out STD_LOGIC_VECTOR (15 downto 0)
           );
 end component ;	

 
begin

     uut: Parallel_FIR_filter 
     port map( 
     clk => clk ,
     reset => reset ,
     data_i => data_i,
     data_o_valid => data_o_valid,
     data_ready => data_ready,
     data_o => data_o
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
        data_ready <= '1' ;     
        data_i <= x"FABC" ;
        wait for clk_period ;
        data_ready <= '0' ;     

        wait for clk_period  ;
        data_ready <= '1' ; 
        data_i <= x"CBCB" ; 
        wait for clk_period ;
        data_ready <= '0' ;    
        wait for clk_period  ;
        
        data_ready <= '1' ; 
        data_i <= x"FFCC" ; 
        wait for clk_period ;
        data_ready <= '0' ; 
        wait for clk_period  ;
        
        data_ready <= '1' ; 
        data_i <= x"BCBC" ; 
        wait for clk_period ;
        data_ready <= '0' ; 
        wait for clk_period  ;
        
        data_ready <= '1' ; 
        data_i <= x"DDDD" ; 
        wait for clk_period *2 ;
        data_ready <= '0' ; 
        
        wait for clk_period *10 ;
        
        -- End simulation

	    assert false report "End of simulation" severity failure;

        end process ;
       

end Behavioral;



	

 
 
