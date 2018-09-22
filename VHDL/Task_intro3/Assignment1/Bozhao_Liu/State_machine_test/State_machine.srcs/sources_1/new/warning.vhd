----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2018 08:12:26 PM
-- Design Name: 
-- Module Name: bounce - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity warning is
    generic( periods: integer := 24;
             freq: integer := 125000000);
    Port (
           clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           led : out STD_LOGIC := '0');
end warning;

architecture Behavioral of warning is
    signal counter: STD_LOGIC_VECTOR (periods downto 0) := (others => '0');
    signal counter1: integer := freq/2;-- range 0 to freq/2;
    signal en, Buff_out: std_logic := '0'; 
    signal ff, ff2, ff3: STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal en2: STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal counter2: STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal reset, reset2: std_logic := '0';
begin
    D_ff: process(clk)
    begin
        if rising_edge(clk) then
            ff(1) <= ff(0);
            ff(0) <= btn;
        end if;
    end process;
    
    reset <= ff(1) xor ff(0);
    
    counter_proc: process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                counter <= (others => '0');
            elsif en = '0' then
                counter <= std_logic_vector(unsigned(counter) + 1);
            end if;
            en <= counter(periods);
        end if;
    end process;
    
    counter1_proc: process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                counter1 <= freq/2;
                counter2 <= "000";
            elsif en = '1' and ff(1) = '1' then
                if counter1 = freq/2 then
                    counter1 <= 0;
                    if counter2(2)='0'then
                        counter2 <= std_logic_vector(unsigned(counter2) + 1);
                    end if;
                else
                    counter1 <= counter1 + 1;
                end if;
            end if;
            en <= counter(periods);
        end if;
    end process;
    
    counter3_proc: process(clk)
    begin
        if rising_edge(clk) then
            if counter1 = freq/2 then
                if counter2(2)='1'then
                    en2 <= std_logic_vector(unsigned(en2) + 1);
                end if;
            end if;
        end if;
    end process;
    
    output_flipflop: process(clk)
    begin
        if rising_edge(clk) then
            ff2(1) <= ff2(0);
            ff2(0) <= ff(1);
        end if;
    end process;
    
    output_flipflop2: process(clk)
        begin
            if rising_edge(clk) then
                ff3(1) <= ff3(0);
                ff3(0) <= (en2(0));
            end if;
        end process;
    
    output_buffer: process(clk)
    begin
        if rising_edge(clk) then
            Buff_out <= (not(ff2(1)) and ff2(0)) or (ff3(1) xor ff3(0));
        end if;
    end process;
    
    led <= buff_out;
end Behavioral;