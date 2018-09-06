----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2018 10:22:19 AM
-- Design Name: 
-- Module Name: State_machine - Behavioral
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

entity State_machine is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC_VECTOR (0 downto 0);
           sw_state, reset: in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (3 downto 0));
end State_machine;

architecture Behavioral of State_machine is
    type state_type is (stop_state,
                        presser, 	-- Waiting for ENA-signal
						Flasher, 	-- writing start-bit to i2c-bus
						Warner); 	-- writing stop-bit to i2c-bus
    signal Current_state, next_state: state_type := stop_state; 
    signal lsw_state: STD_LOGIC := '0';
    component debounce_trigger
        Port (
               clk : in STD_LOGIC;
               btn : in STD_LOGIC;
               led : out STD_LOGIC);
    end component;
    signal en, Buff_out: std_logic := '0'; 
    
    component State_press
        Port (
               clk : in STD_LOGIC;
               btn : in STD_LOGIC;
               led : out STD_LOGIC);
    end component;
    component warning
        Port (
               clk : in STD_LOGIC;
               btn : in STD_LOGIC;
               led : out STD_LOGIC);
    end component;
    signal press_out, trigger_out, warning_out : std_logic;
    signal next_state_indecater: std_logic_vector (2 downto 0):="000";
begin
    state_proc: process (clk)
    begin
        if rising_edge(clk) then
            if reset = '0' then
                Current_state <= stop_state;    
            else
                current_state <= next_state;
            end if;
        end if;
    end process;
    
    debounce_switch_state: debounce_trigger
                            port map(clk => clk, btn => sw_state, led => lsw_state);
                            
    press_state: State_press
                    port map(clk => clk, btn => btn(0), led => press_out);
                    
    trigger_state: debounce_trigger
                    port map(clk => clk, btn => btn(0), led => trigger_out);
    
    warning_state: warning
                    port map(clk => clk, btn => btn(0), led => warning_out);
                            
    --with current_state select
    --    led(0) <=   '0' when Stop_state,
    --                press_out when presser,
    --                trigger_out when Flasher,
    --                warning_out when warner;
    with current_state select
        led(3 downto 0) <=   "0000" when Stop_state,
                             "010"&press_out when presser,
                             "100"&trigger_out when Flasher,
                             "110"&warning_out when warner;
    --with current_state select
    --    led(3 downto 0) <=   "010"&press_out when presser,
    --                         "100"&trigger_out when Flasher,
    --                         "110"&warning_out when warner;
    
   --led(3 downto 1) <=  next_state_indecater;                 
    switch_state: process(clk)
    begin
        if rising_edge(clk)then
            if lsw_state = '1' then
                case (current_state) is
                    when stop_state =>
                        next_state <= presser;
                        next_state_indecater <= "010";
                    when presser =>
                        next_state <= Flasher;
                        next_state_indecater <= "100";
                    when Flasher =>
                        next_state <= Warner;
                        next_state_indecater <= "110";
                    when Warner =>
                        next_state <= stop_state;
                        next_state_indecater <= "000";                
                end case;    
            end if;
        end if;
    end process;
end Behavioral;
