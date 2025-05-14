-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "05/06/2025 18:45:26"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vending_machine_top IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	buttons : IN std_logic_vector(11 DOWNTO 0);
	coin_25 : IN std_logic;
	coin_50 : IN std_logic;
	coin_100 : IN std_logic;
	valid_product : IN std_logic;
	product_price : IN IEEE.NUMERIC_STD.unsigned(9 DOWNTO 0);
	led_dispense : OUT std_logic;
	led_change : OUT std_logic;
	led_refund : OUT std_logic;
	seg16 : OUT std_logic_vector(15 DOWNTO 0)
	);
END vending_machine_top;

-- Design Ports Information
-- led_dispense	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_change	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_refund	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[3]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[8]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[9]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[11]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[12]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[13]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[14]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg16[15]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[4]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[5]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[6]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[9]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_price[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_price[8]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_price[7]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_price[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_price[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_price[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_price[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_price[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_price[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_price[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[11]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid_product	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_25	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_50	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_100	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vending_machine_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_buttons : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_coin_25 : std_logic;
SIGNAL ww_coin_50 : std_logic;
SIGNAL ww_coin_100 : std_logic;
SIGNAL ww_valid_product : std_logic;
SIGNAL ww_product_price : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_led_dispense : std_logic;
SIGNAL ww_led_change : std_logic;
SIGNAL ww_led_refund : std_logic;
SIGNAL ww_seg16 : std_logic_vector(15 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led_dispense~output_o\ : std_logic;
SIGNAL \led_change~output_o\ : std_logic;
SIGNAL \led_refund~output_o\ : std_logic;
SIGNAL \seg16[0]~output_o\ : std_logic;
SIGNAL \seg16[1]~output_o\ : std_logic;
SIGNAL \seg16[2]~output_o\ : std_logic;
SIGNAL \seg16[3]~output_o\ : std_logic;
SIGNAL \seg16[4]~output_o\ : std_logic;
SIGNAL \seg16[5]~output_o\ : std_logic;
SIGNAL \seg16[6]~output_o\ : std_logic;
SIGNAL \seg16[7]~output_o\ : std_logic;
SIGNAL \seg16[8]~output_o\ : std_logic;
SIGNAL \seg16[9]~output_o\ : std_logic;
SIGNAL \seg16[10]~output_o\ : std_logic;
SIGNAL \seg16[11]~output_o\ : std_logic;
SIGNAL \seg16[12]~output_o\ : std_logic;
SIGNAL \seg16[13]~output_o\ : std_logic;
SIGNAL \seg16[14]~output_o\ : std_logic;
SIGNAL \seg16[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \buttons[10]~input_o\ : std_logic;
SIGNAL \buttons[3]~input_o\ : std_logic;
SIGNAL \buttons[0]~input_o\ : std_logic;
SIGNAL \buttons[1]~input_o\ : std_logic;
SIGNAL \buttons[2]~input_o\ : std_logic;
SIGNAL \U1_input_decoder|enter_pressed~0_combout\ : std_logic;
SIGNAL \buttons[9]~input_o\ : std_logic;
SIGNAL \buttons[8]~input_o\ : std_logic;
SIGNAL \buttons[6]~input_o\ : std_logic;
SIGNAL \buttons[7]~input_o\ : std_logic;
SIGNAL \buttons[4]~input_o\ : std_logic;
SIGNAL \buttons[5]~input_o\ : std_logic;
SIGNAL \U1_input_decoder|enter_pressed~1_combout\ : std_logic;
SIGNAL \U1_input_decoder|enter_pressed~2_combout\ : std_logic;
SIGNAL \buttons[11]~input_o\ : std_logic;
SIGNAL \U4_vending_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector1~1_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector0~0_combout\ : std_logic;
SIGNAL \product_price[5]~input_o\ : std_logic;
SIGNAL \coin_25~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \U3_coin_input|prev_25~q\ : std_logic;
SIGNAL \U3_coin_input|r25~0_combout\ : std_logic;
SIGNAL \coin_100~input_o\ : std_logic;
SIGNAL \U3_coin_input|prev_100~q\ : std_logic;
SIGNAL \U3_coin_input|r100~0_combout\ : std_logic;
SIGNAL \U3_coin_input|Add0~0_combout\ : std_logic;
SIGNAL \U3_coin_input|Add0~9\ : std_logic;
SIGNAL \U3_coin_input|Add0~10_combout\ : std_logic;
SIGNAL \coin_50~input_o\ : std_logic;
SIGNAL \U3_coin_input|prev_50~q\ : std_logic;
SIGNAL \U3_coin_input|r50~0_combout\ : std_logic;
SIGNAL \U3_coin_input|Add1~1\ : std_logic;
SIGNAL \U3_coin_input|Add1~3\ : std_logic;
SIGNAL \U3_coin_input|Add1~5\ : std_logic;
SIGNAL \U3_coin_input|Add1~7\ : std_logic;
SIGNAL \U3_coin_input|Add1~8_combout\ : std_logic;
SIGNAL \U3_coin_input|Add2~1\ : std_logic;
SIGNAL \U3_coin_input|Add2~3\ : std_logic;
SIGNAL \U3_coin_input|Add2~5\ : std_logic;
SIGNAL \U3_coin_input|Add2~6_combout\ : std_logic;
SIGNAL \U3_coin_input|Add0~11\ : std_logic;
SIGNAL \U3_coin_input|Add0~12_combout\ : std_logic;
SIGNAL \U3_coin_input|Add1~9\ : std_logic;
SIGNAL \U3_coin_input|Add1~10_combout\ : std_logic;
SIGNAL \U3_coin_input|Add2~7\ : std_logic;
SIGNAL \U3_coin_input|Add2~8_combout\ : std_logic;
SIGNAL \U3_coin_input|LessThan0~0_combout\ : std_logic;
SIGNAL \U3_coin_input|Add0~13\ : std_logic;
SIGNAL \U3_coin_input|Add0~14_combout\ : std_logic;
SIGNAL \U3_coin_input|Add1~11\ : std_logic;
SIGNAL \U3_coin_input|Add1~12_combout\ : std_logic;
SIGNAL \U3_coin_input|Add2~9\ : std_logic;
SIGNAL \U3_coin_input|Add2~10_combout\ : std_logic;
SIGNAL \U3_coin_input|Add0~15\ : std_logic;
SIGNAL \U3_coin_input|Add0~16_combout\ : std_logic;
SIGNAL \U3_coin_input|Add1~13\ : std_logic;
SIGNAL \U3_coin_input|Add1~14_combout\ : std_logic;
SIGNAL \U3_coin_input|Add2~11\ : std_logic;
SIGNAL \U3_coin_input|Add2~12_combout\ : std_logic;
SIGNAL \U3_coin_input|Add0~17\ : std_logic;
SIGNAL \U3_coin_input|Add0~18_combout\ : std_logic;
SIGNAL \U3_coin_input|Add1~15\ : std_logic;
SIGNAL \U3_coin_input|Add1~16_combout\ : std_logic;
SIGNAL \U3_coin_input|Add2~13\ : std_logic;
SIGNAL \U3_coin_input|Add2~14_combout\ : std_logic;
SIGNAL \U3_coin_input|total~2_combout\ : std_logic;
SIGNAL \U3_coin_input|total~5_combout\ : std_logic;
SIGNAL \U3_coin_input|Add0~1\ : std_logic;
SIGNAL \U3_coin_input|Add0~2_combout\ : std_logic;
SIGNAL \U3_coin_input|Add1~0_combout\ : std_logic;
SIGNAL \U3_coin_input|total~4_combout\ : std_logic;
SIGNAL \U3_coin_input|Add0~3\ : std_logic;
SIGNAL \U3_coin_input|Add0~4_combout\ : std_logic;
SIGNAL \U3_coin_input|Add1~2_combout\ : std_logic;
SIGNAL \U3_coin_input|Add2~0_combout\ : std_logic;
SIGNAL \U3_coin_input|total~3_combout\ : std_logic;
SIGNAL \U3_coin_input|Add0~5\ : std_logic;
SIGNAL \U3_coin_input|Add0~6_combout\ : std_logic;
SIGNAL \U3_coin_input|Add1~4_combout\ : std_logic;
SIGNAL \U3_coin_input|Add2~2_combout\ : std_logic;
SIGNAL \U3_coin_input|LessThan0~1_combout\ : std_logic;
SIGNAL \U3_coin_input|total~1_combout\ : std_logic;
SIGNAL \U3_coin_input|Add0~7\ : std_logic;
SIGNAL \U3_coin_input|Add0~8_combout\ : std_logic;
SIGNAL \U3_coin_input|Add1~6_combout\ : std_logic;
SIGNAL \U3_coin_input|Add2~4_combout\ : std_logic;
SIGNAL \U3_coin_input|total~0_combout\ : std_logic;
SIGNAL \product_price[4]~input_o\ : std_logic;
SIGNAL \U4_vending_fsm|Equal0~3_combout\ : std_logic;
SIGNAL \product_price[7]~input_o\ : std_logic;
SIGNAL \product_price[6]~input_o\ : std_logic;
SIGNAL \U4_vending_fsm|Equal0~4_combout\ : std_logic;
SIGNAL \product_price[0]~input_o\ : std_logic;
SIGNAL \product_price[1]~input_o\ : std_logic;
SIGNAL \U4_vending_fsm|Equal0~1_combout\ : std_logic;
SIGNAL \product_price[2]~input_o\ : std_logic;
SIGNAL \product_price[3]~input_o\ : std_logic;
SIGNAL \U4_vending_fsm|Equal0~2_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Equal0~5_combout\ : std_logic;
SIGNAL \product_price[9]~input_o\ : std_logic;
SIGNAL \product_price[8]~input_o\ : std_logic;
SIGNAL \U4_vending_fsm|Equal0~0_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \U4_vending_fsm|current_state.S5_DispenseChange~q\ : std_logic;
SIGNAL \U4_vending_fsm|Selector2~1_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector6~2_combout\ : std_logic;
SIGNAL \U4_vending_fsm|LessThan0~1_cout\ : std_logic;
SIGNAL \U4_vending_fsm|LessThan0~3_cout\ : std_logic;
SIGNAL \U4_vending_fsm|LessThan0~5_cout\ : std_logic;
SIGNAL \U4_vending_fsm|LessThan0~7_cout\ : std_logic;
SIGNAL \U4_vending_fsm|LessThan0~9_cout\ : std_logic;
SIGNAL \U4_vending_fsm|LessThan0~11_cout\ : std_logic;
SIGNAL \U4_vending_fsm|LessThan0~13_cout\ : std_logic;
SIGNAL \U4_vending_fsm|LessThan0~15_cout\ : std_logic;
SIGNAL \U4_vending_fsm|LessThan0~17_cout\ : std_logic;
SIGNAL \U4_vending_fsm|LessThan0~18_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector6~0_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector6~1_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector6~3_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector6~4_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector6~5_combout\ : std_logic;
SIGNAL \U4_vending_fsm|current_state.S6_Refund~q\ : std_logic;
SIGNAL \valid_product~input_o\ : std_logic;
SIGNAL \U4_vending_fsm|Selector7~0_combout\ : std_logic;
SIGNAL \U4_vending_fsm|current_state.S7_Error~q\ : std_logic;
SIGNAL \U4_vending_fsm|Selector0~1_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector0~2_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector0~3_combout\ : std_logic;
SIGNAL \U4_vending_fsm|current_state.S0_ItemCode1~q\ : std_logic;
SIGNAL \U4_vending_fsm|Selector1~2_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector1~3_combout\ : std_logic;
SIGNAL \U4_vending_fsm|current_state.S1_ItemCode2~q\ : std_logic;
SIGNAL \U4_vending_fsm|Selector2~2_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector2~3_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector2~4_combout\ : std_logic;
SIGNAL \U4_vending_fsm|current_state.S2_Validate~q\ : std_logic;
SIGNAL \U4_vending_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \U4_vending_fsm|current_state.S3_CoinInput~q\ : std_logic;
SIGNAL \U4_vending_fsm|Selector8~0_combout\ : std_logic;
SIGNAL \U2_timer|counter[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U2_timer|counter[4]~34_combout\ : std_logic;
SIGNAL \U2_timer|counter[0]~33\ : std_logic;
SIGNAL \U2_timer|counter[1]~35_combout\ : std_logic;
SIGNAL \U2_timer|counter[1]~36\ : std_logic;
SIGNAL \U2_timer|counter[2]~37_combout\ : std_logic;
SIGNAL \U2_timer|counter[2]~38\ : std_logic;
SIGNAL \U2_timer|counter[3]~39_combout\ : std_logic;
SIGNAL \U2_timer|counter[3]~40\ : std_logic;
SIGNAL \U2_timer|counter[4]~41_combout\ : std_logic;
SIGNAL \U2_timer|counter[4]~42\ : std_logic;
SIGNAL \U2_timer|counter[5]~43_combout\ : std_logic;
SIGNAL \U2_timer|counter[5]~44\ : std_logic;
SIGNAL \U2_timer|counter[6]~45_combout\ : std_logic;
SIGNAL \U2_timer|counter[6]~46\ : std_logic;
SIGNAL \U2_timer|counter[7]~47_combout\ : std_logic;
SIGNAL \U2_timer|counter[7]~48\ : std_logic;
SIGNAL \U2_timer|counter[8]~49_combout\ : std_logic;
SIGNAL \U2_timer|counter[8]~50\ : std_logic;
SIGNAL \U2_timer|counter[9]~51_combout\ : std_logic;
SIGNAL \U2_timer|counter[9]~52\ : std_logic;
SIGNAL \U2_timer|counter[10]~53_combout\ : std_logic;
SIGNAL \U2_timer|counter[10]~54\ : std_logic;
SIGNAL \U2_timer|counter[11]~55_combout\ : std_logic;
SIGNAL \U2_timer|LessThan0~3_combout\ : std_logic;
SIGNAL \U2_timer|counter[11]~56\ : std_logic;
SIGNAL \U2_timer|counter[12]~57_combout\ : std_logic;
SIGNAL \U2_timer|counter[12]~58\ : std_logic;
SIGNAL \U2_timer|counter[13]~59_combout\ : std_logic;
SIGNAL \U2_timer|counter[13]~60\ : std_logic;
SIGNAL \U2_timer|counter[14]~61_combout\ : std_logic;
SIGNAL \U2_timer|counter[14]~62\ : std_logic;
SIGNAL \U2_timer|counter[15]~63_combout\ : std_logic;
SIGNAL \U2_timer|counter[15]~64\ : std_logic;
SIGNAL \U2_timer|counter[16]~65_combout\ : std_logic;
SIGNAL \U2_timer|counter[16]~66\ : std_logic;
SIGNAL \U2_timer|counter[17]~67_combout\ : std_logic;
SIGNAL \U2_timer|counter[17]~68\ : std_logic;
SIGNAL \U2_timer|counter[18]~69_combout\ : std_logic;
SIGNAL \U2_timer|counter[18]~70\ : std_logic;
SIGNAL \U2_timer|counter[19]~71_combout\ : std_logic;
SIGNAL \U2_timer|counter[19]~72\ : std_logic;
SIGNAL \U2_timer|counter[20]~73_combout\ : std_logic;
SIGNAL \U2_timer|counter[20]~74\ : std_logic;
SIGNAL \U2_timer|counter[21]~75_combout\ : std_logic;
SIGNAL \U2_timer|counter[21]~76\ : std_logic;
SIGNAL \U2_timer|counter[22]~77_combout\ : std_logic;
SIGNAL \U2_timer|counter[22]~78\ : std_logic;
SIGNAL \U2_timer|counter[23]~79_combout\ : std_logic;
SIGNAL \U2_timer|counter[23]~80\ : std_logic;
SIGNAL \U2_timer|counter[24]~81_combout\ : std_logic;
SIGNAL \U2_timer|counter[24]~82\ : std_logic;
SIGNAL \U2_timer|counter[25]~83_combout\ : std_logic;
SIGNAL \U2_timer|counter[25]~84\ : std_logic;
SIGNAL \U2_timer|counter[26]~85_combout\ : std_logic;
SIGNAL \U2_timer|counter[26]~86\ : std_logic;
SIGNAL \U2_timer|counter[27]~87_combout\ : std_logic;
SIGNAL \U2_timer|counter[27]~88\ : std_logic;
SIGNAL \U2_timer|counter[28]~89_combout\ : std_logic;
SIGNAL \U2_timer|counter[28]~90\ : std_logic;
SIGNAL \U2_timer|counter[29]~91_combout\ : std_logic;
SIGNAL \U2_timer|counter[29]~92\ : std_logic;
SIGNAL \U2_timer|counter[30]~93_combout\ : std_logic;
SIGNAL \U2_timer|counter[30]~94\ : std_logic;
SIGNAL \U2_timer|counter[31]~95_combout\ : std_logic;
SIGNAL \U2_timer|LessThan0~8_combout\ : std_logic;
SIGNAL \U2_timer|LessThan0~5_combout\ : std_logic;
SIGNAL \U2_timer|LessThan0~6_combout\ : std_logic;
SIGNAL \U2_timer|LessThan0~7_combout\ : std_logic;
SIGNAL \U2_timer|LessThan0~9_combout\ : std_logic;
SIGNAL \U2_timer|LessThan0~0_combout\ : std_logic;
SIGNAL \U2_timer|LessThan0~1_combout\ : std_logic;
SIGNAL \U2_timer|LessThan0~2_combout\ : std_logic;
SIGNAL \U2_timer|LessThan0~4_combout\ : std_logic;
SIGNAL \U2_timer|LessThan0~10_combout\ : std_logic;
SIGNAL \U2_timer|active~0_combout\ : std_logic;
SIGNAL \U2_timer|active~q\ : std_logic;
SIGNAL \U2_timer|timer_done~0_combout\ : std_logic;
SIGNAL \U2_timer|timer_done~1_combout\ : std_logic;
SIGNAL \U2_timer|timer_done~q\ : std_logic;
SIGNAL \U4_vending_fsm|proc_next~0_combout\ : std_logic;
SIGNAL \U4_vending_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \U4_vending_fsm|current_state.S4_Dispense~q\ : std_logic;
SIGNAL \U5_output_control|led_dispense~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|led_dispense~q\ : std_logic;
SIGNAL \U5_output_control|led_change~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|led_change~q\ : std_logic;
SIGNAL \U5_output_control|led_refund~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|led_refund~q\ : std_logic;
SIGNAL \U5_output_control|seg16[0]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[1]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[2]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[3]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[4]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[5]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[6]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[7]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[8]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[9]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[11]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[12]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[13]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[14]~feeder_combout\ : std_logic;
SIGNAL \U5_output_control|seg16[15]~feeder_combout\ : std_logic;
SIGNAL \U2_timer|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U5_output_control|seg16\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3_coin_input|total\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_buttons <= buttons;
ww_coin_25 <= coin_25;
ww_coin_50 <= coin_50;
ww_coin_100 <= coin_100;
ww_valid_product <= valid_product;
ww_product_price <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(product_price);
led_dispense <= ww_led_dispense;
led_change <= ww_led_change;
led_refund <= ww_led_refund;
seg16 <= ww_seg16;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X25_Y24_N9
\led_dispense~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|led_dispense~q\,
	devoe => ww_devoe,
	o => \led_dispense~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\led_change~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|led_change~q\,
	devoe => ww_devoe,
	o => \led_change~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\led_refund~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|led_refund~q\,
	devoe => ww_devoe,
	o => \led_refund~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\seg16[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(0),
	devoe => ww_devoe,
	o => \seg16[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\seg16[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(1),
	devoe => ww_devoe,
	o => \seg16[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\seg16[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(2),
	devoe => ww_devoe,
	o => \seg16[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\seg16[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(3),
	devoe => ww_devoe,
	o => \seg16[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\seg16[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(4),
	devoe => ww_devoe,
	o => \seg16[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\seg16[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(5),
	devoe => ww_devoe,
	o => \seg16[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\seg16[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(6),
	devoe => ww_devoe,
	o => \seg16[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\seg16[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(7),
	devoe => ww_devoe,
	o => \seg16[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\seg16[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(8),
	devoe => ww_devoe,
	o => \seg16[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\seg16[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(9),
	devoe => ww_devoe,
	o => \seg16[9]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\seg16[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(10),
	devoe => ww_devoe,
	o => \seg16[10]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\seg16[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(11),
	devoe => ww_devoe,
	o => \seg16[11]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\seg16[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(12),
	devoe => ww_devoe,
	o => \seg16[12]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\seg16[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(13),
	devoe => ww_devoe,
	o => \seg16[13]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\seg16[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(14),
	devoe => ww_devoe,
	o => \seg16[14]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\seg16[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5_output_control|seg16\(15),
	devoe => ww_devoe,
	o => \seg16[15]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X30_Y24_N1
\buttons[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(10),
	o => \buttons[10]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\buttons[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(3),
	o => \buttons[3]~input_o\);

-- Location: IOIBUF_X34_Y3_N15
\buttons[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(0),
	o => \buttons[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\buttons[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(1),
	o => \buttons[1]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\buttons[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(2),
	o => \buttons[2]~input_o\);

-- Location: LCCOMB_X33_Y4_N8
\U1_input_decoder|enter_pressed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_input_decoder|enter_pressed~0_combout\ = (\buttons[3]~input_o\) # ((\buttons[0]~input_o\) # ((\buttons[1]~input_o\) # (\buttons[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datab => \buttons[0]~input_o\,
	datac => \buttons[1]~input_o\,
	datad => \buttons[2]~input_o\,
	combout => \U1_input_decoder|enter_pressed~0_combout\);

-- Location: IOIBUF_X32_Y0_N8
\buttons[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(9),
	o => \buttons[9]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\buttons[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(8),
	o => \buttons[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\buttons[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(6),
	o => \buttons[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\buttons[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(7),
	o => \buttons[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\buttons[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(4),
	o => \buttons[4]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\buttons[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(5),
	o => \buttons[5]~input_o\);

-- Location: LCCOMB_X32_Y3_N24
\U1_input_decoder|enter_pressed~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_input_decoder|enter_pressed~1_combout\ = (\buttons[6]~input_o\) # ((\buttons[7]~input_o\) # ((\buttons[4]~input_o\) # (\buttons[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datab => \buttons[7]~input_o\,
	datac => \buttons[4]~input_o\,
	datad => \buttons[5]~input_o\,
	combout => \U1_input_decoder|enter_pressed~1_combout\);

-- Location: LCCOMB_X31_Y3_N0
\U1_input_decoder|enter_pressed~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_input_decoder|enter_pressed~2_combout\ = (\U1_input_decoder|enter_pressed~0_combout\) # ((\buttons[9]~input_o\) # ((\buttons[8]~input_o\) # (\U1_input_decoder|enter_pressed~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_input_decoder|enter_pressed~0_combout\,
	datab => \buttons[9]~input_o\,
	datac => \buttons[8]~input_o\,
	datad => \U1_input_decoder|enter_pressed~1_combout\,
	combout => \U1_input_decoder|enter_pressed~2_combout\);

-- Location: IOIBUF_X34_Y18_N15
\buttons[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(11),
	o => \buttons[11]~input_o\);

-- Location: LCCOMB_X30_Y17_N28
\U4_vending_fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector1~0_combout\ = (!\U1_input_decoder|enter_pressed~2_combout\ & (!\buttons[10]~input_o\ & !\buttons[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_input_decoder|enter_pressed~2_combout\,
	datac => \buttons[10]~input_o\,
	datad => \buttons[11]~input_o\,
	combout => \U4_vending_fsm|Selector1~0_combout\);

-- Location: LCCOMB_X26_Y17_N0
\U4_vending_fsm|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector1~1_combout\ = (\U4_vending_fsm|current_state.S1_ItemCode2~q\ & ((\U4_vending_fsm|Selector2~2_combout\) # ((\U4_vending_fsm|Selector1~0_combout\ & \U4_vending_fsm|proc_next~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|Selector2~2_combout\,
	datab => \U4_vending_fsm|Selector1~0_combout\,
	datac => \U4_vending_fsm|proc_next~0_combout\,
	datad => \U4_vending_fsm|current_state.S1_ItemCode2~q\,
	combout => \U4_vending_fsm|Selector1~1_combout\);

-- Location: LCCOMB_X30_Y17_N22
\U4_vending_fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector0~0_combout\ = (\U4_vending_fsm|current_state.S1_ItemCode2~q\ & ((\U2_timer|timer_done~q\) # ((\buttons[10]~input_o\ & !\U1_input_decoder|enter_pressed~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|current_state.S1_ItemCode2~q\,
	datab => \buttons[10]~input_o\,
	datac => \U1_input_decoder|enter_pressed~2_combout\,
	datad => \U2_timer|timer_done~q\,
	combout => \U4_vending_fsm|Selector0~0_combout\);

-- Location: IOIBUF_X34_Y19_N1
\product_price[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_price(5),
	o => \product_price[5]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\coin_25~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_25,
	o => \coin_25~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X30_Y17_N31
\U3_coin_input|prev_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \coin_25~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|prev_25~q\);

-- Location: LCCOMB_X30_Y17_N30
\U3_coin_input|r25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|r25~0_combout\ = (\coin_25~input_o\ & !\U3_coin_input|prev_25~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coin_25~input_o\,
	datac => \U3_coin_input|prev_25~q\,
	combout => \U3_coin_input|r25~0_combout\);

-- Location: IOIBUF_X32_Y24_N15
\coin_100~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_100,
	o => \coin_100~input_o\);

-- Location: FF_X32_Y20_N5
\U3_coin_input|prev_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \coin_100~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|prev_100~q\);

-- Location: LCCOMB_X32_Y20_N4
\U3_coin_input|r100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|r100~0_combout\ = (\coin_100~input_o\ & !\U3_coin_input|prev_100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coin_100~input_o\,
	datac => \U3_coin_input|prev_100~q\,
	combout => \U3_coin_input|r100~0_combout\);

-- Location: LCCOMB_X30_Y17_N0
\U3_coin_input|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add0~0_combout\ = (\U3_coin_input|r25~0_combout\ & (\U3_coin_input|total\(0) $ (VCC))) # (!\U3_coin_input|r25~0_combout\ & (\U3_coin_input|total\(0) & VCC))
-- \U3_coin_input|Add0~1\ = CARRY((\U3_coin_input|r25~0_combout\ & \U3_coin_input|total\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|r25~0_combout\,
	datab => \U3_coin_input|total\(0),
	datad => VCC,
	combout => \U3_coin_input|Add0~0_combout\,
	cout => \U3_coin_input|Add0~1\);

-- Location: FF_X32_Y17_N21
\U3_coin_input|total[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U3_coin_input|Add2~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|total\(5));

-- Location: LCCOMB_X30_Y17_N8
\U3_coin_input|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add0~8_combout\ = ((\U3_coin_input|r25~0_combout\ $ (\U3_coin_input|total\(4) $ (!\U3_coin_input|Add0~7\)))) # (GND)
-- \U3_coin_input|Add0~9\ = CARRY((\U3_coin_input|r25~0_combout\ & ((\U3_coin_input|total\(4)) # (!\U3_coin_input|Add0~7\))) # (!\U3_coin_input|r25~0_combout\ & (\U3_coin_input|total\(4) & !\U3_coin_input|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|r25~0_combout\,
	datab => \U3_coin_input|total\(4),
	datad => VCC,
	cin => \U3_coin_input|Add0~7\,
	combout => \U3_coin_input|Add0~8_combout\,
	cout => \U3_coin_input|Add0~9\);

-- Location: LCCOMB_X30_Y17_N10
\U3_coin_input|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add0~10_combout\ = (\U3_coin_input|total\(5) & (!\U3_coin_input|Add0~9\)) # (!\U3_coin_input|total\(5) & ((\U3_coin_input|Add0~9\) # (GND)))
-- \U3_coin_input|Add0~11\ = CARRY((!\U3_coin_input|Add0~9\) # (!\U3_coin_input|total\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|total\(5),
	datad => VCC,
	cin => \U3_coin_input|Add0~9\,
	combout => \U3_coin_input|Add0~10_combout\,
	cout => \U3_coin_input|Add0~11\);

-- Location: IOIBUF_X32_Y24_N22
\coin_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_50,
	o => \coin_50~input_o\);

-- Location: FF_X31_Y17_N29
\U3_coin_input|prev_50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \coin_50~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|prev_50~q\);

-- Location: LCCOMB_X31_Y17_N28
\U3_coin_input|r50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|r50~0_combout\ = (\coin_50~input_o\ & !\U3_coin_input|prev_50~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin_50~input_o\,
	datac => \U3_coin_input|prev_50~q\,
	combout => \U3_coin_input|r50~0_combout\);

-- Location: LCCOMB_X31_Y17_N2
\U3_coin_input|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add1~0_combout\ = (\U3_coin_input|Add0~2_combout\ & (\U3_coin_input|r50~0_combout\ $ (VCC))) # (!\U3_coin_input|Add0~2_combout\ & (\U3_coin_input|r50~0_combout\ & VCC))
-- \U3_coin_input|Add1~1\ = CARRY((\U3_coin_input|Add0~2_combout\ & \U3_coin_input|r50~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add0~2_combout\,
	datab => \U3_coin_input|r50~0_combout\,
	datad => VCC,
	combout => \U3_coin_input|Add1~0_combout\,
	cout => \U3_coin_input|Add1~1\);

-- Location: LCCOMB_X31_Y17_N4
\U3_coin_input|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add1~2_combout\ = (\U3_coin_input|Add0~4_combout\ & (!\U3_coin_input|Add1~1\)) # (!\U3_coin_input|Add0~4_combout\ & ((\U3_coin_input|Add1~1\) # (GND)))
-- \U3_coin_input|Add1~3\ = CARRY((!\U3_coin_input|Add1~1\) # (!\U3_coin_input|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3_coin_input|Add0~4_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add1~1\,
	combout => \U3_coin_input|Add1~2_combout\,
	cout => \U3_coin_input|Add1~3\);

-- Location: LCCOMB_X31_Y17_N6
\U3_coin_input|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add1~4_combout\ = (\U3_coin_input|Add0~6_combout\ & (\U3_coin_input|Add1~3\ $ (GND))) # (!\U3_coin_input|Add0~6_combout\ & (!\U3_coin_input|Add1~3\ & VCC))
-- \U3_coin_input|Add1~5\ = CARRY((\U3_coin_input|Add0~6_combout\ & !\U3_coin_input|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3_coin_input|Add0~6_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add1~3\,
	combout => \U3_coin_input|Add1~4_combout\,
	cout => \U3_coin_input|Add1~5\);

-- Location: LCCOMB_X31_Y17_N8
\U3_coin_input|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add1~6_combout\ = (\U3_coin_input|Add0~8_combout\ & ((\U3_coin_input|r50~0_combout\ & (\U3_coin_input|Add1~5\ & VCC)) # (!\U3_coin_input|r50~0_combout\ & (!\U3_coin_input|Add1~5\)))) # (!\U3_coin_input|Add0~8_combout\ & 
-- ((\U3_coin_input|r50~0_combout\ & (!\U3_coin_input|Add1~5\)) # (!\U3_coin_input|r50~0_combout\ & ((\U3_coin_input|Add1~5\) # (GND)))))
-- \U3_coin_input|Add1~7\ = CARRY((\U3_coin_input|Add0~8_combout\ & (!\U3_coin_input|r50~0_combout\ & !\U3_coin_input|Add1~5\)) # (!\U3_coin_input|Add0~8_combout\ & ((!\U3_coin_input|Add1~5\) # (!\U3_coin_input|r50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add0~8_combout\,
	datab => \U3_coin_input|r50~0_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add1~5\,
	combout => \U3_coin_input|Add1~6_combout\,
	cout => \U3_coin_input|Add1~7\);

-- Location: LCCOMB_X31_Y17_N10
\U3_coin_input|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add1~8_combout\ = ((\U3_coin_input|Add0~10_combout\ $ (\U3_coin_input|r50~0_combout\ $ (!\U3_coin_input|Add1~7\)))) # (GND)
-- \U3_coin_input|Add1~9\ = CARRY((\U3_coin_input|Add0~10_combout\ & ((\U3_coin_input|r50~0_combout\) # (!\U3_coin_input|Add1~7\))) # (!\U3_coin_input|Add0~10_combout\ & (\U3_coin_input|r50~0_combout\ & !\U3_coin_input|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add0~10_combout\,
	datab => \U3_coin_input|r50~0_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add1~7\,
	combout => \U3_coin_input|Add1~8_combout\,
	cout => \U3_coin_input|Add1~9\);

-- Location: LCCOMB_X32_Y17_N4
\U3_coin_input|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add2~0_combout\ = (\U3_coin_input|r100~0_combout\ & (\U3_coin_input|Add1~2_combout\ $ (VCC))) # (!\U3_coin_input|r100~0_combout\ & (\U3_coin_input|Add1~2_combout\ & VCC))
-- \U3_coin_input|Add2~1\ = CARRY((\U3_coin_input|r100~0_combout\ & \U3_coin_input|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|r100~0_combout\,
	datab => \U3_coin_input|Add1~2_combout\,
	datad => VCC,
	combout => \U3_coin_input|Add2~0_combout\,
	cout => \U3_coin_input|Add2~1\);

-- Location: LCCOMB_X32_Y17_N6
\U3_coin_input|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add2~2_combout\ = (\U3_coin_input|Add1~4_combout\ & (!\U3_coin_input|Add2~1\)) # (!\U3_coin_input|Add1~4_combout\ & ((\U3_coin_input|Add2~1\) # (GND)))
-- \U3_coin_input|Add2~3\ = CARRY((!\U3_coin_input|Add2~1\) # (!\U3_coin_input|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add1~4_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add2~1\,
	combout => \U3_coin_input|Add2~2_combout\,
	cout => \U3_coin_input|Add2~3\);

-- Location: LCCOMB_X32_Y17_N8
\U3_coin_input|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add2~4_combout\ = (\U3_coin_input|Add1~6_combout\ & (\U3_coin_input|Add2~3\ $ (GND))) # (!\U3_coin_input|Add1~6_combout\ & (!\U3_coin_input|Add2~3\ & VCC))
-- \U3_coin_input|Add2~5\ = CARRY((\U3_coin_input|Add1~6_combout\ & !\U3_coin_input|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add1~6_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add2~3\,
	combout => \U3_coin_input|Add2~4_combout\,
	cout => \U3_coin_input|Add2~5\);

-- Location: LCCOMB_X32_Y17_N10
\U3_coin_input|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add2~6_combout\ = (\U3_coin_input|Add1~8_combout\ & ((\U3_coin_input|r100~0_combout\ & (\U3_coin_input|Add2~5\ & VCC)) # (!\U3_coin_input|r100~0_combout\ & (!\U3_coin_input|Add2~5\)))) # (!\U3_coin_input|Add1~8_combout\ & 
-- ((\U3_coin_input|r100~0_combout\ & (!\U3_coin_input|Add2~5\)) # (!\U3_coin_input|r100~0_combout\ & ((\U3_coin_input|Add2~5\) # (GND)))))
-- \U3_coin_input|Add2~7\ = CARRY((\U3_coin_input|Add1~8_combout\ & (!\U3_coin_input|r100~0_combout\ & !\U3_coin_input|Add2~5\)) # (!\U3_coin_input|Add1~8_combout\ & ((!\U3_coin_input|Add2~5\) # (!\U3_coin_input|r100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add1~8_combout\,
	datab => \U3_coin_input|r100~0_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add2~5\,
	combout => \U3_coin_input|Add2~6_combout\,
	cout => \U3_coin_input|Add2~7\);

-- Location: FF_X32_Y17_N3
\U3_coin_input|total[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U3_coin_input|Add2~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|total\(6));

-- Location: LCCOMB_X30_Y17_N12
\U3_coin_input|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add0~12_combout\ = (\U3_coin_input|total\(6) & (\U3_coin_input|Add0~11\ $ (GND))) # (!\U3_coin_input|total\(6) & (!\U3_coin_input|Add0~11\ & VCC))
-- \U3_coin_input|Add0~13\ = CARRY((\U3_coin_input|total\(6) & !\U3_coin_input|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3_coin_input|total\(6),
	datad => VCC,
	cin => \U3_coin_input|Add0~11\,
	combout => \U3_coin_input|Add0~12_combout\,
	cout => \U3_coin_input|Add0~13\);

-- Location: LCCOMB_X31_Y17_N12
\U3_coin_input|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add1~10_combout\ = (\U3_coin_input|Add0~12_combout\ & (!\U3_coin_input|Add1~9\)) # (!\U3_coin_input|Add0~12_combout\ & ((\U3_coin_input|Add1~9\) # (GND)))
-- \U3_coin_input|Add1~11\ = CARRY((!\U3_coin_input|Add1~9\) # (!\U3_coin_input|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add0~12_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add1~9\,
	combout => \U3_coin_input|Add1~10_combout\,
	cout => \U3_coin_input|Add1~11\);

-- Location: LCCOMB_X32_Y17_N12
\U3_coin_input|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add2~8_combout\ = ((\U3_coin_input|Add1~10_combout\ $ (\U3_coin_input|r100~0_combout\ $ (!\U3_coin_input|Add2~7\)))) # (GND)
-- \U3_coin_input|Add2~9\ = CARRY((\U3_coin_input|Add1~10_combout\ & ((\U3_coin_input|r100~0_combout\) # (!\U3_coin_input|Add2~7\))) # (!\U3_coin_input|Add1~10_combout\ & (\U3_coin_input|r100~0_combout\ & !\U3_coin_input|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add1~10_combout\,
	datab => \U3_coin_input|r100~0_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add2~7\,
	combout => \U3_coin_input|Add2~8_combout\,
	cout => \U3_coin_input|Add2~9\);

-- Location: LCCOMB_X32_Y17_N20
\U3_coin_input|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|LessThan0~0_combout\ = (\U3_coin_input|Add2~6_combout\ & (\U3_coin_input|Add2~8_combout\ & ((\U3_coin_input|Add2~2_combout\) # (\U3_coin_input|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add2~2_combout\,
	datab => \U3_coin_input|Add2~4_combout\,
	datac => \U3_coin_input|Add2~6_combout\,
	datad => \U3_coin_input|Add2~8_combout\,
	combout => \U3_coin_input|LessThan0~0_combout\);

-- Location: FF_X32_Y17_N19
\U3_coin_input|total[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3_coin_input|Add2~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|total\(9));

-- Location: LCCOMB_X30_Y17_N14
\U3_coin_input|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add0~14_combout\ = (\U3_coin_input|total\(7) & (!\U3_coin_input|Add0~13\)) # (!\U3_coin_input|total\(7) & ((\U3_coin_input|Add0~13\) # (GND)))
-- \U3_coin_input|Add0~15\ = CARRY((!\U3_coin_input|Add0~13\) # (!\U3_coin_input|total\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3_coin_input|total\(7),
	datad => VCC,
	cin => \U3_coin_input|Add0~13\,
	combout => \U3_coin_input|Add0~14_combout\,
	cout => \U3_coin_input|Add0~15\);

-- Location: LCCOMB_X31_Y17_N14
\U3_coin_input|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add1~12_combout\ = (\U3_coin_input|Add0~14_combout\ & (\U3_coin_input|Add1~11\ $ (GND))) # (!\U3_coin_input|Add0~14_combout\ & (!\U3_coin_input|Add1~11\ & VCC))
-- \U3_coin_input|Add1~13\ = CARRY((\U3_coin_input|Add0~14_combout\ & !\U3_coin_input|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add0~14_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add1~11\,
	combout => \U3_coin_input|Add1~12_combout\,
	cout => \U3_coin_input|Add1~13\);

-- Location: LCCOMB_X32_Y17_N14
\U3_coin_input|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add2~10_combout\ = (\U3_coin_input|Add1~12_combout\ & (!\U3_coin_input|Add2~9\)) # (!\U3_coin_input|Add1~12_combout\ & ((\U3_coin_input|Add2~9\) # (GND)))
-- \U3_coin_input|Add2~11\ = CARRY((!\U3_coin_input|Add2~9\) # (!\U3_coin_input|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add1~12_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add2~9\,
	combout => \U3_coin_input|Add2~10_combout\,
	cout => \U3_coin_input|Add2~11\);

-- Location: FF_X32_Y17_N25
\U3_coin_input|total[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U3_coin_input|Add2~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|total\(7));

-- Location: LCCOMB_X30_Y17_N16
\U3_coin_input|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add0~16_combout\ = (\U3_coin_input|total\(8) & (\U3_coin_input|Add0~15\ $ (GND))) # (!\U3_coin_input|total\(8) & (!\U3_coin_input|Add0~15\ & VCC))
-- \U3_coin_input|Add0~17\ = CARRY((\U3_coin_input|total\(8) & !\U3_coin_input|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|total\(8),
	datad => VCC,
	cin => \U3_coin_input|Add0~15\,
	combout => \U3_coin_input|Add0~16_combout\,
	cout => \U3_coin_input|Add0~17\);

-- Location: LCCOMB_X31_Y17_N16
\U3_coin_input|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add1~14_combout\ = (\U3_coin_input|Add0~16_combout\ & (!\U3_coin_input|Add1~13\)) # (!\U3_coin_input|Add0~16_combout\ & ((\U3_coin_input|Add1~13\) # (GND)))
-- \U3_coin_input|Add1~15\ = CARRY((!\U3_coin_input|Add1~13\) # (!\U3_coin_input|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add0~16_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add1~13\,
	combout => \U3_coin_input|Add1~14_combout\,
	cout => \U3_coin_input|Add1~15\);

-- Location: LCCOMB_X32_Y17_N16
\U3_coin_input|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add2~12_combout\ = (\U3_coin_input|Add1~14_combout\ & (\U3_coin_input|Add2~11\ $ (GND))) # (!\U3_coin_input|Add1~14_combout\ & (!\U3_coin_input|Add2~11\ & VCC))
-- \U3_coin_input|Add2~13\ = CARRY((\U3_coin_input|Add1~14_combout\ & !\U3_coin_input|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add1~14_combout\,
	datad => VCC,
	cin => \U3_coin_input|Add2~11\,
	combout => \U3_coin_input|Add2~12_combout\,
	cout => \U3_coin_input|Add2~13\);

-- Location: FF_X32_Y17_N17
\U3_coin_input|total[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3_coin_input|Add2~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|total\(8));

-- Location: LCCOMB_X30_Y17_N18
\U3_coin_input|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add0~18_combout\ = \U3_coin_input|Add0~17\ $ (\U3_coin_input|total\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U3_coin_input|total\(9),
	cin => \U3_coin_input|Add0~17\,
	combout => \U3_coin_input|Add0~18_combout\);

-- Location: LCCOMB_X31_Y17_N18
\U3_coin_input|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add1~16_combout\ = \U3_coin_input|Add1~15\ $ (!\U3_coin_input|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U3_coin_input|Add0~18_combout\,
	cin => \U3_coin_input|Add1~15\,
	combout => \U3_coin_input|Add1~16_combout\);

-- Location: LCCOMB_X32_Y17_N18
\U3_coin_input|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add2~14_combout\ = \U3_coin_input|Add2~13\ $ (\U3_coin_input|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U3_coin_input|Add1~16_combout\,
	cin => \U3_coin_input|Add2~13\,
	combout => \U3_coin_input|Add2~14_combout\);

-- Location: LCCOMB_X32_Y17_N2
\U3_coin_input|total~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|total~2_combout\ = (\U3_coin_input|Add2~10_combout\ & \U3_coin_input|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3_coin_input|Add2~10_combout\,
	datad => \U3_coin_input|Add2~12_combout\,
	combout => \U3_coin_input|total~2_combout\);

-- Location: LCCOMB_X32_Y17_N26
\U3_coin_input|total~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|total~5_combout\ = (\U3_coin_input|Add0~0_combout\) # ((\U3_coin_input|LessThan0~0_combout\ & (\U3_coin_input|Add2~14_combout\ & \U3_coin_input|total~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add0~0_combout\,
	datab => \U3_coin_input|LessThan0~0_combout\,
	datac => \U3_coin_input|Add2~14_combout\,
	datad => \U3_coin_input|total~2_combout\,
	combout => \U3_coin_input|total~5_combout\);

-- Location: FF_X32_Y17_N27
\U3_coin_input|total[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3_coin_input|total~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|total\(0));

-- Location: LCCOMB_X30_Y17_N2
\U3_coin_input|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add0~2_combout\ = (\U3_coin_input|total\(1) & (!\U3_coin_input|Add0~1\)) # (!\U3_coin_input|total\(1) & ((\U3_coin_input|Add0~1\) # (GND)))
-- \U3_coin_input|Add0~3\ = CARRY((!\U3_coin_input|Add0~1\) # (!\U3_coin_input|total\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|total\(1),
	datad => VCC,
	cin => \U3_coin_input|Add0~1\,
	combout => \U3_coin_input|Add0~2_combout\,
	cout => \U3_coin_input|Add0~3\);

-- Location: LCCOMB_X32_Y17_N0
\U3_coin_input|total~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|total~4_combout\ = (\U3_coin_input|Add1~0_combout\) # ((\U3_coin_input|LessThan0~0_combout\ & (\U3_coin_input|Add2~14_combout\ & \U3_coin_input|total~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add1~0_combout\,
	datab => \U3_coin_input|LessThan0~0_combout\,
	datac => \U3_coin_input|Add2~14_combout\,
	datad => \U3_coin_input|total~2_combout\,
	combout => \U3_coin_input|total~4_combout\);

-- Location: FF_X32_Y17_N1
\U3_coin_input|total[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3_coin_input|total~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|total\(1));

-- Location: LCCOMB_X30_Y17_N4
\U3_coin_input|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add0~4_combout\ = (\U3_coin_input|total\(2) & (\U3_coin_input|Add0~3\ $ (GND))) # (!\U3_coin_input|total\(2) & (!\U3_coin_input|Add0~3\ & VCC))
-- \U3_coin_input|Add0~5\ = CARRY((\U3_coin_input|total\(2) & !\U3_coin_input|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|total\(2),
	datad => VCC,
	cin => \U3_coin_input|Add0~3\,
	combout => \U3_coin_input|Add0~4_combout\,
	cout => \U3_coin_input|Add0~5\);

-- Location: LCCOMB_X32_Y17_N22
\U3_coin_input|total~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|total~3_combout\ = (\U3_coin_input|Add2~0_combout\) # ((\U3_coin_input|LessThan0~0_combout\ & (\U3_coin_input|Add2~14_combout\ & \U3_coin_input|total~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add2~0_combout\,
	datab => \U3_coin_input|LessThan0~0_combout\,
	datac => \U3_coin_input|Add2~14_combout\,
	datad => \U3_coin_input|total~2_combout\,
	combout => \U3_coin_input|total~3_combout\);

-- Location: FF_X32_Y17_N23
\U3_coin_input|total[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3_coin_input|total~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|total\(2));

-- Location: LCCOMB_X30_Y17_N6
\U3_coin_input|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|Add0~6_combout\ = (\U3_coin_input|r25~0_combout\ & ((\U3_coin_input|total\(3) & (\U3_coin_input|Add0~5\ & VCC)) # (!\U3_coin_input|total\(3) & (!\U3_coin_input|Add0~5\)))) # (!\U3_coin_input|r25~0_combout\ & ((\U3_coin_input|total\(3) & 
-- (!\U3_coin_input|Add0~5\)) # (!\U3_coin_input|total\(3) & ((\U3_coin_input|Add0~5\) # (GND)))))
-- \U3_coin_input|Add0~7\ = CARRY((\U3_coin_input|r25~0_combout\ & (!\U3_coin_input|total\(3) & !\U3_coin_input|Add0~5\)) # (!\U3_coin_input|r25~0_combout\ & ((!\U3_coin_input|Add0~5\) # (!\U3_coin_input|total\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|r25~0_combout\,
	datab => \U3_coin_input|total\(3),
	datad => VCC,
	cin => \U3_coin_input|Add0~5\,
	combout => \U3_coin_input|Add0~6_combout\,
	cout => \U3_coin_input|Add0~7\);

-- Location: LCCOMB_X32_Y17_N24
\U3_coin_input|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|LessThan0~1_combout\ = (\U3_coin_input|Add2~12_combout\ & (\U3_coin_input|Add2~14_combout\ & (\U3_coin_input|Add2~10_combout\ & \U3_coin_input|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add2~12_combout\,
	datab => \U3_coin_input|Add2~14_combout\,
	datac => \U3_coin_input|Add2~10_combout\,
	datad => \U3_coin_input|LessThan0~0_combout\,
	combout => \U3_coin_input|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y17_N28
\U3_coin_input|total~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|total~1_combout\ = (\U3_coin_input|Add2~2_combout\ & !\U3_coin_input|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|Add2~2_combout\,
	datad => \U3_coin_input|LessThan0~1_combout\,
	combout => \U3_coin_input|total~1_combout\);

-- Location: FF_X32_Y17_N29
\U3_coin_input|total[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3_coin_input|total~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|total\(3));

-- Location: LCCOMB_X32_Y17_N30
\U3_coin_input|total~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3_coin_input|total~0_combout\ = (\U3_coin_input|Add2~4_combout\ & !\U3_coin_input|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3_coin_input|Add2~4_combout\,
	datad => \U3_coin_input|LessThan0~1_combout\,
	combout => \U3_coin_input|total~0_combout\);

-- Location: FF_X32_Y17_N31
\U3_coin_input|total[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3_coin_input|total~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_coin_input|total\(4));

-- Location: IOIBUF_X34_Y20_N8
\product_price[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_price(4),
	o => \product_price[4]~input_o\);

-- Location: LCCOMB_X33_Y17_N26
\U4_vending_fsm|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Equal0~3_combout\ = (\product_price[5]~input_o\ & (\U3_coin_input|total\(5) & (\U3_coin_input|total\(4) $ (!\product_price[4]~input_o\)))) # (!\product_price[5]~input_o\ & (!\U3_coin_input|total\(5) & (\U3_coin_input|total\(4) $ 
-- (!\product_price[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_price[5]~input_o\,
	datab => \U3_coin_input|total\(4),
	datac => \product_price[4]~input_o\,
	datad => \U3_coin_input|total\(5),
	combout => \U4_vending_fsm|Equal0~3_combout\);

-- Location: IOIBUF_X34_Y20_N15
\product_price[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_price(7),
	o => \product_price[7]~input_o\);

-- Location: IOIBUF_X34_Y11_N1
\product_price[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_price(6),
	o => \product_price[6]~input_o\);

-- Location: LCCOMB_X33_Y17_N24
\U4_vending_fsm|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Equal0~4_combout\ = (\U3_coin_input|total\(6) & (\product_price[6]~input_o\ & (\product_price[7]~input_o\ $ (!\U3_coin_input|total\(7))))) # (!\U3_coin_input|total\(6) & (!\product_price[6]~input_o\ & (\product_price[7]~input_o\ $ 
-- (!\U3_coin_input|total\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|total\(6),
	datab => \product_price[7]~input_o\,
	datac => \product_price[6]~input_o\,
	datad => \U3_coin_input|total\(7),
	combout => \U4_vending_fsm|Equal0~4_combout\);

-- Location: IOIBUF_X34_Y19_N8
\product_price[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_price(0),
	o => \product_price[0]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\product_price[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_price(1),
	o => \product_price[1]~input_o\);

-- Location: LCCOMB_X33_Y17_N30
\U4_vending_fsm|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Equal0~1_combout\ = (\product_price[0]~input_o\ & (\U3_coin_input|total\(0) & (\product_price[1]~input_o\ $ (!\U3_coin_input|total\(1))))) # (!\product_price[0]~input_o\ & (!\U3_coin_input|total\(0) & (\product_price[1]~input_o\ $ 
-- (!\U3_coin_input|total\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_price[0]~input_o\,
	datab => \product_price[1]~input_o\,
	datac => \U3_coin_input|total\(1),
	datad => \U3_coin_input|total\(0),
	combout => \U4_vending_fsm|Equal0~1_combout\);

-- Location: IOIBUF_X34_Y20_N1
\product_price[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_price(2),
	o => \product_price[2]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\product_price[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_price(3),
	o => \product_price[3]~input_o\);

-- Location: LCCOMB_X33_Y17_N28
\U4_vending_fsm|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Equal0~2_combout\ = (\product_price[2]~input_o\ & (\U3_coin_input|total\(2) & (\U3_coin_input|total\(3) $ (!\product_price[3]~input_o\)))) # (!\product_price[2]~input_o\ & (!\U3_coin_input|total\(2) & (\U3_coin_input|total\(3) $ 
-- (!\product_price[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_price[2]~input_o\,
	datab => \U3_coin_input|total\(3),
	datac => \product_price[3]~input_o\,
	datad => \U3_coin_input|total\(2),
	combout => \U4_vending_fsm|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y17_N2
\U4_vending_fsm|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Equal0~5_combout\ = (\U4_vending_fsm|Equal0~3_combout\ & (\U4_vending_fsm|Equal0~4_combout\ & (\U4_vending_fsm|Equal0~1_combout\ & \U4_vending_fsm|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|Equal0~3_combout\,
	datab => \U4_vending_fsm|Equal0~4_combout\,
	datac => \U4_vending_fsm|Equal0~1_combout\,
	datad => \U4_vending_fsm|Equal0~2_combout\,
	combout => \U4_vending_fsm|Equal0~5_combout\);

-- Location: IOIBUF_X34_Y17_N22
\product_price[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_price(9),
	o => \product_price[9]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\product_price[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_price(8),
	o => \product_price[8]~input_o\);

-- Location: LCCOMB_X33_Y17_N0
\U4_vending_fsm|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Equal0~0_combout\ = (\product_price[9]~input_o\ & (\U3_coin_input|total\(9) & (\product_price[8]~input_o\ $ (!\U3_coin_input|total\(8))))) # (!\product_price[9]~input_o\ & (!\U3_coin_input|total\(9) & (\product_price[8]~input_o\ $ 
-- (!\U3_coin_input|total\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_price[9]~input_o\,
	datab => \product_price[8]~input_o\,
	datac => \U3_coin_input|total\(8),
	datad => \U3_coin_input|total\(9),
	combout => \U4_vending_fsm|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y20_N24
\U4_vending_fsm|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector5~0_combout\ = (\U4_vending_fsm|current_state.S4_Dispense~q\ & ((!\U4_vending_fsm|Equal0~0_combout\) # (!\U4_vending_fsm|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4_vending_fsm|current_state.S4_Dispense~q\,
	datac => \U4_vending_fsm|Equal0~5_combout\,
	datad => \U4_vending_fsm|Equal0~0_combout\,
	combout => \U4_vending_fsm|Selector5~0_combout\);

-- Location: FF_X26_Y20_N25
\U4_vending_fsm|current_state.S5_DispenseChange\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_vending_fsm|Selector5~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_vending_fsm|current_state.S5_DispenseChange~q\);

-- Location: LCCOMB_X26_Y17_N8
\U4_vending_fsm|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector2~1_combout\ = (!\U4_vending_fsm|Selector1~0_combout\ & (\U4_vending_fsm|proc_next~0_combout\ & \U4_vending_fsm|current_state.S1_ItemCode2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4_vending_fsm|Selector1~0_combout\,
	datac => \U4_vending_fsm|proc_next~0_combout\,
	datad => \U4_vending_fsm|current_state.S1_ItemCode2~q\,
	combout => \U4_vending_fsm|Selector2~1_combout\);

-- Location: LCCOMB_X26_Y17_N4
\U4_vending_fsm|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector6~2_combout\ = (!\U4_vending_fsm|current_state.S3_CoinInput~q\ & ((\U4_vending_fsm|current_state.S1_ItemCode2~q\) # (!\U4_vending_fsm|current_state.S0_ItemCode1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	datac => \U4_vending_fsm|current_state.S0_ItemCode1~q\,
	datad => \U4_vending_fsm|current_state.S1_ItemCode2~q\,
	combout => \U4_vending_fsm|Selector6~2_combout\);

-- Location: LCCOMB_X33_Y17_N4
\U4_vending_fsm|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|LessThan0~1_cout\ = CARRY((\product_price[0]~input_o\ & !\U3_coin_input|total\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_price[0]~input_o\,
	datab => \U3_coin_input|total\(0),
	datad => VCC,
	cout => \U4_vending_fsm|LessThan0~1_cout\);

-- Location: LCCOMB_X33_Y17_N6
\U4_vending_fsm|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|LessThan0~3_cout\ = CARRY((\U3_coin_input|total\(1) & ((!\U4_vending_fsm|LessThan0~1_cout\) # (!\product_price[1]~input_o\))) # (!\U3_coin_input|total\(1) & (!\product_price[1]~input_o\ & !\U4_vending_fsm|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|total\(1),
	datab => \product_price[1]~input_o\,
	datad => VCC,
	cin => \U4_vending_fsm|LessThan0~1_cout\,
	cout => \U4_vending_fsm|LessThan0~3_cout\);

-- Location: LCCOMB_X33_Y17_N8
\U4_vending_fsm|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|LessThan0~5_cout\ = CARRY((\product_price[2]~input_o\ & ((!\U4_vending_fsm|LessThan0~3_cout\) # (!\U3_coin_input|total\(2)))) # (!\product_price[2]~input_o\ & (!\U3_coin_input|total\(2) & !\U4_vending_fsm|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_price[2]~input_o\,
	datab => \U3_coin_input|total\(2),
	datad => VCC,
	cin => \U4_vending_fsm|LessThan0~3_cout\,
	cout => \U4_vending_fsm|LessThan0~5_cout\);

-- Location: LCCOMB_X33_Y17_N10
\U4_vending_fsm|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|LessThan0~7_cout\ = CARRY((\product_price[3]~input_o\ & (\U3_coin_input|total\(3) & !\U4_vending_fsm|LessThan0~5_cout\)) # (!\product_price[3]~input_o\ & ((\U3_coin_input|total\(3)) # (!\U4_vending_fsm|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_price[3]~input_o\,
	datab => \U3_coin_input|total\(3),
	datad => VCC,
	cin => \U4_vending_fsm|LessThan0~5_cout\,
	cout => \U4_vending_fsm|LessThan0~7_cout\);

-- Location: LCCOMB_X33_Y17_N12
\U4_vending_fsm|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|LessThan0~9_cout\ = CARRY((\product_price[4]~input_o\ & ((!\U4_vending_fsm|LessThan0~7_cout\) # (!\U3_coin_input|total\(4)))) # (!\product_price[4]~input_o\ & (!\U3_coin_input|total\(4) & !\U4_vending_fsm|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_price[4]~input_o\,
	datab => \U3_coin_input|total\(4),
	datad => VCC,
	cin => \U4_vending_fsm|LessThan0~7_cout\,
	cout => \U4_vending_fsm|LessThan0~9_cout\);

-- Location: LCCOMB_X33_Y17_N14
\U4_vending_fsm|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|LessThan0~11_cout\ = CARRY((\product_price[5]~input_o\ & (\U3_coin_input|total\(5) & !\U4_vending_fsm|LessThan0~9_cout\)) # (!\product_price[5]~input_o\ & ((\U3_coin_input|total\(5)) # (!\U4_vending_fsm|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_price[5]~input_o\,
	datab => \U3_coin_input|total\(5),
	datad => VCC,
	cin => \U4_vending_fsm|LessThan0~9_cout\,
	cout => \U4_vending_fsm|LessThan0~11_cout\);

-- Location: LCCOMB_X33_Y17_N16
\U4_vending_fsm|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|LessThan0~13_cout\ = CARRY((\U3_coin_input|total\(6) & (\product_price[6]~input_o\ & !\U4_vending_fsm|LessThan0~11_cout\)) # (!\U3_coin_input|total\(6) & ((\product_price[6]~input_o\) # (!\U4_vending_fsm|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|total\(6),
	datab => \product_price[6]~input_o\,
	datad => VCC,
	cin => \U4_vending_fsm|LessThan0~11_cout\,
	cout => \U4_vending_fsm|LessThan0~13_cout\);

-- Location: LCCOMB_X33_Y17_N18
\U4_vending_fsm|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|LessThan0~15_cout\ = CARRY((\product_price[7]~input_o\ & (\U3_coin_input|total\(7) & !\U4_vending_fsm|LessThan0~13_cout\)) # (!\product_price[7]~input_o\ & ((\U3_coin_input|total\(7)) # (!\U4_vending_fsm|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_price[7]~input_o\,
	datab => \U3_coin_input|total\(7),
	datad => VCC,
	cin => \U4_vending_fsm|LessThan0~13_cout\,
	cout => \U4_vending_fsm|LessThan0~15_cout\);

-- Location: LCCOMB_X33_Y17_N20
\U4_vending_fsm|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|LessThan0~17_cout\ = CARRY((\U3_coin_input|total\(8) & (\product_price[8]~input_o\ & !\U4_vending_fsm|LessThan0~15_cout\)) # (!\U3_coin_input|total\(8) & ((\product_price[8]~input_o\) # (!\U4_vending_fsm|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_coin_input|total\(8),
	datab => \product_price[8]~input_o\,
	datad => VCC,
	cin => \U4_vending_fsm|LessThan0~15_cout\,
	cout => \U4_vending_fsm|LessThan0~17_cout\);

-- Location: LCCOMB_X33_Y17_N22
\U4_vending_fsm|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|LessThan0~18_combout\ = (\product_price[9]~input_o\ & ((\U4_vending_fsm|LessThan0~17_cout\) # (!\U3_coin_input|total\(9)))) # (!\product_price[9]~input_o\ & (\U4_vending_fsm|LessThan0~17_cout\ & !\U3_coin_input|total\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_price[9]~input_o\,
	datad => \U3_coin_input|total\(9),
	cin => \U4_vending_fsm|LessThan0~17_cout\,
	combout => \U4_vending_fsm|LessThan0~18_combout\);

-- Location: LCCOMB_X30_Y17_N26
\U4_vending_fsm|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector6~0_combout\ = (\U4_vending_fsm|LessThan0~18_combout\) # (!\buttons[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttons[11]~input_o\,
	datad => \U4_vending_fsm|LessThan0~18_combout\,
	combout => \U4_vending_fsm|Selector6~0_combout\);

-- Location: LCCOMB_X30_Y17_N20
\U4_vending_fsm|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector6~1_combout\ = (!\U2_timer|timer_done~q\ & ((\U1_input_decoder|enter_pressed~2_combout\) # ((!\buttons[10]~input_o\ & \U4_vending_fsm|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|timer_done~q\,
	datab => \U1_input_decoder|enter_pressed~2_combout\,
	datac => \buttons[10]~input_o\,
	datad => \U4_vending_fsm|Selector6~0_combout\,
	combout => \U4_vending_fsm|Selector6~1_combout\);

-- Location: LCCOMB_X26_Y17_N6
\U4_vending_fsm|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector6~3_combout\ = (\U4_vending_fsm|Selector0~0_combout\ & (\U4_vending_fsm|current_state.S3_CoinInput~q\ & ((\U4_vending_fsm|Selector6~1_combout\)))) # (!\U4_vending_fsm|Selector0~0_combout\ & ((\U4_vending_fsm|Selector6~2_combout\) # 
-- ((\U4_vending_fsm|current_state.S3_CoinInput~q\ & \U4_vending_fsm|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|Selector0~0_combout\,
	datab => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	datac => \U4_vending_fsm|Selector6~2_combout\,
	datad => \U4_vending_fsm|Selector6~1_combout\,
	combout => \U4_vending_fsm|Selector6~3_combout\);

-- Location: LCCOMB_X26_Y17_N2
\U4_vending_fsm|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector6~4_combout\ = (!\U4_vending_fsm|Selector2~1_combout\ & (\U4_vending_fsm|Selector6~3_combout\ & ((\U4_vending_fsm|current_state.S0_ItemCode1~q\) # (\U4_vending_fsm|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|current_state.S0_ItemCode1~q\,
	datab => \U4_vending_fsm|Selector1~0_combout\,
	datac => \U4_vending_fsm|Selector2~1_combout\,
	datad => \U4_vending_fsm|Selector6~3_combout\,
	combout => \U4_vending_fsm|Selector6~4_combout\);

-- Location: LCCOMB_X26_Y17_N10
\U4_vending_fsm|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector2~0_combout\ = (\U4_vending_fsm|current_state.S3_CoinInput~q\ & !\U4_vending_fsm|Selector6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	datad => \U4_vending_fsm|Selector6~1_combout\,
	combout => \U4_vending_fsm|Selector2~0_combout\);

-- Location: LCCOMB_X26_Y17_N14
\U4_vending_fsm|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector6~5_combout\ = (\U4_vending_fsm|proc_next~0_combout\ & (\U4_vending_fsm|Selector6~4_combout\ & (\U4_vending_fsm|current_state.S6_Refund~q\))) # (!\U4_vending_fsm|proc_next~0_combout\ & ((\U4_vending_fsm|Selector2~0_combout\) # 
-- ((\U4_vending_fsm|Selector6~4_combout\ & \U4_vending_fsm|current_state.S6_Refund~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|proc_next~0_combout\,
	datab => \U4_vending_fsm|Selector6~4_combout\,
	datac => \U4_vending_fsm|current_state.S6_Refund~q\,
	datad => \U4_vending_fsm|Selector2~0_combout\,
	combout => \U4_vending_fsm|Selector6~5_combout\);

-- Location: FF_X26_Y17_N15
\U4_vending_fsm|current_state.S6_Refund\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_vending_fsm|Selector6~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_vending_fsm|current_state.S6_Refund~q\);

-- Location: IOIBUF_X25_Y24_N22
\valid_product~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valid_product,
	o => \valid_product~input_o\);

-- Location: LCCOMB_X26_Y20_N26
\U4_vending_fsm|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector7~0_combout\ = (\U4_vending_fsm|current_state.S6_Refund~q\) # ((\U4_vending_fsm|current_state.S2_Validate~q\ & !\valid_product~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|current_state.S2_Validate~q\,
	datab => \U4_vending_fsm|current_state.S6_Refund~q\,
	datac => \valid_product~input_o\,
	combout => \U4_vending_fsm|Selector7~0_combout\);

-- Location: FF_X26_Y20_N27
\U4_vending_fsm|current_state.S7_Error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_vending_fsm|Selector7~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_vending_fsm|current_state.S7_Error~q\);

-- Location: LCCOMB_X26_Y20_N10
\U4_vending_fsm|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector0~1_combout\ = (\U4_vending_fsm|current_state.S5_DispenseChange~q\) # (\U4_vending_fsm|current_state.S7_Error~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4_vending_fsm|current_state.S5_DispenseChange~q\,
	datac => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U4_vending_fsm|Selector0~1_combout\);

-- Location: LCCOMB_X26_Y20_N8
\U4_vending_fsm|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector0~2_combout\ = (\U4_vending_fsm|Selector0~1_combout\) # ((\U4_vending_fsm|current_state.S4_Dispense~q\ & (\U4_vending_fsm|Equal0~5_combout\ & \U4_vending_fsm|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|Selector0~1_combout\,
	datab => \U4_vending_fsm|current_state.S4_Dispense~q\,
	datac => \U4_vending_fsm|Equal0~5_combout\,
	datad => \U4_vending_fsm|Equal0~0_combout\,
	combout => \U4_vending_fsm|Selector0~2_combout\);

-- Location: LCCOMB_X26_Y17_N22
\U4_vending_fsm|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector0~3_combout\ = (!\U4_vending_fsm|Selector0~0_combout\ & (!\U4_vending_fsm|Selector0~2_combout\ & ((\U4_vending_fsm|current_state.S0_ItemCode1~q\) # (!\U4_vending_fsm|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|Selector0~0_combout\,
	datab => \U4_vending_fsm|Selector1~0_combout\,
	datac => \U4_vending_fsm|current_state.S0_ItemCode1~q\,
	datad => \U4_vending_fsm|Selector0~2_combout\,
	combout => \U4_vending_fsm|Selector0~3_combout\);

-- Location: FF_X26_Y17_N23
\U4_vending_fsm|current_state.S0_ItemCode1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_vending_fsm|Selector0~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_vending_fsm|current_state.S0_ItemCode1~q\);

-- Location: LCCOMB_X26_Y17_N26
\U4_vending_fsm|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector1~2_combout\ = (!\U4_vending_fsm|current_state.S1_ItemCode2~q\ & ((\U4_vending_fsm|current_state.S3_CoinInput~q\) # (!\U4_vending_fsm|current_state.S0_ItemCode1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	datac => \U4_vending_fsm|current_state.S0_ItemCode1~q\,
	datad => \U4_vending_fsm|current_state.S1_ItemCode2~q\,
	combout => \U4_vending_fsm|Selector1~2_combout\);

-- Location: LCCOMB_X26_Y17_N16
\U4_vending_fsm|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector1~3_combout\ = (!\U4_vending_fsm|Selector2~0_combout\ & ((\U4_vending_fsm|Selector1~1_combout\) # ((!\U4_vending_fsm|Selector2~3_combout\ & \U4_vending_fsm|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|Selector2~3_combout\,
	datab => \U4_vending_fsm|Selector1~1_combout\,
	datac => \U4_vending_fsm|Selector1~2_combout\,
	datad => \U4_vending_fsm|Selector2~0_combout\,
	combout => \U4_vending_fsm|Selector1~3_combout\);

-- Location: FF_X26_Y17_N17
\U4_vending_fsm|current_state.S1_ItemCode2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_vending_fsm|Selector1~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_vending_fsm|current_state.S1_ItemCode2~q\);

-- Location: LCCOMB_X26_Y17_N30
\U4_vending_fsm|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector2~2_combout\ = (!\U4_vending_fsm|current_state.S1_ItemCode2~q\ & ((\U4_vending_fsm|current_state.S0_ItemCode1~q\ & (\U4_vending_fsm|current_state.S3_CoinInput~q\)) # (!\U4_vending_fsm|current_state.S0_ItemCode1~q\ & 
-- ((\U4_vending_fsm|Selector1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	datab => \U4_vending_fsm|current_state.S1_ItemCode2~q\,
	datac => \U4_vending_fsm|current_state.S0_ItemCode1~q\,
	datad => \U4_vending_fsm|Selector1~0_combout\,
	combout => \U4_vending_fsm|Selector2~2_combout\);

-- Location: LCCOMB_X26_Y17_N12
\U4_vending_fsm|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector2~3_combout\ = (\U4_vending_fsm|Selector2~2_combout\) # ((\U4_vending_fsm|Selector1~0_combout\ & (\U4_vending_fsm|proc_next~0_combout\ & \U4_vending_fsm|current_state.S1_ItemCode2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|Selector2~2_combout\,
	datab => \U4_vending_fsm|Selector1~0_combout\,
	datac => \U4_vending_fsm|proc_next~0_combout\,
	datad => \U4_vending_fsm|current_state.S1_ItemCode2~q\,
	combout => \U4_vending_fsm|Selector2~3_combout\);

-- Location: LCCOMB_X26_Y17_N28
\U4_vending_fsm|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector2~4_combout\ = (!\U4_vending_fsm|Selector2~0_combout\ & ((\U4_vending_fsm|Selector2~3_combout\ & ((\U4_vending_fsm|current_state.S2_Validate~q\))) # (!\U4_vending_fsm|Selector2~3_combout\ & (\U4_vending_fsm|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|Selector2~3_combout\,
	datab => \U4_vending_fsm|Selector2~1_combout\,
	datac => \U4_vending_fsm|current_state.S2_Validate~q\,
	datad => \U4_vending_fsm|Selector2~0_combout\,
	combout => \U4_vending_fsm|Selector2~4_combout\);

-- Location: FF_X26_Y17_N29
\U4_vending_fsm|current_state.S2_Validate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_vending_fsm|Selector2~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_vending_fsm|current_state.S2_Validate~q\);

-- Location: LCCOMB_X26_Y17_N24
\U4_vending_fsm|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector3~0_combout\ = (\U4_vending_fsm|current_state.S2_Validate~q\ & ((\valid_product~input_o\) # ((\U4_vending_fsm|current_state.S3_CoinInput~q\ & \U4_vending_fsm|Selector6~1_combout\)))) # (!\U4_vending_fsm|current_state.S2_Validate~q\ 
-- & (((\U4_vending_fsm|current_state.S3_CoinInput~q\ & \U4_vending_fsm|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|current_state.S2_Validate~q\,
	datab => \valid_product~input_o\,
	datac => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	datad => \U4_vending_fsm|Selector6~1_combout\,
	combout => \U4_vending_fsm|Selector3~0_combout\);

-- Location: FF_X26_Y17_N25
\U4_vending_fsm|current_state.S3_CoinInput\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_vending_fsm|Selector3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_vending_fsm|current_state.S3_CoinInput~q\);

-- Location: LCCOMB_X26_Y17_N18
\U4_vending_fsm|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector8~0_combout\ = (\U4_vending_fsm|current_state.S1_ItemCode2~q\) # ((\U4_vending_fsm|current_state.S2_Validate~q\ & \valid_product~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4_vending_fsm|current_state.S2_Validate~q\,
	datac => \valid_product~input_o\,
	datad => \U4_vending_fsm|current_state.S1_ItemCode2~q\,
	combout => \U4_vending_fsm|Selector8~0_combout\);

-- Location: LCCOMB_X25_Y20_N0
\U2_timer|counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[0]~32_combout\ = \U2_timer|counter\(0) $ (VCC)
-- \U2_timer|counter[0]~33\ = CARRY(\U2_timer|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(0),
	datad => VCC,
	combout => \U2_timer|counter[0]~32_combout\,
	cout => \U2_timer|counter[0]~33\);

-- Location: LCCOMB_X24_Y20_N28
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X26_Y20_N30
\U2_timer|counter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[4]~34_combout\ = (\U4_vending_fsm|Selector8~0_combout\) # ((\U4_vending_fsm|current_state.S3_CoinInput~q\ & (\U2_timer|active~q\ & \U2_timer|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	datab => \U2_timer|active~q\,
	datac => \U4_vending_fsm|Selector8~0_combout\,
	datad => \U2_timer|LessThan0~10_combout\,
	combout => \U2_timer|counter[4]~34_combout\);

-- Location: FF_X25_Y20_N1
\U2_timer|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[0]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(0));

-- Location: LCCOMB_X25_Y20_N2
\U2_timer|counter[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[1]~35_combout\ = (\U2_timer|counter\(1) & (\U2_timer|counter[0]~33\ & VCC)) # (!\U2_timer|counter\(1) & (!\U2_timer|counter[0]~33\))
-- \U2_timer|counter[1]~36\ = CARRY((!\U2_timer|counter\(1) & !\U2_timer|counter[0]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(1),
	datad => VCC,
	cin => \U2_timer|counter[0]~33\,
	combout => \U2_timer|counter[1]~35_combout\,
	cout => \U2_timer|counter[1]~36\);

-- Location: FF_X25_Y20_N3
\U2_timer|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[1]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(1));

-- Location: LCCOMB_X25_Y20_N4
\U2_timer|counter[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[2]~37_combout\ = (\U2_timer|counter\(2) & ((GND) # (!\U2_timer|counter[1]~36\))) # (!\U2_timer|counter\(2) & (\U2_timer|counter[1]~36\ $ (GND)))
-- \U2_timer|counter[2]~38\ = CARRY((\U2_timer|counter\(2)) # (!\U2_timer|counter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(2),
	datad => VCC,
	cin => \U2_timer|counter[1]~36\,
	combout => \U2_timer|counter[2]~37_combout\,
	cout => \U2_timer|counter[2]~38\);

-- Location: FF_X25_Y20_N5
\U2_timer|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[2]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(2));

-- Location: LCCOMB_X25_Y20_N6
\U2_timer|counter[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[3]~39_combout\ = (\U2_timer|counter\(3) & (\U2_timer|counter[2]~38\ & VCC)) # (!\U2_timer|counter\(3) & (!\U2_timer|counter[2]~38\))
-- \U2_timer|counter[3]~40\ = CARRY((!\U2_timer|counter\(3) & !\U2_timer|counter[2]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(3),
	datad => VCC,
	cin => \U2_timer|counter[2]~38\,
	combout => \U2_timer|counter[3]~39_combout\,
	cout => \U2_timer|counter[3]~40\);

-- Location: FF_X25_Y20_N7
\U2_timer|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[3]~39_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(3));

-- Location: LCCOMB_X25_Y20_N8
\U2_timer|counter[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[4]~41_combout\ = (\U2_timer|counter\(4) & ((GND) # (!\U2_timer|counter[3]~40\))) # (!\U2_timer|counter\(4) & (\U2_timer|counter[3]~40\ $ (GND)))
-- \U2_timer|counter[4]~42\ = CARRY((\U2_timer|counter\(4)) # (!\U2_timer|counter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(4),
	datad => VCC,
	cin => \U2_timer|counter[3]~40\,
	combout => \U2_timer|counter[4]~41_combout\,
	cout => \U2_timer|counter[4]~42\);

-- Location: FF_X25_Y20_N9
\U2_timer|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[4]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(4));

-- Location: LCCOMB_X25_Y20_N10
\U2_timer|counter[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[5]~43_combout\ = (\U2_timer|counter\(5) & (\U2_timer|counter[4]~42\ & VCC)) # (!\U2_timer|counter\(5) & (!\U2_timer|counter[4]~42\))
-- \U2_timer|counter[5]~44\ = CARRY((!\U2_timer|counter\(5) & !\U2_timer|counter[4]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(5),
	datad => VCC,
	cin => \U2_timer|counter[4]~42\,
	combout => \U2_timer|counter[5]~43_combout\,
	cout => \U2_timer|counter[5]~44\);

-- Location: FF_X25_Y20_N11
\U2_timer|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[5]~43_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(5));

-- Location: LCCOMB_X25_Y20_N12
\U2_timer|counter[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[6]~45_combout\ = (\U2_timer|counter\(6) & ((GND) # (!\U2_timer|counter[5]~44\))) # (!\U2_timer|counter\(6) & (\U2_timer|counter[5]~44\ $ (GND)))
-- \U2_timer|counter[6]~46\ = CARRY((\U2_timer|counter\(6)) # (!\U2_timer|counter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(6),
	datad => VCC,
	cin => \U2_timer|counter[5]~44\,
	combout => \U2_timer|counter[6]~45_combout\,
	cout => \U2_timer|counter[6]~46\);

-- Location: FF_X25_Y20_N13
\U2_timer|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[6]~45_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(6));

-- Location: LCCOMB_X25_Y20_N14
\U2_timer|counter[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[7]~47_combout\ = (\U2_timer|counter\(7) & (\U2_timer|counter[6]~46\ & VCC)) # (!\U2_timer|counter\(7) & (!\U2_timer|counter[6]~46\))
-- \U2_timer|counter[7]~48\ = CARRY((!\U2_timer|counter\(7) & !\U2_timer|counter[6]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(7),
	datad => VCC,
	cin => \U2_timer|counter[6]~46\,
	combout => \U2_timer|counter[7]~47_combout\,
	cout => \U2_timer|counter[7]~48\);

-- Location: FF_X25_Y20_N15
\U2_timer|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[7]~47_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(7));

-- Location: LCCOMB_X25_Y20_N16
\U2_timer|counter[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[8]~49_combout\ = (\U2_timer|counter\(8) & ((GND) # (!\U2_timer|counter[7]~48\))) # (!\U2_timer|counter\(8) & (\U2_timer|counter[7]~48\ $ (GND)))
-- \U2_timer|counter[8]~50\ = CARRY((\U2_timer|counter\(8)) # (!\U2_timer|counter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(8),
	datad => VCC,
	cin => \U2_timer|counter[7]~48\,
	combout => \U2_timer|counter[8]~49_combout\,
	cout => \U2_timer|counter[8]~50\);

-- Location: FF_X25_Y20_N17
\U2_timer|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[8]~49_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(8));

-- Location: LCCOMB_X25_Y20_N18
\U2_timer|counter[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[9]~51_combout\ = (\U2_timer|counter\(9) & (\U2_timer|counter[8]~50\ & VCC)) # (!\U2_timer|counter\(9) & (!\U2_timer|counter[8]~50\))
-- \U2_timer|counter[9]~52\ = CARRY((!\U2_timer|counter\(9) & !\U2_timer|counter[8]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(9),
	datad => VCC,
	cin => \U2_timer|counter[8]~50\,
	combout => \U2_timer|counter[9]~51_combout\,
	cout => \U2_timer|counter[9]~52\);

-- Location: FF_X25_Y20_N19
\U2_timer|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[9]~51_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(9));

-- Location: LCCOMB_X25_Y20_N20
\U2_timer|counter[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[10]~53_combout\ = (\U2_timer|counter\(10) & ((GND) # (!\U2_timer|counter[9]~52\))) # (!\U2_timer|counter\(10) & (\U2_timer|counter[9]~52\ $ (GND)))
-- \U2_timer|counter[10]~54\ = CARRY((\U2_timer|counter\(10)) # (!\U2_timer|counter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(10),
	datad => VCC,
	cin => \U2_timer|counter[9]~52\,
	combout => \U2_timer|counter[10]~53_combout\,
	cout => \U2_timer|counter[10]~54\);

-- Location: FF_X25_Y20_N21
\U2_timer|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[10]~53_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(10));

-- Location: LCCOMB_X25_Y20_N22
\U2_timer|counter[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[11]~55_combout\ = (\U2_timer|counter\(11) & (\U2_timer|counter[10]~54\ & VCC)) # (!\U2_timer|counter\(11) & (!\U2_timer|counter[10]~54\))
-- \U2_timer|counter[11]~56\ = CARRY((!\U2_timer|counter\(11) & !\U2_timer|counter[10]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(11),
	datad => VCC,
	cin => \U2_timer|counter[10]~54\,
	combout => \U2_timer|counter[11]~55_combout\,
	cout => \U2_timer|counter[11]~56\);

-- Location: FF_X25_Y20_N23
\U2_timer|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[11]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(11));

-- Location: LCCOMB_X24_Y20_N22
\U2_timer|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|LessThan0~3_combout\ = (\U2_timer|counter\(11)) # ((\U2_timer|counter\(9)) # ((\U2_timer|counter\(10)) # (\U2_timer|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(11),
	datab => \U2_timer|counter\(9),
	datac => \U2_timer|counter\(10),
	datad => \U2_timer|counter\(8),
	combout => \U2_timer|LessThan0~3_combout\);

-- Location: LCCOMB_X25_Y20_N24
\U2_timer|counter[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[12]~57_combout\ = (\U2_timer|counter\(12) & ((GND) # (!\U2_timer|counter[11]~56\))) # (!\U2_timer|counter\(12) & (\U2_timer|counter[11]~56\ $ (GND)))
-- \U2_timer|counter[12]~58\ = CARRY((\U2_timer|counter\(12)) # (!\U2_timer|counter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(12),
	datad => VCC,
	cin => \U2_timer|counter[11]~56\,
	combout => \U2_timer|counter[12]~57_combout\,
	cout => \U2_timer|counter[12]~58\);

-- Location: FF_X25_Y20_N25
\U2_timer|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[12]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(12));

-- Location: LCCOMB_X25_Y20_N26
\U2_timer|counter[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[13]~59_combout\ = (\U2_timer|counter\(13) & (\U2_timer|counter[12]~58\ & VCC)) # (!\U2_timer|counter\(13) & (!\U2_timer|counter[12]~58\))
-- \U2_timer|counter[13]~60\ = CARRY((!\U2_timer|counter\(13) & !\U2_timer|counter[12]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(13),
	datad => VCC,
	cin => \U2_timer|counter[12]~58\,
	combout => \U2_timer|counter[13]~59_combout\,
	cout => \U2_timer|counter[13]~60\);

-- Location: FF_X25_Y20_N27
\U2_timer|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[13]~59_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(13));

-- Location: LCCOMB_X25_Y20_N28
\U2_timer|counter[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[14]~61_combout\ = (\U2_timer|counter\(14) & ((GND) # (!\U2_timer|counter[13]~60\))) # (!\U2_timer|counter\(14) & (\U2_timer|counter[13]~60\ $ (GND)))
-- \U2_timer|counter[14]~62\ = CARRY((\U2_timer|counter\(14)) # (!\U2_timer|counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(14),
	datad => VCC,
	cin => \U2_timer|counter[13]~60\,
	combout => \U2_timer|counter[14]~61_combout\,
	cout => \U2_timer|counter[14]~62\);

-- Location: FF_X25_Y20_N29
\U2_timer|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[14]~61_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(14));

-- Location: LCCOMB_X25_Y20_N30
\U2_timer|counter[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[15]~63_combout\ = (\U2_timer|counter\(15) & (\U2_timer|counter[14]~62\ & VCC)) # (!\U2_timer|counter\(15) & (!\U2_timer|counter[14]~62\))
-- \U2_timer|counter[15]~64\ = CARRY((!\U2_timer|counter\(15) & !\U2_timer|counter[14]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(15),
	datad => VCC,
	cin => \U2_timer|counter[14]~62\,
	combout => \U2_timer|counter[15]~63_combout\,
	cout => \U2_timer|counter[15]~64\);

-- Location: FF_X25_Y20_N31
\U2_timer|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[15]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(15));

-- Location: LCCOMB_X25_Y19_N0
\U2_timer|counter[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[16]~65_combout\ = (\U2_timer|counter\(16) & ((GND) # (!\U2_timer|counter[15]~64\))) # (!\U2_timer|counter\(16) & (\U2_timer|counter[15]~64\ $ (GND)))
-- \U2_timer|counter[16]~66\ = CARRY((\U2_timer|counter\(16)) # (!\U2_timer|counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(16),
	datad => VCC,
	cin => \U2_timer|counter[15]~64\,
	combout => \U2_timer|counter[16]~65_combout\,
	cout => \U2_timer|counter[16]~66\);

-- Location: FF_X25_Y19_N1
\U2_timer|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[16]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(16));

-- Location: LCCOMB_X25_Y19_N2
\U2_timer|counter[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[17]~67_combout\ = (\U2_timer|counter\(17) & (\U2_timer|counter[16]~66\ & VCC)) # (!\U2_timer|counter\(17) & (!\U2_timer|counter[16]~66\))
-- \U2_timer|counter[17]~68\ = CARRY((!\U2_timer|counter\(17) & !\U2_timer|counter[16]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(17),
	datad => VCC,
	cin => \U2_timer|counter[16]~66\,
	combout => \U2_timer|counter[17]~67_combout\,
	cout => \U2_timer|counter[17]~68\);

-- Location: FF_X25_Y19_N3
\U2_timer|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[17]~67_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(17));

-- Location: LCCOMB_X25_Y19_N4
\U2_timer|counter[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[18]~69_combout\ = (\U2_timer|counter\(18) & ((GND) # (!\U2_timer|counter[17]~68\))) # (!\U2_timer|counter\(18) & (\U2_timer|counter[17]~68\ $ (GND)))
-- \U2_timer|counter[18]~70\ = CARRY((\U2_timer|counter\(18)) # (!\U2_timer|counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(18),
	datad => VCC,
	cin => \U2_timer|counter[17]~68\,
	combout => \U2_timer|counter[18]~69_combout\,
	cout => \U2_timer|counter[18]~70\);

-- Location: FF_X25_Y19_N5
\U2_timer|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[18]~69_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(18));

-- Location: LCCOMB_X25_Y19_N6
\U2_timer|counter[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[19]~71_combout\ = (\U2_timer|counter\(19) & (\U2_timer|counter[18]~70\ & VCC)) # (!\U2_timer|counter\(19) & (!\U2_timer|counter[18]~70\))
-- \U2_timer|counter[19]~72\ = CARRY((!\U2_timer|counter\(19) & !\U2_timer|counter[18]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(19),
	datad => VCC,
	cin => \U2_timer|counter[18]~70\,
	combout => \U2_timer|counter[19]~71_combout\,
	cout => \U2_timer|counter[19]~72\);

-- Location: FF_X25_Y19_N7
\U2_timer|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[19]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(19));

-- Location: LCCOMB_X25_Y19_N8
\U2_timer|counter[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[20]~73_combout\ = (\U2_timer|counter\(20) & ((GND) # (!\U2_timer|counter[19]~72\))) # (!\U2_timer|counter\(20) & (\U2_timer|counter[19]~72\ $ (GND)))
-- \U2_timer|counter[20]~74\ = CARRY((\U2_timer|counter\(20)) # (!\U2_timer|counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(20),
	datad => VCC,
	cin => \U2_timer|counter[19]~72\,
	combout => \U2_timer|counter[20]~73_combout\,
	cout => \U2_timer|counter[20]~74\);

-- Location: FF_X25_Y19_N9
\U2_timer|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[20]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(20));

-- Location: LCCOMB_X25_Y19_N10
\U2_timer|counter[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[21]~75_combout\ = (\U2_timer|counter\(21) & (\U2_timer|counter[20]~74\ & VCC)) # (!\U2_timer|counter\(21) & (!\U2_timer|counter[20]~74\))
-- \U2_timer|counter[21]~76\ = CARRY((!\U2_timer|counter\(21) & !\U2_timer|counter[20]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(21),
	datad => VCC,
	cin => \U2_timer|counter[20]~74\,
	combout => \U2_timer|counter[21]~75_combout\,
	cout => \U2_timer|counter[21]~76\);

-- Location: FF_X25_Y19_N11
\U2_timer|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[21]~75_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(21));

-- Location: LCCOMB_X25_Y19_N12
\U2_timer|counter[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[22]~77_combout\ = (\U2_timer|counter\(22) & ((GND) # (!\U2_timer|counter[21]~76\))) # (!\U2_timer|counter\(22) & (\U2_timer|counter[21]~76\ $ (GND)))
-- \U2_timer|counter[22]~78\ = CARRY((\U2_timer|counter\(22)) # (!\U2_timer|counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(22),
	datad => VCC,
	cin => \U2_timer|counter[21]~76\,
	combout => \U2_timer|counter[22]~77_combout\,
	cout => \U2_timer|counter[22]~78\);

-- Location: FF_X25_Y19_N13
\U2_timer|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[22]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(22));

-- Location: LCCOMB_X25_Y19_N14
\U2_timer|counter[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[23]~79_combout\ = (\U2_timer|counter\(23) & (\U2_timer|counter[22]~78\ & VCC)) # (!\U2_timer|counter\(23) & (!\U2_timer|counter[22]~78\))
-- \U2_timer|counter[23]~80\ = CARRY((!\U2_timer|counter\(23) & !\U2_timer|counter[22]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(23),
	datad => VCC,
	cin => \U2_timer|counter[22]~78\,
	combout => \U2_timer|counter[23]~79_combout\,
	cout => \U2_timer|counter[23]~80\);

-- Location: FF_X25_Y19_N15
\U2_timer|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[23]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(23));

-- Location: LCCOMB_X25_Y19_N16
\U2_timer|counter[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[24]~81_combout\ = (\U2_timer|counter\(24) & ((GND) # (!\U2_timer|counter[23]~80\))) # (!\U2_timer|counter\(24) & (\U2_timer|counter[23]~80\ $ (GND)))
-- \U2_timer|counter[24]~82\ = CARRY((\U2_timer|counter\(24)) # (!\U2_timer|counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(24),
	datad => VCC,
	cin => \U2_timer|counter[23]~80\,
	combout => \U2_timer|counter[24]~81_combout\,
	cout => \U2_timer|counter[24]~82\);

-- Location: FF_X25_Y19_N17
\U2_timer|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[24]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(24));

-- Location: LCCOMB_X25_Y19_N18
\U2_timer|counter[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[25]~83_combout\ = (\U2_timer|counter\(25) & (\U2_timer|counter[24]~82\ & VCC)) # (!\U2_timer|counter\(25) & (!\U2_timer|counter[24]~82\))
-- \U2_timer|counter[25]~84\ = CARRY((!\U2_timer|counter\(25) & !\U2_timer|counter[24]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(25),
	datad => VCC,
	cin => \U2_timer|counter[24]~82\,
	combout => \U2_timer|counter[25]~83_combout\,
	cout => \U2_timer|counter[25]~84\);

-- Location: FF_X25_Y19_N19
\U2_timer|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[25]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(25));

-- Location: LCCOMB_X25_Y19_N20
\U2_timer|counter[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[26]~85_combout\ = (\U2_timer|counter\(26) & ((GND) # (!\U2_timer|counter[25]~84\))) # (!\U2_timer|counter\(26) & (\U2_timer|counter[25]~84\ $ (GND)))
-- \U2_timer|counter[26]~86\ = CARRY((\U2_timer|counter\(26)) # (!\U2_timer|counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(26),
	datad => VCC,
	cin => \U2_timer|counter[25]~84\,
	combout => \U2_timer|counter[26]~85_combout\,
	cout => \U2_timer|counter[26]~86\);

-- Location: FF_X25_Y19_N21
\U2_timer|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[26]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(26));

-- Location: LCCOMB_X25_Y19_N22
\U2_timer|counter[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[27]~87_combout\ = (\U2_timer|counter\(27) & (\U2_timer|counter[26]~86\ & VCC)) # (!\U2_timer|counter\(27) & (!\U2_timer|counter[26]~86\))
-- \U2_timer|counter[27]~88\ = CARRY((!\U2_timer|counter\(27) & !\U2_timer|counter[26]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(27),
	datad => VCC,
	cin => \U2_timer|counter[26]~86\,
	combout => \U2_timer|counter[27]~87_combout\,
	cout => \U2_timer|counter[27]~88\);

-- Location: FF_X25_Y19_N23
\U2_timer|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[27]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(27));

-- Location: LCCOMB_X25_Y19_N24
\U2_timer|counter[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[28]~89_combout\ = (\U2_timer|counter\(28) & ((GND) # (!\U2_timer|counter[27]~88\))) # (!\U2_timer|counter\(28) & (\U2_timer|counter[27]~88\ $ (GND)))
-- \U2_timer|counter[28]~90\ = CARRY((\U2_timer|counter\(28)) # (!\U2_timer|counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(28),
	datad => VCC,
	cin => \U2_timer|counter[27]~88\,
	combout => \U2_timer|counter[28]~89_combout\,
	cout => \U2_timer|counter[28]~90\);

-- Location: FF_X25_Y19_N25
\U2_timer|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[28]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(28));

-- Location: LCCOMB_X25_Y19_N26
\U2_timer|counter[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[29]~91_combout\ = (\U2_timer|counter\(29) & (\U2_timer|counter[28]~90\ & VCC)) # (!\U2_timer|counter\(29) & (!\U2_timer|counter[28]~90\))
-- \U2_timer|counter[29]~92\ = CARRY((!\U2_timer|counter\(29) & !\U2_timer|counter[28]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(29),
	datad => VCC,
	cin => \U2_timer|counter[28]~90\,
	combout => \U2_timer|counter[29]~91_combout\,
	cout => \U2_timer|counter[29]~92\);

-- Location: FF_X25_Y19_N27
\U2_timer|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[29]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(29));

-- Location: LCCOMB_X25_Y19_N28
\U2_timer|counter[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[30]~93_combout\ = (\U2_timer|counter\(30) & ((GND) # (!\U2_timer|counter[29]~92\))) # (!\U2_timer|counter\(30) & (\U2_timer|counter[29]~92\ $ (GND)))
-- \U2_timer|counter[30]~94\ = CARRY((\U2_timer|counter\(30)) # (!\U2_timer|counter[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_timer|counter\(30),
	datad => VCC,
	cin => \U2_timer|counter[29]~92\,
	combout => \U2_timer|counter[30]~93_combout\,
	cout => \U2_timer|counter[30]~94\);

-- Location: FF_X25_Y19_N29
\U2_timer|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[30]~93_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(30));

-- Location: LCCOMB_X25_Y19_N30
\U2_timer|counter[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|counter[31]~95_combout\ = \U2_timer|counter\(31) $ (!\U2_timer|counter[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(31),
	cin => \U2_timer|counter[30]~94\,
	combout => \U2_timer|counter[31]~95_combout\);

-- Location: FF_X25_Y19_N31
\U2_timer|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|counter[31]~95_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U4_vending_fsm|Selector8~0_combout\,
	ena => \U2_timer|counter[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|counter\(31));

-- Location: LCCOMB_X24_Y19_N10
\U2_timer|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|LessThan0~8_combout\ = (\U2_timer|counter\(31)) # ((\U2_timer|counter\(30)) # ((\U2_timer|counter\(28)) # (\U2_timer|counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(31),
	datab => \U2_timer|counter\(30),
	datac => \U2_timer|counter\(28),
	datad => \U2_timer|counter\(29),
	combout => \U2_timer|LessThan0~8_combout\);

-- Location: LCCOMB_X24_Y19_N8
\U2_timer|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|LessThan0~5_combout\ = (\U2_timer|counter\(18)) # ((\U2_timer|counter\(16)) # ((\U2_timer|counter\(19)) # (\U2_timer|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(18),
	datab => \U2_timer|counter\(16),
	datac => \U2_timer|counter\(19),
	datad => \U2_timer|counter\(17),
	combout => \U2_timer|LessThan0~5_combout\);

-- Location: LCCOMB_X24_Y19_N30
\U2_timer|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|LessThan0~6_combout\ = (\U2_timer|counter\(21)) # ((\U2_timer|counter\(22)) # ((\U2_timer|counter\(23)) # (\U2_timer|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(21),
	datab => \U2_timer|counter\(22),
	datac => \U2_timer|counter\(23),
	datad => \U2_timer|counter\(20),
	combout => \U2_timer|LessThan0~6_combout\);

-- Location: LCCOMB_X24_Y19_N28
\U2_timer|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|LessThan0~7_combout\ = (\U2_timer|counter\(26)) # ((\U2_timer|counter\(25)) # ((\U2_timer|counter\(27)) # (\U2_timer|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(26),
	datab => \U2_timer|counter\(25),
	datac => \U2_timer|counter\(27),
	datad => \U2_timer|counter\(24),
	combout => \U2_timer|LessThan0~7_combout\);

-- Location: LCCOMB_X24_Y19_N0
\U2_timer|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|LessThan0~9_combout\ = (\U2_timer|LessThan0~8_combout\) # ((\U2_timer|LessThan0~5_combout\) # ((\U2_timer|LessThan0~6_combout\) # (\U2_timer|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|LessThan0~8_combout\,
	datab => \U2_timer|LessThan0~5_combout\,
	datac => \U2_timer|LessThan0~6_combout\,
	datad => \U2_timer|LessThan0~7_combout\,
	combout => \U2_timer|LessThan0~9_combout\);

-- Location: LCCOMB_X24_Y20_N8
\U2_timer|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|LessThan0~0_combout\ = (\U2_timer|counter\(0)) # (\U2_timer|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_timer|counter\(0),
	datad => \U2_timer|counter\(1),
	combout => \U2_timer|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y20_N30
\U2_timer|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|LessThan0~1_combout\ = (\U2_timer|counter\(6)) # ((\U2_timer|counter\(5)) # ((\U2_timer|counter\(7)) # (\U2_timer|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(6),
	datab => \U2_timer|counter\(5),
	datac => \U2_timer|counter\(7),
	datad => \U2_timer|counter\(4),
	combout => \U2_timer|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y20_N4
\U2_timer|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|LessThan0~2_combout\ = (\U2_timer|counter\(3)) # ((\U2_timer|LessThan0~0_combout\) # ((\U2_timer|LessThan0~1_combout\) # (\U2_timer|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(3),
	datab => \U2_timer|LessThan0~0_combout\,
	datac => \U2_timer|LessThan0~1_combout\,
	datad => \U2_timer|counter\(2),
	combout => \U2_timer|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y20_N16
\U2_timer|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|LessThan0~4_combout\ = (\U2_timer|counter\(15)) # ((\U2_timer|counter\(14)) # ((\U2_timer|counter\(13)) # (\U2_timer|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|counter\(15),
	datab => \U2_timer|counter\(14),
	datac => \U2_timer|counter\(13),
	datad => \U2_timer|counter\(12),
	combout => \U2_timer|LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y20_N18
\U2_timer|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|LessThan0~10_combout\ = (\U2_timer|LessThan0~3_combout\) # ((\U2_timer|LessThan0~9_combout\) # ((\U2_timer|LessThan0~2_combout\) # (\U2_timer|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_timer|LessThan0~3_combout\,
	datab => \U2_timer|LessThan0~9_combout\,
	datac => \U2_timer|LessThan0~2_combout\,
	datad => \U2_timer|LessThan0~4_combout\,
	combout => \U2_timer|LessThan0~10_combout\);

-- Location: LCCOMB_X26_Y20_N18
\U2_timer|active~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|active~0_combout\ = (\U4_vending_fsm|Selector8~0_combout\) # ((\U2_timer|active~q\ & ((\U2_timer|LessThan0~10_combout\) # (!\U4_vending_fsm|current_state.S3_CoinInput~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|Selector8~0_combout\,
	datab => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	datac => \U2_timer|active~q\,
	datad => \U2_timer|LessThan0~10_combout\,
	combout => \U2_timer|active~0_combout\);

-- Location: FF_X26_Y20_N19
\U2_timer|active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|active~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|active~q\);

-- Location: LCCOMB_X26_Y20_N28
\U2_timer|timer_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|timer_done~0_combout\ = (!\U4_vending_fsm|current_state.S1_ItemCode2~q\ & (\U2_timer|active~q\ & ((!\valid_product~input_o\) # (!\U4_vending_fsm|current_state.S2_Validate~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|current_state.S2_Validate~q\,
	datab => \U4_vending_fsm|current_state.S1_ItemCode2~q\,
	datac => \valid_product~input_o\,
	datad => \U2_timer|active~q\,
	combout => \U2_timer|timer_done~0_combout\);

-- Location: LCCOMB_X26_Y20_N16
\U2_timer|timer_done~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_timer|timer_done~1_combout\ = (\U2_timer|timer_done~0_combout\ & ((\U4_vending_fsm|current_state.S3_CoinInput~q\ & ((!\U2_timer|LessThan0~10_combout\))) # (!\U4_vending_fsm|current_state.S3_CoinInput~q\ & (\U2_timer|timer_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|current_state.S3_CoinInput~q\,
	datab => \U2_timer|timer_done~0_combout\,
	datac => \U2_timer|timer_done~q\,
	datad => \U2_timer|LessThan0~10_combout\,
	combout => \U2_timer|timer_done~1_combout\);

-- Location: FF_X26_Y20_N17
\U2_timer|timer_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2_timer|timer_done~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_timer|timer_done~q\);

-- Location: LCCOMB_X30_Y17_N24
\U4_vending_fsm|proc_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|proc_next~0_combout\ = (!\U2_timer|timer_done~q\ & ((\U1_input_decoder|enter_pressed~2_combout\) # (!\buttons[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[10]~input_o\,
	datac => \U1_input_decoder|enter_pressed~2_combout\,
	datad => \U2_timer|timer_done~q\,
	combout => \U4_vending_fsm|proc_next~0_combout\);

-- Location: LCCOMB_X26_Y17_N20
\U4_vending_fsm|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4_vending_fsm|Selector4~0_combout\ = (\U4_vending_fsm|proc_next~0_combout\ & ((\U4_vending_fsm|Selector2~0_combout\) # ((\U4_vending_fsm|Selector6~4_combout\ & \U4_vending_fsm|current_state.S4_Dispense~q\)))) # (!\U4_vending_fsm|proc_next~0_combout\ & 
-- (\U4_vending_fsm|Selector6~4_combout\ & (\U4_vending_fsm|current_state.S4_Dispense~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_vending_fsm|proc_next~0_combout\,
	datab => \U4_vending_fsm|Selector6~4_combout\,
	datac => \U4_vending_fsm|current_state.S4_Dispense~q\,
	datad => \U4_vending_fsm|Selector2~0_combout\,
	combout => \U4_vending_fsm|Selector4~0_combout\);

-- Location: FF_X26_Y17_N21
\U4_vending_fsm|current_state.S4_Dispense\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_vending_fsm|Selector4~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_vending_fsm|current_state.S4_Dispense~q\);

-- Location: LCCOMB_X26_Y20_N4
\U5_output_control|led_dispense~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|led_dispense~feeder_combout\ = \U4_vending_fsm|current_state.S4_Dispense~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S4_Dispense~q\,
	combout => \U5_output_control|led_dispense~feeder_combout\);

-- Location: FF_X26_Y20_N5
\U5_output_control|led_dispense\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|led_dispense~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|led_dispense~q\);

-- Location: LCCOMB_X26_Y20_N22
\U5_output_control|led_change~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|led_change~feeder_combout\ = \U4_vending_fsm|current_state.S5_DispenseChange~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S5_DispenseChange~q\,
	combout => \U5_output_control|led_change~feeder_combout\);

-- Location: FF_X26_Y20_N23
\U5_output_control|led_change\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|led_change~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|led_change~q\);

-- Location: LCCOMB_X26_Y20_N0
\U5_output_control|led_refund~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|led_refund~feeder_combout\ = \U4_vending_fsm|current_state.S6_Refund~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4_vending_fsm|current_state.S6_Refund~q\,
	combout => \U5_output_control|led_refund~feeder_combout\);

-- Location: FF_X26_Y20_N1
\U5_output_control|led_refund\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|led_refund~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|led_refund~q\);

-- Location: LCCOMB_X25_Y1_N28
\U5_output_control|seg16[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[0]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[0]~feeder_combout\);

-- Location: FF_X25_Y1_N29
\U5_output_control|seg16[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(0));

-- Location: LCCOMB_X25_Y1_N2
\U5_output_control|seg16[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[1]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[1]~feeder_combout\);

-- Location: FF_X25_Y1_N3
\U5_output_control|seg16[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(1));

-- Location: LCCOMB_X25_Y1_N24
\U5_output_control|seg16[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[2]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[2]~feeder_combout\);

-- Location: FF_X25_Y1_N25
\U5_output_control|seg16[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(2));

-- Location: LCCOMB_X25_Y1_N6
\U5_output_control|seg16[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[3]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[3]~feeder_combout\);

-- Location: FF_X25_Y1_N7
\U5_output_control|seg16[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(3));

-- Location: LCCOMB_X25_Y1_N8
\U5_output_control|seg16[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[4]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[4]~feeder_combout\);

-- Location: FF_X25_Y1_N9
\U5_output_control|seg16[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(4));

-- Location: LCCOMB_X25_Y1_N30
\U5_output_control|seg16[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[5]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[5]~feeder_combout\);

-- Location: FF_X25_Y1_N31
\U5_output_control|seg16[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(5));

-- Location: LCCOMB_X25_Y1_N12
\U5_output_control|seg16[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[6]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[6]~feeder_combout\);

-- Location: FF_X25_Y1_N13
\U5_output_control|seg16[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(6));

-- Location: LCCOMB_X25_Y1_N26
\U5_output_control|seg16[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[7]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[7]~feeder_combout\);

-- Location: FF_X25_Y1_N27
\U5_output_control|seg16[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(7));

-- Location: LCCOMB_X25_Y1_N20
\U5_output_control|seg16[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[8]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[8]~feeder_combout\);

-- Location: FF_X25_Y1_N21
\U5_output_control|seg16[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(8));

-- Location: LCCOMB_X25_Y1_N10
\U5_output_control|seg16[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[9]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[9]~feeder_combout\);

-- Location: FF_X25_Y1_N11
\U5_output_control|seg16[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(9));

-- Location: FF_X26_Y20_N3
\U5_output_control|seg16[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U4_vending_fsm|current_state.S7_Error~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(10));

-- Location: LCCOMB_X25_Y1_N16
\U5_output_control|seg16[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[11]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[11]~feeder_combout\);

-- Location: FF_X25_Y1_N17
\U5_output_control|seg16[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(11));

-- Location: LCCOMB_X25_Y1_N22
\U5_output_control|seg16[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[12]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[12]~feeder_combout\);

-- Location: FF_X25_Y1_N23
\U5_output_control|seg16[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(12));

-- Location: LCCOMB_X25_Y1_N4
\U5_output_control|seg16[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[13]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[13]~feeder_combout\);

-- Location: FF_X25_Y1_N5
\U5_output_control|seg16[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(13));

-- Location: LCCOMB_X25_Y1_N14
\U5_output_control|seg16[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[14]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[14]~feeder_combout\);

-- Location: FF_X25_Y1_N15
\U5_output_control|seg16[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(14));

-- Location: LCCOMB_X25_Y1_N0
\U5_output_control|seg16[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5_output_control|seg16[15]~feeder_combout\ = \U4_vending_fsm|current_state.S7_Error~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_vending_fsm|current_state.S7_Error~q\,
	combout => \U5_output_control|seg16[15]~feeder_combout\);

-- Location: FF_X25_Y1_N1
\U5_output_control|seg16[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U5_output_control|seg16[15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5_output_control|seg16\(15));

ww_led_dispense <= \led_dispense~output_o\;

ww_led_change <= \led_change~output_o\;

ww_led_refund <= \led_refund~output_o\;

ww_seg16(0) <= \seg16[0]~output_o\;

ww_seg16(1) <= \seg16[1]~output_o\;

ww_seg16(2) <= \seg16[2]~output_o\;

ww_seg16(3) <= \seg16[3]~output_o\;

ww_seg16(4) <= \seg16[4]~output_o\;

ww_seg16(5) <= \seg16[5]~output_o\;

ww_seg16(6) <= \seg16[6]~output_o\;

ww_seg16(7) <= \seg16[7]~output_o\;

ww_seg16(8) <= \seg16[8]~output_o\;

ww_seg16(9) <= \seg16[9]~output_o\;

ww_seg16(10) <= \seg16[10]~output_o\;

ww_seg16(11) <= \seg16[11]~output_o\;

ww_seg16(12) <= \seg16[12]~output_o\;

ww_seg16(13) <= \seg16[13]~output_o\;

ww_seg16(14) <= \seg16[14]~output_o\;

ww_seg16(15) <= \seg16[15]~output_o\;
END structure;


