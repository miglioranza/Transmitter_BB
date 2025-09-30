-- Company: IHP
-- Engineer: Nicola Miglioranza
-- 
-- Create Date:
-- Design Name: 
-- Module Name: Pipelined_Polyphase_Filter - RTL
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Polyphase_filter is
    Generic(
        DATA_WIDTH          : integer := 16;    
        CONVERSION_FACTOR   : integer := 4; --Upsampling factor
        FILTER_TAPS         : integer := 16; --Number of coefficients 
        DECIMATION_FILTER   : boolean := false  
    );
    Port (
        clk             : in std_logic;
        reset           : in std_logic;
        FIFO_reset      : in std_logic;
        input_I         : in std_logic_vector(DATA_WIDTH-1 downto 0);
        input_Q         : in std_logic_vector(DATA_WIDTH-1 downto 0);
--        data_in_ready   : in std_logic ;
        data_in_valid   : in std_logic ;
--        data_in_last    : in std_logic ;
--        data_out_ready  : out std_logic ;
        data_out_valid  : out std_logic ;       
        data_out_I      : out std_logic_vector(15 downto 0)  ;
        data_out_Q      : out std_logic_vector(15 downto 0)       
--        data_out_last   : out std_logic 
    );
end Polyphase_filter;

architecture RTL of Polyphase_filter is

COMPONENT axis_data_fifo_poly_filter
  PORT (
    s_axis_aresetn : IN STD_LOGIC;
    s_axis_aclk    : IN STD_LOGIC;
    s_axis_tvalid  : IN STD_LOGIC;
    s_axis_tready  : OUT STD_LOGIC;
    s_axis_tdata   : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_tvalid  : OUT STD_LOGIC;
    m_axis_tready  : IN STD_LOGIC;
    almost_empty : OUT STD_LOGIC;
    almost_full : OUT STD_LOGIC;
    m_axis_tdata   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

type mul_reg_array is array (0 to FILTER_TAPS-1) of signed(35 downto 0);
signal mul_reg_I ,mul_reg_Q : mul_reg_array :=(others=>(others=>'0'));

signal tmp : integer := 0 ;
--signal fifo_valid   : std_logic := '0';
--signal fifo_ready   : std_logic := '0';
--signal fifo_data_I  : std_logic_vector(DATA_WIDTH-1 downto 0) ;
--signal fifo_data_Q  : std_logic_vector(DATA_WIDTH-1 downto 0) ;
--signal filter_ready : std_logic := '0';

type reg_array is array (0 to CONVERSION_FACTOR-1) of signed(15 downto 0);
signal coeff_reg  : reg_array :=(others=>(others=>'0'));

signal data_input_I,data_input_Q  : signed(Data_Width-1 downto 0) := (others=>'0');
signal data_output_I,data_output_Q: signed(Data_Width-1 downto 0) := (others=>'0');
signal valid_input,valid_output   : std_logic := '0';
signal control_I,control_I2       : mul_reg_array :=(others=>(others=>'0'));
signal control_acc_I              :mul_reg_array :=(others=>(others=>'0'));
-- Filter coeffs
type coefficients is array(15 downto 0) of signed(15 downto 0);
constant coeff : coefficients := (
    x"6AAA", x"5555", x"2666", x"2000", x"1999", x"1333", x"0CCD", x"4000",
    x"4000", x"0CCD", x"1333", x"1999", x"2000", x"2666", x"5555", x"6AAA"
 );
--FIFO signals declaration  

signal fifo2filter_valid_I : std_logic;
signal fifo2filter_valid_Q : std_logic;
signal filter2fifo_ready   : std_logic;
signal fifo2filter_data_I  : std_logic_vector(DATA_WIDTH-1 downto 0);  
signal fifo2filter_data_Q  : std_logic_vector(DATA_WIDTH-1 downto 0);  
signal phase_counter              : integer range 0 to 3:= 0;
begin 
axis_data_fifo_I :  axis_data_fifo_poly_filter
  port map (
    s_axis_aresetn => FIFO_reset,
    s_axis_aclk    => clk,
    s_axis_tvalid  => data_in_valid,
    s_axis_tready  => open,
    s_axis_tdata   => std_logic_vector(input_I),
    m_axis_tvalid  => fifo2filter_valid_I,
    m_axis_tready  => filter2fifo_ready,
    m_axis_tdata   => fifo2filter_data_I,
    almost_empty => open,
    almost_full => open
  );
  
axis_data_fifo_Q :  axis_data_fifo_poly_filter
  port map (
    s_axis_aresetn => FIFO_reset,
    s_axis_aclk    => clk,
    s_axis_tvalid  => data_in_valid,
    s_axis_tready  => open,
    s_axis_tdata   => std_logic_vector(input_Q),
    m_axis_tvalid  => fifo2filter_valid_Q,
    m_axis_tready  => filter2fifo_ready,
    m_axis_tdata   => fifo2filter_data_Q,
    almost_empty => open,
    almost_full => open
  );

  
--------------------------------------------------------------------------------
-- Filtering Process
--------------------------------------------------------------------------------



process (clk,reset) 
--    variable phase_counter   : integer range 0 to CONVERSION_FACTOR := 0; 
    variable filter_counter  : integer := 0 ;
    variable data_I,data_Q   : signed(15 downto 0) := (others => '0') ;
    variable mul_I, mul_Q    : mul_reg_array :=(others=>(others=>'0'));  
    variable tmp_I,tmp_Q     : std_logic_vector(15 downto 0) := (others => '0') ;
    variable tail_tmp        : integer := 0 ;
    variable tmp             : integer := 0 ;
begin    
    if reset = '1'then
        mul_reg_I         <= (others => (others=> '0'));  
        mul_reg_Q         <= (others => (others=> '0'));  
        coeff_reg       <= (others => (others=> '0'));        
        data_out_valid  <= '0';
        filter_counter  :=  0 ;  
        phase_counter   <=  0 ;
        tmp := 0 ;
    elsif rising_edge (clk) then
        
   filter2fifo_ready  <= '1' ;       
      
    if fifo2filter_valid_I = '1' and fifo2filter_valid_Q = '1' then 
           filter2fifo_ready  <= '0' ;   
           tail_tmp := 0 ;    
                       -- Filter loops             

                       
                for k in 0 to CONVERSION_FACTOR-1 loop                  -- Phase loop
                    for i in 0 to ((FILTER_TAPS/CONVERSION_FACTOR) -1 ) loop   
                    
                        -- Coefficients
                        coeff_reg(i) <= coeff( i*CONVERSION_FACTOR + phase_counter );
 --                    N
 -- Filtering :y[n] = ∑ x[i]*h[n - L*i]
 --                   i 

                         if i = (FILTER_TAPS/CONVERSION_FACTOR) -1 then        
                            mul_reg_I( i*CONVERSION_FACTOR + CONVERSION_FACTOR-1 ) <= resize( signed(fifo2filter_data_I) * coeff_reg(i),36);
                            mul_reg_Q(i*CONVERSION_FACTOR + CONVERSION_FACTOR-1 )  <= resize(signed(fifo2filter_data_Q) * coeff_reg(i),36)  ;
                        else
                             mul_reg_I( i*CONVERSION_FACTOR + CONVERSION_FACTOR-1 ) <=  signed(fifo2filter_data_I) * coeff_reg(i) + mul_reg_I( (i+1)*CONVERSION_FACTOR );
                             mul_reg_Q( i*CONVERSION_FACTOR + CONVERSION_FACTOR-1 ) <= signed(fifo2filter_data_Q) *  coeff_reg(i) + mul_reg_Q( (i+1)*CONVERSION_FACTOR );

                        end if;   
                        -- Pipeline shifting                    
                            if k < CONVERSION_FACTOR-1 then
                                mul_reg_I( i*CONVERSION_FACTOR + k ) <= mul_reg_I( i*CONVERSION_FACTOR + k + 1);
                                mul_reg_Q( i*CONVERSION_FACTOR + k ) <= mul_reg_Q( i*CONVERSION_FACTOR + k + 1);
                        end if; 
           end loop;          
         end loop;
           tmp_I := std_logic_vector(mul_reg_I(0)(DATA_WIDTH -1 downto 0));
           tmp_Q := std_logic_vector(mul_reg_Q(0)(DATA_WIDTH -1 downto 0));
          data_out_I <= tmp_I ;
          data_out_Q <= tmp_Q ;
          data_out_valid <= '1' ;       
          if phase_counter = CONVERSION_FACTOR -1 then 
             filter2fifo_ready  <= '1' ; 
             phase_counter <= 0 ;
          else                   
           phase_counter <= phase_counter + 1; 
          end if ;  
          
    else 
           if phase_counter > 0 and tail_tmp  <  FILTER_TAPS  then 
              data_out_I <=  std_logic_vector(mul_reg_I(tail_tmp)(DATA_WIDTH -1 downto 0));
              data_out_Q <=  std_logic_vector(mul_reg_Q(tail_tmp)(DATA_WIDTH -1 downto 0));
              data_out_valid <= '1' ;
              tail_tmp := tail_tmp + 1 ;
           else    
              data_out_I <= (others => '0');
              data_out_Q <= (others => '0');         
              data_out_valid <= '0' ;
           end if ;   

end if   ;
end if ;                                
end process;

end RTL;

  
