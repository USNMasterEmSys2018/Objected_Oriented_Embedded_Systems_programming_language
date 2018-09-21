library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RX_TX_read_write_control is
    generic( Baud_width: integer := 1085);
    Port (
        clk: in std_logic;
        rx: in std_logic;
        tx: out std_logic;
        sw: in std_logic_vector(0  downto 0); --change mode and led output
        led: out std_logic_vector(3  downto 0) --output the data controled by sw
        );
end RX_TX_read_write_control;

architecture Behavioral of RX_TX_read_write_control is
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
    
    signal read_cmd, tx_buff, rx_buff : STD_LOGIC := '0';
    signal LF_read, LF_send : STD_LOGIC := '0';
    signal read_ctrl : STD_LOGIC := '0';
    signal send_ctrl : STD_LOGIC := '0';
    signal sta_in, sta_read_cmd, sta_LF_read, sta_LF_Send, sta_read_ctrl, sta_send_ctrl: std_logic := '0';
    signal Data_buff, data_buff2, data_test : std_logic_vector(7 downto 0);
    signal address_reg, Address_to_read: STD_LOGIC_VECTOR ( 12 downto 0 ) := (others => '0');
    
    constant CLK_period: integer := 8;
    constant baudrate: integer := 115200;
    
begin
    main:Main_state_machine 
            port map(
                    clk => clk,
                    data_in => rx_buff,
                    read_cmd => read_cmd,
                    LF_Read => LF_read,
                    LF_send =>LF_Send,
                    read_ctrl => read_CTRL,
                    send_ctrl => send_ctrl
                    );
    rx_buff <= not(rx);                                
    data_read_in:Read_data_state_machine 
                    generic map(Baud_width => Baud_width
                                )
                    port map(
                            clk => clk,
                            data_in => rx_buff,
                            read_control => read_ctrl,
                            LF => LF_read,
                            Read_cmd => Read_cmd,
                            Data_out => Data_buff
                            );
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
    data_send_out: send_data_state_machine 
                  generic map ( Baud_width   =>  Baud_width)
                  port map ( send_control    => send_ctrl,
                             clk             => clk,
                             address_reg     => address_reg,
                             Data_in         => data_buff2,
                             Address_to_read => Address_to_read,
                             LF              => LF_send,
                             Data_out        => (tx_BUFF) );
     TX <= not(Tx_buff) when sw ="1" else RX;
     
     process(clk, rx_buff, read_cmd, LF_read, LF_send, read_ctrl, send_ctrl)
     begin
        if rising_edge(clk) then
            if rx_buff = '1'then
                sta_in <= '1';
            end if;
            if read_cmd = '1' then
                sta_read_cmd <= '1';
                data_test <= Data_buff;
            end if;
            if LF_read = '1' then
                sta_LF_read <= '1';
            end if;
            if LF_send = '1' then
                sta_LF_Send <= '1';
            end if;
            if read_ctrl = '1' then
                sta_read_ctrl <= '1';
            end if;
            if send_ctrl = '1' then 
                sta_send_ctrl <= '1';
            end if;
        end if;
    end process;
    led <= Data_buff(7 downto 4) when sw = "1" else
           Data_buff(3 downto 0) ;
end Behavioral;
