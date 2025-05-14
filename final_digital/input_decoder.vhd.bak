-- File: input_decoder.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity input_decoder is
    port (
        buttons         : in  std_logic_vector(11 downto 0);
        key_pressed     : out std_logic;
        key_value       : out std_logic_vector(3 downto 0);
        cancel_pressed  : out std_logic;
        enter_pressed   : out std_logic
    );
end entity;

architecture rtl of input_decoder is
begin
    decode_proc: process(buttons)
    begin
        -- defaults
        key_pressed    <= '0';
        key_value      <= (others => '0');
        cancel_pressed <= '0';
        enter_pressed  <= '0';

        -- map numeric keys 0–9
        if buttons(0) = '1' then
            key_pressed <= '1'; key_value <= "0000";
        elsif buttons(1) = '1' then
            key_pressed <= '1'; key_value <= "0001";
        elsif buttons(2) = '1' then
            key_pressed <= '1'; key_value <= "0010";
        elsif buttons(3) = '1' then
            key_pressed <= '1'; key_value <= "0011";
        elsif buttons(4) = '1' then
            key_pressed <= '1'; key_value <= "0100";
        elsif buttons(5) = '1' then
            key_pressed <= '1'; key_value <= "0101";
        elsif buttons(6) = '1' then
            key_pressed <= '1'; key_value <= "0110";
        elsif buttons(7) = '1' then
            key_pressed <= '1'; key_value <= "0111";
        elsif buttons(8) = '1' then
            key_pressed <= '1'; key_value <= "1000";
        elsif buttons(9) = '1' then
            key_pressed <= '1'; key_value <= "1001";

        -- map Cancel
        elsif buttons(10) = '1' then
            key_pressed    <= '1';
            cancel_pressed <= '1';

        -- map Enter
        elsif buttons(11) = '1' then
            key_pressed   <= '1';
            enter_pressed <= '1';
        end if;
    end process;
end architecture;
