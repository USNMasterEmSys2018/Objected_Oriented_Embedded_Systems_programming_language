----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2018 08:17:05 PM
-- Design Name: 
-- Module Name: tast - Behavioral
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

entity tast is
--  Port ( );
end tast;

architecture Behavioral of tast is
    signal clk : std_logic := '0';
    signal btn : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal led : STD_LOGIC_VECTOR (0 downto 0) := "0";
    
    constant clk_period : time := 10 ns;
begin
    uut: entity work.bounce(Behavioral)
            port map( clk=> clk, btn => btn, led => led);
    
    logic_process: process
    begin
        btn(0) <= '0';
        wait for clk_period*500;
        btn(0) <= '1';
        wait for clk_period*1000;
    end process;
    
    clk_process: process
    begin
        clk <= '1';
        wait for clk_period/2;
        clk <= '0';
        wait for clk_period/2;
    end process;


end Behavioral;
