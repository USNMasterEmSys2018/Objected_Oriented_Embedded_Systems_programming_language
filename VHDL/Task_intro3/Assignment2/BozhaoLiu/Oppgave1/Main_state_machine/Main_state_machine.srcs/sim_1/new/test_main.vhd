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

entity test_main is
--  Port ( );
end test_main;

architecture Behavioral of test_main is
    signal clk : STD_LOGIC := '0';
    signal data_in, Data_out : STD_LOGIC := '0';
    signal read_cmd : STD_LOGIC := '0';
    signal LF_read, LF_send : STD_LOGIC := '0';
    signal read_ctrl : STD_LOGIC := '0';
    signal send_ctrl : STD_LOGIC := '0';
    signal Data_buff, data_buff2 : std_logic_vector(7 downto 0);
    signal address_reg, Address_to_read: STD_LOGIC_VECTOR ( 12 downto 0 ) := (others => '0');
    
    constant CLK_period: integer := 8;
    constant baudrate: integer := 115200;
    constant Baud_width: time := 1000000000 ns/baudrate;
    constant datas: std_logic_vector(7 downto 0):="01010101";
    constant LineFeed: std_logic_vector(7 downto 0) :="00001010";
    
    component Main_state_machine is 
        port(
            clk : in STD_LOGIC;
            data_in : in STD_LOGIC;
            read_cmd : in STD_LOGIC;
            LF_read, LF_send : in STD_LOGIC;
            read_ctrl : out STD_LOGIC;
            send_ctrl : out STD_LOGIC
            );
    end component;
    
    component Read_data_state_machine is
        Generic(Baud_width: integer);
        Port ( data_in : in STD_LOGIC;
               clk : in STD_LOGIC;
               read_control : in STD_LOGIC;
               LF : out STD_LOGIC;
               Read_cmd : out STD_LOGIC;
               Data_out : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    component Memory_control is
        Port ( clk : in STD_LOGIC;
               data_in : in STD_LOGIC_VECTOR (7 downto 0);
               Write_cmd : in STD_LOGIC;
               reset : in STD_LOGIC;
               address_reg : out STD_LOGIC_VECTOR ( 12 downto 0 );
               address_read : in STD_LOGIC_VECTOR ( 12 downto 0 ) := (others => '0');
               data_out : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
      component send_data_state_machine
        Generic(Baud_width: integer);
        Port ( send_control : in STD_LOGIC;
               clk : in STD_LOGIC;
               address_reg : in STD_LOGIC_VECTOR ( 12 downto 0 );
               Data_in : in STD_LOGIC_VECTOR (7 downto 0);
               Address_to_read : out STD_LOGIC_VECTOR ( 12 downto 0 );
               LF : out STD_LOGIC;
               Data_out : out STD_LOGIC);
    end component;
begin
    main:Main_state_machine 
            port map(
                    clk => clk,
                    data_in => data_in,
                    read_cmd => read_cmd,
                    LF_Read => LF_read,
                    LF_send =>LF_Send,
                    read_ctrl => read_CTRL,
                    send_ctrl => send_ctrl
                    );
                                    
    data_read_in:Read_data_state_machine 
                    generic map(Baud_width => 1000000000/baudrate/CLK_period
                                --baudrate => baudrate,
                                --clk_period => clk_period
                                )
                    port map(
                            clk => clk,
                            data_in => data_in,
                            read_control => read_ctrl,
                            LF => LF_read,
                            Read_cmd => Read_cmd,
                            Data_out => Data_buff
                            );
                            
    uut: send_data_state_machine 
                  generic map ( Baud_width   =>  1000000000/baudrate/CLK_period)
                  port map ( send_control    => send_ctrl,
                             clk             => clk,
                             address_reg     => address_reg,
                             Data_in         => data_buff2,
                             Address_to_read => Address_to_read,
                             LF              => LF_send,
                             Data_out        => Data_out );
    memory_controling:Memory_control 
                    port map(
                            clk => clk,
                            data_in => Data_buff,
                            Write_cmd => Read_cmd,
                            reset => LF_send,
                            address_reg => address_reg,
                            address_read => Address_to_read,
                            data_out => data_buff2
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
