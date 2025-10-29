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
use ieee.std_logic_unsigned.all;

entity block_interleaver is
    generic (
        DATA_WIDTH  : integer := 32;  -- Codeword size (fixed at 32 bits)
        NUM_COLS    : integer := 7   -- Number of columns (configurable)
  --Possible sizes of the block R x C ( 41 or 61)
    );
    port (
        clk                 : in  std_logic;
        rst                 : in  std_logic;
        -- Input interface
        data_in             : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        data_in_ready       : in  std_logic;
        data_in_last        : in  std_logic ; --This port defines the last word of each block 
        end_of_frame        : in std_logic ;
        write_en            : in  std_logic;
        code_rate           : in  std_logic_vector(1 downto 0) := (others => '0');
        -- Output interface
        data_out            : out std_logic_vector(DATA_WIDTH-1 downto 0);
        data_out_ready      : out std_logic;
        last_frame          : out std_logic := '0';
        read_valid          : out std_logic
        
    );
end block_interleaver;

architecture Behavioral of block_interleaver is
    type mem_array is array (0 to 9 * NUM_COLS - 1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal memory : mem_array := (others => (others => '0'));
    signal busy : std_logic  := '0';
        -- Address counters
    signal read_addr     : integer    := 0 ;
    signal write_addr    : integer    := 0; -- Up to 61*32 = 1952 locations

    -- State machine
    type state_type is (IDLE, WRITE, READ);
    signal state : state_type := IDLE;

    -- Control signals
    signal row_cnt              : integer range 0 to 9 := 0;
    signal col_cnt              : integer range 0 to 9 := 0;
    signal sel_code             : integer range 0 to 3 := 0 ;
    signal current_code         : integer range 0 to 3 := 0 ;
--    signal index_address        :integer := 0 ;  
    signal reminder             : integer := 0 ;
    signal words_counter        : integer := 0 ;
    signal row_size             : integer := 0 ;
    signal row_index            : integer := 0 ;
begin 
  
  process(clk, rst) 

  begin 
 
      case code_rate is  
        when "00" => 
          sel_code <= 2 ;
        when "10" => 
          sel_code <= 3 ;
        when "11" => 
          sel_code <= 3 ; 
        when others =>
          sel_code <= 2 ;
  end case ; 
  end process ;
  
 
    adaptive_interleaver : process(clk, rst)
        variable temp  : integer := 0 ;

    begin
        if rst = '1' then
            state          <= IDLE;
            write_addr     <= 0 ;
            read_addr      <=  0 ;
            row_cnt        <= 0;
            col_cnt        <= 0;
            read_valid     <= '0';
            data_out       <= (others => '0');
            data_out_ready <= '0' ;
            last_frame     <= '0';
        elsif rising_edge(clk) then
       
            case state is
                when IDLE =>
                data_out_ready <= '1';       

                    if write_en = '1' then   
                         last_frame  <= '0'; 
                         read_valid     <= '0';
--                         current_code_rate <= code_rate ;                  
                         state <= WRITE;
                         memory(write_addr) <= data_in;
                         write_addr <= write_addr + 1;
                    end if;

                when WRITE =>
                   read_valid     <= '0';
                   data_out_ready <= '1';       
                    
                    if write_en = '1' then
                        -- Write row-wise
                        read_valid <= '0';
                        memory(write_addr) <= data_in;  
                        if data_in_last = '1' then 
                            row_size <=  (write_addr + 1) / NUM_COLS ;
                            reminder <=  (write_addr + 1)   rem NUM_COLS ;
                            write_addr <= 0 ;
                            state <= READ;
                            data_out_ready <= '0';
                        else
                            write_addr <= write_addr + 1;
                        end if;
                     
                    end if;

                when READ =>
                    -- Read column-wise
                      read_valid <= '1';
                      temp := NUM_COLS - reminder ; --How many values are missing for full filling the table e.g. 29/7 = 28 reminder 1 -> with 5 rows and 7 columns, the last 6 values are non valid 
                      data_out <= memory(read_addr);
                    if data_in_ready = '1' then 
                     --Last data 
                         if col_cnt = NUM_COLS - 1  and row_cnt = ( row_size - row_index )then
                            read_addr       <= 0 ;
                            row_cnt         <= 0;
                            col_cnt         <= 0;
                            data_out_ready  <= '1';                                           
                            row_index       <= 0 ;
                            if end_of_frame = '1' then 
                               state           <= IDLE  ; 
                            else   
                               state           <= WRITE  ; 
                            end if ;
                            last_frame      <= end_of_frame ;
                           
                        --Check if the current column is the one in which the last row has non valid value , so row_size is decreased by 1     
                        elsif col_cnt = NUM_COLS - temp and row_cnt = 0 then 
                            row_index <= row_index +1 ;
                            row_cnt   <= row_cnt + 1 ;
                            read_addr <= (col_cnt + NUM_COLS) ;
                        --the current column has tha last row with a valid data
                        elsif row_cnt = row_size - row_index  then 
                            row_cnt   <= 0;
                            col_cnt   <= col_cnt + 1;
                            read_addr <= col_cnt + 1; -- Next row, first column
                        else
                          -- Jump to next column
                              row_cnt  <= row_cnt + 1 ;
                              read_addr<= col_cnt + ( NUM_COLS * (row_cnt + 1) ) ;
                        end if;
                  end if ;                     
                when others =>
                    state <= IDLE;
            end case;
           
        end if ;   
    end process;
    
end Behavioral;