----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2024 01:55:23 PM
-- Design Name: 
-- Module Name: Polyphase_filter_tb - Behavioral
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
use std.env.finish ;
use std.textio.all;
use ieee.std_logic_textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Polyphase_filter_tb is
end Polyphase_filter_tb;

architecture Behavioral of Polyphase_filter_tb is

  
  --Clock period 
  constant clk_period : time := 5 ns ;
  --UUT: Unite UNder Test 
  component Polyphase_filter 

--    );
    Port (
        clk             : in std_logic;
        reset           : in std_logic;
        FIFO_reset      : in std_logic ;
        input_I         : in std_logic_vector(15 downto 0);
        input_Q         : in std_logic_vector(15 downto 0);
--        data_in_ready   : in std_logic ;
        data_in_valid   : in std_logic ;
--        data_in_last    : in std_logic ;
--        data_out_ready  : out std_logic ;
        data_out_valid  : out std_logic ;       
        data_out_I      : out std_logic_vector(15 downto 0) := (others => '0') ;
        data_out_Q      : out std_logic_vector(15 downto 0) := (others => '0')          
--        data_out_last   : out std_logic 
        
    
    );  
  
  end component ;      
         
  signal clk             : std_logic := '0' ;
  signal reset           : std_logic := '0' ;
  signal input_I         : std_logic_vector(15 downto 0):= (others => '0');
  signal input_Q         : std_logic_vector(15 downto 0):= (others => '0');
  signal FIFO_reset      : std_logic ;
  signal data_out_valid  : std_logic ;
  signal data_out_I      : std_logic_vector(15 downto 0) := (others => '0');
  signal data_out_Q      : std_logic_vector(15 downto 0) := (others => '0');      
  signal data_in_valid   : std_logic ;
  signal data_out_ready  : std_logic ;
--  signal data_in_last    : std_logic := '0' ;
--  signal data_out_last   : std_logic := '0' ;
  
begin
    
    --Clock generation and reset

    clk     <= not clk  after clk_period /2 ;
    reset   <= '1', '0' after 20 ns ;
     FIFO_reset <= '0' , '1' after 20 ns  ; 
uut:Polyphase_filter
port map( 
clk              => clk,
reset            => reset,
FIFO_reset       => FIFO_reset,
input_I          => input_I,
input_Q          => input_Q,
--data_in_ready    => data_in_ready,
data_out_valid   => data_out_valid,
data_out_I      => data_out_I,
data_out_Q      => data_out_Q,
--data_out_ready   => data_out_ready,
data_in_valid    => data_in_valid
--data_in_last     => data_in_last,
--data_out_last    => data_out_last
);

----------------------------------------------------
--Stimuli process 
----------------------------------------------------

input_process : process

variable tmp : integer   := 0;
file      text_file      : text open read_mode is  "/home/miglioranza/Polyphase_Filter_FI/Polyphase_Filter_FI.srcs/sim_1/new/input_vectors";
variable  text_line,out_line      : line ;
variable  data           : integer;
variable  read_ok        : boolean ;
variable cycle : integer := 0;

begin 
--     reset <= '1' ;
     data_in_valid <= '0';
     input_I  <= (others => '0') ;
     input_Q  <= (others => '0') ;
     tmp := 0;
    
     wait for 60 ns ;
--     reset <= '0';
--     FIFO_reset <= '1' ;

--     wait for 40 ns ;
     
     while not endfile(text_file) loop 
     readline(text_file ,text_line) ; 
     -- Skip empty lines 
     if text_line.all'length = 0 then 
        next ;
     end if ; 
     read(text_line,data);  
     input_I <= std_logic_vector(to_signed(data, 16));
     read(text_line,data );
     input_Q <= std_logic_vector(to_signed(data, 16));    
     data_in_valid <= '1';  

     wait for clk_period ;

 end loop ;
        
        data_in_valid <= '0';  
        
end process ;   
 output_checker : process   
 file      output_file             : text open read_mode is  "/home/miglioranza/Polyphase_Filter_FI/Polyphase_Filter_FI.srcs/sim_1/new/output_vectors";
 variable exp_I,exp_Q              : std_logic_vector(15 downto 0);
 variable  text_line,out_line      : line ;
 variable cycle                    : integer := 0;
 variable out_I,out_Q              : signed(15 downto 0) ; 
 variable dummy_char : character;
 
 begin 
while not endfile(output_file) loop
    wait for clk_period;  -- wait for next clock cycle
    
    if data_out_valid = '1' then
        -- Read next line from expected file
        readline(output_file, out_line);
        
        -- Skip empty or comment lines
        if out_line.all'length = 0 then
            next;
        end if;

        -- Parse expected values
        hread(out_line, exp_I);
        read(out_line, dummy_char);
        hread(out_line, exp_Q);

        -- Compare DUT output vs expected
        if  data_out_I /= exp_I or
            data_out_Q  /= exp_Q then
            report "Mismatch at cycle " & integer'image(cycle) &
       " DUT_I=0x" & to_hstring(to_bitvector(data_out_I)) &
       " EXP_I=0x" & to_hstring(to_bitvector(exp_I)) &
       " DUT_Q=0x" & to_hstring(to_bitvector(data_out_Q)) &
       " EXP_Q=0x" & to_hstring(to_bitvector(exp_Q))
       severity ERROR;
        end if;
    end if;
end loop;
--        wait until data_out_valid = '0';
        wait for clk_period ;
        report "End of simulation" ;
        finish ;

end process ;


end Behavioral;
