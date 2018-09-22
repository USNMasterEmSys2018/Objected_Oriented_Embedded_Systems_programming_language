----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/20/2018 06:08:13 PM
-- Design Name: 
-- Module Name: Test_RXTX_state machine - Behavioral
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

entity Test_RXTX_state_machine is
--  Port ( );
end Test_RXTX_state_machine;

architecture Behavioral of Test_RXTX_state_machine is
      component RX_TX_read_write_control
      Generic(Baud_width: integer := 1085);
      Port (
            clk: in std_logic;
            rx: in std_logic;
            tx: out std_logic
            );
    end component;
    
    signal clk : STD_LOGIC := '0';
    signal data_in, Data_out : STD_LOGIC := '0';
    constant baudrate: integer := 115200;
    constant Baud_width: integer := 1000000000/baudrate/8;
    constant Baud_width_time: time := Baud_width*8ns;
    constant datas: std_logic_vector(7 downto 0):="01010101";
    constant LineFeed: std_logic_vector(7 downto 0) :="00001010";
begin
    uut: RX_TX_read_write_control 
            Generic map(Baud_width => Baud_width)
            port map (   clk => clk,
                         rx  => data_in,
                         tx  => Data_out);
    clock_control:process
    begin
        clk <= '0';
        wait for 4 ns;
        clk <= '1';
        wait for 4 ns;
    end process;
    
    data_control:process
    begin
        data_in <= '1';  
        wait for Baud_width_time;
        --start bit
        data_in <= '0';  
        wait for Baud_width_time;
        --data 1
        for i in 7 downto 0 loop
            data_in <= not(datas(7-i));  
            wait for Baud_width_time;
        end loop;
        --pause bit
        data_in <= '1';  
        wait for Baud_width_time*3;
        --start LF
        data_in <= '0';  
        wait for Baud_width_time;
        --data 1
        for i in 7 downto 0 loop
            data_in <= (LineFeed(7-i));  
            wait for Baud_width_time;
        end loop;
        --pause bit
        data_in <= '1';  
        wait for Baud_width_time*40;
                data_in <= '0';  
        wait for Baud_width_time;
        --start bit
        data_in <= '0';  
        wait for Baud_width_time;
        --data 1
        for i in 7 downto 0 loop
            data_in <= (datas(7-i));  
            wait for Baud_width_time;
        end loop;
        --pause bit
        data_in <= '1';  
        wait for Baud_width_time*3;
        --start LF
        data_in <= '0';  
        wait for Baud_width_time;
        --data 1
        for i in 7 downto 0 loop
            data_in <= (LineFeed(7-i));  
            wait for Baud_width_time;
        end loop;
        --pause bit
        data_in <= '1';  
        wait for Baud_width_time*40;
    end process;

end Behavioral;
