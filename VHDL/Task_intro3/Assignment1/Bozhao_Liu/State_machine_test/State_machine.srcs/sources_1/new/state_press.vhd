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
    generic( periods: integer := 24);
    Port (
           clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           led : out STD_LOGIC := '0');
end State_press;

architecture Behavioral of State_press is
    signal counter: STD_LOGIC_VECTOR (periods downto 0) := (others => '0');
    signal en: std_logic := '0'; 
    signal ff: STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal reset: std_logic;
begin
    D_ff: process(clk)
    begin
        if rising_edge(clk) then
            ff(1) <= ff(0);
            ff(0) <= btn;
        end if;
    end process;
    
    reset <= ff(1) xor ff(0);
    
    counter_proc: process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                counter <= (others => '0');
            elsif en = '0' then
                counter <= std_logic_vector(unsigned(counter) + 1);
            end if;
            en <= counter(periods);
        end if;
    end process;
    
    output_buffer: process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                led <= ff(1);
            end if;    
        end if;
    end process;
	
										 
end Behavioral;
