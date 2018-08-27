----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/22/2018 01:01:48 PM
-- Design Name: 
-- Module Name: count - Behavioral
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

entity GetSignal is
    Port ( 
           din : in STD_LOGIC_vector (3 downto 0);
           clk : in STD_LOGIC;
           sou : in STD_LOGIC;
           peri: in boolean;
           edge_signal : out STD_LOGIC;
           dout : out STD_LOGIC_vector (3 downto 0));
end GetSignal;

architecture Behavioral of GetSignal is
    signal buff, buff2, buff3, buff4: std_logic :='0';
    signal buff_signal: STD_LOGIC_vector (3 downto 0):="0000";
begin
process (clk, sou)
begin
    if rising_edge(clk) then
        buff3 <= buff2;
        buff2 <= buff;
        buff <= sou;
        if buff = '1' and buff2 = '0'then
            buff_signal <= din;
        end if; 
    end if;
    
    dout <= buff_signal;
end process;

edge_signal <= '1' when buff = '1' and buff3 = '0' and peri else 
                '1' when buff = '1' and buff2 = '0' and not peri else
                '0';
end Behavioral;
