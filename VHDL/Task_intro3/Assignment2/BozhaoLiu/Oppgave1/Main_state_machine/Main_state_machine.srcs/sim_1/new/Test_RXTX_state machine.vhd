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
      Port (
            clk: in std_logic;
            rx: in std_logic;
            tx: out std_logic
            );
    end component;
    
    signal clk : STD_LOGIC := '0';
    signal data_in, Data_out : STD_LOGIC := '0';
    constant baudrate: integer := 115200;
    constant Baud_width: time := 1000000000 ns/baudrate;
    constant datas: std_logic_vector(7 downto 0):="01010101";
    constant LineFeed: std_logic_vector(7 downto 0) :="00001010";
begin
    uut: RX_TX_read_write_control port map ( clk => clk,
                                         rx  => data_in,
                                         tx  => Data_out );
    clock_control:process
    begin
        clk <= '0';
        wait for 4 ns;
        clk <= '1';
        wait for 4 ns;
    end process;
    
    data_control:process
    begin
        data_in <= '0';  
        wait for Baud_width;
        --start bit
        data_in <= '1';  
        wait for Baud_width;
        --data 1
        for i in 7 downto 0 loop
            data_in <= datas(i);  
            wait for Baud_width;
        end loop;
        --pause bit
        data_in <= '0';  
        wait for Baud_width*3;
        --start LF
        data_in <= '1';  
        wait for Baud_width;
        --data 1
        for i in 7 downto 0 loop
            data_in <= LineFeed(i);  
            wait for Baud_width;
        end loop;
        --pause bit
        data_in <= '0';  
        wait for Baud_width*40;
    end process;

end Behavioral;
