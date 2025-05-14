-- File: output_control.vhd
library ieee;
use ieee.std_logic_1164.all;

entity output_control is
    port (
        clk             : in  std_logic;
        reset           : in  std_logic;
        dispense_item   : in  std_logic;
        dispense_change : in  std_logic;
        refund_credit   : in  std_logic;
        show_error      : in  std_logic;
        led_dispense    : out std_logic;
        led_change      : out std_logic;
        led_refund      : out std_logic;
        seg16           : out std_logic_vector(15 downto 0)
    );
end entity;

architecture rtl of output_control is
    -- blank (all off) and X patterns
    constant BLANK_PATTERN : std_logic_vector(15 downto 0) := (others => '0');
    constant X_PATTERN     : std_logic_vector(15 downto 0) := (others => '1');
begin

    process(clk, reset)
    begin
        if reset = '1' then
            led_dispense    <= '0';
            led_change      <= '0';
            led_refund      <= '0';
            seg16           <= BLANK_PATTERN;
        elsif rising_edge(clk) then
            -- latch the 1-cycle pulses
            led_dispense    <= dispense_item;
            led_change      <= dispense_change;
            led_refund      <= refund_credit;
            -- error display
            if show_error = '1' then
                seg16 <= X_PATTERN;
            else
                seg16 <= BLANK_PATTERN;
            end if;
        end if;
    end process;

end architecture;
