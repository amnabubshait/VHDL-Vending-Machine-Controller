-- File: vending_fsm.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vending_fsm is
    port (
        clk               : in  std_logic;
        reset             : in  std_logic;
        -- inputs
        key_pressed       : in  std_logic;
        cancel            : in  std_logic;
        enter             : in  std_logic;
        valid_product     : in  std_logic;
        timer_done        : in  std_logic;
        credit_value      : in  unsigned(9 downto 0);
        product_price     : in  unsigned(9 downto 0);
        -- outputs
        timer_start       : out std_logic;
        enable_coin_input : out std_logic;
        dispense_item     : out std_logic;
        dispense_change   : out std_logic;
        refund_credit     : out std_logic;
        show_error        : out std_logic
    );
end entity;

architecture rtl of vending_fsm is

    type state_type is (
        S0_ItemCode1,
        S1_ItemCode2,
        S2_Validate,
        S3_CoinInput,
        S4_Dispense,
        S5_DispenseChange,
        S6_Refund,
        S7_Error
    );
    signal current_state, next_state : state_type;

begin

    -- State register
    proc_state: process(clk, reset)
    begin
        if reset = '1' then
            current_state <= S0_ItemCode1;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    -- Next-state logic
    proc_next: process(current_state, key_pressed, cancel, enter,
                       valid_product, timer_done, credit_value, product_price)
    begin
        -- default
        next_state <= current_state;

        case current_state is

            when S0_ItemCode1 =>
                if key_pressed = '1' then
                    next_state <= S1_ItemCode2;
                end if;

            when S1_ItemCode2 =>
                if timer_done = '1' or cancel = '1' then
                    next_state <= S0_ItemCode1;
                elsif key_pressed = '1' then
                    next_state <= S2_Validate;
                end if;

            when S2_Validate =>
                if valid_product = '0' then
                    next_state <= S7_Error;
                else
                    next_state <= S3_CoinInput;
                end if;

            when S3_CoinInput =>
                if timer_done = '1' or cancel = '1' then
                    next_state <= S6_Refund;
                elsif enter = '1' and credit_value >= product_price then
                    next_state <= S4_Dispense;
                end if;

            when S4_Dispense =>
                if credit_value = product_price then
                    next_state <= S0_ItemCode1;
                else
                    next_state <= S5_DispenseChange;
                end if;

            when S5_DispenseChange =>
                next_state <= S0_ItemCode1;

            when S6_Refund =>
                next_state <= S7_Error;

            when S7_Error =>
                next_state <= S0_ItemCode1;

            when others =>
                next_state <= S0_ItemCode1;

        end case;
    end process;

    -- Output logic
    proc_output: process(current_state)
    begin
        -- defaults
        timer_start       <= '0';
        enable_coin_input <= '0';
        dispense_item     <= '0';
        dispense_change   <= '0';
        refund_credit     <= '0';
        show_error        <= '0';

        case current_state is

            when S0_ItemCode1 =>
                null;

            when S1_ItemCode2 =>
                timer_start <= '1';

            when S2_Validate =>
                if valid_product = '1' then
                    timer_start <= '1';
                end if;

            when S3_CoinInput =>
                enable_coin_input <= '1';

            when S4_Dispense =>
                dispense_item <= '1';

            when S5_DispenseChange =>
                dispense_change <= '1';

            when S6_Refund =>
                refund_credit <= '1';

            when S7_Error =>
                show_error <= '1';

            when others =>
                null;

        end case;
    end process;

end architecture;
