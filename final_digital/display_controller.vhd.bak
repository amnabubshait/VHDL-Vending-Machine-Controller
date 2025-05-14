-- File: display_controller.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display_controller is
    generic (
        REFRESH_MAX : natural := 50000  -- ≈1 ms @50 MHz
    );
    port (
        clk      : in  std_logic;
        reset    : in  std_logic;
        digits   : in  std_logic_vector(23 downto 0);
        seg      : out std_logic_vector(6 downto 0);
        an       : out std_logic_vector(5 downto 0);
        scan_tick: out std_logic
    );
end entity;

architecture rtl of display_controller is

    constant REF_MAX_U : unsigned(15 downto 0) := to_unsigned(REFRESH_MAX, 16);
    signal refresh_cnt : unsigned(15 downto 0) := (others => '0');
    signal digit_idx   : unsigned(2 downto 0)  := (others => '0');
    signal current_bcd : std_logic_vector(3 downto 0);
    signal seg_pattern : std_logic_vector(6 downto 0);
    signal scan_pulse  : std_logic := '0';

begin

    -- 1) Refresh counter → scan_pulse
    proc_refresh: process(clk, reset)
    begin
        if reset = '1' then
            refresh_cnt <= (others => '0');
            scan_pulse  <= '0';
        elsif rising_edge(clk) then
            if refresh_cnt = REF_MAX_U - 1 then
                refresh_cnt <= (others => '0');
                scan_pulse  <= '1';
            else
                refresh_cnt <= refresh_cnt + 1;
                scan_pulse  <= '0';
            end if;
        end if;
    end process;

    scan_tick <= scan_pulse;

    -- 2) Digit index rotates 0…5 on each scan_pulse
    proc_index: process(clk, reset)
    begin
        if reset = '1' then
            digit_idx <= (others => '0');
        elsif rising_edge(clk) then
            if scan_pulse = '1' then
                if digit_idx = "101" then  -- 5
                    digit_idx <= (others => '0');
                else
                    digit_idx <= digit_idx + 1;
                end if;
            end if;
        end if;
    end process;

    -- 3) Select the 4-bit BCD for this digit
    with digit_idx select
        current_bcd <= digits( 3 downto  0) when "000",  -- rightmost
                       digits( 7 downto  4) when "001",
                       digits(11 downto  8) when "010",
                       digits(15 downto 12) when "011",
                       digits(19 downto 16) when "100",
                       digits(23 downto 20) when "101",
                       "0000"                when others;

    -- 4) BCD → 7-segment (active HIGH segments; adjust if your board is active–low)
    with current_bcd select
        seg_pattern <= "1000000" when "0000",  -- 0
                       "1111001" when "0001",  -- 1
                       "0100100" when "0010",  -- 2
                       "0110000" when "0011",  -- 3
                       "0011001" when "0100",  -- 4
                       "0010010" when "0101",  -- 5
                       "0000010" when "0110",  -- 6
                       "1111000" when "0111",  -- 7
                       "0000000" when "1000",  -- 8
                       "0010000" when "1001",  -- 9
                       "1111111" when others;   -- blank

    seg <= seg_pattern;

    -- 5) Anode drive, active-LOW (one '0' at digit_idx)
    process(digit_idx)
        variable tmp : std_logic_vector(5 downto 0);
    begin
        tmp := (others => '1');
        tmp(to_integer(digit_idx)) := '0';
        an <= tmp;
    end process;

end architecture;
