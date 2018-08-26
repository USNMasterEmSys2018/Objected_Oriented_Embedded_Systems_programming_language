--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:38:02 07/10/2014
-- Design Name:   
-- Module Name:   C:/Users/dags/Qsync/VHDL/RTCC_I2C/test_i2c.vhd
-- Project Name:  RTCC_I2C
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: i2c
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_i2c IS
END test_i2c;
 
ARCHITECTURE behavior OF test_i2c IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT i2c
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         i2c_ena : IN  std_logic;
         i2c_rw : IN  std_logic;
         i2c_busy : OUT  std_logic;
         ack_tick : OUT  std_logic;
         sda : INOUT  std_logic;
         sck : OUT  std_logic;
         i2c_sl_ack : OUT  std_logic;
         i2c_ma_ack : IN  std_logic;
         i2c_address : IN  std_logic_vector(6 downto 0);
         i2c_data_in : IN  std_logic_vector(7 downto 0);
         i2c_data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal i2c_ena : std_logic := '0';
   signal i2c_rw : std_logic := '0';
   signal i2c_ma_ack : std_logic := '0';
   signal i2c_address : std_logic_vector(6 downto 0) := (others => '0');
   signal i2c_data_in : std_logic_vector(7 downto 0) := (others => '0');

	--BiDirs
   signal sda : std_logic;

 	--Outputs
   signal i2c_busy : std_logic;
   signal ack_tick : std_logic;
   signal sck : std_logic;
   signal i2c_sl_ack : std_logic;
   signal i2c_data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: i2c PORT MAP (
          clk => clk,
          reset => reset,
          i2c_ena => i2c_ena,
          i2c_rw => i2c_rw,
          i2c_busy => i2c_busy,
          ack_tick => ack_tick,
          sda => sda,
          sck => sck,
          i2c_sl_ack => i2c_sl_ack,
          i2c_ma_ack => i2c_ma_ack,
          i2c_address => i2c_address,
          i2c_data_in => i2c_data_in,
          i2c_data_out => i2c_data_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	sda_z_process: process 
	begin
		case sda is
			when '1'|'Z' => sda <= '1';
			when others  => sda <= 'Z';
		end Case;
		wait for 1 ps; 
	end process; 

	sck_process: process 
	begin
		case sck is 
			when '1'|'Z' => sck <= '1'; 
			when others  => sck <= 'Z'; 
		end case; 
		wait for 1 ps; 
	end process; 

	
	sda_process: process
	begin
		sda <= 'Z'; 
		wait until reset = '0'; --wait until sck = '0'; 
		wait until sck = '0'; 					-- Adr.Bit 0
		wait until sck = '0'; 					-- Adr.Bit 1
		wait until sck = '0'; 					-- Adr.Bit 2
		wait until sck = '0'; 					-- Adr.Bit 3
		wait until sck = '0'; 					-- Adr.Bit 4
		wait until sck = '0'; 					-- Adr.Bit 5
		wait until sck = '0'; 					-- Adr.Bit 6
		wait until sck = '0'; 					-- Adr.Bit 7
		wait until sck = '0'; sda <= '0'; 	-- Adr.Ack
		wait until sck = '0'; sda <= 'Z'; 	-- Cmd.Bit 0
		wait until sck = '0'; 					-- Cmd.Bit 1
		wait until sck = '0'; 					-- Cmd.Bit 2
		wait until sck = '0'; 					-- Cmd.Bit 3
		wait until sck = '0'; 					-- Cmd.Bit 4
		wait until sck = '0'; 					-- Cmd.Bit 5
		wait until sck = '0'; 					-- Cmd.Bit 6
		wait until sck = '0'; 					-- Cmd.Bit 7
		wait until sck = '0'; sda <= '0';	-- Cmd.Ack 
		wait until sck = '0'; sda <= 'Z'; 	-- Adr.Bit 0
		--wait until sck = '0'; 
		wait until sck = '0'; 					-- Adr.Bit 1
		wait until sck = '0'; 					-- Adr.Bit 2
		wait until sck = '0'; 					-- Adr.Bit 3
		wait until sck = '0'; 					-- Adr.Bit 4
		wait until sck = '0'; 					-- Adr.Bit 5
		wait until sck = '0'; 					-- Adr.Bit 6
		wait until sck = '0'; 					-- Adr.Bit 7
		wait until sck = '0'; sda <= '0'; 	-- Adr.Ack
		wait until sck = '0'; sda <= 'Z'; 	-- Rd.Bit 0
		wait until sck = '0'; sda <= '0'; 	-- Rd.Bit 1
		wait until sck = '0'; sda <= 'Z'; 	-- Rd.Bit 2
		wait until sck = '0'; sda <= '0'; 	-- Rd.Bit 3
		wait until sck = '0'; sda <= '0'; 	-- Rd.Bit 4
		wait until sck = '0'; sda <= 'Z';	-- Rd.Bit 5
		wait until sck = '0'; sda <= '0'; 	-- Rd.Bit 6
		wait until sck = '0'; sda <= 'Z'; 	-- Rd.Bit 7
		wait; 
	
	end process; 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset <= '1'; 
      wait for 100 ns;	
		reset <= '0'; 
      wait for clk_period*10;

      -- insert stimulus here 
		i2c_address <= "1101111"; 
		i2c_data_in <= "10100101"; 
		i2c_rw <= '0'; 
		i2c_ena <= '1'; 
		wait until ack_tick = '1'; -- Adresse ferdig
		--wait for 23 us;
		--wait until sck = '0'; 
		--wait for 10 us; 
		i2c_rw <= '1'; 
		wait for 36 us; 
		wait until sck = '0'; 
		wait for 6 us;
		wait for 50 us; 
		i2c_ena <= '0'; 
      wait;
   end process;

END;
