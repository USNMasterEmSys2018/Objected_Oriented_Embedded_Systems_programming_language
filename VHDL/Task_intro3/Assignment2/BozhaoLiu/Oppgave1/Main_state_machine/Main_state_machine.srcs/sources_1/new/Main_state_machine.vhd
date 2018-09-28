----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/18/2018 12:21:43 PM
-- Design Name: 
-- Module Name: Main_state_machine - Behavioral
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

entity Main_state_machine is
    Port ( clk : in STD_LOGIC;
           data_in : in STD_LOGIC;
           read_cmd : in STD_LOGIC;
           LF_read, LF_send : in STD_LOGIC;
           read_ctrl : out STD_LOGIC;
           send_ctrl : out STD_LOGIC);
end Main_state_machine;

architecture Behavioral of Main_state_machine is
    type state is 
        (
            idle_state,
            reading_state,
            output_state
        );
    signal current_state, Next_state: state := idle_state;
    signal FF_data_in, FF_read_cmd, FF_LF_read, FF_LF_send : STD_LOGIC_vector (1 downto 0);
    signal Buff_read_ctrl, Buff_send_ctrl: std_logic := '0';
begin
    FlipFlop:process(clk, data_in, read_cmd, LF_read, LF_send)
    begin
        if rising_edge(clk) then
            FF_data_in <= FF_data_in(0) & data_in;
            FF_read_cmd <= FF_read_cmd(0) & read_cmd;
            FF_LF_read <= FF_LF_read(0) & LF_read;
            FF_LF_send <= FF_LF_send(0) & LF_send;
        end if;
    end process;

    next_state_logic:process(current_state, FF_data_in, FF_read_cmd, FF_LF_read, FF_LF_send)
    begin
        next_state <= current_state;
        case current_state is
            when idle_state =>
                if FF_data_in = "10" then
                    next_state <= reading_state;
                end if;
                
            when reading_state => 
                if FF_read_cmd = "01" then
                    next_state <= idle_state;
                elsif FF_LF_read = "01" then
                    next_state <= output_state;
                end if;
                
            when output_state =>
                if FF_LF_send = "01" then
                   next_state <= idle_state; 
                end if;
        end case;
    end process;

    Sync_proc: process(clk)
    begin
        if rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;
    
    Output_logic:process(current_state)
    begin
        case current_state is
                
            when reading_state => 
                Buff_read_ctrl <= '1';
                Buff_send_ctrl <= '0';
                
            when output_state =>
                Buff_read_ctrl <= '0';
                Buff_send_ctrl <= '1';
                
            when others  =>
                Buff_read_ctrl <= '0';
                Buff_send_ctrl <= '0';
        end case;
    end process;
    
    Buffer_out:process(clk)
    begin
        if rising_edge(clk) then
            read_ctrl <= Buff_read_ctrl;
            send_ctrl <= Buff_send_ctrl;
        end if;
    end process;
    
end Behavioral;
