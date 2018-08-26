----------------------------------------------------------------------------------
-- Company: 		 HBV
-- Engineer: 		 Dag Samuelsen
-- 
-- Create Date:    21:47:59 06/30/2014 
-- Design Name: 	 Limited i2c implementation
-- Module Name:    i2c - Behavioral 
-- Project Name:   start of a i2c-bus implementation
-- Target Devices: 
-- Tool versions: 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity i2c is
    Port ( 	clk, reset 			: in  	STD_LOGIC;
			i2c_ena, i2c_rw		: in  	std_logic;
			i2c_busy, ack_tick	: out 	std_logic; 
			sda_in, sck_in		: in 	std_logic; 
			sck_tris, sda_tris	: out 	std_logic; 
			i2c_sl_ack			: out 	std_logic; 
			i2c_ma_ack			: in	std_logic; 
			i2c_address  		: in  	std_logic_vector(6 downto 0);
			i2c_data_in  		: in  	std_logic_vector(7 downto 0);
			i2c_data_out 		: out 	std_logic_vector(7 downto 0));
end i2c;

architecture Behavioral of i2c is
 
 --Use descriptive names for the states, like st1_reset, st2_search
   type state_type is (	i2c_st_ready, 	-- Waiting for ENA-signal
						i2c_st_start, 	-- writing start-bit to i2c-bus
						i2c_st_address, -- writing address, 8bit
						i2c_st_sl_ack1, -- waiting for ack after address from slave
						i2c_st_sl_ack2, -- waiting for ack after data from slave
						i2c_st_wr, 		-- writing data to ic2-bus
						i2c_st_rd, 		-- reading data from i2c-bus
						i2c_st_ma_ack, 	-- writing ack to slave
						i2c_st_stop); 	-- writing stop-bit to i2c-bus
   signal i2c_state, i2c_next_state : state_type; 

   --Declare internal signals for all outputs of the state-machine
	signal i2c_after_half_period, i2c_after_full_period 	: boolean; 
	signal i2c_bit_counter_reset, i2c_bit_counter_max		: boolean; 
	signal i2c_bit_counter_tick								: boolean; 
	constant half_time_period								: std_logic_vector(7 downto 0) := "01111101"; 
	constant full_time_period 								: std_logic_vector(7 downto 0) := "11111010"; 
    signal i2c_time_counter_reset 							: boolean; 
	signal i2c_time_counter_q,  i2c_time_counter_next 		: std_logic_vector(7 downto 0);
	signal i2c_bit_counter_q,   i2c_bit_counter_next 		: natural range 0 to 7;
	signal i2c_int_address, i2c_rd_data						: std_logic_vector(7 downto 0);
	signal rd_data_tick, rd_data_end						: boolean; 
	signal sda_tris_int, sck_tris_int, i2c_busy_int, ack_tick_int	: std_logic; 
   --other outputs
 
begin

SYNC_PROC: process (clk)
begin
    if (clk'event and clk = '1') then
         if (reset = '0') then
            i2c_state 			<= i2c_st_ready;
			i2c_time_counter_q 	<= (others=>'0'); 
			i2c_bit_counter_q 	<= 0; 
			i2c_rd_data  		<= (others=>'0'); 

			-- Reset the buffer of all outputs: 
			sda_tris     <= '1';
			sck_tris     <= '1';
			i2c_busy     <= '1'; 
			ack_tick     <= '0'; 
			i2c_sl_ack   <= '1'; 
			i2c_data_out <= (others=>'0'); 
         else
            i2c_state <= i2c_next_state;
			i2c_time_counter_q 	<= i2c_time_counter_next; 
			i2c_bit_counter_q 	<= i2c_bit_counter_next; 
			if rd_data_tick then 
				i2c_rd_data <= i2c_rd_data(6 downto 0) & sda_in; 
			end if; 

			-- Buffering of all outputs: 
			sda_tris   <= sda_tris_int;
			sck_tris   <= sck_tris_int; 
			i2c_sl_ack <= sda_in;  
			i2c_busy   <= i2c_busy_int; 
			ack_tick   <= ack_tick_int; 
			if rd_data_end then 
				i2c_data_out <= i2c_rd_data; 
			end if; 
         end if;        
    end if;
end process;
 
i2c_time_counter_next <= (others=>'0') when i2c_time_counter_reset else 
						 i2c_time_counter_q + 1; 
i2c_after_half_period <= false when i2c_time_counter_q < half_time_period else true; 
i2c_after_full_period <= false when i2c_time_counter_q < full_time_period else true; 

i2c_bit_counter_next  <= 0 when i2c_bit_counter_reset else 
						 i2c_bit_counter_q + 1 when i2c_bit_counter_tick 
						 else i2c_bit_counter_q; 
i2c_bit_counter_max	  <= true when i2c_bit_counter_q = 7 else false; 

i2c_int_address <= i2c_address & i2c_rw; 

--MEALY State-Machine - Outputs based on state and inputs
OUTPUT_DECODE: process (i2c_state, i2c_after_half_period, i2c_int_address, i2c_data_in, 
					    i2c_ma_ack, i2c_bit_counter_q)
begin
	sck_tris_int <= '1'; -- Instructs the instantiating unit to set the output to high impedance
	if i2c_after_half_period then
		if (i2c_state = i2c_st_start) then 
			sck_tris_int <= '0'; 
		end if;
	else
		if (not(i2c_state = i2c_st_ready) and not(i2c_state = i2c_st_start)) then 
			sck_tris_int <= '0'; 
		end if;
	end if; 
	
	case (i2c_state) is
		when i2c_st_start 	=> sda_tris_int <= '0'; 
		when i2c_st_address => sda_tris_int <= i2c_int_address(7 - i2c_bit_counter_q);
		when i2c_st_wr 		=> sda_tris_int <= i2c_data_in(7- i2c_bit_counter_q); 
		when i2c_st_ma_ack 	=> sda_tris_int <= i2c_ma_ack; 
		when i2c_st_stop 	=> sda_tris_int <= '0'; 
		when others 		=> sda_tris_int <= '1';
	end case;		
end process;


NEXT_STATE_DECODE: process(	i2c_state, i2c_ena, i2c_rw, i2c_bit_counter_max,
							i2c_after_half_period, i2c_after_full_period, 
							i2c_int_address, sda_in, i2c_ma_ack, 
							i2c_bit_counter_q, i2c_data_in)
begin
	--declare default state for next_state to avoid latches
	i2c_next_state <= i2c_state;    --default is to stay in current state
	i2c_time_counter_reset <= false; 
	i2c_bit_counter_reset <= false; 
	i2c_bit_counter_tick <= false; 
	i2c_busy_int <= '1'; 
	rd_data_tick <= false; 
	ack_tick_int <= '0'; 
	rd_data_end <= false; 
	case (i2c_state) is
		when i2c_st_ready =>
			i2c_busy_int <= '0'; 
			i2c_time_counter_reset <= true; 
			if i2c_ena = '1' then
				i2c_next_state <= i2c_st_start;
				i2c_time_counter_reset <= true; 
			end if;
		when i2c_st_start =>
			i2c_bit_counter_reset <= true; 
			if i2c_after_full_period then 
				i2c_next_state <= i2c_st_address; 
				i2c_time_counter_reset <= true; 
			end if; 
	 when i2c_st_address =>
			if (i2c_after_full_period) then 
				if (i2c_bit_counter_max) then 
					i2c_next_state <= i2c_st_sl_ack1; 
				end if; 
				i2c_bit_counter_tick <= true; 
				i2c_time_counter_reset <= true; 
			end if; 
	 when i2c_st_sl_ack1 =>
			i2c_bit_counter_reset <= true; 
			if (i2c_after_full_period) then 
				ack_tick_int <= '1'; 
				if (sda_in = '0') then 
					if (i2c_rw = '1') then 
						i2c_next_state <= i2c_st_rd; 
					else 
						i2c_next_state <= i2c_st_wr; 
					end if;
				else 
					i2c_next_state <= i2c_st_stop; 
				end if; 
				i2c_time_counter_reset <= true; 
			end if; 
	 when i2c_st_sl_ack2 =>
			i2c_bit_counter_reset <= true; 
			if i2c_after_full_period then 
				if (i2c_ena = '0') then 
					i2c_next_state <= i2c_st_stop; 
					ack_tick_int <= '1'; 
					i2c_time_counter_reset <= true; 
				elsif (i2c_rw = '0') then 
					i2c_next_state <= i2c_st_wr; 
					ack_tick_int <= '1'; 
					i2c_time_counter_reset <= true; 
				else
					if (sda_in = '1') then 
						i2c_next_state <= i2c_st_start; 
						ack_tick_int <= '1'; 
						i2c_time_counter_reset <= true; 
					end if;
				end if; 
			end if; 
	 when i2c_st_wr =>
			if (i2c_after_full_period) then 
				if (i2c_bit_counter_max) then i2c_next_state <= i2c_st_sl_ack2; end if; 
				i2c_bit_counter_tick <= true; 
				i2c_time_counter_reset <= true; 
			end if; 
	 when i2c_st_rd =>
			if (i2c_after_full_period) then 
				i2c_bit_counter_tick <= true; 
				rd_data_tick <= true; 
				i2c_time_counter_reset <= true; 
				if (i2c_bit_counter_max) then 
					i2c_next_state <= i2c_st_ma_ack; 
				end if; 
			end if; 
	 when i2c_st_ma_ack =>
			i2c_bit_counter_reset <= true; 
			if (i2c_after_full_period) then 
				i2c_time_counter_reset <= true; 
				rd_data_end <= true; 
				ack_tick_int <= '1'; 
				if (i2c_ena = '0') then 
					i2c_next_state <= i2c_st_stop; 
				elsif (i2c_rw = '0') then 
					i2c_next_state <= i2c_st_start;
				else 
					i2c_next_state <= i2c_st_rd; 
				end if; 
			end if; 
	 when i2c_st_stop =>
			i2c_bit_counter_reset <= true; 
			if (i2c_after_full_period) then 
				i2c_time_counter_reset <= true; 
				i2c_next_state <= i2c_st_ready; 
			end if; 
	 when others =>
		 i2c_next_state <= i2c_st_ready;
  end case;      
end process;

end Behavioral;

