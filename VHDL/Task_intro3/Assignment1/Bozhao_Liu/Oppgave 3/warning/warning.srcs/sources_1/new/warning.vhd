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

entity warning is
    generic( periods: integer := 3;
             freq: integer := 125);--000000);
    Port (
           clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           reset : in std_logic;
           led : out STD_LOGIC := '0');
end warning;

architecture Behavioral of warning is
    type state is (
                    idle_state,
                    debounce_state,
                    halt_state,
					warn_state
                    );
    signal current_state, next_state: state := idle_state;                
    signal Debounce_counter, Debounce_counter_next: integer;
	signal Halt_Counter, Halt_Counter_next: integer := 0;-- range 0 to freq/2;
	signal Warn_Counter, Warn_Counter_next: integer := 0;
    signal Go_Debounce_counter, Go_halt_counter, Go_warn_counter, go_flash : boolean := false;
    --signal Blink_counter, Blink_counter_next: STD_LOGIC_VECTOR (0 downto 0) := (others => '0');
    signal en: std_logic := '0';
    signal FF: STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal d, buff_out, buff: std_logic := '0';
begin
    sync_logic:process(clk, btn, en)
    begin
        if rising_edge(clk) then
            if reset ='0' then
                current_state <= idle_state;
                Debounce_counter <= 0;
                led <= '0';
                buff <= '0';
				Halt_Counter <= 0;
				Warn_Counter <= 0;
            else
                current_state <= next_state;
                FF(1) <= FF(0);
                FF(0) <= btn;
                Debounce_counter <= Debounce_counter_next;
                Halt_Counter <= Halt_Counter_next;
                warn_counter <= Warn_Counter_next;
                --buffer output
                led <= buff_out;
            end if;
        end if;
    end process;
    --check change of button change
    d <= not(FF(1)) and FF(0);	
    Debounce_counter_next <=Debounce_counter + 1 when Go_Debounce_counter else
                            0;
	Halt_Counter_next <= Halt_Counter + 1 when Go_Halt_Counter else
	                       0;
	Warn_Counter_next <=  0 when Warn_Counter = freq/2 or (not go_warn_counter) else 
	                       Warn_Counter + 1;
	
    output_logic:process(current_state, Halt_Counter, Warn_Counter, Debounce_counter, go_flash)
    begin
        buff_out <= '0';
        case current_state is
            when debounce_state => 
                if go_flash and Debounce_counter = 0 then
                    buff_out <= '1'; 
                end if;
			when warn_state => 
				if Warn_Counter = 0 then
					buff_out <= '1';
				end if;
            when others =>
                buff_out <= '0';
        end case;
    end process;
    
    next_state_logic:process(current_state, en, d, FF, Halt_Counter, Debounce_counter, btn)
    begin
        next_state <= current_state;
        Go_Debounce_counter <= false;
		Go_halt_counter <= false;
		go_warn_counter <= false;
		go_flash <= false;
        case current_state is
            when idle_state => 
                if d = '1' then
                    next_state <= debounce_state;
                    go_flash <= true;
                end if;
            when debounce_state => 
                Go_Debounce_counter <= true;
                if FF(1) = '1' then
                    go_flash <= true;
                end if;
                if Debounce_counter > freq/(1000/50) then --50 ms
                    if FF(1) = '1' then
                        next_state <= halt_state;
                    else 
                        next_state <= idle_state;
                    end if;
                end if;
            when halt_state => 
				Go_halt_counter <= true;
				if FF(1) ='1' then
					if Halt_Counter > freq-freq/(1000/50) then
					   next_state <= warn_state;
					end if;
				end if; 
			when warn_state => 
				go_warn_counter <= true;
                if FF(1) ='0' then
                    next_state <= debounce_state;
                end if; 
        end case;
    end process;
    								 
end Behavioral;
