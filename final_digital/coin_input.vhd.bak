library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity coin_input is
    port (
        clk               : in  std_logic;
        reset             : in  std_logic;
        enable_coin_input : in  std_logic;
        coin_25           : in  std_logic;
        coin_50           : in  std_logic;
        coin_100          : in  std_logic;
        credit_value      : out unsigned(9 downto 0)
    );
end entity;

architecture rtl of coin_input is
    constant MAX_CREDIT : unsigned(9 downto 0) := to_unsigned(999, 10);
    signal total        : unsigned(9 downto 0) := (others => '0');
    signal prev_25      : std_logic := '0';
    signal prev_50      : std_logic := '0';
    signal prev_100     : std_logic := '0';
begin

    process(clk, reset)
        variable r25, r50, r100 : boolean;
        variable new_total      : unsigned(9 downto 0);
    begin
        if reset = '1' then
            total    <= (others => '0');
            prev_25  <= '0';
            prev_50  <= '0';
            prev_100 <= '0';
            
        elsif rising_edge(clk) then
            -- detect rising edges
            r25  := (coin_25  = '1' and prev_25  = '0');
            r50  := (coin_50  = '1' and prev_50  = '0');
            r100 := (coin_100 = '1' and prev_100 = '0');
            
            if enable_coin_input = '1' then
                new_total := total;
                if r25  then new_total := new_total + 25;  end if;
                if r50  then new_total := new_total + 50;  end if;
                if r100 then new_total := new_total + 100; end if;
                
                if new_total > MAX_CREDIT then
                    total <= MAX_CREDIT;
                else
                    total <= new_total;
                end if;
            end if;
            
            -- register previous states
            prev_25  <= coin_25;
            prev_50  <= coin_50;
            prev_100 <= coin_100;
        end if;
    end process;

    credit_value <= total;
    
end architecture;
