----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/21/2018 07:18:44 PM
-- Design Name: 
-- Module Name: Three_bit_adder - Behavioral
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

entity Three_bit_adder is
    Port ( sw : in STD_LOGIC_VECTOR (2 downto 0);
           btn : in STD_LOGIC_VECTOR (2 downto 0);
           led : out STD_LOGIC_VECTOR (3 downto 0));
end Three_bit_adder;

architecture Behavioral of Three_bit_adder is
    signal c:std_logic_vector (1 downto 0);
begin
    proc0: entity work.full_adder(Behavioral)
            port map(  a => sw(0), 
                        b => btn(0), 
                        cin => '0',
                        cout => c(0),
                        sum => led(0)
                     );
    proc1: entity work.full_adder(Behavioral)
             port map(  a => sw(1), 
                        b => btn(1), 
                        cin => c(0),
                        cout => c(1),
                        sum => led(1)
                      );
    proc2: entity work.full_adder(Behavioral)
             port map(  a => sw(2), 
                        b => btn(2), 
                        cin => c(1),
                        cout => led(3),
                        sum => led(2)
                   );    
                                    

end Behavioral;
