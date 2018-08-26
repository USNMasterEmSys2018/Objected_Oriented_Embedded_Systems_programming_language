library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity min_full_adder is
    Port ( a,b, cin : in STD_LOGIC;
           cout, sum : out STD_LOGIC
           );
end min_full_adder;

architecture Behavioral of min_full_adder is

begin
    sum <= a xor b xor cin;
    cout <= (a and b) or (cin and a) or (cin and b); 
end Behavioral;
