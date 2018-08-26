library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity prescaler is
    Port ( clk: in  STD_LOGIC; 
			en: out std_logic);
end entity prescaler;

architecture Behavioral of prescaler is

	signal teller_reg, teller_next: unsigned(15 downto 0) := (others=>'0'); 
	
begin
	process (clk)
	begin
		if (clk'event and clk='1') then
			teller_reg <= teller_next;
		end if;
	end process;
	
	teller_next <= (others=>'0') when teller_reg = "1010101010101010" else
					teller_reg + 1;
	en <= '1' when teller_reg = (others=>'0') else '0'; 

end Behavioral;

