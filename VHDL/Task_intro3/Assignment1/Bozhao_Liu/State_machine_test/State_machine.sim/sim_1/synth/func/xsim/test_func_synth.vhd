-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Sep  7 00:19:07 2018
-- Host        : DESKTOP-IPMNJQE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/USN_Study/Objected_Oriented_Embedded_Systems_programming_language/VHDL/Task_intro3/Assignment1/Bozhao_Liu/State_machine_test/State_machine.sim/sim_1/synth/func/xsim/test_func_synth.vhd
-- Design      : State_machine
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity State_press is
  port (
    \led[0]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC;
    next_state_indecater : in STD_LOGIC_VECTOR ( 0 to 0 );
    warning_out : in STD_LOGIC;
    lreset : in STD_LOGIC;
    \ff_reg[1]\ : in STD_LOGIC
  );
end State_press;

architecture STRUCTURE of State_press is
  signal \counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 24 to 24 );
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal en_reg_n_0 : STD_LOGIC;
  signal \led_i_1__0_n_0\ : STD_LOGIC;
  signal press_out : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[24]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => en_reg_n_0,
      O => \counter[0]_i_1__0_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[0]_i_2_n_7\,
      Q => \counter_reg_n_0_[0]\,
      R => reset
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2_n_0\,
      CO(2) => \counter_reg[0]_i_2_n_1\,
      CO(1) => \counter_reg[0]_i_2_n_2\,
      CO(0) => \counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_2_n_4\,
      O(2) => \counter_reg[0]_i_2_n_5\,
      O(1) => \counter_reg[0]_i_2_n_6\,
      O(0) => \counter_reg[0]_i_2_n_7\,
      S(3) => \counter_reg_n_0_[3]\,
      S(2) => \counter_reg_n_0_[2]\,
      S(1) => \counter_reg_n_0_[1]\,
      S(0) => \counter[0]_i_3_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[8]_i_1__0_n_5\,
      Q => \counter_reg_n_0_[10]\,
      R => reset
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[8]_i_1__0_n_4\,
      Q => \counter_reg_n_0_[11]\,
      R => reset
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[12]_i_1__0_n_7\,
      Q => \counter_reg_n_0_[12]\,
      R => reset
    );
\counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1__0_n_0\,
      CO(3) => \counter_reg[12]_i_1__0_n_0\,
      CO(2) => \counter_reg[12]_i_1__0_n_1\,
      CO(1) => \counter_reg[12]_i_1__0_n_2\,
      CO(0) => \counter_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1__0_n_4\,
      O(2) => \counter_reg[12]_i_1__0_n_5\,
      O(1) => \counter_reg[12]_i_1__0_n_6\,
      O(0) => \counter_reg[12]_i_1__0_n_7\,
      S(3) => \counter_reg_n_0_[15]\,
      S(2) => \counter_reg_n_0_[14]\,
      S(1) => \counter_reg_n_0_[13]\,
      S(0) => \counter_reg_n_0_[12]\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[12]_i_1__0_n_6\,
      Q => \counter_reg_n_0_[13]\,
      R => reset
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[12]_i_1__0_n_5\,
      Q => \counter_reg_n_0_[14]\,
      R => reset
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[12]_i_1__0_n_4\,
      Q => \counter_reg_n_0_[15]\,
      R => reset
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[16]_i_1__0_n_7\,
      Q => \counter_reg_n_0_[16]\,
      R => reset
    );
\counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1__0_n_0\,
      CO(3) => \counter_reg[16]_i_1__0_n_0\,
      CO(2) => \counter_reg[16]_i_1__0_n_1\,
      CO(1) => \counter_reg[16]_i_1__0_n_2\,
      CO(0) => \counter_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1__0_n_4\,
      O(2) => \counter_reg[16]_i_1__0_n_5\,
      O(1) => \counter_reg[16]_i_1__0_n_6\,
      O(0) => \counter_reg[16]_i_1__0_n_7\,
      S(3) => \counter_reg_n_0_[19]\,
      S(2) => \counter_reg_n_0_[18]\,
      S(1) => \counter_reg_n_0_[17]\,
      S(0) => \counter_reg_n_0_[16]\
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[16]_i_1__0_n_6\,
      Q => \counter_reg_n_0_[17]\,
      R => reset
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[16]_i_1__0_n_5\,
      Q => \counter_reg_n_0_[18]\,
      R => reset
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[16]_i_1__0_n_4\,
      Q => \counter_reg_n_0_[19]\,
      R => reset
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[0]_i_2_n_6\,
      Q => \counter_reg_n_0_[1]\,
      R => reset
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[20]_i_1__0_n_7\,
      Q => \counter_reg_n_0_[20]\,
      R => reset
    );
\counter_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1__0_n_0\,
      CO(3) => \counter_reg[20]_i_1__0_n_0\,
      CO(2) => \counter_reg[20]_i_1__0_n_1\,
      CO(1) => \counter_reg[20]_i_1__0_n_2\,
      CO(0) => \counter_reg[20]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1__0_n_4\,
      O(2) => \counter_reg[20]_i_1__0_n_5\,
      O(1) => \counter_reg[20]_i_1__0_n_6\,
      O(0) => \counter_reg[20]_i_1__0_n_7\,
      S(3) => \counter_reg_n_0_[23]\,
      S(2) => \counter_reg_n_0_[22]\,
      S(1) => \counter_reg_n_0_[21]\,
      S(0) => \counter_reg_n_0_[20]\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[20]_i_1__0_n_6\,
      Q => \counter_reg_n_0_[21]\,
      R => reset
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[20]_i_1__0_n_5\,
      Q => \counter_reg_n_0_[22]\,
      R => reset
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[20]_i_1__0_n_4\,
      Q => \counter_reg_n_0_[23]\,
      R => reset
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[24]_i_1__0_n_7\,
      Q => counter_reg(24),
      R => reset
    );
\counter_reg[24]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counter_reg[24]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \counter_reg[24]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => counter_reg(24)
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[0]_i_2_n_5\,
      Q => \counter_reg_n_0_[2]\,
      R => reset
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[0]_i_2_n_4\,
      Q => \counter_reg_n_0_[3]\,
      R => reset
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[4]_i_1__0_n_7\,
      Q => \counter_reg_n_0_[4]\,
      R => reset
    );
\counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CO(3) => \counter_reg[4]_i_1__0_n_0\,
      CO(2) => \counter_reg[4]_i_1__0_n_1\,
      CO(1) => \counter_reg[4]_i_1__0_n_2\,
      CO(0) => \counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1__0_n_4\,
      O(2) => \counter_reg[4]_i_1__0_n_5\,
      O(1) => \counter_reg[4]_i_1__0_n_6\,
      O(0) => \counter_reg[4]_i_1__0_n_7\,
      S(3) => \counter_reg_n_0_[7]\,
      S(2) => \counter_reg_n_0_[6]\,
      S(1) => \counter_reg_n_0_[5]\,
      S(0) => \counter_reg_n_0_[4]\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[4]_i_1__0_n_6\,
      Q => \counter_reg_n_0_[5]\,
      R => reset
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[4]_i_1__0_n_5\,
      Q => \counter_reg_n_0_[6]\,
      R => reset
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[4]_i_1__0_n_4\,
      Q => \counter_reg_n_0_[7]\,
      R => reset
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[8]_i_1__0_n_7\,
      Q => \counter_reg_n_0_[8]\,
      R => reset
    );
\counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1__0_n_0\,
      CO(3) => \counter_reg[8]_i_1__0_n_0\,
      CO(2) => \counter_reg[8]_i_1__0_n_1\,
      CO(1) => \counter_reg[8]_i_1__0_n_2\,
      CO(0) => \counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1__0_n_4\,
      O(2) => \counter_reg[8]_i_1__0_n_5\,
      O(1) => \counter_reg[8]_i_1__0_n_6\,
      O(0) => \counter_reg[8]_i_1__0_n_7\,
      S(3) => \counter_reg_n_0_[11]\,
      S(2) => \counter_reg_n_0_[10]\,
      S(1) => \counter_reg_n_0_[9]\,
      S(0) => \counter_reg_n_0_[8]\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_1__0_n_0\,
      D => \counter_reg[8]_i_1__0_n_6\,
      Q => \counter_reg_n_0_[9]\,
      R => reset
    );
en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => counter_reg(24),
      Q => en_reg_n_0,
      R => '0'
    );
\led_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => press_out,
      I1 => next_state_indecater(0),
      I2 => warning_out,
      I3 => lreset,
      O => \led[0]\
    );
\led_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ff_reg[1]\,
      I1 => en_reg_n_0,
      I2 => press_out,
      O => \led_i_1__0_n_0\
    );
led_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \led_i_1__0_n_0\,
      Q => press_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity State_press_0 is
  port (
    lreset : out STD_LOGIC;
    led_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    next_state_indecater : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of State_press_0 : entity is "State_press";
end State_press_0;

architecture STRUCTURE of State_press_0 is
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 24 to 24 );
  signal \counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal en : STD_LOGIC;
  signal \ff_reg_n_0_[0]\ : STD_LOGIC;
  signal led_i_1_n_0 : STD_LOGIC;
  signal \^lreset\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_OBUF[2]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of led_i_1 : label is "soft_lutpair0";
begin
  lreset <= \^lreset\;
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ff_reg_n_0_[0]\,
      I1 => p_1_in,
      O => reset
    );
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => en,
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_4_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[0]_i_3_n_7\,
      Q => \counter_reg_n_0_[0]\,
      R => reset
    );
\counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_3_n_0\,
      CO(2) => \counter_reg[0]_i_3_n_1\,
      CO(1) => \counter_reg[0]_i_3_n_2\,
      CO(0) => \counter_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_3_n_4\,
      O(2) => \counter_reg[0]_i_3_n_5\,
      O(1) => \counter_reg[0]_i_3_n_6\,
      O(0) => \counter_reg[0]_i_3_n_7\,
      S(3) => \counter_reg_n_0_[3]\,
      S(2) => \counter_reg_n_0_[2]\,
      S(1) => \counter_reg_n_0_[1]\,
      S(0) => \counter[0]_i_4_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[8]_i_1_n_5\,
      Q => \counter_reg_n_0_[10]\,
      R => reset
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[8]_i_1_n_4\,
      Q => \counter_reg_n_0_[11]\,
      R => reset
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[12]_i_1_n_7\,
      Q => \counter_reg_n_0_[12]\,
      R => reset
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter_reg_n_0_[15]\,
      S(2) => \counter_reg_n_0_[14]\,
      S(1) => \counter_reg_n_0_[13]\,
      S(0) => \counter_reg_n_0_[12]\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[12]_i_1_n_6\,
      Q => \counter_reg_n_0_[13]\,
      R => reset
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[12]_i_1_n_5\,
      Q => \counter_reg_n_0_[14]\,
      R => reset
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[12]_i_1_n_4\,
      Q => \counter_reg_n_0_[15]\,
      R => reset
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[16]_i_1_n_7\,
      Q => \counter_reg_n_0_[16]\,
      R => reset
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3) => \counter_reg_n_0_[19]\,
      S(2) => \counter_reg_n_0_[18]\,
      S(1) => \counter_reg_n_0_[17]\,
      S(0) => \counter_reg_n_0_[16]\
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[16]_i_1_n_6\,
      Q => \counter_reg_n_0_[17]\,
      R => reset
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[16]_i_1_n_5\,
      Q => \counter_reg_n_0_[18]\,
      R => reset
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[16]_i_1_n_4\,
      Q => \counter_reg_n_0_[19]\,
      R => reset
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[0]_i_3_n_6\,
      Q => \counter_reg_n_0_[1]\,
      R => reset
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[20]_i_1_n_7\,
      Q => \counter_reg_n_0_[20]\,
      R => reset
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3) => \counter_reg_n_0_[23]\,
      S(2) => \counter_reg_n_0_[22]\,
      S(1) => \counter_reg_n_0_[21]\,
      S(0) => \counter_reg_n_0_[20]\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[20]_i_1_n_6\,
      Q => \counter_reg_n_0_[21]\,
      R => reset
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[20]_i_1_n_5\,
      Q => \counter_reg_n_0_[22]\,
      R => reset
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[20]_i_1_n_4\,
      Q => \counter_reg_n_0_[23]\,
      R => reset
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24),
      R => reset
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counter_reg[24]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => counter_reg(24)
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[0]_i_3_n_5\,
      Q => \counter_reg_n_0_[2]\,
      R => reset
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[0]_i_3_n_4\,
      Q => \counter_reg_n_0_[3]\,
      R => reset
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[4]_i_1_n_7\,
      Q => \counter_reg_n_0_[4]\,
      R => reset
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_3_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter_reg_n_0_[7]\,
      S(2) => \counter_reg_n_0_[6]\,
      S(1) => \counter_reg_n_0_[5]\,
      S(0) => \counter_reg_n_0_[4]\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[4]_i_1_n_6\,
      Q => \counter_reg_n_0_[5]\,
      R => reset
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[4]_i_1_n_5\,
      Q => \counter_reg_n_0_[6]\,
      R => reset
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[4]_i_1_n_4\,
      Q => \counter_reg_n_0_[7]\,
      R => reset
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[8]_i_1_n_7\,
      Q => \counter_reg_n_0_[8]\,
      R => reset
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter_reg_n_0_[11]\,
      S(2) => \counter_reg_n_0_[10]\,
      S(1) => \counter_reg_n_0_[9]\,
      S(0) => \counter_reg_n_0_[8]\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[8]_i_1_n_6\,
      Q => \counter_reg_n_0_[9]\,
      R => reset
    );
en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => counter_reg(24),
      Q => en,
      R => '0'
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => \ff_reg_n_0_[0]\,
      R => '0'
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \ff_reg_n_0_[0]\,
      Q => p_1_in,
      R => '0'
    );
\led_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^lreset\,
      I1 => next_state_indecater(0),
      O => led_OBUF(0)
    );
led_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in,
      I1 => en,
      I2 => \^lreset\,
      O => led_i_1_n_0
    );
led_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => led_i_1_n_0,
      Q => \^lreset\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity debounce_trigger is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end debounce_trigger;

architecture STRUCTURE of debounce_trigger is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff_reg_n_0_[0]\ : STD_LOGIC;
  signal \ff_reg_n_0_[1]\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\ff2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \ff_reg_n_0_[1]\,
      Q => \^q\(0),
      R => '0'
    );
\ff2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \^q\(0),
      Q => \^q\(1),
      R => '0'
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => \ff_reg_n_0_[0]\,
      R => '0'
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \ff_reg_n_0_[0]\,
      Q => \ff_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity debounce_trigger_1 is
  port (
    \ff_reg[1]_0\ : out STD_LOGIC;
    \ff2_reg[0]\ : out STD_LOGIC;
    reset : out STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of debounce_trigger_1 : entity is "debounce_trigger";
end debounce_trigger_1;

architecture STRUCTURE of debounce_trigger_1 is
  signal \^ff2_reg[0]\ : STD_LOGIC;
  signal \^ff_reg[1]_0\ : STD_LOGIC;
begin
  \ff2_reg[0]\ <= \^ff2_reg[0]\;
  \ff_reg[1]_0\ <= \^ff_reg[1]_0\;
\counter1[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ff_reg[1]_0\,
      I1 => \^ff2_reg[0]\,
      O => reset
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => btn_IBUF(0),
      Q => \^ff_reg[1]_0\,
      R => '0'
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \^ff_reg[1]_0\,
      Q => \^ff2_reg[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity next_state_logic is
  port (
    led_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_state_indecater : out STD_LOGIC_VECTOR ( 1 downto 0 );
    lreset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC
  );
end next_state_logic;

architecture STRUCTURE of next_state_logic is
  signal \lnext_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \lnext_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^next_state_indecater\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lnext_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \lnext_state[1]_i_1\ : label is "soft_lutpair1";
begin
  next_state_indecater(1 downto 0) <= \^next_state_indecater\(1 downto 0);
\led_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^next_state_indecater\(1),
      I1 => lreset,
      O => led_OBUF(0)
    );
\lnext_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F70C"
    )
        port map (
      I0 => lreset,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^next_state_indecater\(0),
      O => \lnext_state[0]_i_1_n_0\
    );
\lnext_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F0080"
    )
        port map (
      I0 => \^next_state_indecater\(0),
      I1 => lreset,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^next_state_indecater\(1),
      O => \lnext_state[1]_i_1_n_0\
    );
\lnext_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \lnext_state[0]_i_1_n_0\,
      Q => \^next_state_indecater\(0),
      R => '0'
    );
\lnext_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \lnext_state[1]_i_1_n_0\,
      Q => \^next_state_indecater\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity warning is
  port (
    warning_out : out STD_LOGIC;
    led_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \ff_reg[1]\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    led_reg : in STD_LOGIC;
    next_state_indecater : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lreset : in STD_LOGIC;
    \ff_reg[0]\ : in STD_LOGIC
  );
end warning;

architecture STRUCTURE of warning is
  signal Buff_out_i_1_n_0 : STD_LOGIC;
  signal counter1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal counter10 : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__5_n_4\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__5_n_5\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__5_n_6\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__6_n_5\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__6_n_6\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry__6_n_7\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \counter10_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \counter1[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter1[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter1[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter1[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter1[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter1[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter1[0]_i_8_n_0\ : STD_LOGIC;
  signal \counter1[0]_i_9_n_0\ : STD_LOGIC;
  signal counter1_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter2[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[2]_i_2_n_0\ : STD_LOGIC;
  signal \counter2_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter2_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 24 to 24 );
  signal \counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal en : STD_LOGIC;
  signal en2 : STD_LOGIC;
  signal \en2[0]_i_1_n_0\ : STD_LOGIC;
  signal \ff2_reg_n_0_[0]\ : STD_LOGIC;
  signal \ff2_reg_n_0_[1]\ : STD_LOGIC;
  signal \ff3_reg_n_0_[0]\ : STD_LOGIC;
  signal \ff3_reg_n_0_[1]\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \NLW_counter10_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter10_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_reg[24]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[24]_i_1__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter1[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter1[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter1[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter1[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter1[14]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter1[15]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter1[16]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter1[17]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter1[18]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter1[19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter1[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter1[20]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter1[21]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter1[22]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter1[23]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter1[24]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter1[25]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter1[26]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter1[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter1[28]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter1[29]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter1[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter1[30]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter1[31]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter1[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter1[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter1[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter1[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter1[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter1[9]_i_1\ : label is "soft_lutpair15";
begin
Buff_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7D3C"
    )
        port map (
      I0 => \ff2_reg_n_0_[1]\,
      I1 => \ff3_reg_n_0_[0]\,
      I2 => \ff3_reg_n_0_[1]\,
      I3 => \ff2_reg_n_0_[0]\,
      O => Buff_out_i_1_n_0
    );
Buff_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Buff_out_i_1_n_0,
      Q => warning_out,
      R => '0'
    );
\counter10_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter10_inferred__0/i__carry_n_0\,
      CO(2) => \counter10_inferred__0/i__carry_n_1\,
      CO(1) => \counter10_inferred__0/i__carry_n_2\,
      CO(0) => \counter10_inferred__0/i__carry_n_3\,
      CYINIT => counter1(0),
      DI(3 downto 0) => B"0000",
      O(3) => \counter10_inferred__0/i__carry_n_4\,
      O(2) => \counter10_inferred__0/i__carry_n_5\,
      O(1) => \counter10_inferred__0/i__carry_n_6\,
      O(0) => \counter10_inferred__0/i__carry_n_7\,
      S(3 downto 0) => counter1(4 downto 1)
    );
\counter10_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter10_inferred__0/i__carry_n_0\,
      CO(3) => \counter10_inferred__0/i__carry__0_n_0\,
      CO(2) => \counter10_inferred__0/i__carry__0_n_1\,
      CO(1) => \counter10_inferred__0/i__carry__0_n_2\,
      CO(0) => \counter10_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter10_inferred__0/i__carry__0_n_4\,
      O(2) => \counter10_inferred__0/i__carry__0_n_5\,
      O(1) => \counter10_inferred__0/i__carry__0_n_6\,
      O(0) => \counter10_inferred__0/i__carry__0_n_7\,
      S(3 downto 0) => counter1(8 downto 5)
    );
\counter10_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter10_inferred__0/i__carry__0_n_0\,
      CO(3) => \counter10_inferred__0/i__carry__1_n_0\,
      CO(2) => \counter10_inferred__0/i__carry__1_n_1\,
      CO(1) => \counter10_inferred__0/i__carry__1_n_2\,
      CO(0) => \counter10_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter10_inferred__0/i__carry__1_n_4\,
      O(2) => \counter10_inferred__0/i__carry__1_n_5\,
      O(1) => \counter10_inferred__0/i__carry__1_n_6\,
      O(0) => \counter10_inferred__0/i__carry__1_n_7\,
      S(3 downto 0) => counter1(12 downto 9)
    );
\counter10_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter10_inferred__0/i__carry__1_n_0\,
      CO(3) => \counter10_inferred__0/i__carry__2_n_0\,
      CO(2) => \counter10_inferred__0/i__carry__2_n_1\,
      CO(1) => \counter10_inferred__0/i__carry__2_n_2\,
      CO(0) => \counter10_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter10_inferred__0/i__carry__2_n_4\,
      O(2) => \counter10_inferred__0/i__carry__2_n_5\,
      O(1) => \counter10_inferred__0/i__carry__2_n_6\,
      O(0) => \counter10_inferred__0/i__carry__2_n_7\,
      S(3 downto 0) => counter1(16 downto 13)
    );
\counter10_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter10_inferred__0/i__carry__2_n_0\,
      CO(3) => \counter10_inferred__0/i__carry__3_n_0\,
      CO(2) => \counter10_inferred__0/i__carry__3_n_1\,
      CO(1) => \counter10_inferred__0/i__carry__3_n_2\,
      CO(0) => \counter10_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter10_inferred__0/i__carry__3_n_4\,
      O(2) => \counter10_inferred__0/i__carry__3_n_5\,
      O(1) => \counter10_inferred__0/i__carry__3_n_6\,
      O(0) => \counter10_inferred__0/i__carry__3_n_7\,
      S(3 downto 0) => counter1(20 downto 17)
    );
\counter10_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter10_inferred__0/i__carry__3_n_0\,
      CO(3) => \counter10_inferred__0/i__carry__4_n_0\,
      CO(2) => \counter10_inferred__0/i__carry__4_n_1\,
      CO(1) => \counter10_inferred__0/i__carry__4_n_2\,
      CO(0) => \counter10_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter10_inferred__0/i__carry__4_n_4\,
      O(2) => \counter10_inferred__0/i__carry__4_n_5\,
      O(1) => \counter10_inferred__0/i__carry__4_n_6\,
      O(0) => \counter10_inferred__0/i__carry__4_n_7\,
      S(3 downto 0) => counter1(24 downto 21)
    );
\counter10_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter10_inferred__0/i__carry__4_n_0\,
      CO(3) => \counter10_inferred__0/i__carry__5_n_0\,
      CO(2) => \counter10_inferred__0/i__carry__5_n_1\,
      CO(1) => \counter10_inferred__0/i__carry__5_n_2\,
      CO(0) => \counter10_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter10_inferred__0/i__carry__5_n_4\,
      O(2) => \counter10_inferred__0/i__carry__5_n_5\,
      O(1) => \counter10_inferred__0/i__carry__5_n_6\,
      O(0) => \counter10_inferred__0/i__carry__5_n_7\,
      S(3 downto 0) => counter1(28 downto 25)
    );
\counter10_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter10_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_counter10_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter10_inferred__0/i__carry__6_n_2\,
      CO(0) => \counter10_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter10_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2) => \counter10_inferred__0/i__carry__6_n_5\,
      O(1) => \counter10_inferred__0/i__carry__6_n_6\,
      O(0) => \counter10_inferred__0/i__carry__6_n_7\,
      S(3) => '0',
      S(2 downto 0) => counter1(31 downto 29)
    );
\counter1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \counter1[0]_i_2_n_0\,
      I1 => \counter1[0]_i_3_n_0\,
      I2 => \counter1[0]_i_4_n_0\,
      I3 => counter1(0),
      O => counter1_0(0)
    );
\counter1[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => counter1(12),
      I1 => counter1(13),
      I2 => counter1(10),
      I3 => counter1(11),
      I4 => \counter1[0]_i_5_n_0\,
      O => \counter1[0]_i_2_n_0\
    );
\counter1[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => counter1(4),
      I1 => counter1(5),
      I2 => counter1(2),
      I3 => counter1(3),
      I4 => \counter1[0]_i_6_n_0\,
      O => \counter1[0]_i_3_n_0\
    );
\counter1[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter1[0]_i_7_n_0\,
      I1 => \counter1[0]_i_8_n_0\,
      I2 => counter1(31),
      I3 => counter1(30),
      I4 => counter1(1),
      I5 => \counter1[0]_i_9_n_0\,
      O => \counter1[0]_i_4_n_0\
    );
\counter1[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter1(15),
      I1 => counter1(14),
      I2 => counter1(16),
      I3 => counter1(17),
      O => \counter1[0]_i_5_n_0\
    );
\counter1[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter1(7),
      I1 => counter1(6),
      I2 => counter1(9),
      I3 => counter1(8),
      O => \counter1[0]_i_6_n_0\
    );
\counter1[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => counter1(23),
      I1 => counter1(22),
      I2 => counter1(25),
      I3 => counter1(24),
      O => \counter1[0]_i_7_n_0\
    );
\counter1[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => counter1(19),
      I1 => counter1(18),
      I2 => counter1(21),
      I3 => counter1(20),
      O => \counter1[0]_i_8_n_0\
    );
\counter1[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter1(27),
      I1 => counter1(26),
      I2 => counter1(29),
      I3 => counter1(28),
      O => \counter1[0]_i_9_n_0\
    );
\counter1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__1_n_6\,
      O => counter1_0(10)
    );
\counter1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__1_n_5\,
      O => counter1_0(11)
    );
\counter1[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__1_n_4\,
      O => counter1_0(12)
    );
\counter1[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__2_n_7\,
      O => counter1_0(13)
    );
\counter1[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__2_n_6\,
      O => counter1_0(14)
    );
\counter1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__2_n_5\,
      O => counter1_0(15)
    );
\counter1[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__2_n_4\,
      O => counter1_0(16)
    );
\counter1[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__3_n_7\,
      O => counter1_0(17)
    );
\counter1[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__3_n_6\,
      O => counter1_0(18)
    );
\counter1[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__3_n_5\,
      O => counter1_0(19)
    );
\counter1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry_n_7\,
      O => counter1_0(1)
    );
\counter1[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__3_n_4\,
      O => counter1_0(20)
    );
\counter1[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__4_n_7\,
      O => counter1_0(21)
    );
\counter1[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__4_n_6\,
      O => counter1_0(22)
    );
\counter1[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__4_n_5\,
      O => counter1_0(23)
    );
\counter1[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__4_n_4\,
      O => counter1_0(24)
    );
\counter1[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__5_n_7\,
      O => counter1_0(25)
    );
\counter1[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__5_n_6\,
      O => counter1_0(26)
    );
\counter1[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__5_n_5\,
      O => counter1_0(27)
    );
\counter1[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__5_n_4\,
      O => counter1_0(28)
    );
\counter1[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__6_n_7\,
      O => counter1_0(29)
    );
\counter1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry_n_6\,
      O => counter1_0(2)
    );
\counter1[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__6_n_6\,
      O => counter1_0(30)
    );
\counter1[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en,
      I1 => \ff_reg[1]\,
      O => counter10
    );
\counter1[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__6_n_5\,
      O => counter1_0(31)
    );
\counter1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry_n_5\,
      O => counter1_0(3)
    );
\counter1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry_n_4\,
      O => counter1_0(4)
    );
\counter1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__0_n_7\,
      O => counter1_0(5)
    );
\counter1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__0_n_6\,
      O => counter1_0(6)
    );
\counter1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__0_n_5\,
      O => counter1_0(7)
    );
\counter1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__0_n_4\,
      O => counter1_0(8)
    );
\counter1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => \counter10_inferred__0/i__carry__1_n_7\,
      O => counter1_0(9)
    );
\counter1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(0),
      Q => counter1(0),
      R => reset
    );
\counter1_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(10),
      Q => counter1(10),
      S => reset
    );
\counter1_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(11),
      Q => counter1(11),
      S => reset
    );
\counter1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(12),
      Q => counter1(12),
      R => reset
    );
\counter1_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(13),
      Q => counter1(13),
      S => reset
    );
\counter1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(14),
      Q => counter1(14),
      R => reset
    );
\counter1_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(15),
      Q => counter1(15),
      S => reset
    );
\counter1_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(16),
      Q => counter1(16),
      S => reset
    );
\counter1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(17),
      Q => counter1(17),
      R => reset
    );
\counter1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(18),
      Q => counter1(18),
      R => reset
    );
\counter1_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(19),
      Q => counter1(19),
      S => reset
    );
\counter1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(1),
      Q => counter1(1),
      R => reset
    );
\counter1_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(20),
      Q => counter1(20),
      S => reset
    );
\counter1_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(21),
      Q => counter1(21),
      S => reset
    );
\counter1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(22),
      Q => counter1(22),
      R => reset
    );
\counter1_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(23),
      Q => counter1(23),
      S => reset
    );
\counter1_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(24),
      Q => counter1(24),
      S => reset
    );
\counter1_reg[25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(25),
      Q => counter1(25),
      S => reset
    );
\counter1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(26),
      Q => counter1(26),
      R => reset
    );
\counter1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(27),
      Q => counter1(27),
      R => reset
    );
\counter1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(28),
      Q => counter1(28),
      R => reset
    );
\counter1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(29),
      Q => counter1(29),
      R => reset
    );
\counter1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(2),
      Q => counter1(2),
      R => reset
    );
\counter1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(30),
      Q => counter1(30),
      R => reset
    );
\counter1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(31),
      Q => counter1(31),
      R => reset
    );
\counter1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(3),
      Q => counter1(3),
      R => reset
    );
\counter1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(4),
      Q => counter1(4),
      R => reset
    );
\counter1_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(5),
      Q => counter1(5),
      S => reset
    );
\counter1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(6),
      Q => counter1(6),
      R => reset
    );
\counter1_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(7),
      Q => counter1(7),
      S => reset
    );
\counter1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(8),
      Q => counter1(8),
      R => reset
    );
\counter1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => counter10,
      D => counter1_0(9),
      Q => counter1(9),
      R => reset
    );
\counter2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9A00000000AAAA"
    )
        port map (
      I0 => \counter2_reg_n_0_[0]\,
      I1 => data0,
      I2 => en,
      I3 => \counter2[2]_i_2_n_0\,
      I4 => \ff_reg[1]\,
      I5 => \ff_reg[0]\,
      O => \counter2[0]_i_1_n_0\
    );
\counter2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA9AAAAA"
    )
        port map (
      I0 => \counter2_reg_n_0_[1]\,
      I1 => \counter2[2]_i_2_n_0\,
      I2 => counter10,
      I3 => data0,
      I4 => \counter2_reg_n_0_[0]\,
      I5 => reset,
      O => \counter2[1]_i_1_n_0\
    );
\counter2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4F0F0F0"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => counter10,
      I2 => data0,
      I3 => \counter2_reg_n_0_[0]\,
      I4 => \counter2_reg_n_0_[1]\,
      I5 => reset,
      O => \counter2[2]_i_1_n_0\
    );
\counter2[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter1[0]_i_4_n_0\,
      I1 => \counter1[0]_i_3_n_0\,
      I2 => \counter1[0]_i_2_n_0\,
      I3 => counter1(0),
      O => \counter2[2]_i_2_n_0\
    );
\counter2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \counter2[0]_i_1_n_0\,
      Q => \counter2_reg_n_0_[0]\,
      R => '0'
    );
\counter2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \counter2[1]_i_1_n_0\,
      Q => \counter2_reg_n_0_[1]\,
      R => '0'
    );
\counter2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \counter2[2]_i_1_n_0\,
      Q => data0,
      R => '0'
    );
\counter[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => en,
      O => sel
    );
\counter[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_3__0_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[0]_i_2__0_n_7\,
      Q => \counter_reg_n_0_[0]\,
      R => reset
    );
\counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2__0_n_0\,
      CO(2) => \counter_reg[0]_i_2__0_n_1\,
      CO(1) => \counter_reg[0]_i_2__0_n_2\,
      CO(0) => \counter_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_2__0_n_4\,
      O(2) => \counter_reg[0]_i_2__0_n_5\,
      O(1) => \counter_reg[0]_i_2__0_n_6\,
      O(0) => \counter_reg[0]_i_2__0_n_7\,
      S(3) => \counter_reg_n_0_[3]\,
      S(2) => \counter_reg_n_0_[2]\,
      S(1) => \counter_reg_n_0_[1]\,
      S(0) => \counter[0]_i_3__0_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[8]_i_1__1_n_5\,
      Q => \counter_reg_n_0_[10]\,
      R => reset
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[8]_i_1__1_n_4\,
      Q => \counter_reg_n_0_[11]\,
      R => reset
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[12]_i_1__1_n_7\,
      Q => \counter_reg_n_0_[12]\,
      R => reset
    );
\counter_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1__1_n_0\,
      CO(3) => \counter_reg[12]_i_1__1_n_0\,
      CO(2) => \counter_reg[12]_i_1__1_n_1\,
      CO(1) => \counter_reg[12]_i_1__1_n_2\,
      CO(0) => \counter_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1__1_n_4\,
      O(2) => \counter_reg[12]_i_1__1_n_5\,
      O(1) => \counter_reg[12]_i_1__1_n_6\,
      O(0) => \counter_reg[12]_i_1__1_n_7\,
      S(3) => \counter_reg_n_0_[15]\,
      S(2) => \counter_reg_n_0_[14]\,
      S(1) => \counter_reg_n_0_[13]\,
      S(0) => \counter_reg_n_0_[12]\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[12]_i_1__1_n_6\,
      Q => \counter_reg_n_0_[13]\,
      R => reset
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[12]_i_1__1_n_5\,
      Q => \counter_reg_n_0_[14]\,
      R => reset
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[12]_i_1__1_n_4\,
      Q => \counter_reg_n_0_[15]\,
      R => reset
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[16]_i_1__1_n_7\,
      Q => \counter_reg_n_0_[16]\,
      R => reset
    );
\counter_reg[16]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1__1_n_0\,
      CO(3) => \counter_reg[16]_i_1__1_n_0\,
      CO(2) => \counter_reg[16]_i_1__1_n_1\,
      CO(1) => \counter_reg[16]_i_1__1_n_2\,
      CO(0) => \counter_reg[16]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1__1_n_4\,
      O(2) => \counter_reg[16]_i_1__1_n_5\,
      O(1) => \counter_reg[16]_i_1__1_n_6\,
      O(0) => \counter_reg[16]_i_1__1_n_7\,
      S(3) => \counter_reg_n_0_[19]\,
      S(2) => \counter_reg_n_0_[18]\,
      S(1) => \counter_reg_n_0_[17]\,
      S(0) => \counter_reg_n_0_[16]\
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[16]_i_1__1_n_6\,
      Q => \counter_reg_n_0_[17]\,
      R => reset
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[16]_i_1__1_n_5\,
      Q => \counter_reg_n_0_[18]\,
      R => reset
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[16]_i_1__1_n_4\,
      Q => \counter_reg_n_0_[19]\,
      R => reset
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[0]_i_2__0_n_6\,
      Q => \counter_reg_n_0_[1]\,
      R => reset
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[20]_i_1__1_n_7\,
      Q => \counter_reg_n_0_[20]\,
      R => reset
    );
\counter_reg[20]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1__1_n_0\,
      CO(3) => \counter_reg[20]_i_1__1_n_0\,
      CO(2) => \counter_reg[20]_i_1__1_n_1\,
      CO(1) => \counter_reg[20]_i_1__1_n_2\,
      CO(0) => \counter_reg[20]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1__1_n_4\,
      O(2) => \counter_reg[20]_i_1__1_n_5\,
      O(1) => \counter_reg[20]_i_1__1_n_6\,
      O(0) => \counter_reg[20]_i_1__1_n_7\,
      S(3) => \counter_reg_n_0_[23]\,
      S(2) => \counter_reg_n_0_[22]\,
      S(1) => \counter_reg_n_0_[21]\,
      S(0) => \counter_reg_n_0_[20]\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[20]_i_1__1_n_6\,
      Q => \counter_reg_n_0_[21]\,
      R => reset
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[20]_i_1__1_n_5\,
      Q => \counter_reg_n_0_[22]\,
      R => reset
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[20]_i_1__1_n_4\,
      Q => \counter_reg_n_0_[23]\,
      R => reset
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[24]_i_1__1_n_7\,
      Q => counter_reg(24),
      R => reset
    );
\counter_reg[24]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1__1_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[24]_i_1__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counter_reg[24]_i_1__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \counter_reg[24]_i_1__1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => counter_reg(24)
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[0]_i_2__0_n_5\,
      Q => \counter_reg_n_0_[2]\,
      R => reset
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[0]_i_2__0_n_4\,
      Q => \counter_reg_n_0_[3]\,
      R => reset
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[4]_i_1__1_n_7\,
      Q => \counter_reg_n_0_[4]\,
      R => reset
    );
\counter_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2__0_n_0\,
      CO(3) => \counter_reg[4]_i_1__1_n_0\,
      CO(2) => \counter_reg[4]_i_1__1_n_1\,
      CO(1) => \counter_reg[4]_i_1__1_n_2\,
      CO(0) => \counter_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1__1_n_4\,
      O(2) => \counter_reg[4]_i_1__1_n_5\,
      O(1) => \counter_reg[4]_i_1__1_n_6\,
      O(0) => \counter_reg[4]_i_1__1_n_7\,
      S(3) => \counter_reg_n_0_[7]\,
      S(2) => \counter_reg_n_0_[6]\,
      S(1) => \counter_reg_n_0_[5]\,
      S(0) => \counter_reg_n_0_[4]\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[4]_i_1__1_n_6\,
      Q => \counter_reg_n_0_[5]\,
      R => reset
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[4]_i_1__1_n_5\,
      Q => \counter_reg_n_0_[6]\,
      R => reset
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[4]_i_1__1_n_4\,
      Q => \counter_reg_n_0_[7]\,
      R => reset
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[8]_i_1__1_n_7\,
      Q => \counter_reg_n_0_[8]\,
      R => reset
    );
\counter_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1__1_n_0\,
      CO(3) => \counter_reg[8]_i_1__1_n_0\,
      CO(2) => \counter_reg[8]_i_1__1_n_1\,
      CO(1) => \counter_reg[8]_i_1__1_n_2\,
      CO(0) => \counter_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1__1_n_4\,
      O(2) => \counter_reg[8]_i_1__1_n_5\,
      O(1) => \counter_reg[8]_i_1__1_n_6\,
      O(0) => \counter_reg[8]_i_1__1_n_7\,
      S(3) => \counter_reg_n_0_[11]\,
      S(2) => \counter_reg_n_0_[10]\,
      S(1) => \counter_reg_n_0_[9]\,
      S(0) => \counter_reg_n_0_[8]\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \counter_reg[8]_i_1__1_n_6\,
      Q => \counter_reg_n_0_[9]\,
      R => reset
    );
\en2[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \counter2[2]_i_2_n_0\,
      I1 => data0,
      I2 => en2,
      O => \en2[0]_i_1_n_0\
    );
\en2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \en2[0]_i_1_n_0\,
      Q => en2,
      R => '0'
    );
\en_reg__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => counter_reg(24),
      Q => en,
      R => '0'
    );
\ff2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \ff_reg[1]\,
      Q => \ff2_reg_n_0_[0]\,
      R => '0'
    );
\ff2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \ff2_reg_n_0_[0]\,
      Q => \ff2_reg_n_0_[1]\,
      R => '0'
    );
\ff3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => en2,
      Q => \ff3_reg_n_0_[0]\,
      R => '0'
    );
\ff3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \ff3_reg_n_0_[0]\,
      Q => \ff3_reg_n_0_[1]\,
      R => '0'
    );
\led_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5C0C0C0C0C0C0C0"
    )
        port map (
      I0 => \ff2_reg_n_0_[1]\,
      I1 => led_reg,
      I2 => next_state_indecater(0),
      I3 => lreset,
      I4 => next_state_indecater(1),
      I5 => \ff2_reg_n_0_[0]\,
      O => led_OBUF(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity State_machine is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    sw_state : in STD_LOGIC;
    reset : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of State_machine : entity is true;
end State_machine;

architecture STRUCTURE of State_machine is
  signal btn_IBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal debounce_switch_state_n_0 : STD_LOGIC;
  signal debounce_switch_state_n_1 : STD_LOGIC;
  signal led_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal lreset : STD_LOGIC;
  signal next_state_indecater : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal press_state_n_0 : STD_LOGIC;
  signal reset_0 : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal sw_state_IBUF : STD_LOGIC;
  signal trigger_state_n_0 : STD_LOGIC;
  signal trigger_state_n_1 : STD_LOGIC;
  signal warning_out : STD_LOGIC;
begin
\btn_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn(0),
      O => btn_IBUF(0)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
debounce_switch_state: entity work.debounce_trigger
     port map (
      CLK => clk_IBUF_BUFG,
      D(0) => sw_state_IBUF,
      Q(1) => debounce_switch_state_n_0,
      Q(0) => debounce_switch_state_n_1
    );
\led_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(0),
      O => led(0)
    );
\led_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => led(1)
    );
\led_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(2),
      O => led(2)
    );
\led_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(3),
      O => led(3)
    );
press_state: entity work.State_press
     port map (
      CLK => clk_IBUF_BUFG,
      \ff_reg[1]\ => trigger_state_n_1,
      \led[0]\ => press_state_n_0,
      lreset => lreset,
      next_state_indecater(0) => next_state_indecater(1),
      reset => reset_0,
      warning_out => warning_out
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
reset_state: entity work.State_press_0
     port map (
      CLK => clk_IBUF_BUFG,
      D(0) => reset_IBUF,
      led_OBUF(0) => led_OBUF(2),
      lreset => lreset,
      next_state_indecater(0) => next_state_indecater(0)
    );
sw_state_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => sw_state,
      O => sw_state_IBUF
    );
switch_state: entity work.next_state_logic
     port map (
      CLK => clk_IBUF_BUFG,
      Q(1) => debounce_switch_state_n_0,
      Q(0) => debounce_switch_state_n_1,
      led_OBUF(0) => led_OBUF(3),
      lreset => lreset,
      next_state_indecater(1 downto 0) => next_state_indecater(1 downto 0)
    );
trigger_state: entity work.debounce_trigger_1
     port map (
      CLK => clk_IBUF_BUFG,
      btn_IBUF(0) => btn_IBUF(0),
      \ff2_reg[0]\ => trigger_state_n_1,
      \ff_reg[1]_0\ => trigger_state_n_0,
      reset => reset_0
    );
warning_state: entity work.warning
     port map (
      CLK => clk_IBUF_BUFG,
      \ff_reg[0]\ => trigger_state_n_0,
      \ff_reg[1]\ => trigger_state_n_1,
      led_OBUF(0) => led_OBUF(0),
      led_reg => press_state_n_0,
      lreset => lreset,
      next_state_indecater(1 downto 0) => next_state_indecater(1 downto 0),
      reset => reset_0,
      warning_out => warning_out
    );
end STRUCTURE;
