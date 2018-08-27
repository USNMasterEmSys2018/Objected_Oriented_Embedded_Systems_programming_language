----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/21/2018 10:12:56 PM
-- Design Name: 
-- Module Name: get_minus - Behavioral
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

entity get_minus is
    Port ( b : in STD_LOGIC_VECTOR (2 downto 0);
           c : out STD_LOGIC_VECTOR (3 downto 0));
end get_minus;

architecture Behavioral of get_minus is

  
begin
    process (b)
        variable temp: std_logic_vector (3 downto 0);
        variable i: integer;
        variable minus: boolean;
    begin
        minus := false;
        for i in 0 to 2 loop
            if not minus then
                temp(i) := b(i);
                if (b(i) = '1') then
                    minus := true;
                else
                    minus := false;
                end if;
            else
                temp(i) := not b(i);
            end if;
        end loop;
        
        if minus then
            temp(3) := '1';
        else
            temp(3) := '0';
        end if;
        
        c <= temp;
    end process;  


end Behavioral;
