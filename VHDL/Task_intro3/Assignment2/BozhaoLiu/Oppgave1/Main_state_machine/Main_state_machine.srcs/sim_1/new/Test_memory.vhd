----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/18/2018 08:13:55 PM
-- Design Name: 
-- Module Name: test_main - Behavioral
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

entity test_memory is
--  Port ( );
end test_memory;

architecture Behavioral of test_memory is
    component Memory_control is
    Port ( clk : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           write_cmd : in STD_LOGIC;
           Read_cmd : in STD_LOGIC;
           reset : in STD_LOGIC;
           address_reg : out STD_LOGIC_VECTOR ( 12 downto 0 );
           address_read : in STD_LOGIC_VECTOR ( 12 downto 0 ) := (others => '0');
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    signal clk : STD_LOGIC := '0';
    signal enA, enB : STD_LOGIC := '0';
    signal we : std_logic_vector(0 downto 0) := "0";
    signal data_out : std_logic_vector(7 downto 0);
    
    constant current_address: STD_LOGIC_VECTOR ( 12 downto 0 ) := "0000000000001"; 
    constant address_read: STD_LOGIC_VECTOR ( 12 downto 0 ) := "0000000000001";
    constant CLK_period: integer := 8;
    constant baudrate: integer := 115200;
    constant Baud_width: time := 1000000000 ns/baudrate;
    constant datas: std_logic_vector(7 downto 0):="01010101";
    
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
begin
    Data_handling:self_block_RAM_wrapper
        port map(
                BRAM_PORTA_0_addr => current_address,
                BRAM_PORTA_0_clk => clk,
                BRAM_PORTA_0_en => enA,
                BRAM_PORTA_0_din => datas,
                BRAM_PORTA_0_we => we,
                BRAM_PORTB_0_addr => address_read,
                BRAM_PORTB_0_clk => clk,
                BRAM_PORTB_0_dout => data_out,
                BRAM_PORTB_0_en => enB
                );
    clock_control:process
    begin
        clk <= '0';
        wait for 4 ns;
        clk <= '1';
        wait for 4 ns;
    end process;
    
    data_control:process
    begin
        enA <= '0'; 
        we <= "0";
        enB <= '0';
        wait for Baud_width*100;
        --start bit
        enA <= '1'; 
        we <= "1";
        enB <= '1';
        wait for Baud_width*100;
    end process;
end Behavioral;
