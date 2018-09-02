----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/22/2018 08:57:21 PM
-- Design Name: 
-- Module Name: GetStoreSignal - Behavioral
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

entity GetStoreSignal is
    Port ( 
       din : in STD_LOGIC_vector (3 downto 0);
       clk : in STD_LOGIC;
       sou : in STD_LOGIC;
       edge_signal : out boolean;
       dout : out STD_LOGIC_vector (3 downto 0));
end GetStoreSignal;

architecture Behavioral of GetStoreSignal is
    signal buff, buff2: std_logic :='0';
    signal buff_signal: STD_LOGIC_vector (3 downto 0):="0000";
begin
    process (clk, sou)
    begin
        if rising_edge(clk) then
                buff2 <= buff;
        end if;
        
        if rising_edge(clk) then
                buff <= sou;
        end if;
        
        if rising_edge(clk) and buff = '1' and buff2 = '0'then
             buff_signal <= din;
             edge_signal <= true;
        end if;
        dout <= buff_signal;
    end process;
    
    edge_signal <= '1' when buff = '1' and buff2 = '0' else '0';
end Behavioral;
