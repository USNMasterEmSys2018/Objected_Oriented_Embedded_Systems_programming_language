----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2018 11:38:12 PM
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
    signal clk : STD_LOGIC := '0';
    signal btn : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal sw_state, reset: STD_LOGIC := '0';
    signal led : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant clk_period: time := 8 ns;
begin
   logic_process: entity work.State_machine(Behavioral)
                    port map(clk => clk,
                            btn => btn,
                            sw_state => sw_state,
                            reset => reset,
                            led => led
                            ); 
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
        
    process
    begin
        reset <= '0';
        wait for clk_period * 600;
        reset <= '1';
        wait for clk_period * 600;

        btn <= "0";
        wait for clk_period * 600;
        btn <= "1";--presser state
        wait for clk_period * 6000;
        sw_state <= '1';
        btn <= "0";
        wait for 150 ns;
        sw_state <= '0';
        btn <= "1";--flasher state
        wait for clk_period * 6000;
        sw_state <= '1';
        btn <= "0";
        wait for 150 ns;
        sw_state <= '0';
        btn <= "1";--warning state
        wait for clk_period * 6000;
        sw_state <= '1';
        wait for 150 ns;
        sw_state <= '0';
    end process;
end Behavioral;
