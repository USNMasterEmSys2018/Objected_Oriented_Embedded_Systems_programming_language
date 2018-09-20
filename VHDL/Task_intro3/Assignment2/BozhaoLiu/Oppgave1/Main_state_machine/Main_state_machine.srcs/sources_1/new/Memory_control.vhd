----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/19/2018 02:31:02 PM
-- Design Name: 
-- Module Name: Memory_control - Behavioral
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
use IEEE.STD_LOGIC_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memory_control is
    Port ( clk : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           write_cmd : in STD_LOGIC;
           reset : in STD_LOGIC;
           address_reg : out STD_LOGIC_VECTOR ( 12 downto 0 );
           address_read : in STD_LOGIC_VECTOR ( 12 downto 0 ) := (others => '0');
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end Memory_control;

architecture Behavioral of Memory_control is
    --component BRAM_wrapper is
    component self_block_RAM_wrapper is
        port (
        BRAM_PORTA_0_addr : in STD_LOGIC_VECTOR ( 12 downto 0 );
        BRAM_PORTA_0_clk : in STD_LOGIC;
        BRAM_PORTA_0_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
        BRAM_PORTA_0_en : in STD_LOGIC;
        BRAM_PORTA_0_we : in STD_LOGIC_VECTOR ( 0 to 0 );
        BRAM_PORTB_0_addr : in STD_LOGIC_VECTOR ( 12 downto 0 );
        BRAM_PORTB_0_clk : in STD_LOGIC;
        BRAM_PORTB_0_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
        BRAM_PORTB_0_en : in STD_LOGIC
        );
    end component;
    signal current_address, next_address: STD_LOGIC_VECTOR ( 12 downto 0 ) := (others => '0');
    signal FF_write_cmd: STD_LOGIC_VECTOR ( 1 downto 0 ) := (others => '0');
    signal en, en2: STD_LOGIC_VECTOR ( 0 to 0 ) := "0"; 
begin
    FlipFlop:process(clk)
    begin
        if rising_edge(clk) then
            if reset ='0' then
                FF_write_cmd <= FF_write_cmd( 0 ) & write_cmd;
                if FF_write_cmd = "01" then
                    current_address <= next_address;
                end if;
            else
                current_address <= (others => '0');
            end if;
        end if;    
    end process;
    
    en <= "1" when FF_write_cmd = "01" else "0";
    Data_handling:self_block_RAM_wrapper--BRAM_wrapper
            port map(
                    BRAM_PORTA_0_addr => current_address,
                    BRAM_PORTA_0_clk => clk,
                    BRAM_PORTA_0_en => en(0),
                    BRAM_PORTA_0_din => data_in,
                    BRAM_PORTA_0_we => en,
                    BRAM_PORTB_0_addr => address_read,
                    BRAM_PORTB_0_clk => clk,
                    BRAM_PORTB_0_dout => data_out,
                    BRAM_PORTB_0_en => '1'
                    );
    
    address_reg <= STD_LOGIC_VECTOR(unsigned(current_address) - 1);
    next_address <= STD_LOGIC_VECTOR(unsigned(current_address) + 1);


end Behavioral;
