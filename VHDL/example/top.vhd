library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC_VECTOR (3 downto 0);
           sw : in STD_LOGIC_VECTOR (2 downto 0);
           led : out STD_LOGIC_VECTOR (3 downto 0));
end top;

architecture Behavioral of top is
    signal add_out, sub_out, neg_out: std_logic_vector(3 downto 0);
    signal neg_btn: std_logic_vector(2 downto 0);
begin
    adder: entity work.three_bit_adder(Behavioral)
        port map(a=>sw, b=>btn(2 downto 0), sum=>add_out);   
    subtr: entity work.three_bit_adder(Behavioral)
            port map(a=>sw, b=>neg_out(2 downto 0), sum=>sub_out);   
    two_c: entity work.three_bit_adder(Behavioral)
            port map(a=>neg_btn, b=>"001", sum=>neg_out);   
    
    neg_btn <= not btn(2 downto 0); 
    led <= add_out when (btn(3)='0') else 
           sub_out;   

end Behavioral;
