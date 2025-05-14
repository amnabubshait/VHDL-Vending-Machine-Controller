-- File: tb_vending_machine_top.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_vending_machine_top is
end entity;

architecture sim of tb_vending_machine_top is

  -- Instantiate your top‐level wrapper
  component vending_machine_top
    port (
      clk             : in  std_logic;
      reset           : in  std_logic;
      buttons         : in  std_logic_vector(11 downto 0);
      coin_25         : in  std_logic;
      coin_50         : in  std_logic;
      coin_100        : in  std_logic;
      valid_product   : in  std_logic;
      product_price   : in  unsigned(9 downto 0);
      led_dispense    : out std_logic;
      led_change      : out std_logic;
      led_refund      : out std_logic;
      seg16           : out std_logic_vector(15 downto 0)
    );
  end component;

  -- Signals to drive and observe
  signal clk           : std_logic := '0';
  signal reset         : std_logic := '1';
  signal buttons       : std_logic_vector(11 downto 0) := (others=>'0');
  signal coin_25       : std_logic := '0';
  signal coin_50       : std_logic := '0';
  signal coin_100      : std_logic := '0';
  signal valid_product : std_logic := '0';
  signal product_price : unsigned(9 downto 0) := (others=>'0');

  signal led_dispense  : std_logic;
  signal led_change    : std_logic;
  signal led_refund    : std_logic;
  signal seg16         : std_logic_vector(15 downto 0);

  constant CLK_PERIOD : time := 20 ns;  -- 50 MHz
  constant X_PATTERN  : std_logic_vector(15 downto 0) := (others=>'1');
  
begin

  UUT: vending_machine_top
    port map (
      clk           => clk,
      reset         => reset,
      buttons       => buttons,
      coin_25       => coin_25,
      coin_50       => coin_50,
      coin_100      => coin_100,
      valid_product => valid_product,
      product_price => product_price,
      led_dispense  => led_dispense,
      led_change    => led_change,
      led_refund    => led_refund,
      seg16         => seg16
    );

  -- Clock generator
  clk_process: process
  begin
    clk <= '0'; wait for CLK_PERIOD/2;
    clk <= '1'; wait for CLK_PERIOD/2;
  end process;

  -- Stimulus + assertions
  stim: process
  begin
    -- release reset
    wait for 100 ns;
    reset <= '0';
    wait for CLK_PERIOD;

    ----------------------------------------------------------------
    report "1) Exact-change purchase" severity note;
    -- select product "01"
    buttons <= (others=>'0');
    buttons(0) <= '1'; wait for CLK_PERIOD; buttons(0) <= '0'; wait for CLK_PERIOD;
    buttons(1) <= '1'; wait for CLK_PERIOD; buttons(1) <= '0';
    -- validate as valid, price = 100
    valid_product <= '1'; product_price <= to_unsigned(100,10);
    wait for CLK_PERIOD;
    valid_product <= '0';

    -- insert exact 100
    coin_100 <= '1'; wait for CLK_PERIOD; coin_100 <= '0';
    -- wait for dispense LED
    wait until led_dispense = '1';
    assert led_dispense = '1'
      report "Exact-change: dispense LED did not assert" severity error;
    wait for CLK_PERIOD;
    assert led_dispense = '0'
      report "Exact-change: dispense LED did not clear" severity error;

    ----------------------------------------------------------------
    report "2) Over-payment + change" severity note;
    -- select product "02"
    buttons <= (others=>'0');
    buttons(0) <= '1'; wait for CLK_PERIOD; buttons(0) <= '0'; wait for CLK_PERIOD;
    buttons(2) <= '1'; wait for CLK_PERIOD; buttons(2) <= '0';
    valid_product <= '1'; product_price <= to_unsigned(200,10);
    wait for CLK_PERIOD; valid_product <= '0';

    -- insert 2×100 = 200 exact then one more 100 => 300 total
    coin_100 <= '1'; wait for CLK_PERIOD; coin_100 <= '0'; wait for CLK_PERIOD;
    coin_100 <= '1'; wait for CLK_PERIOD; coin_100 <= '0'; wait for CLK_PERIOD;
    coin_100 <= '1'; wait for CLK_PERIOD; coin_100 <= '0';

    wait until led_dispense = '1';
    wait until led_change  = '1';
    assert led_change = '1'
      report "Over-pay: change LED did not assert" severity error;
    wait for CLK_PERIOD;
    assert led_change = '0'
      report "Over-pay: change LED did not clear" severity error;

    ----------------------------------------------------------------
    report "3) Invalid code (13)" severity note;
    buttons <= (others=>'0');
    -- press "1"
    buttons(1) <= '1'; wait for CLK_PERIOD; buttons(1) <= '0'; wait for CLK_PERIOD;
    -- press "3"
    buttons(3) <= '1'; wait for CLK_PERIOD; buttons(3) <= '0';
    valid_product <= '0';  -- invalid
    wait for CLK_PERIOD;

    wait until seg16 = X_PATTERN;
    assert seg16 = X_PATTERN
      report "Invalid-code: error display did not assert" severity error;

    ----------------------------------------------------------------
    report "4) Cancel mid-entry" severity note;
    buttons <= (others=>'0');
    buttons(0) <= '1'; wait for CLK_PERIOD; buttons(0) <= '0'; wait for CLK_PERIOD;
    -- press cancel
    buttons(10) <= '1'; wait for CLK_PERIOD; buttons(10) <= '0';
    wait until led_refund = '1';
    assert led_refund = '1'
      report "Cancel mid-entry: refund LED did not assert" severity error;
    wait until seg16 = X_PATTERN;

    ----------------------------------------------------------------
    report "5) Timeout at second digit" severity note;
    buttons <= (others=>'0');
    buttons(4) <= '1'; wait for CLK_PERIOD; buttons(4) <= '0';  -- first digit
    -- no second digit
    -- wait for refund after timer expires (~1000 cycles)
    wait until led_refund = '1';
    assert led_refund = '1'
      report "Timeout-digit: refund LED did not assert" severity error;

    ----------------------------------------------------------------
    report "6) Timeout at coin-input" severity note;
    buttons <= (others=>'0');
    -- select "01" again
    buttons(0) <= '1'; wait for CLK_PERIOD; buttons(0) <= '0'; wait for CLK_PERIOD;
    buttons(1) <= '1'; wait for CLK_PERIOD; buttons(1) <= '0';
    valid_product <= '1'; product_price <= to_unsigned(50,10);
    wait for CLK_PERIOD; valid_product <= '0';
    -- wait for coin-input state, then no coins
    wait until led_refund = '1';
    assert led_refund = '1'
      report "Timeout-coin: refund LED did not assert" severity error;

    ----------------------------------------------------------------
    report "All integrated tests passed." severity note;
    wait;  -- finish simulation
  end process;

end architecture;
