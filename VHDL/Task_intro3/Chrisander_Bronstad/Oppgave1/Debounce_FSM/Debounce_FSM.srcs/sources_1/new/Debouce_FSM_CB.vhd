----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 14:00:50
-- Design Name: 
-- Module Name: Debouce_FSM_CB - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Debouce_FSM_CB is
    Port ( btn, clk: in STD_LOGIC;
           led : out STD_LOGIC_VECTOR(3 downto 0));
end Debouce_FSM_CB;

architecture Behavioral of Debouce_FSM_CB is

type state_type is (State0, State1); 

signal Current_state, next_state: state_type := State0;

signal counter, counter_next: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal reset: STD_LOGIC := '0';
signal d_ff1, d_ff2: std_logic;
signal buff: STD_LOGIC_VECTOR(1 downto 0);
signal add, Light: boolean;
begin

D_FF: process(clk)
begin

if rising_edge(clk) then
        counter <= counter_next;
        Current_state <= next_state;
end if;
end process;

counter_next <= counter + 1 when add else (others => '0');
led(0) <= '1' when (counter > "0000") else '0';

change_state: process(counter, counter_next)
begin
    case Current_state is
        when State0 => 
            if (btn = '1') then
                next_state <= State1;
                add <= True;
            else 
                 next_state<= State0;
                Add <= False;
            end if;
            
        when State1 =>
            if(btn = '0') then
                next_state <= State0;
                Add <= False;
            else
                Add <= True;
            end if;
        end case;
end process;

end Behavioral;
