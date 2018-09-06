----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.08.2018 10:52:37
-- Design Name: 
-- Module Name: Full_Adder - Behavioral
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

entity Full_Adder is
--generic(N: integer:=3);
--  a,b, cin : in STD_LOGIC_VECTOR (N-1 downto 0)
--  sum, cout : out STD_LOGIC_VECTOR (N downto 0))
    Port ( a,b, cin, clk : in STD_LOGIC;
           sum, cout : out STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is
begin
sum <= (a xor b) xor cin;
cout <= (a and b) or (cin and (a xor b));

end Behavioral;
