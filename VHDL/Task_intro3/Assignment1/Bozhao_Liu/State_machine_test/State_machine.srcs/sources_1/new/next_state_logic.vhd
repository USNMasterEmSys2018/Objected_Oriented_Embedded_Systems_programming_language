----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2018 09:43:54 PM
-- Design Name: 
-- Module Name: next_state_logic - Behavioral
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

entity next_state_logic is
    Port (  clk : in STD_LOGIC;
            sw_state : in STD_LOGIC;
            current_state : in std_logic_vector (1 downto 0);
            next_state : out std_logic_vector (1 downto 0));
end next_state_logic;

architecture Behavioral of next_state_logic is
    type state_type is (stop_state,
                        presser,     -- Waiting for ENA-signal
                        Flasher,     -- writing start-bit to i2c-bus
                        Warner);     -- writing stop-bit to i2c-bus
    attribute ENUM_ENCODING: std_logic_vector (1 downto 0);
    attribute ENUM_ENCODING of state_type: type is 
                "00"&"01"&"10"&"11";
                
    signal lCurrent_state, lnext_state: state_type := stop_state; 
    signal next_state_indecater, Current_state_indecater: std_logic_vector (1 downto 0):="00";
    signal state_indecater_current, state_indecater_next: integer;
begin

 
    switch_state: process(clk)
    begin
        state_indecater_current <= to_integer(unsigned(current_state)); 
        lCurrent_state <= state_type'val(state_indecater_current);
        lnext_state <= lCurrent_state;
        if rising_edge(clk)then
            if sw_state = '1' then
                case (lCurrent_state) is
                    when stop_state =>
                        lnext_state <= presser;
                    when presser =>
                        lnext_state <= Flasher;
                    when Flasher =>
                        lnext_state <= Warner;
                    when Warner =>
                        lnext_state <= stop_state;                
                end case;    
            end if;
        end if;
        state_indecater_next <= state_type'POS(lnext_state); 
        next_state <= std_logic_vector(to_unsigned(state_indecater_next, next_state'length));   
    end process;

end Behavioral;
