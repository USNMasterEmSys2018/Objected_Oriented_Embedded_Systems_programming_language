library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity three_bit_adder is
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           b : in STD_LOGIC_VECTOR (2 downto 0);
           sum : out STD_LOGIC_VECTOR (3 downto 0));
end three_bit_adder;

architecture Behavioral of three_bit_adder is
    signal carry: std_logic_vector(1 downto 0); 
begin
   add_bit0: entity work.min_full_adder(Behavioral)
       port map(a=>a(0), b=>b(0), cin=>'0', cout=>carry(0), sum=>sum(0));
   add_bit1: entity work.min_full_adder(Behavioral)
       port map(a=>a(1), b=>b(1), cin=>carry(0), cout=>carry(1), sum=>sum(1));
   add_bit2: entity work.min_full_adder(Behavioral)
       port map(a=>a(2), b=>b(2), cin=>carry(1), cout=>sum(3), sum=>sum(2));

end Behavioral;
