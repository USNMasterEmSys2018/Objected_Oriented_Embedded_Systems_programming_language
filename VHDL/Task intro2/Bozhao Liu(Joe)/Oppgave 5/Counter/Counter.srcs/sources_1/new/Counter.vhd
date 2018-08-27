----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/22/2018 12:16:20 PM
-- Design Name: 
-- Module Name: Counter - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter is
  Port (
        read : in std_logic; --btn2
        store_status : in std_logic; --btn1
        count : in std_logic;  --btn0
        UporDown : in std_logic; --btn3
        clk : in std_logic;
        sw : in std_logic_vector (3 downto 0);
        led : out std_logic_vector (3 downto 0) 
        );
end Counter;

architecture Behavioral of Counter is
    signal edge_count, edge_store, get_sign, b1, b2: std_logic := '0';
    signal sign_stored, updown: boolean := false;
    signal notupdown: boolean := true;
    signal stat, stat_stored, buff, buff2: std_logic_vector (3 downto 0) := "0000";
begin
    get_sign <= count or read;
    get_count_rise_edge: entity work.GetSignal(Behavioral)
                        port map(
                                din => stat_stored,
                                clk => clk,
                                Sou => get_sign,
                                peri => false,
                                edge_signal => edge_count,
                                dout => buff2                             
                                );
    get_store_rise_edge: entity work.GetSignal(Behavioral)
                        port map(
                                din => sw,
                                clk => clk,
                                Sou => store_status,
                                peri => true,
                                edge_signal => edge_store,
                                dout => buff                             
                                );
    get_boolean_rise_edge: entity work.Get_boolean_signal(Behavioral)
                        port map(
                                din => notupdown,
                                clk => clk,
                                Sou => UporDown,
                                dout => updown                             
                                );
    notupdown <= not updown;
    process (clk)
    begin
        if rising_edge(clk) then        
            if read = '0' then
                
                if edge_count = '1' then 
                    
--                    if sign_stored then
--                       sign_stored <= false; 
--                       stat_stored <= buff;
--                       stat <= buff;
--                    else 
                        stat <= buff2;      
                        if updown then
                            stat_stored <= buff2 + '1';
                        else
                            stat_stored <= buff2 - '1';
                        end if;  
--                    end if; 
                end if; 
                
                if edge_store = '1' then
--                    sign_stored <= true;
                    stat_stored <= buff;
                end if;                     
            else
                stat <= sw;
                stat_stored <= sw;
            end if;
        end if;
        led <= stat;
    end process;
    
    --process (clk)
    --begin
    --    if rising_edge(clk) then
    --        b2 <= b1;
    --    end if;
        
    --    if rising_edge(clk) then
    --        b1 <= store_status;
    --    end if;
        
    --    if rising_edge(clk) and b1 = '1' and b2 = '0'then
    --         stat_stored <= buff;
    --    end if;
    --end process;


end Behavioral;
