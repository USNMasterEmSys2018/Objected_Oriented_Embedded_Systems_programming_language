----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/21/2018 10:10:06 PM
-- Design Name: 
-- Module Name: Three_bit_subtrator - Behavioral
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

entity Three_bit_subtrator is
    Port ( sw : in STD_LOGIC_VECTOR (2 downto 0);
           btn : in STD_LOGIC_VECTOR (2 downto 0);
           led : out STD_LOGIC_VECTOR (3 downto 0));
end Three_bit_subtrator;

architecture Behavioral of Three_bit_subtrator is
    signal sub, sub2, sub3: STD_LOGIC_VECTOR (3 downto 0); 
begin
    proc1: entity work.get_minus(Behavioral)
                port map(b => btn, c => sub);
    proc2: entity work.three_bit_adder(Behavioral)
                port map(a => sw, b => sub(2 downto 0), sum => sub2);
                
    led(3) <= sub2(3) xor sub(3);
    --proc3: entity work.get_minus(Behavioral)
    --                port map(b => sub2(2 downto 0), c => sub3);
    led(2 downto 0) <= sub2(2 downto 0);--sub3(2 downto 0) when (sub2(3) xor sub(3)) = '1' else sub2(2 downto 0);
    
end Behavioral;
