
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity send_data_state_machine_tb is
end;

architecture bench of send_data_state_machine_tb is

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

  signal send_control: STD_LOGIC;
  signal clk: STD_LOGIC;
  signal address_reg: STD_LOGIC_VECTOR ( 12 downto 0 );
  signal Data_in: STD_LOGIC_VECTOR (7 downto 0);
  signal Address_to_read: STD_LOGIC_VECTOR ( 12 downto 0 );
  signal LF: STD_LOGIC;
  signal Data_out: STD_LOGIC;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  -- Insert values for generic parameters !!
  uut: send_data_state_machine generic map ( Baud_width      =>  200)
                                  port map ( send_control    => send_control,
                                             clk             => clk,
                                             address_reg     => address_reg,
                                             Data_in         => Data_in,
                                             Address_to_read => Address_to_read,
                                             LF              => LF,
                                             Data_out        => Data_out );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here
    
    address_reg     <= "0000000000100";
    send_control    <= '0';
    Data_in         <= "00000000";
    wait for 1000ns;
    send_control    <= '1';
    Data_in         <= STD_LOGIC_VECTOR(unsigned(Data_in) + 1);
    wait for 1000ns;
    send_control    <= '1';
    Data_in         <= STD_LOGIC_VECTOR(unsigned(Data_in) + 1);
    wait for 1000ns;
    send_control    <= '1';
    Data_in         <= STD_LOGIC_VECTOR(unsigned(Data_in) + 1);
    wait for 1000ns;
    send_control    <= '1';
    Data_in         <= STD_LOGIC_VECTOR(unsigned(Data_in) + 1);
    wait for 1000ns;
    --stop_the_clock <= true;
    --wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;