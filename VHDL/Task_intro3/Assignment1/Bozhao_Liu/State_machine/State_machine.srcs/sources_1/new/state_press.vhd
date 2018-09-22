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
    generic( periods: integer := 23);
    Port (
           clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           reset : in std_logic;
           led : out STD_LOGIC := '0');
end State_press;

architecture Behavioral of State_press is
    type state is (
                    idle_state,
                    debounce_state
                    );
    signal current_state, next_state: state := idle_state;                
    signal counter, counter_next: STD_LOGIC_VECTOR (periods downto 0) := (others => '0');
    signal en: std_logic := '0';
    signal hold_counter : boolean := false;
    signal FF: STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal d, buff_out, buff: std_logic;
begin
    sync_logic:process(clk, btn)
    begin
        if rising_edge(clk) then
            if reset ='1' then
                current_state <= idle_state;
                counter <= (others => '0');
                led <= '0';
                buff <= '0';
            else
                current_state <= next_state;
                FF(1) <= FF(0);
                FF(0) <= btn;
                if hold_counter then
                    counter <= (others => '0');
                    buff <=FF(1);
                else
                    if en = '0' then
                        counter <= counter_next;
                    end if;
                end if;
                --buffer output
                led <= buff_out;
            end if;
        end if;
    end process;
    --check change of button change
    d <= FF(1) xor FF(0);	
    en <= counter(periods);
    counter_next <= std_logic_vector(unsigned(counter) + 1);
    
    output_logic:process(current_state, FF)
    begin
        buff_out <= FF(1);
        case current_state is
            when idle_state => 
                buff_out <= FF(1);
            when debounce_state => 
                buff_out <= buff;
        end case;
    end process;
    
    next_state_logic:process(current_state, en, d)
    begin
        next_state <= current_state;
        hold_counter <= true;
        case current_state is
            when idle_state => 
                if d = '1' then
                    next_state <= debounce_state;
                end if;
            when debounce_state => 
                hold_counter <= false;
                if en = '1' then
                    next_state <= idle_state;
                end if;
        end case;
    end process;
    								 
end Behavioral;
