----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2018 09:34:59 PM
-- Design Name: 
-- Module Name: test - Behavioral
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

entity test is
--  Port ( );
end test;

architecture Behavioral of test is
    signal clk : STD_LOGIC;
    signal btn : STD_LOGIC_VECTOR (0 downto 0);
    signal led : STD_LOGIC_VECTOR (0 downto 0);
    
    constant clk_period : time := 10 ns;
begin
    action: entity work.flash(Behavioral)
                port map(clk => clk, btn => btn, led => led);
    process 
    begin
        btn <= "0";
        wait for clk_period*50;
        btn <= "1";
        wait for clk_period*300;
    end process;
    
    process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

end Behavioral;
