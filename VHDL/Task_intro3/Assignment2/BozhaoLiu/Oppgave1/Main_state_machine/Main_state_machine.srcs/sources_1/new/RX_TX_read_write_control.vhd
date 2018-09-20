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
  Port (
        clk: in std_logic;
        rx: in std_logic;
        tx: out std_logic
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
    
    signal read_cmd : STD_LOGIC := '0';
    signal LF_read, LF_send : STD_LOGIC := '0';
    signal read_ctrl : STD_LOGIC := '0';
    signal send_ctrl : STD_LOGIC := '0';
    signal Data_buff, data_buff2 : std_logic_vector(7 downto 0);
    signal address_reg, Address_to_read: STD_LOGIC_VECTOR ( 12 downto 0 ) := (others => '0');
    
    constant CLK_period: integer := 8;
    constant baudrate: integer := 115200;
    constant Baud_width: integer := 1000000000/baudrate/clk_period;
begin
    main:Main_state_machine 
            port map(
                    clk => clk,
                    data_in => rx,
                    read_cmd => read_cmd,
                    LF_Read => LF_read,
                    LF_send =>LF_Send,
                    read_ctrl => read_CTRL,
                    send_ctrl => send_ctrl
                    );
                                    
    data_read_in:Read_data_state_machine 
                    generic map(Baud_width => Baud_width
                                )
                    port map(
                            clk => clk,
                            data_in => rx,
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
                             Data_out        => tx );

end Behavioral;
