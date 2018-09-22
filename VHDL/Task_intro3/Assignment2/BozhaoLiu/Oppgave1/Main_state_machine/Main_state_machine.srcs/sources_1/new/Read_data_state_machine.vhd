----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/18/2018 08:08:51 PM
-- Design Name: 
-- Module Name: Read_data_state_machine - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Read_data_state_machine is
    Generic(Baud_width: integer);
    Port ( data_in : in STD_LOGIC;
           clk : in STD_LOGIC;
           read_control : in STD_LOGIC;
           LF : out STD_LOGIC;
           Read_cmd : out STD_LOGIC;
           Data_out : out STD_LOGIC_VECTOR (7 downto 0));
end Read_data_state_machine;

architecture Behavioral of Read_data_state_machine is
    type state is
                (
                idle_state,
                start_state,
                Reading_state,
                Pause_state
                );
    signal current_state, next_state: state := idle_state;
    signal FF_read_control: std_logic_vector (1 downto 0);
    signal Baud_counter, Baud_counter_next: integer := 0;
    signal bit_counter, bit_counter_next: integer := 0;
    signal go_Baud_counter, go_bit_counter: boolean := false;
    --constant Baud_width: integer := 1000000000/baudrate/CLK_period;
    constant LineFeed: std_logic_vector(7 downto 0) := "00001010";
    signal Buff_data: std_logic_vector(7 downto 0) := "00000000";
    signal LF_buff, read_cmd_buff: std_logic;
begin
    FlipFlop: process(clk)
    begin
        if rising_edge(clk) then
            FF_read_control <= FF_read_control(0) & read_control;
        end if;
    end process;
    
    Next_state_logic:process(current_state, data_in, FF_read_control, Baud_counter, bit_counter)
    begin
        next_state <= current_state;
        go_Baud_counter <= false;
        go_bit_counter <= false;
        case current_state is
            when idle_state =>
                if data_in = '0' and FF_read_control = "01" then
                    next_state <= start_state;
                end if;
            when start_state =>
                go_Baud_counter <= true;
                if Baud_counter > Baud_width then
                    next_state <= Reading_state;
                end if;
            when Reading_state =>
                go_Baud_counter <= true;
                go_bit_counter <= true;
                if Baud_counter > Baud_width and bit_counter = 8 then
                    next_state <= Pause_state;
                end if;
            when Pause_state =>
                go_Baud_counter <= true;
                if Baud_counter > Baud_width/2 then
                    next_state <= idle_state;
                end if;
        end case;
    end process;
    
    sync_proc:process(clk, Baud_counter)
    begin
        if rising_edge(clk) then
            current_state <= next_state;
            Baud_counter <= Baud_counter_next;
            bit_counter <= bit_counter_next;  
            LF <= LF_buff;
            Read_cmd <= Read_cmd_buff;
            
            if  Baud_counter = Baud_width/2 and go_bit_counter then
                Buff_data <= data_in&Buff_data(7 downto 1);  
            end if;
        end if;
    end process;
    
    baud_counter_next <= 0 when not go_Baud_counter or Baud_counter > Baud_width else
                        Baud_counter + 1;
    bit_counter_next <= bit_counter + 1 when go_bit_counter and Baud_counter = Baud_width/2 else
                        bit_counter when go_bit_counter else
                        0;
                        
    output_logic:process(current_state)
    begin
        LF_buff <= '0';
        Read_cmd_buff <= '0';
        
        if current_state = Pause_state then
            if Buff_data = LineFeed then
                LF_buff <= '1';
            else
                Read_cmd_buff <= '1';
            end if;
        end if;
    end process;
    
    Data_out <= buff_data;
end Behavioral;
