----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/22/2018 09:15:36 AM
-- Design Name: 
-- Module Name: Comb_Sub_Adder - Behavioral
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

entity Comb_Sub_Adder is
    Port ( sw : in STD_LOGIC_VECTOR (2 downto 0);
           btn : in STD_LOGIC_VECTOR (2 downto 0);
           switch : in STD_LOGIC;
           trigger : in STD_LOGIC;
           clk : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (3 downto 0) := "0000"
           );
end Comb_Sub_Adder;

architecture Behavioral of Comb_Sub_Adder is
    signal c,d,sign: std_logic_vector (3 downto 0) := "0000";
    signal buff1, buff2: std_logic := '0';
begin
    proc1: entity work.Three_bit_subtractor2(Behavioral)
         port map(sw => sw, btn => btn, led => c);
    
    proc2: entity work.Three_bit_adder(Behavioral)
         port map(sw => sw, btn => btn, led => d);
	
	sign <= c when switch = '0' else  d;
	process (trigger, clk)
	begin
	   if rising_edge(clk) then
        buff2 <= buff1;
       end if;
       
	   if rising_edge(clk) then
        buff1 <= trigger;
	   end if;
       
	   if rising_edge(clk) and buff1 ='1' and  buff2='0' then
           led <= sign;
       end if;
	end process;
end Behavioral;
