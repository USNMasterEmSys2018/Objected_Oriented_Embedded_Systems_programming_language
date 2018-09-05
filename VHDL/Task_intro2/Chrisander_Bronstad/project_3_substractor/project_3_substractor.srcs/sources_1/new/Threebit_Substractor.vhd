----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.08.2018 13:11:56
-- Design Name: 
-- Module Name: Threebit_Adder1 - Behavioral
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Threebit_Adder1 is
generic(N: integer:= 3);
    Port ( a : in STD_LOGIC_VECTOR (N downto 0);
           clk : in std_logic;
           sum : out STD_LOGIC_VECTOR (N downto 0);
           b : in STD_LOGIC_VECTOR (N downto 0));
end Threebit_Adder1;

architecture Behavioral of Threebit_Adder1 is

signal carry: std_logic_vector(1 downto 0);
signal sum_int: std_logic_vector(N downto 0);
signal b_invert: std_logic_vector(N downto 0);
signal cin_invert: std_logic;
signal memory: std_logic_vector(N downto 0);
signal nothing: std_logic;

begin

arithmetic: process(a, b, clk, memory)

begin

if (a(3)='1') then

cin_invert <= '1';
b_invert(2 downto 0) <= not b(2 downto 0);
memory(3) <= not sum_int(3);
memory(2 downto 0) <= sum_int(2 downto 0);


else
cin_invert <= '0';
b_invert(2 downto 0) <= b(2 downto 0);
memory <= sum_int(3 downto 0);

end if;



if rising_edge(clk) then
    if (b(3) = '1') then
    sum(3 downto 0) <= memory(3 downto 0);

    end if;
end if;

end process;


add_bit0: entity work.Full_Adder(Behavioral)
        port map(a=>a(0), b=>b_invert(0), cin=>cin_invert,clk=>clk, cout=>carry(0), sum=>sum_int(0));
    
add_bit1: entity work.Full_Adder(Behavioral)
        port map(a=>a(1), b=>b_invert(1), cin=>carry(0), clk=>clk, cout=>carry(1), sum=>sum_int(1));

add_bit2: entity work.Full_Adder(Behavioral)
        port map(a=>a(2), b=>b_invert(2), cin=>carry(1), clk=>clk, cout=>sum_int(3), sum=>sum_int(2));



end Behavioral;
