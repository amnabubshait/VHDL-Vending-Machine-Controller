-- File: vending_machine_top.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vending_machine_top is
    port (
        -- global
        clk            : in  std_logic;
        reset          : in  std_logic;
        -- keypad buttons (0–9, Cancel, Enter)
        buttons        : in  std_logic_vector(11 downto 0);
        -- coin inputs
        coin_25        : in  std_logic;
        coin_50        : in  std_logic;
        coin_100       : in  std_logic;
        -- product selection feedback from FSM
        valid_product  : in  std_logic;
        product_price  : in  unsigned(9 downto 0);
        -- outputs
        led_dispense   : out std_logic;
        led_change     : out std_logic;
        led_refund     : out std_logic;
        seg16          : out std_logic_vector(15 downto 0)
    );
end entity;

architecture rtl of vending_machine_top is

    -- Input-decoder
    component input_decoder
        port (
            buttons        : in  std_logic_vector(11 downto 0);
            key_pressed    : out std_logic;
            key_value      : out std_logic_vector(3 downto 0);
            cancel_pressed : out std_logic;
            enter_pressed  : out std_logic
        );
    end component;

    -- 15-second timer
    component timer
        port (
            clk          : in  std_logic;
            reset        : in  std_logic;
            timer_start  : in  std_logic;
            timer_enable : in  std_logic;
            timer_done   : out std_logic
        );
    end component;

    -- Coin accumulator
    component coin_input
        port (
            clk               : in  std_logic;
            reset             : in  std_logic;
            enable_coin_input : in  std_logic;
            coin_25           : in  std_logic;
            coin_50           : in  std_logic;
            coin_100          : in  std_logic;
            credit_value      : out unsigned(9 downto 0)
        );
    end component;

    -- Core FSM
    component vending_fsm
        port (
            clk               : in  std_logic;
            reset             : in  std_logic;
            key_pressed       : in  std_logic;
            cancel            : in  std_logic;
            enter             : in  std_logic;
            valid_product     : in  std_logic;
            timer_done        : in  std_logic;
            credit_value      : in  unsigned(9 downto 0);
            product_price     : in  unsigned(9 downto 0);
            timer_start       : out std_logic;
            enable_coin_input : out std_logic;
            dispense_item     : out std_logic;
            dispense_change   : out std_logic;
            refund_credit     : out std_logic;
            show_error        : out std_logic
        );
    end component;

    -- Drive LEDs & error display
    component output_control
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
    end component;

    -- Internal signals
    signal key_pressed       : std_logic;
    signal key_value         : std_logic_vector(3 downto 0);
    signal cancel_pressed    : std_logic;
    signal enter_pressed     : std_logic;

    signal timer_start       : std_logic;
    signal timer_done        : std_logic;
    signal enable_coin_input : std_logic;
    signal credit_value      : unsigned(9 downto 0);

    signal dispense_item     : std_logic;
    signal dispense_change   : std_logic;
    signal refund_credit     : std_logic;
    signal show_error        : std_logic;

begin

    -- 1) Decode keypad
    U1_input_decoder : input_decoder
        port map (
            buttons        => buttons,
            key_pressed    => key_pressed,
            key_value      => key_value,
            cancel_pressed => cancel_pressed,
            enter_pressed  => enter_pressed
        );

    -- 2) 15-s timer (enabled during both digit entry and coin input)
    U2_timer : timer
        port map (
            clk          => clk,
            reset        => reset,
            timer_start  => timer_start,
            -- simplistic enable: runs when FSM starts timer or during coin input
            timer_enable => timer_start or enable_coin_input,
            timer_done   => timer_done
        );

    -- 3) Coin insertion logic
    U3_coin_input : coin_input
        port map (
            clk               => clk,
            reset             => reset,
            enable_coin_input => enable_coin_input,
            coin_25           => coin_25,
            coin_50           => coin_50,
            coin_100          => coin_100,
            credit_value      => credit_value
        );

    -- 4) Core vending FSM
    U4_vending_fsm : vending_fsm
        port map (
            clk               => clk,
            reset             => reset,
            key_pressed       => key_pressed,
            cancel            => cancel_pressed,  -- <— corrected
            enter             => enter_pressed,   -- <— corrected
            valid_product     => valid_product,
            product_price     => product_price,
            timer_done        => timer_done,
            credit_value      => credit_value,
            timer_start       => timer_start,
            enable_coin_input => enable_coin_input,
            dispense_item     => dispense_item,
            dispense_change   => dispense_change,
            refund_credit     => refund_credit,
            show_error        => show_error
        );

    -- 5) Drive LEDs & 16-segment “X”
    U5_output_control : output_control
        port map (
            clk             => clk,
            reset           => reset,
            dispense_item   => dispense_item,
            dispense_change => dispense_change,
            refund_credit   => refund_credit,
            show_error      => show_error,
            led_dispense    => led_dispense,
            led_change      => led_change,
            led_refund      => led_refund,
            seg16           => seg16
        );

end architecture rtl;
