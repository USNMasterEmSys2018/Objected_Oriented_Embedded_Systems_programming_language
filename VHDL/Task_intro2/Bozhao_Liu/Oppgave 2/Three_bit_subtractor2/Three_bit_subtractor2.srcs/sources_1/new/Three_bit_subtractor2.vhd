----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/22/2018 08:28:03 AM
-- Design Name: 
-- Module Name: Three_bit_subtractor2 - Behavioral
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

entity Three_bit_subtractor2 is
    Port ( sw : in STD_LOGIC_VECTOR (2 downto 0);
           btn : in STD_LOGIC_VECTOR (2 downto 0);
           led : out STD_LOGIC_VECTOR (3 downto 0));
end Three_bit_subtractor2;

architecture Behavioral of Three_bit_subtractor2 is

    signal c: std_logic_vector (1 downto 0);
begin
    proc1: entity work.subtractor(Behavioral)
            port map(a => sw(0), b => btn(0), bin => '0', d => led(0), bout => c(0));
    proc2: entity work.subtractor(Behavioral)
            port map(a => sw(1), b => btn(1), bin => c(0), d => led(1), bout => c(1));
    proc3: entity work.subtractor(Behavioral)
            port map(a => sw(2), b => btn(2), bin => c(1), d => led(2), bout => led(3));
end Behavioral;
