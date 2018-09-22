--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Wed Sep 19 22:03:49 2018
--Host        : DESKTOP-IPMNJQE running 64-bit major release  (build 9200)
--Command     : generate_target BRAM_wrapper.bd
--Design      : BRAM_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BRAM_wrapper is
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
end BRAM_wrapper;

architecture STRUCTURE of BRAM_wrapper is
  component BRAM is
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
  end component BRAM;
begin
BRAM_i: component BRAM
     port map (
      BRAM_PORTA_0_addr(12 downto 0) => BRAM_PORTA_0_addr(12 downto 0),
      BRAM_PORTA_0_clk => BRAM_PORTA_0_clk,
      BRAM_PORTA_0_din(7 downto 0) => BRAM_PORTA_0_din(7 downto 0),
      BRAM_PORTA_0_en => BRAM_PORTA_0_en,
      BRAM_PORTA_0_we(0) => BRAM_PORTA_0_we(0),
      BRAM_PORTB_0_addr(12 downto 0) => BRAM_PORTB_0_addr(12 downto 0),
      BRAM_PORTB_0_clk => BRAM_PORTB_0_clk,
      BRAM_PORTB_0_dout(7 downto 0) => BRAM_PORTB_0_dout(7 downto 0),
      BRAM_PORTB_0_en => BRAM_PORTB_0_en
    );
end STRUCTURE;
