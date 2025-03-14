----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/13/2025 12:21:16 PM
-- Design Name: 
-- Module Name: Interleaver - Behavioral
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




-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


--end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity block_interleaver is
    generic (
        DATA_WIDTH  : integer := 32;  -- Codeword size (fixed at 32 bits)
        NUM_ROWS    : integer := 3;  -- Number of rows 
        NUM_COLS    : integer := 7   -- Number of columns (configurable)
  --Possible sizes of the block R x C (21, 41, or 61)
    );
    port (
        clk             : in  std_logic;
        rst             : in  std_logic;
        -- Input interface
        data_in         : in  signed(DATA_WIDTH-1 downto 0);
        data_in_ready   : in  std_logic;
        write_en        : in  std_logic;
        code_rate       : in  std_logic_vector(1 downto 0) := (others => '0');
        -- Output interface
        data_out        : out signed(DATA_WIDTH-1 downto 0);
        data_out_ready  : out std_logic;
        read_valid      : out std_logic
    );
end block_interleaver;

architecture Behavioral of block_interleaver is
    type mem_array is array (0 to 9 * NUM_COLS - 1) of signed(DATA_WIDTH-1 downto 0);
    signal memory : mem_array := (others => (others => '0'));

    -- Address counters
    signal write_addr : unsigned(11 downto 0) := (others => '0'); -- Up to 61*32 = 1952 locations
    signal read_addr  : unsigned(11 downto 0) := (others => '0');

    -- State machine
    type state_type is (IDLE, WRITE, READ);
    signal state : state_type := IDLE;

    -- Control signals
    signal write_done : std_logic := '0';
    signal read_done  : std_logic := '0';
    signal row_cnt    : integer range 0 to 9 := 0;
    signal col_cnt    : integer range 0 to 9 := 0;
    signal sel_code   : integer range 0 to 3 := 0 ;
begin
  
  process(clk,rst) 
  begin 
      case code_rate is  
        when "00" => 
          sel_code <= 1 ;
        when "01" => 
          sel_code <= 2 ;
        when "10" => 
          sel_code <= 3 ;
        when "11" => 
          sel_code <= 3 ; 
        when others =>
          sel_code <= 1 ;
  end case ; 
  
  end process ;
  
--  
    -- Main process: State machine and memory operations
    process(clk, rst)
    begin
        if rst = '1' then
            -- Reset state
            state <= IDLE;
            write_addr <= (others => '0');
            read_addr <= (others => '0');
            write_done <= '0';
            read_done <= '0';
            row_cnt <= 0;
            col_cnt <= 0;
            read_valid <= '0';
            data_out <= (others => '0');
            data_out_ready <= '0' ;
        elsif rising_edge(clk) then
       
            case state is
                when IDLE =>
                    read_valid <= '0';
                    if data_in_ready = '1'then 
                         data_out_ready <= '1';
                         state <= WRITE;
                    else 
                         data_out_ready <= '0';
--                    if write_en = '1' then
--                        state <= WRITE;
                    end if;

                when WRITE =>
                    if write_en = '1' then
                        -- Write row-wise
                         read_valid <= '0';
                        memory(to_integer(write_addr)) <= data_in;
                        if write_addr = (NUM_ROWS * sel_code) * NUM_COLS - sel_code then
                            write_addr <= (others => '0');
                            write_done <= '1';
                            state <= READ;
                            data_out_ready <= '0';
                        else
                            write_addr <= write_addr + 1;
                        end if;
                     
                    end if;

                when READ =>
                    -- Read column-wise
                    read_valid <= '1';
                    data_out <= memory(to_integer(read_addr));
                    -- Column-major addressing: addr = col + row * NUM_COLS
                     if col_cnt = NUM_COLS-sel_code and row_cnt = ( NUM_ROWS * sel_code )-1 then
                        read_addr <= (others => '0');
                        row_cnt <= 0;
                        col_cnt <= 0;
                        read_done <= '1';
                            if write_en = '1' then 
                                state <= WRITE ;
                                data_out_ready <= '1';
--                                read_valid <= '0';
                            else                        
                                state <= IDLE  ; 
                            end if ;                          
                    elsif row_cnt = (NUM_ROWS * sel_code )-1 then
                        row_cnt <= 0;
                        col_cnt <= col_cnt + 1;
                        read_addr <= to_unsigned(col_cnt + 1, 12); -- Next row, first column
                    else
                      -- Jump to next column
                          row_cnt  <= row_cnt + 1 ;
                          read_addr <= to_unsigned(col_cnt + ( NUM_COLS * (row_cnt + 1) ),12) ;
                    end if;

                when others =>
                    state <= IDLE;
            end case;

            -- Clear done flags when leaving states
            if state /= WRITE then
                write_done <= '0';
            end if;
            if state /= READ then
                read_done <= '0';
            end if;
                
        end if ;   
    end process;

end Behavioral;