----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2018 10:59:25 PM
-- Design Name: 
-- Module Name: Timer - Behavioral
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

entity Timer is
    generic(freguency: integer := 1000000);---000);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           half_seconds : out STD_LOGIC
           );
end Timer;

architecture Behavioral of Timer is
    signal second: integer := 0;
    signal half_second : boolean := false;
    signal ticks, ticks2: integer := freguency/2 - 1;
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '0' then
                second <= 0;
                ticks <= 0;
                ticks2 <= freguency/2 - 1;
            else
                if ticks = freguency - 1 then
                    if second < 2 then
                        second <= second + 1;
                    end if;
                    ticks <= 0;
                else
                    ticks <= ticks + 1;
                end if;
                
                if second = 2 then
                    if ticks2 = (freguency/2 - 1) then
                        half_second <= true;
                        ticks2 <= 0;
                    else
                        half_second <= false;
                        ticks2 <= ticks2 + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;
    half_seconds <= '1' when half_second and (second = 2) else '0';
end Behavioral;
