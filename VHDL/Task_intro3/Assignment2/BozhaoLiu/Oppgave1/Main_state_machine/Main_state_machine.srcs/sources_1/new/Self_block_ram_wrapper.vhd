
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
entity self_block_RAM_wrapper is
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
end self_block_RAM_wrapper;

architecture STRUCTURE of self_block_RAM_wrapper is
    type block_ram is array (0 to 8191) of std_logic_vector(7 downto 0);
    signal Ram: Block_ram;
    Signal addrA_as_int, addrB_as_int: integer range 0 to 8191;
begin
    addrA_as_int <= to_integer(unsigned(BRAM_PORTA_0_addr));
    addrB_as_int <= to_integer(unsigned(BRAM_PORTB_0_addr));
    
    writeA:process(BRAM_PORTA_0_clk, BRAM_PORTA_0_en, BRAM_PORTA_0_we, BRAM_PORTA_0_din)
    begin
        if rising_edge(BRAM_PORTA_0_clk) then
            if BRAM_PORTA_0_en = '1' then
                if BRAM_PORTA_0_we = "1" then
                    Ram(addrA_as_int) <= BRAM_PORTA_0_din;
                end if;
            end if;
        end if;
    end process;
    
    ReadB:process(BRAM_PORTB_0_clk, BRAM_PORTB_0_en)
    begin
        if rising_edge(BRAM_PORTB_0_clk) then
            if BRAM_PORTB_0_en = '1' then
                BRAM_PORTB_0_dout <= Ram(addrB_as_int);
            else
                BRAM_PORTB_0_dout <= (others => 'U');
            end if;
        end if;
    end process;

end STRUCTURE;
