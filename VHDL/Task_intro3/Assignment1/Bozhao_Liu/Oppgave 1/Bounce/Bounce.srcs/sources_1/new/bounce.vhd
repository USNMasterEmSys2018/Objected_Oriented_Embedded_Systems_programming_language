----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2018 08:12:26 PM
-- Design Name: 
-- Module Name: bounce - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity State_press is
    Port (
           clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           reset : in std_logic;
           led : out STD_LOGIC := '0');
end State_press;

architecture Behavioral of State_press is
    type state is (
                    idle_state,
                    debounce_High_state,
                    High_state,
                    debounce_Low_state
                  );
    signal current_state, next_state: state := idle_state;
    signal counter, counter_next: integer := 0;
    constant periods: integer := 6250000;
    signal go_counter: boolean := false;
    signal buff_out: std_logic;
begin
    sync_proc:process(clk, reset)
    begin
        if rising_edge(clk) then
            if reset = '0' then
                current_state <= idle_state;
                counter <= 0;
            else
                current_state <= next_state;
                counter <= counter_next;
            end if;
        end if;
    end process;
    
    counter_next <= counter + 1 when go_counter else
                    0;
    
    next_state_logic:process(current_state, btn, counter)
    begin
        next_state <= current_state;
        go_counter <= false;
        case current_state is
            when idle_state =>
                if btn = '1' then
                    next_state <= debounce_high_state;
                end if;
            when debounce_High_state =>
                go_counter <= true;
                if counter > periods then
                    next_state <= high_state;
                end if;
            when High_state =>
                if btn = '0' then
                    next_state <= debounce_Low_state;
                end if; 
            when debounce_Low_state =>
                go_counter <= true;
                if counter > periods then
                    next_state <= idle_state;
                end if;
        end case;
    end process;
    
    with current_state select
        buff_out <= '1' when debounce_High_state|High_state,
               '0' when Others;	
    process(clk)
    begin
        if rising_edge(clk) then
            led <= buff_out;
        end if;
    end process;
end Behavioral;
