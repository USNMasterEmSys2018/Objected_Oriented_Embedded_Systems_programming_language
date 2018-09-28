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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

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
    component debounce_trigger
        Port (
               clk : in STD_LOGIC;
               btn : in STD_LOGIC;
               reset: in STD_LOGIC;
               led : out STD_LOGIC);
    end component;
    
    component State_press
        Port (
               clk : in STD_LOGIC;
               btn : in STD_LOGIC;
               reset: in STD_LOGIC;
               led : out STD_LOGIC);
    end component;
    
    component warning
        Port (
               clk : in STD_LOGIC;
               btn : in STD_LOGIC;
               reset: in STD_LOGIC;
               led : out STD_LOGIC);
    end component;
    
    type state_type is (stop_state,
                        presser, 	-- Waiting for ENA-signal
						Flasher, 	-- writing start-bit to i2c-bus
						Warner); 	-- writing stop-bit to i2c-bus
    attribute ENUM_ENCODING: std_logic_vector (1 downto 0);
    attribute ENUM_ENCODING of state_type: type is 
                    "00"&"01"&"10"&"11";
                    
    signal Current_state, next_state: state_type := stop_state; 
    signal lsw_state: STD_LOGIC := '0';
    signal en, Buff_out: std_logic := '0'; 
    signal press_out, trigger_out, warning_out, counter_signal : std_logic;
    signal next_state_indecater, Current_state_indecater: std_logic_vector (1 downto 0):="00";
    signal state_indecater_current, state_indecater_next: integer;
    
    signal counter: std_logic_vector (3 downto 0):="0000";
begin
                    
    state_proc: process (clk)
    begin
        if reset = '0' then
            Current_state <= stop_state; 
            counter <= "0000";   
        else
            current_state <= next_state;
            if rising_edge(clk) then
                if lsw_state ='1' then
                    counter <= (others => '0');
                end if;
                case (Current_state) is
                    when Flasher =>
                        if counter_signal = '1' then
                            counter <= std_logic_vector(unsigned(counter)+1); --count signal on every going clock cycle that goes high
                        end if;
                    when Warner =>
                        if counter_signal = '1' then
                            counter <= std_logic_vector(unsigned(counter)+1); 
                        end if;
                   when presser =>
                        counter <= '1'&press_out&press_out&press_out;
                    when stop_state =>
                        counter <= "0000";
                end case;    
            end if;
        end if;
    end process;
    
    led <= counter;
    
    debounce_switch_state: debounce_trigger
                            port map(clk => clk, btn => sw_state, reset => reset, led => lsw_state);
                            
    press_state: State_press
                    port map(clk => clk, btn => btn(0), reset => reset, led => press_out);
                    
    trigger_state: debounce_trigger
                    port map(clk => clk, btn => btn(0), reset => reset, led => trigger_out);
    
    warning_state: warning
                    port map(clk => clk, btn => btn(0), reset => reset, led => warning_out);
                            

    --with current_state select
    --    led(3 downto 0) <=   "0000" when Stop_state,
    --                         "010"&press_out when presser,
    --                         "100"&trigger_out when Flasher,
    --                         "110"&warning_out when warner;
    with current_state select
        counter_signal <= '0' when Stop_state,          --the actual output of the state machine
                          press_out when presser,
                          trigger_out when Flasher,
                          warning_out when warner;
                        
    state_indecater_current <= state_type'POS(current_state); --encode enumeration to switch the state. to use the next_state_logic entity.
    Current_state_indecater <= std_logic_vector(to_unsigned(state_indecater_current, Current_state_indecater'length));   
  
    switch_state: entity work.next_state_logic(Behavioral) --switch state logic wrapped up to form a blocked schematic.
                                 Port map(  clk => clk,
                                         sw_state => lsw_state,
                                         current_state => Current_state_indecater,
                                         next_state => next_state_indecater);

    state_indecater_next <= to_integer(unsigned(next_state_indecater)); --decode enumeration to switch the state. to use the next_state_logic entity.
    next_state <= state_type'val(state_indecater_next);

end Behavioral;
