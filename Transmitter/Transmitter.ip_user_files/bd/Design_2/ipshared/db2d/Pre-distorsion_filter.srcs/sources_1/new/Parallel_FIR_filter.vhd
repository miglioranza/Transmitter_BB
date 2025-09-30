----------------------------------------------------------------------------------
-- Company: IHP
-- Engineer: Nicola Miglioranza
-- 
-- Create Date: 06/10/2024 02:34:44 PM
-- Design Name: 
-- Module Name: Parallel_FIR_filter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.math_real.all;


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Parallel_FIR_filter is
 Generic (
        FILTER_TAPS  : integer := 16; --Number of taps depending on the degree of the coefficients 
        INPUT_WIDTH  : integer := 12; 
        COEFF_WIDTH  : integer range 8 to 32 := 16 --bitwidth of the coefficients 
--        MEMORY_DEPTH : integer := 5 ;
--        ORDER        : integer := 3  -- Nonlinear polynomial order (odd only: 1,3,5...)
    );
    Port ( 
           clk              : in STD_LOGIC;
           reset            : in STD_LOGIC;
           I_input          : in STD_LOGIC_VECTOR (INPUT_WIDTH-1 downto 0);  --valid/ready AXI protocol 
           Q_input          : in STD_LOGIC_VECTOR (INPUT_WIDTH-1 downto 0);
--           data_in_ready    : in std_logic := '0' ; --Multi-rate filter ready to receive the input data stream 
           data_in_valid    : in std_logic := '0';
           data_out_valid   : out std_logic := '0' ;
           Q_output         : out STD_LOGIC_VECTOR (15 downto 0)  ;
           I_output         : out STD_LOGIC_VECTOR (15 downto 0) 
--           data_out_ready   : out STD_LOGIC := '0' --DPD filter ready to receive the data stream from the Mapper 
           
           );
end Parallel_FIR_filter;

architecture Behavioral of Parallel_FIR_filter is
 
type shift_register is array(0 to FILTER_TAPS -1) of signed(11 downto 0) ; 
signal I_shift_reg : shift_register := (others => (others => '0')); 
signal Q_shift_reg : shift_register := (others => (others => '0')); 

signal acc_reg_I  : signed(31 downto 0 ):= (others=>'0'); --accumulation register for storing sums/products results 
signal acc_reg_Q  : signed(31 downto 0 ):= (others=>'0'); --accumulation register for storing sums/products results 
type mult_registers is array(0 to FILTER_TAPS-1) of signed(27 downto 0);
signal mul_reg_I, mul_reg_Q: mult_registers := (others=>(others=>'0'));          


signal output_valid : std_logic := '0';
type coefficients is array(15 downto 0) of signed(15 downto 0);
signal coeff : coefficients := (
    x"6AAA", x"5555", x"2666", x"2000", x"1999", x"1333", x"0CCD", x"4000",
    x"4000", x"0CCD", x"1333", x"1999", x"2000", x"2666", x"5555", x"6AAA"

);

signal shift_valid : std_logic := '0';
signal mult_valid : std_logic := '0';
signal acc_valid : std_logic := '0';
signal I_sum_reg, Q_sum_reg : signed(31  downto 0 ):= (others => '0'); 
signal pipe_data_I : signed(15 downto 0) := ( others=>'0');          
signal pipe_data_Q : signed(15 downto 0) := ( others=>'0'); 
begin

shift_stage :process (clk, reset ) 
begin 
if reset = '1' then 
    I_shift_reg <= (others => (others => '0')); 
    Q_shift_reg <= (others => (others => '0')); 
elsif rising_edge (clk) then 

    if data_in_valid = '1' then 
       for j in FILTER_TAPS-1 downto 1 loop                              
             I_shift_reg(j) <=  I_shift_reg(j-1); --shift every input value for N=FILTER_TAPS-1 times 
             Q_shift_reg(j) <=  Q_shift_reg(j-1); --shift every input value for N=FILTER_TAPS-1 times 
       end loop;  
          I_shift_reg(0) <= signed(I_input) ;  
          Q_shift_reg(0) <= signed(Q_input) ; 
          shift_valid <= '1';
    else 
        I_shift_reg <= (others => (others => '0')); 
        Q_shift_reg <= (others => (others => '0')) ;              
        shift_valid <= '0';
    
        
    end if ;    
end if ;
end process ;

mult_stage : process (clk ,reset ) 
begin 
if reset =  '1' then 

mul_reg_I <= (others => (others => '0')) ;
mul_reg_Q <= (others => (others => '0')) ;

elsif rising_edge (clk) then 

    if shift_valid = '1' then 
        for i in 0 to FILTER_TAPS - 1 loop 
            mul_reg_I(i) <= I_shift_reg(i) * coeff(i) ;
            mul_reg_Q(i) <= Q_shift_reg(i) * coeff(i) ;
        end loop ;
        mult_valid <= '1' ;
    else 
        mul_reg_I <= (others => (others => '0')) ;
        mul_reg_Q <= (others => (others => '0')) ;
        mult_valid <= '0' ;
        
    end if ;
end if ;

end process ;

acc_stage : process (clk, reset) 
variable temp_acc_I : signed(31 downto 0) ;
variable temp_acc_Q : signed(31 downto 0) ;
begin

if reset = '1' then 
    acc_reg_I <= (others => '0') ;
    acc_reg_Q <= (others => '0') ;
    temp_acc_I := (others => '0') ;
    temp_acc_Q := (others => '0') ;

elsif rising_edge (clk) then 

    if mult_valid = '1' then 
    --Reset accumulation 
        temp_acc_I := (others => '0') ;
        temp_acc_Q := (others => '0') ;
    
        for k in 0 to FILTER_TAPS -1 loop
            temp_acc_I := temp_acc_I + mul_reg_I(k) ;
            temp_acc_Q := temp_acc_Q + mul_reg_Q(k) ;
        end loop ;
     
        I_output <= std_logic_vector(temp_acc_I(15 downto 0)) ; 
        Q_output <= std_logic_vector(temp_acc_Q(15 downto 0)) ; 
        data_out_valid <= '1';
    
    else 
        data_out_valid <= '0';
        I_output <= (others => '0') ;
        Q_output <= (others => '0') ;
    end if ;
end if ;
end process ;

end Behavioral;