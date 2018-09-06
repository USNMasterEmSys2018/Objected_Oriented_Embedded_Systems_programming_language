library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity i2c is
    Port ( 	clk, reset 			: in  	STD_LOGIC;
			i2c_data_out 		: out 	std_logic_vector(7 downto 0));
end i2c;

architecture Behavioral of i2c is
 
	type state_type is ( i2c_st_ready, 	-- Waiting for ENA-signal
						 i2c_st_start); 	-- writing start-bit to i2c-bus
	signal i2c_state, i2c_next_state : state_type; 

	signal i2c_after_half_period, i2c_after_full_period 	: boolean; 
    signal i2c_time_counter_reset 							: boolean; 
	signal i2c_time_counter_q,  i2c_time_counter_next 		: std_logic_vector(7 downto 0);
 
begin

SYNC_PROC: process (clk)
begin
    if (clk'event and clk = '1') then
         if (reset = '0') then
            i2c_state 			<= i2c_st_ready;
			i2c_time_counter_q 	<= (others=>'0'); 
         else
            i2c_state <= i2c_next_state;
			i2c_time_counter_q 	<= i2c_time_counter_next; 
         end if;        
    end if;
end process;
 
i2c_time_counter_next <= (others=>'0') when i2c_time_counter_reset else 
						 i2c_time_counter_q + 1; 

i2c_after_half_period <= false when i2c_time_counter_q < half_time_period else true; 
i2c_after_full_period <= false when i2c_time_counter_q < full_time_period else true; 

NEXT_STATE_DECODE: process(	i2c_state, i2c_ena)
begin
	i2c_next_state <= i2c_state;    --default is to stay in current state
	case (i2c_state) is
		when i2c_st_ready =>
			if i2c_ena = '1' then
				i2c_next_state <= i2c_st_start;
				i2c_time_counter_reset <= true; 
			end if;
		when i2c_st_start =>
			i2c_bit_counter_reset <= true; 
			if i2c_after_full_period then 
				i2c_next_state <= i2c_st_address; 
			end if; 
	 when others =>
		 i2c_next_state <= i2c_st_ready;
  end case;      
end process;

end Behavioral;