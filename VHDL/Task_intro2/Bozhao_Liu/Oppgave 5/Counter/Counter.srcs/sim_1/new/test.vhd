----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/23/2018 10:18:50 AM
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
    signal read : std_logic; --btn2
    signal store_status :  std_logic; --btn1
    signal count :  std_logic;  --btn0
    signal UporDown :  std_logic; --btn3
    signal clk :  std_logic;
    signal sw :  std_logic_vector (3 downto 0);
    signal led :  std_logic_vector (3 downto 0);
begin
    uut: entity work.counter(Behavioral)
            port map(
                 read => read,
                 store_status => store_status,
                 count =>  count,
                 UporDown  =>  UporDown,
                 clk  =>   clk,
                 sw  =>  sw,
                 led  =>  led 
                    );
    process
    begin                
        clk <= '0';
        wait for 4ns;
        clk <= '1';
        wait for 4ns;
    end process;
    
    process
    begin
        sw <= "0010";
        read <= '0';
        store_status <= '0';
        count <= '0';
        UporDown <= '0';
        wait for 30ns;
        store_status <= '1';
        wait for 30ns;
        store_status <= '0';
        wait for 30ns;
        count <= '1';
        wait for 10ns;
        count <= '0';
        wait for 30ns;
        count <= '1';
        wait for 10ns;
        count <= '0';
        wait for 30ns;
        count <= '1';
        wait for 10ns;
        count <= '0';
        wait for 30ns;
        count <= '1';
        wait for 10ns;
        count <= '0';
        wait for 30ns;
        wait;
    end process;

end Behavioral;
