-- File: timer.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
    port (
        clk          : in  std_logic;
        reset        : in  std_logic;
        timer_start  : in  std_logic;
        timer_enable : in  std_logic;
        timer_done   : out std_logic
    );
end entity;

architecture rtl of timer is
    constant COUNT_MAX : unsigned(31 downto 0) := to_unsigned(1000, 32);  -- Sim-friendly value
    signal counter     : unsigned(31 downto 0) := (others => '0');
    signal active      : std_logic := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            counter    <= (others => '0');
            timer_done <= '0';
            active     <= '0';

        elsif rising_edge(clk) then
            -- Start the timer
            if timer_start = '1' then
                counter    <= COUNT_MAX;
                timer_done <= '0';
                active     <= '1';

            elsif active = '1' then
                if timer_enable = '1' then
                    if counter > 0 then
                        counter <= counter - 1;
                        timer_done <= '0';
                    else
                        timer_done <= '1';  -- Raise for 1 cycle
                        active     <= '0';  -- Stop counting
                    end if;
                end if;
            else
                timer_done <= '0';
            end if;
        end if;
    end process;
end architecture;
