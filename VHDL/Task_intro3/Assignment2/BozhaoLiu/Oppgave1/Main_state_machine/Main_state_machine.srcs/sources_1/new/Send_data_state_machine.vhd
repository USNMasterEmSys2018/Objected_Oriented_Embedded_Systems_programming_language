library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.numeric_std.ALL;

entity send_data_state_machine is
    Generic(Baud_width: integer);
    Port ( send_control : in STD_LOGIC;
           clk : in STD_LOGIC;
           address_reg : in STD_LOGIC_VECTOR ( 12 downto 0 );
           Data_in : in STD_LOGIC_VECTOR (7 downto 0);
           Address_to_read : out STD_LOGIC_VECTOR ( 12 downto 0 );
           LF : out STD_LOGIC;
           Data_out : out STD_LOGIC);
end send_data_state_machine;

architecture Behavioral of send_data_state_machine is
    type state is
                (
                idle_state,
                fetch_data_state,
                sending_state,
                LF_state
                );
    signal current_state, next_state: state := idle_state;
    signal Current_address, next_address: STD_LOGIC_VECTOR ( 12 downto 0 );
    signal data_to_send: STD_LOGIC_VECTOR ( 9 downto 0 );
    signal FF_send_control: std_logic_vector(1 downto 0) := "00";
    signal update_address, count_bit: boolean := false;
    signal bit_sent, bit_sent_next, baud_counter, baud_counter_next: integer := 0;
    constant LineFeed: std_logic_vector(7 downto 0) := "00001010";
    --constant Baud_width: integer := 1000000000/baudrate/CLK_period;
begin
    flipflop:process(clk)
    begin
        if rising_edge(clk) then
            FF_send_control <= FF_send_control(0) & send_control;
        end if;
    end process;
    
    next_state_logic:process(current_state, FF_send_control, bit_sent, Current_address, address_reg)
    begin
        next_state <= current_state;
        update_address <= false;
        count_bit <= false;
        case current_state is
            when idle_state => 
                if FF_send_control = "01" then
                    next_state <= sending_state;
                end if;
            when sending_state => 
                count_bit <= true;
                if bit_sent >=10 then
                    if Current_address > address_reg then
                        next_state <= LF_state; 
                    else 
                        next_state <= fetch_data_state;
                    end if;
                end if; 
            when fetch_data_state => 
                update_address <= true;
                next_state <= sending_state;  
            when LF_state => 
                next_state <= idle_state;
        end case;
    end process;
    
    Sync_proc:process(clk)
    begin
        if rising_edge(clk) then
            current_state <= next_state;
            bit_sent <= bit_sent_next;
            current_address <= next_address;
            baud_counter <= baud_counter_next;
        end if;
    end process;
    
    
    data_to_send <= '1' & LineFeed & '0' when Current_address > address_reg else '1' & Data_in & '0';
    next_address <= 
                    std_logic_vector(unsigned(current_address) + 1) 
                        when update_address 
                        else
                    current_address                                 
                        when count_bit 
                        else 
                    (others => '0'); 
    baud_counter_next <= 0 when (not count_bit) else
                         0 when(baud_counter = baud_width) else
                         baud_counter + 1;
    bit_sent_next <= bit_sent + 1 when count_bit and (baud_counter = baud_width) else 
                     0 when not count_bit else bit_sent;   
    output_logic:process(current_state, bit_sent, current_address)
    begin
        Address_to_read <= current_address;
        LF <= '0';
        Data_out <= '0';
        case current_state is
            when idle_state => 
                Data_out <= '0';
            when sending_state => 
                if bit_sent < 10 then
                Data_out <= data_to_send(9 - bit_sent);
                end if;
            when fetch_data_state => 
                Address_to_read <= current_address;
            when LF_state => 
                LF <= '1';
        end case;
    end process;
    
end Behavioral;