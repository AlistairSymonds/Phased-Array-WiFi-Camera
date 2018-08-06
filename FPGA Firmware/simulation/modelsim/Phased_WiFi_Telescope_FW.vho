-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "08/06/2018 12:05:00"

-- 
-- Device: Altera 10CL025YU256C8G Package UFBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- GPIO[12]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adc_spi IS
    PORT (
	clk : IN std_logic;
	begin_tx : IN std_logic;
	clk_div : IN std_logic_vector(7 DOWNTO 0);
	spi_data_in : IN std_logic_vector(23 DOWNTO 0);
	sclk : BUFFER std_logic;
	sdata : BUFFER std_logic;
	csn : BUFFER std_logic
	);
END adc_spi;

-- Design Ports Information
-- sclk	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdata	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csn	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[18]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[17]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[16]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[19]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[21]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[22]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[20]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[23]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[10]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[14]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[13]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[8]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[12]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[11]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_data_in[15]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- begin_tx	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adc_spi IS
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
SIGNAL ww_begin_tx : std_logic;
SIGNAL ww_clk_div : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_spi_data_in : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_sclk : std_logic;
SIGNAL ww_sdata : std_logic;
SIGNAL ww_csn : std_logic;
SIGNAL \spi_clk_divider|clk_o~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sclk~output_o\ : std_logic;
SIGNAL \sdata~output_o\ : std_logic;
SIGNAL \csn~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \spi_clk_divider|cnt[0]~8_combout\ : std_logic;
SIGNAL \spi_clk_divider|cnt[0]~9\ : std_logic;
SIGNAL \spi_clk_divider|cnt[1]~10_combout\ : std_logic;
SIGNAL \spi_clk_divider|cnt[1]~11\ : std_logic;
SIGNAL \spi_clk_divider|cnt[2]~12_combout\ : std_logic;
SIGNAL \spi_clk_divider|cnt[2]~13\ : std_logic;
SIGNAL \spi_clk_divider|cnt[3]~14_combout\ : std_logic;
SIGNAL \spi_clk_divider|cnt[3]~15\ : std_logic;
SIGNAL \spi_clk_divider|cnt[4]~16_combout\ : std_logic;
SIGNAL \spi_clk_divider|cnt[4]~17\ : std_logic;
SIGNAL \spi_clk_divider|cnt[5]~18_combout\ : std_logic;
SIGNAL \spi_clk_divider|cnt[5]~19\ : std_logic;
SIGNAL \spi_clk_divider|cnt[6]~20_combout\ : std_logic;
SIGNAL \spi_clk_divider|cnt[6]~21\ : std_logic;
SIGNAL \spi_clk_divider|cnt[7]~22_combout\ : std_logic;
SIGNAL \clk_div[7]~input_o\ : std_logic;
SIGNAL \begin_tx~input_o\ : std_logic;
SIGNAL \spi_clk_divider|clk_o~clkctrl_outclk\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.tx~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \bit_pos~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \bit_pos~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \bit_pos~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \bit_pos~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \bit_pos~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \state~5_combout\ : std_logic;
SIGNAL \state.saving~q\ : std_logic;
SIGNAL \clk_div[6]~input_o\ : std_logic;
SIGNAL \clk_div[5]~input_o\ : std_logic;
SIGNAL \clk_div[4]~input_o\ : std_logic;
SIGNAL \clk_div[3]~input_o\ : std_logic;
SIGNAL \clk_div[2]~input_o\ : std_logic;
SIGNAL \clk_div[1]~input_o\ : std_logic;
SIGNAL \clk_div[0]~input_o\ : std_logic;
SIGNAL \spi_clk_divider|Add0~1\ : std_logic;
SIGNAL \spi_clk_divider|Add0~3\ : std_logic;
SIGNAL \spi_clk_divider|Add0~5\ : std_logic;
SIGNAL \spi_clk_divider|Add0~7\ : std_logic;
SIGNAL \spi_clk_divider|Add0~9\ : std_logic;
SIGNAL \spi_clk_divider|Add0~11\ : std_logic;
SIGNAL \spi_clk_divider|Add0~13\ : std_logic;
SIGNAL \spi_clk_divider|Add0~14_combout\ : std_logic;
SIGNAL \spi_clk_divider|Add0~12_combout\ : std_logic;
SIGNAL \spi_clk_divider|Add0~10_combout\ : std_logic;
SIGNAL \spi_clk_divider|Add0~8_combout\ : std_logic;
SIGNAL \spi_clk_divider|Add0~6_combout\ : std_logic;
SIGNAL \spi_clk_divider|Add0~4_combout\ : std_logic;
SIGNAL \spi_clk_divider|Add0~2_combout\ : std_logic;
SIGNAL \spi_clk_divider|Add0~0_combout\ : std_logic;
SIGNAL \spi_clk_divider|LessThan0~1_cout\ : std_logic;
SIGNAL \spi_clk_divider|LessThan0~3_cout\ : std_logic;
SIGNAL \spi_clk_divider|LessThan0~5_cout\ : std_logic;
SIGNAL \spi_clk_divider|LessThan0~7_cout\ : std_logic;
SIGNAL \spi_clk_divider|LessThan0~9_cout\ : std_logic;
SIGNAL \spi_clk_divider|LessThan0~11_cout\ : std_logic;
SIGNAL \spi_clk_divider|LessThan0~13_cout\ : std_logic;
SIGNAL \spi_clk_divider|LessThan0~14_combout\ : std_logic;
SIGNAL \spi_clk_divider|clk_o~0_combout\ : std_logic;
SIGNAL \spi_clk_divider|clk_o~feeder_combout\ : std_logic;
SIGNAL \spi_clk_divider|clk_o~q\ : std_logic;
SIGNAL \sclk~0_combout\ : std_logic;
SIGNAL \spi_data_in[18]~input_o\ : std_logic;
SIGNAL \internal_buffer[18]~feeder_combout\ : std_logic;
SIGNAL \spi_data_in[19]~input_o\ : std_logic;
SIGNAL \spi_data_in[16]~input_o\ : std_logic;
SIGNAL \spi_data_in[17]~input_o\ : std_logic;
SIGNAL \internal_buffer[17]~feeder_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \spi_data_in[20]~input_o\ : std_logic;
SIGNAL \spi_data_in[22]~input_o\ : std_logic;
SIGNAL \internal_buffer[22]~feeder_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \spi_data_in[23]~input_o\ : std_logic;
SIGNAL \spi_data_in[21]~input_o\ : std_logic;
SIGNAL \internal_buffer[21]~feeder_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \sdata~0_combout\ : std_logic;
SIGNAL \sdata~1_combout\ : std_logic;
SIGNAL \spi_data_in[2]~input_o\ : std_logic;
SIGNAL \spi_data_in[6]~input_o\ : std_logic;
SIGNAL \internal_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \spi_data_in[14]~input_o\ : std_logic;
SIGNAL \spi_data_in[10]~input_o\ : std_logic;
SIGNAL \internal_buffer[10]~feeder_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \spi_data_in[3]~input_o\ : std_logic;
SIGNAL \spi_data_in[11]~input_o\ : std_logic;
SIGNAL \internal_buffer[11]~feeder_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \spi_data_in[15]~input_o\ : std_logic;
SIGNAL \spi_data_in[7]~input_o\ : std_logic;
SIGNAL \internal_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \spi_data_in[1]~input_o\ : std_logic;
SIGNAL \spi_data_in[9]~input_o\ : std_logic;
SIGNAL \internal_buffer[9]~feeder_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \spi_data_in[13]~input_o\ : std_logic;
SIGNAL \spi_data_in[5]~input_o\ : std_logic;
SIGNAL \internal_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \spi_data_in[0]~input_o\ : std_logic;
SIGNAL \spi_data_in[4]~input_o\ : std_logic;
SIGNAL \internal_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \spi_data_in[12]~input_o\ : std_logic;
SIGNAL \spi_data_in[8]~input_o\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \sdata~2_combout\ : std_logic;
SIGNAL \spi_clk_divider|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL internal_buffer : std_logic_vector(23 DOWNTO 0);
SIGNAL bit_pos : std_logic_vector(4 DOWNTO 0);
SIGNAL clk_div_internal : std_logic_vector(7 DOWNTO 0);
SIGNAL \spi_clk_divider|ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_state.idle~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_begin_tx <= begin_tx;
ww_clk_div <= clk_div;
ww_spi_data_in <= spi_data_in;
sclk <= ww_sclk;
sdata <= ww_sdata;
csn <= ww_csn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\spi_clk_divider|clk_o~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \spi_clk_divider|clk_o~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\spi_clk_divider|ALT_INV_LessThan0~14_combout\ <= NOT \spi_clk_divider|LessThan0~14_combout\;
\ALT_INV_state.idle~q\ <= NOT \state.idle~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N9
\sclk~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sclk~0_combout\,
	devoe => ww_devoe,
	o => \sclk~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\sdata~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdata~2_combout\,
	devoe => ww_devoe,
	o => \sdata~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\csn~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.idle~q\,
	devoe => ww_devoe,
	o => \csn~output_o\);

-- Location: IOIBUF_X11_Y0_N15
\clk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G16
\clk~inputclkctrl\ : cyclone10lp_clkctrl
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

-- Location: LCCOMB_X35_Y31_N12
\spi_clk_divider|cnt[0]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|cnt[0]~8_combout\ = \spi_clk_divider|cnt\(0) $ (VCC)
-- \spi_clk_divider|cnt[0]~9\ = CARRY(\spi_clk_divider|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_clk_divider|cnt\(0),
	datad => VCC,
	combout => \spi_clk_divider|cnt[0]~8_combout\,
	cout => \spi_clk_divider|cnt[0]~9\);

-- Location: FF_X35_Y31_N13
\spi_clk_divider|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_clk_divider|cnt[0]~8_combout\,
	sclr => \spi_clk_divider|ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_clk_divider|cnt\(0));

-- Location: LCCOMB_X35_Y31_N14
\spi_clk_divider|cnt[1]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|cnt[1]~10_combout\ = (\spi_clk_divider|cnt\(1) & (!\spi_clk_divider|cnt[0]~9\)) # (!\spi_clk_divider|cnt\(1) & ((\spi_clk_divider|cnt[0]~9\) # (GND)))
-- \spi_clk_divider|cnt[1]~11\ = CARRY((!\spi_clk_divider|cnt[0]~9\) # (!\spi_clk_divider|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_clk_divider|cnt\(1),
	datad => VCC,
	cin => \spi_clk_divider|cnt[0]~9\,
	combout => \spi_clk_divider|cnt[1]~10_combout\,
	cout => \spi_clk_divider|cnt[1]~11\);

-- Location: FF_X35_Y31_N15
\spi_clk_divider|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_clk_divider|cnt[1]~10_combout\,
	sclr => \spi_clk_divider|ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_clk_divider|cnt\(1));

-- Location: LCCOMB_X35_Y31_N16
\spi_clk_divider|cnt[2]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|cnt[2]~12_combout\ = (\spi_clk_divider|cnt\(2) & (\spi_clk_divider|cnt[1]~11\ $ (GND))) # (!\spi_clk_divider|cnt\(2) & (!\spi_clk_divider|cnt[1]~11\ & VCC))
-- \spi_clk_divider|cnt[2]~13\ = CARRY((\spi_clk_divider|cnt\(2) & !\spi_clk_divider|cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_clk_divider|cnt\(2),
	datad => VCC,
	cin => \spi_clk_divider|cnt[1]~11\,
	combout => \spi_clk_divider|cnt[2]~12_combout\,
	cout => \spi_clk_divider|cnt[2]~13\);

-- Location: FF_X35_Y31_N17
\spi_clk_divider|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_clk_divider|cnt[2]~12_combout\,
	sclr => \spi_clk_divider|ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_clk_divider|cnt\(2));

-- Location: LCCOMB_X35_Y31_N18
\spi_clk_divider|cnt[3]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|cnt[3]~14_combout\ = (\spi_clk_divider|cnt\(3) & (!\spi_clk_divider|cnt[2]~13\)) # (!\spi_clk_divider|cnt\(3) & ((\spi_clk_divider|cnt[2]~13\) # (GND)))
-- \spi_clk_divider|cnt[3]~15\ = CARRY((!\spi_clk_divider|cnt[2]~13\) # (!\spi_clk_divider|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_clk_divider|cnt\(3),
	datad => VCC,
	cin => \spi_clk_divider|cnt[2]~13\,
	combout => \spi_clk_divider|cnt[3]~14_combout\,
	cout => \spi_clk_divider|cnt[3]~15\);

-- Location: FF_X35_Y31_N19
\spi_clk_divider|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_clk_divider|cnt[3]~14_combout\,
	sclr => \spi_clk_divider|ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_clk_divider|cnt\(3));

-- Location: LCCOMB_X35_Y31_N20
\spi_clk_divider|cnt[4]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|cnt[4]~16_combout\ = (\spi_clk_divider|cnt\(4) & (\spi_clk_divider|cnt[3]~15\ $ (GND))) # (!\spi_clk_divider|cnt\(4) & (!\spi_clk_divider|cnt[3]~15\ & VCC))
-- \spi_clk_divider|cnt[4]~17\ = CARRY((\spi_clk_divider|cnt\(4) & !\spi_clk_divider|cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_clk_divider|cnt\(4),
	datad => VCC,
	cin => \spi_clk_divider|cnt[3]~15\,
	combout => \spi_clk_divider|cnt[4]~16_combout\,
	cout => \spi_clk_divider|cnt[4]~17\);

-- Location: FF_X35_Y31_N21
\spi_clk_divider|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_clk_divider|cnt[4]~16_combout\,
	sclr => \spi_clk_divider|ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_clk_divider|cnt\(4));

-- Location: LCCOMB_X35_Y31_N22
\spi_clk_divider|cnt[5]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|cnt[5]~18_combout\ = (\spi_clk_divider|cnt\(5) & (!\spi_clk_divider|cnt[4]~17\)) # (!\spi_clk_divider|cnt\(5) & ((\spi_clk_divider|cnt[4]~17\) # (GND)))
-- \spi_clk_divider|cnt[5]~19\ = CARRY((!\spi_clk_divider|cnt[4]~17\) # (!\spi_clk_divider|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_clk_divider|cnt\(5),
	datad => VCC,
	cin => \spi_clk_divider|cnt[4]~17\,
	combout => \spi_clk_divider|cnt[5]~18_combout\,
	cout => \spi_clk_divider|cnt[5]~19\);

-- Location: FF_X35_Y31_N23
\spi_clk_divider|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_clk_divider|cnt[5]~18_combout\,
	sclr => \spi_clk_divider|ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_clk_divider|cnt\(5));

-- Location: LCCOMB_X35_Y31_N24
\spi_clk_divider|cnt[6]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|cnt[6]~20_combout\ = (\spi_clk_divider|cnt\(6) & (\spi_clk_divider|cnt[5]~19\ $ (GND))) # (!\spi_clk_divider|cnt\(6) & (!\spi_clk_divider|cnt[5]~19\ & VCC))
-- \spi_clk_divider|cnt[6]~21\ = CARRY((\spi_clk_divider|cnt\(6) & !\spi_clk_divider|cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_clk_divider|cnt\(6),
	datad => VCC,
	cin => \spi_clk_divider|cnt[5]~19\,
	combout => \spi_clk_divider|cnt[6]~20_combout\,
	cout => \spi_clk_divider|cnt[6]~21\);

-- Location: FF_X35_Y31_N25
\spi_clk_divider|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_clk_divider|cnt[6]~20_combout\,
	sclr => \spi_clk_divider|ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_clk_divider|cnt\(6));

-- Location: LCCOMB_X35_Y31_N26
\spi_clk_divider|cnt[7]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|cnt[7]~22_combout\ = \spi_clk_divider|cnt\(7) $ (\spi_clk_divider|cnt[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_clk_divider|cnt\(7),
	cin => \spi_clk_divider|cnt[6]~21\,
	combout => \spi_clk_divider|cnt[7]~22_combout\);

-- Location: FF_X35_Y31_N27
\spi_clk_divider|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_clk_divider|cnt[7]~22_combout\,
	sclr => \spi_clk_divider|ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_clk_divider|cnt\(7));

-- Location: IOIBUF_X53_Y17_N1
\clk_div[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(7),
	o => \clk_div[7]~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\begin_tx~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_begin_tx,
	o => \begin_tx~input_o\);

-- Location: CLKCTRL_G11
\spi_clk_divider|clk_o~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \spi_clk_divider|clk_o~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \spi_clk_divider|clk_o~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y31_N8
\Selector1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.saving~q\) # ((\state.tx~q\ & ((\LessThan0~0_combout\) # (!bit_pos(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(0),
	datab => \state.saving~q\,
	datac => \state.tx~q\,
	datad => \LessThan0~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X34_Y31_N9
\state.tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.tx~q\);

-- Location: LCCOMB_X34_Y31_N18
\Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = bit_pos(0) $ (GND)
-- \Add0~1\ = CARRY(!bit_pos(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X34_Y31_N20
\Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (bit_pos(1) & (!\Add0~1\)) # (!bit_pos(1) & (\Add0~1\ & VCC))
-- \Add0~3\ = CARRY((bit_pos(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_pos(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X34_Y31_N2
\bit_pos~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \bit_pos~0_combout\ = (\state.tx~q\ & (((!\LessThan0~0_combout\ & bit_pos(0))) # (!\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => bit_pos(0),
	datac => \state.tx~q\,
	datad => \Add0~2_combout\,
	combout => \bit_pos~0_combout\);

-- Location: FF_X34_Y31_N3
\bit_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk_divider|clk_o~clkctrl_outclk\,
	d => \bit_pos~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_pos(1));

-- Location: LCCOMB_X34_Y31_N22
\Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (bit_pos(2) & (\Add0~3\ $ (GND))) # (!bit_pos(2) & ((GND) # (!\Add0~3\)))
-- \Add0~5\ = CARRY((!\Add0~3\) # (!bit_pos(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_pos(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X34_Y31_N14
\bit_pos~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \bit_pos~2_combout\ = (\state.tx~q\ & (((bit_pos(0) & !\LessThan0~0_combout\)) # (!\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(0),
	datab => \LessThan0~0_combout\,
	datac => \Add0~4_combout\,
	datad => \state.tx~q\,
	combout => \bit_pos~2_combout\);

-- Location: FF_X34_Y31_N15
\bit_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk_divider|clk_o~clkctrl_outclk\,
	d => \bit_pos~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_pos(2));

-- Location: LCCOMB_X34_Y31_N24
\Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (bit_pos(3) & (\Add0~5\ & VCC)) # (!bit_pos(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!bit_pos(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X34_Y31_N30
\bit_pos~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \bit_pos~4_combout\ = (\state.tx~q\ & (\Add0~6_combout\ $ (((!\LessThan0~0_combout\ & bit_pos(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => bit_pos(0),
	datac => \state.tx~q\,
	datad => \Add0~6_combout\,
	combout => \bit_pos~4_combout\);

-- Location: FF_X34_Y31_N31
\bit_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk_divider|clk_o~clkctrl_outclk\,
	d => \bit_pos~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_pos(3));

-- Location: LCCOMB_X34_Y31_N26
\Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \Add0~7\ $ (!bit_pos(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bit_pos(4),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X34_Y31_N4
\bit_pos~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \bit_pos~3_combout\ = (\state.tx~q\ & (((!\LessThan0~0_combout\ & bit_pos(0))) # (!\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => bit_pos(0),
	datac => \Add0~8_combout\,
	datad => \state.tx~q\,
	combout => \bit_pos~3_combout\);

-- Location: FF_X34_Y31_N5
\bit_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk_divider|clk_o~clkctrl_outclk\,
	d => \bit_pos~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_pos(4));

-- Location: LCCOMB_X34_Y31_N28
\LessThan0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (bit_pos(3)) # (((!bit_pos(1)) # (!bit_pos(2))) # (!bit_pos(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(3),
	datab => bit_pos(4),
	datac => bit_pos(2),
	datad => bit_pos(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y31_N12
\bit_pos~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \bit_pos~1_combout\ = (\state.tx~q\ & (((!\LessThan0~0_combout\ & bit_pos(0))) # (!\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Add0~0_combout\,
	datac => bit_pos(0),
	datad => \state.tx~q\,
	combout => \bit_pos~1_combout\);

-- Location: FF_X34_Y31_N13
\bit_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk_divider|clk_o~clkctrl_outclk\,
	d => \bit_pos~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_pos(0));

-- Location: LCCOMB_X34_Y31_N10
\Selector0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\begin_tx~input_o\ & !\state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \begin_tx~input_o\,
	datad => \state.idle~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X34_Y31_N6
\Selector0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & (((\LessThan0~0_combout\) # (!\state.tx~q\)) # (!bit_pos(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(0),
	datab => \state.tx~q\,
	datac => \Selector0~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X34_Y31_N7
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: LCCOMB_X34_Y31_N0
\state~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~5_combout\ = (\begin_tx~input_o\ & !\state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \begin_tx~input_o\,
	datad => \state.idle~q\,
	combout => \state~5_combout\);

-- Location: FF_X34_Y31_N1
\state.saving\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.saving~q\);

-- Location: FF_X36_Y31_N31
\clk_div_internal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_div[7]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_internal(7));

-- Location: IOIBUF_X51_Y34_N15
\clk_div[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(6),
	o => \clk_div[6]~input_o\);

-- Location: FF_X36_Y31_N29
\clk_div_internal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_div[6]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_internal(6));

-- Location: IOIBUF_X43_Y34_N22
\clk_div[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(5),
	o => \clk_div[5]~input_o\);

-- Location: FF_X36_Y31_N27
\clk_div_internal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_div[5]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_internal(5));

-- Location: IOIBUF_X47_Y34_N22
\clk_div[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(4),
	o => \clk_div[4]~input_o\);

-- Location: FF_X36_Y31_N25
\clk_div_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_div[4]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_internal(4));

-- Location: IOIBUF_X40_Y34_N1
\clk_div[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(3),
	o => \clk_div[3]~input_o\);

-- Location: FF_X36_Y31_N23
\clk_div_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_div[3]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_internal(3));

-- Location: IOIBUF_X51_Y34_N8
\clk_div[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(2),
	o => \clk_div[2]~input_o\);

-- Location: FF_X36_Y31_N21
\clk_div_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_div[2]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_internal(2));

-- Location: IOIBUF_X43_Y34_N15
\clk_div[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(1),
	o => \clk_div[1]~input_o\);

-- Location: FF_X36_Y31_N19
\clk_div_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_div[1]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_internal(1));

-- Location: IOIBUF_X40_Y34_N8
\clk_div[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(0),
	o => \clk_div[0]~input_o\);

-- Location: FF_X36_Y31_N17
\clk_div_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_div[0]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_internal(0));

-- Location: LCCOMB_X36_Y31_N16
\spi_clk_divider|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|Add0~0_combout\ = clk_div_internal(0) $ (VCC)
-- \spi_clk_divider|Add0~1\ = CARRY(clk_div_internal(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_div_internal(0),
	datad => VCC,
	combout => \spi_clk_divider|Add0~0_combout\,
	cout => \spi_clk_divider|Add0~1\);

-- Location: LCCOMB_X36_Y31_N18
\spi_clk_divider|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|Add0~2_combout\ = (clk_div_internal(1) & (\spi_clk_divider|Add0~1\ & VCC)) # (!clk_div_internal(1) & (!\spi_clk_divider|Add0~1\))
-- \spi_clk_divider|Add0~3\ = CARRY((!clk_div_internal(1) & !\spi_clk_divider|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_internal(1),
	datad => VCC,
	cin => \spi_clk_divider|Add0~1\,
	combout => \spi_clk_divider|Add0~2_combout\,
	cout => \spi_clk_divider|Add0~3\);

-- Location: LCCOMB_X36_Y31_N20
\spi_clk_divider|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|Add0~4_combout\ = (clk_div_internal(2) & ((GND) # (!\spi_clk_divider|Add0~3\))) # (!clk_div_internal(2) & (\spi_clk_divider|Add0~3\ $ (GND)))
-- \spi_clk_divider|Add0~5\ = CARRY((clk_div_internal(2)) # (!\spi_clk_divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_internal(2),
	datad => VCC,
	cin => \spi_clk_divider|Add0~3\,
	combout => \spi_clk_divider|Add0~4_combout\,
	cout => \spi_clk_divider|Add0~5\);

-- Location: LCCOMB_X36_Y31_N22
\spi_clk_divider|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|Add0~6_combout\ = (clk_div_internal(3) & (\spi_clk_divider|Add0~5\ & VCC)) # (!clk_div_internal(3) & (!\spi_clk_divider|Add0~5\))
-- \spi_clk_divider|Add0~7\ = CARRY((!clk_div_internal(3) & !\spi_clk_divider|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_internal(3),
	datad => VCC,
	cin => \spi_clk_divider|Add0~5\,
	combout => \spi_clk_divider|Add0~6_combout\,
	cout => \spi_clk_divider|Add0~7\);

-- Location: LCCOMB_X36_Y31_N24
\spi_clk_divider|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|Add0~8_combout\ = (clk_div_internal(4) & ((GND) # (!\spi_clk_divider|Add0~7\))) # (!clk_div_internal(4) & (\spi_clk_divider|Add0~7\ $ (GND)))
-- \spi_clk_divider|Add0~9\ = CARRY((clk_div_internal(4)) # (!\spi_clk_divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_internal(4),
	datad => VCC,
	cin => \spi_clk_divider|Add0~7\,
	combout => \spi_clk_divider|Add0~8_combout\,
	cout => \spi_clk_divider|Add0~9\);

-- Location: LCCOMB_X36_Y31_N26
\spi_clk_divider|Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|Add0~10_combout\ = (clk_div_internal(5) & (\spi_clk_divider|Add0~9\ & VCC)) # (!clk_div_internal(5) & (!\spi_clk_divider|Add0~9\))
-- \spi_clk_divider|Add0~11\ = CARRY((!clk_div_internal(5) & !\spi_clk_divider|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_internal(5),
	datad => VCC,
	cin => \spi_clk_divider|Add0~9\,
	combout => \spi_clk_divider|Add0~10_combout\,
	cout => \spi_clk_divider|Add0~11\);

-- Location: LCCOMB_X36_Y31_N28
\spi_clk_divider|Add0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|Add0~12_combout\ = (clk_div_internal(6) & ((GND) # (!\spi_clk_divider|Add0~11\))) # (!clk_div_internal(6) & (\spi_clk_divider|Add0~11\ $ (GND)))
-- \spi_clk_divider|Add0~13\ = CARRY((clk_div_internal(6)) # (!\spi_clk_divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_internal(6),
	datad => VCC,
	cin => \spi_clk_divider|Add0~11\,
	combout => \spi_clk_divider|Add0~12_combout\,
	cout => \spi_clk_divider|Add0~13\);

-- Location: LCCOMB_X36_Y31_N30
\spi_clk_divider|Add0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|Add0~14_combout\ = clk_div_internal(7) $ (!\spi_clk_divider|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_internal(7),
	cin => \spi_clk_divider|Add0~13\,
	combout => \spi_clk_divider|Add0~14_combout\);

-- Location: LCCOMB_X36_Y31_N0
\spi_clk_divider|LessThan0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|LessThan0~1_cout\ = CARRY((\spi_clk_divider|Add0~0_combout\ & !\spi_clk_divider|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_clk_divider|Add0~0_combout\,
	datab => \spi_clk_divider|cnt\(0),
	datad => VCC,
	cout => \spi_clk_divider|LessThan0~1_cout\);

-- Location: LCCOMB_X36_Y31_N2
\spi_clk_divider|LessThan0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|LessThan0~3_cout\ = CARRY((\spi_clk_divider|Add0~2_combout\ & (\spi_clk_divider|cnt\(1) & !\spi_clk_divider|LessThan0~1_cout\)) # (!\spi_clk_divider|Add0~2_combout\ & ((\spi_clk_divider|cnt\(1)) # (!\spi_clk_divider|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_clk_divider|Add0~2_combout\,
	datab => \spi_clk_divider|cnt\(1),
	datad => VCC,
	cin => \spi_clk_divider|LessThan0~1_cout\,
	cout => \spi_clk_divider|LessThan0~3_cout\);

-- Location: LCCOMB_X36_Y31_N4
\spi_clk_divider|LessThan0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|LessThan0~5_cout\ = CARRY((\spi_clk_divider|cnt\(2) & (\spi_clk_divider|Add0~4_combout\ & !\spi_clk_divider|LessThan0~3_cout\)) # (!\spi_clk_divider|cnt\(2) & ((\spi_clk_divider|Add0~4_combout\) # (!\spi_clk_divider|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_clk_divider|cnt\(2),
	datab => \spi_clk_divider|Add0~4_combout\,
	datad => VCC,
	cin => \spi_clk_divider|LessThan0~3_cout\,
	cout => \spi_clk_divider|LessThan0~5_cout\);

-- Location: LCCOMB_X36_Y31_N6
\spi_clk_divider|LessThan0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|LessThan0~7_cout\ = CARRY((\spi_clk_divider|Add0~6_combout\ & (\spi_clk_divider|cnt\(3) & !\spi_clk_divider|LessThan0~5_cout\)) # (!\spi_clk_divider|Add0~6_combout\ & ((\spi_clk_divider|cnt\(3)) # (!\spi_clk_divider|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_clk_divider|Add0~6_combout\,
	datab => \spi_clk_divider|cnt\(3),
	datad => VCC,
	cin => \spi_clk_divider|LessThan0~5_cout\,
	cout => \spi_clk_divider|LessThan0~7_cout\);

-- Location: LCCOMB_X36_Y31_N8
\spi_clk_divider|LessThan0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|LessThan0~9_cout\ = CARRY((\spi_clk_divider|cnt\(4) & (\spi_clk_divider|Add0~8_combout\ & !\spi_clk_divider|LessThan0~7_cout\)) # (!\spi_clk_divider|cnt\(4) & ((\spi_clk_divider|Add0~8_combout\) # (!\spi_clk_divider|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_clk_divider|cnt\(4),
	datab => \spi_clk_divider|Add0~8_combout\,
	datad => VCC,
	cin => \spi_clk_divider|LessThan0~7_cout\,
	cout => \spi_clk_divider|LessThan0~9_cout\);

-- Location: LCCOMB_X36_Y31_N10
\spi_clk_divider|LessThan0~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|LessThan0~11_cout\ = CARRY((\spi_clk_divider|Add0~10_combout\ & (\spi_clk_divider|cnt\(5) & !\spi_clk_divider|LessThan0~9_cout\)) # (!\spi_clk_divider|Add0~10_combout\ & ((\spi_clk_divider|cnt\(5)) # 
-- (!\spi_clk_divider|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_clk_divider|Add0~10_combout\,
	datab => \spi_clk_divider|cnt\(5),
	datad => VCC,
	cin => \spi_clk_divider|LessThan0~9_cout\,
	cout => \spi_clk_divider|LessThan0~11_cout\);

-- Location: LCCOMB_X36_Y31_N12
\spi_clk_divider|LessThan0~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|LessThan0~13_cout\ = CARRY((\spi_clk_divider|cnt\(6) & (\spi_clk_divider|Add0~12_combout\ & !\spi_clk_divider|LessThan0~11_cout\)) # (!\spi_clk_divider|cnt\(6) & ((\spi_clk_divider|Add0~12_combout\) # 
-- (!\spi_clk_divider|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_clk_divider|cnt\(6),
	datab => \spi_clk_divider|Add0~12_combout\,
	datad => VCC,
	cin => \spi_clk_divider|LessThan0~11_cout\,
	cout => \spi_clk_divider|LessThan0~13_cout\);

-- Location: LCCOMB_X36_Y31_N14
\spi_clk_divider|LessThan0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|LessThan0~14_combout\ = (\spi_clk_divider|cnt\(7) & (\spi_clk_divider|LessThan0~13_cout\ & \spi_clk_divider|Add0~14_combout\)) # (!\spi_clk_divider|cnt\(7) & ((\spi_clk_divider|LessThan0~13_cout\) # (\spi_clk_divider|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_clk_divider|cnt\(7),
	datad => \spi_clk_divider|Add0~14_combout\,
	cin => \spi_clk_divider|LessThan0~13_cout\,
	combout => \spi_clk_divider|LessThan0~14_combout\);

-- Location: LCCOMB_X35_Y31_N8
\spi_clk_divider|clk_o~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|clk_o~0_combout\ = \spi_clk_divider|LessThan0~14_combout\ $ (!\spi_clk_divider|clk_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_clk_divider|LessThan0~14_combout\,
	datad => \spi_clk_divider|clk_o~q\,
	combout => \spi_clk_divider|clk_o~0_combout\);

-- Location: LCCOMB_X35_Y31_N0
\spi_clk_divider|clk_o~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \spi_clk_divider|clk_o~feeder_combout\ = \spi_clk_divider|clk_o~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_clk_divider|clk_o~0_combout\,
	combout => \spi_clk_divider|clk_o~feeder_combout\);

-- Location: FF_X35_Y31_N1
\spi_clk_divider|clk_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_clk_divider|clk_o~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_clk_divider|clk_o~q\);

-- Location: LCCOMB_X35_Y31_N10
\sclk~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \sclk~0_combout\ = (\spi_clk_divider|clk_o~q\ & \state.tx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_clk_divider|clk_o~q\,
	datad => \state.tx~q\,
	combout => \sclk~0_combout\);

-- Location: IOIBUF_X45_Y34_N15
\spi_data_in[18]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(18),
	o => \spi_data_in[18]~input_o\);

-- Location: LCCOMB_X37_Y31_N20
\internal_buffer[18]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \internal_buffer[18]~feeder_combout\ = \spi_data_in[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_data_in[18]~input_o\,
	combout => \internal_buffer[18]~feeder_combout\);

-- Location: FF_X37_Y31_N21
\internal_buffer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_buffer[18]~feeder_combout\,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(18));

-- Location: IOIBUF_X45_Y34_N1
\spi_data_in[19]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(19),
	o => \spi_data_in[19]~input_o\);

-- Location: FF_X37_Y31_N23
\internal_buffer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[19]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(19));

-- Location: IOIBUF_X49_Y34_N8
\spi_data_in[16]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(16),
	o => \spi_data_in[16]~input_o\);

-- Location: FF_X37_Y31_N17
\internal_buffer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[16]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(16));

-- Location: IOIBUF_X45_Y34_N8
\spi_data_in[17]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(17),
	o => \spi_data_in[17]~input_o\);

-- Location: LCCOMB_X37_Y31_N18
\internal_buffer[17]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \internal_buffer[17]~feeder_combout\ = \spi_data_in[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_data_in[17]~input_o\,
	combout => \internal_buffer[17]~feeder_combout\);

-- Location: FF_X37_Y31_N19
\internal_buffer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_buffer[17]~feeder_combout\,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(17));

-- Location: LCCOMB_X37_Y31_N16
\Mux0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (bit_pos(1) & ((bit_pos(0) & (internal_buffer(16))) # (!bit_pos(0) & ((internal_buffer(17)))))) # (!bit_pos(1) & (!bit_pos(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(1),
	datab => bit_pos(0),
	datac => internal_buffer(16),
	datad => internal_buffer(17),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X37_Y31_N22
\Mux0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (bit_pos(1) & (((\Mux0~0_combout\)))) # (!bit_pos(1) & ((\Mux0~0_combout\ & ((internal_buffer(19)))) # (!\Mux0~0_combout\ & (internal_buffer(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(1),
	datab => internal_buffer(18),
	datac => internal_buffer(19),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X14_Y34_N15
\spi_data_in[20]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(20),
	o => \spi_data_in[20]~input_o\);

-- Location: FF_X37_Y31_N13
\internal_buffer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[20]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(20));

-- Location: IOIBUF_X38_Y34_N15
\spi_data_in[22]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(22),
	o => \spi_data_in[22]~input_o\);

-- Location: LCCOMB_X37_Y31_N10
\internal_buffer[22]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \internal_buffer[22]~feeder_combout\ = \spi_data_in[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_data_in[22]~input_o\,
	combout => \internal_buffer[22]~feeder_combout\);

-- Location: FF_X37_Y31_N11
\internal_buffer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_buffer[22]~feeder_combout\,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(22));

-- Location: LCCOMB_X37_Y31_N12
\Mux0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (bit_pos(1) & (bit_pos(0) & (internal_buffer(20)))) # (!bit_pos(1) & (((internal_buffer(22))) # (!bit_pos(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(1),
	datab => bit_pos(0),
	datac => internal_buffer(20),
	datad => internal_buffer(22),
	combout => \Mux0~2_combout\);

-- Location: IOIBUF_X38_Y34_N1
\spi_data_in[23]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(23),
	o => \spi_data_in[23]~input_o\);

-- Location: FF_X37_Y31_N3
\internal_buffer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[23]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(23));

-- Location: IOIBUF_X49_Y34_N1
\spi_data_in[21]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(21),
	o => \spi_data_in[21]~input_o\);

-- Location: LCCOMB_X37_Y31_N28
\internal_buffer[21]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \internal_buffer[21]~feeder_combout\ = \spi_data_in[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_data_in[21]~input_o\,
	combout => \internal_buffer[21]~feeder_combout\);

-- Location: FF_X37_Y31_N29
\internal_buffer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_buffer[21]~feeder_combout\,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(21));

-- Location: LCCOMB_X37_Y31_N2
\Mux0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & ((bit_pos(0)) # ((internal_buffer(23))))) # (!\Mux0~2_combout\ & (!bit_pos(0) & ((internal_buffer(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => bit_pos(0),
	datac => internal_buffer(23),
	datad => internal_buffer(21),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X35_Y31_N4
\sdata~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \sdata~0_combout\ = (!bit_pos(4) & ((bit_pos(2) & (\Mux0~1_combout\)) # (!bit_pos(2) & ((\Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(2),
	datab => \Mux0~1_combout\,
	datac => bit_pos(4),
	datad => \Mux0~3_combout\,
	combout => \sdata~0_combout\);

-- Location: LCCOMB_X35_Y31_N6
\sdata~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \sdata~1_combout\ = (\sdata~0_combout\ & (!bit_pos(3) & \state.tx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdata~0_combout\,
	datac => bit_pos(3),
	datad => \state.tx~q\,
	combout => \sdata~1_combout\);

-- Location: IOIBUF_X16_Y34_N1
\spi_data_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(2),
	o => \spi_data_in[2]~input_o\);

-- Location: FF_X31_Y31_N9
\internal_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[2]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(2));

-- Location: IOIBUF_X18_Y34_N22
\spi_data_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(6),
	o => \spi_data_in[6]~input_o\);

-- Location: LCCOMB_X31_Y31_N6
\internal_buffer[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \internal_buffer[6]~feeder_combout\ = \spi_data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_data_in[6]~input_o\,
	combout => \internal_buffer[6]~feeder_combout\);

-- Location: FF_X31_Y31_N7
\internal_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_buffer[6]~feeder_combout\,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(6));

-- Location: LCCOMB_X31_Y31_N8
\Mux0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (bit_pos(3) & (!bit_pos(2))) # (!bit_pos(3) & ((bit_pos(2) & (internal_buffer(2))) # (!bit_pos(2) & ((internal_buffer(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(3),
	datab => bit_pos(2),
	datac => internal_buffer(2),
	datad => internal_buffer(6),
	combout => \Mux0~4_combout\);

-- Location: IOIBUF_X20_Y34_N8
\spi_data_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(14),
	o => \spi_data_in[14]~input_o\);

-- Location: FF_X31_Y31_N23
\internal_buffer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[14]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(14));

-- Location: IOIBUF_X20_Y34_N22
\spi_data_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(10),
	o => \spi_data_in[10]~input_o\);

-- Location: LCCOMB_X31_Y31_N28
\internal_buffer[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \internal_buffer[10]~feeder_combout\ = \spi_data_in[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_data_in[10]~input_o\,
	combout => \internal_buffer[10]~feeder_combout\);

-- Location: FF_X31_Y31_N29
\internal_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_buffer[10]~feeder_combout\,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(10));

-- Location: LCCOMB_X31_Y31_N22
\Mux0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (bit_pos(3) & ((\Mux0~4_combout\ & (internal_buffer(14))) # (!\Mux0~4_combout\ & ((internal_buffer(10)))))) # (!bit_pos(3) & (\Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(3),
	datab => \Mux0~4_combout\,
	datac => internal_buffer(14),
	datad => internal_buffer(10),
	combout => \Mux0~5_combout\);

-- Location: IOIBUF_X25_Y34_N8
\spi_data_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(3),
	o => \spi_data_in[3]~input_o\);

-- Location: FF_X31_Y31_N17
\internal_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[3]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(3));

-- Location: IOIBUF_X25_Y34_N1
\spi_data_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(11),
	o => \spi_data_in[11]~input_o\);

-- Location: LCCOMB_X31_Y31_N10
\internal_buffer[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \internal_buffer[11]~feeder_combout\ = \spi_data_in[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_data_in[11]~input_o\,
	combout => \internal_buffer[11]~feeder_combout\);

-- Location: FF_X31_Y31_N11
\internal_buffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_buffer[11]~feeder_combout\,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(11));

-- Location: LCCOMB_X31_Y31_N16
\Mux0~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (bit_pos(3) & (((internal_buffer(11))) # (!bit_pos(2)))) # (!bit_pos(3) & (bit_pos(2) & (internal_buffer(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(3),
	datab => bit_pos(2),
	datac => internal_buffer(3),
	datad => internal_buffer(11),
	combout => \Mux0~11_combout\);

-- Location: IOIBUF_X29_Y34_N15
\spi_data_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(15),
	o => \spi_data_in[15]~input_o\);

-- Location: FF_X31_Y31_N15
\internal_buffer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[15]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(15));

-- Location: IOIBUF_X16_Y34_N8
\spi_data_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(7),
	o => \spi_data_in[7]~input_o\);

-- Location: LCCOMB_X31_Y31_N20
\internal_buffer[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \internal_buffer[7]~feeder_combout\ = \spi_data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_data_in[7]~input_o\,
	combout => \internal_buffer[7]~feeder_combout\);

-- Location: FF_X31_Y31_N21
\internal_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_buffer[7]~feeder_combout\,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(7));

-- Location: LCCOMB_X31_Y31_N14
\Mux0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (bit_pos(2) & (\Mux0~11_combout\)) # (!bit_pos(2) & ((\Mux0~11_combout\ & (internal_buffer(15))) # (!\Mux0~11_combout\ & ((internal_buffer(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(2),
	datab => \Mux0~11_combout\,
	datac => internal_buffer(15),
	datad => internal_buffer(7),
	combout => \Mux0~12_combout\);

-- Location: IOIBUF_X34_Y34_N1
\spi_data_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(1),
	o => \spi_data_in[1]~input_o\);

-- Location: FF_X31_Y31_N13
\internal_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[1]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(1));

-- Location: IOIBUF_X31_Y34_N1
\spi_data_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(9),
	o => \spi_data_in[9]~input_o\);

-- Location: LCCOMB_X31_Y31_N2
\internal_buffer[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \internal_buffer[9]~feeder_combout\ = \spi_data_in[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_data_in[9]~input_o\,
	combout => \internal_buffer[9]~feeder_combout\);

-- Location: FF_X31_Y31_N3
\internal_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_buffer[9]~feeder_combout\,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(9));

-- Location: LCCOMB_X31_Y31_N12
\Mux0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (bit_pos(3) & (((internal_buffer(9))) # (!bit_pos(2)))) # (!bit_pos(3) & (bit_pos(2) & (internal_buffer(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(3),
	datab => bit_pos(2),
	datac => internal_buffer(1),
	datad => internal_buffer(9),
	combout => \Mux0~6_combout\);

-- Location: IOIBUF_X14_Y34_N22
\spi_data_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(13),
	o => \spi_data_in[13]~input_o\);

-- Location: FF_X31_Y31_N27
\internal_buffer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[13]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(13));

-- Location: IOIBUF_X31_Y34_N8
\spi_data_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(5),
	o => \spi_data_in[5]~input_o\);

-- Location: LCCOMB_X31_Y31_N0
\internal_buffer[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \internal_buffer[5]~feeder_combout\ = \spi_data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_data_in[5]~input_o\,
	combout => \internal_buffer[5]~feeder_combout\);

-- Location: FF_X31_Y31_N1
\internal_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_buffer[5]~feeder_combout\,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(5));

-- Location: LCCOMB_X31_Y31_N26
\Mux0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Mux0~6_combout\ & ((bit_pos(2)) # ((internal_buffer(13))))) # (!\Mux0~6_combout\ & (!bit_pos(2) & ((internal_buffer(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => bit_pos(2),
	datac => internal_buffer(13),
	datad => internal_buffer(5),
	combout => \Mux0~7_combout\);

-- Location: IOIBUF_X20_Y34_N15
\spi_data_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(0),
	o => \spi_data_in[0]~input_o\);

-- Location: FF_X31_Y31_N5
\internal_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[0]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(0));

-- Location: IOIBUF_X23_Y34_N15
\spi_data_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(4),
	o => \spi_data_in[4]~input_o\);

-- Location: LCCOMB_X31_Y31_N18
\internal_buffer[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \internal_buffer[4]~feeder_combout\ = \spi_data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_data_in[4]~input_o\,
	combout => \internal_buffer[4]~feeder_combout\);

-- Location: FF_X31_Y31_N19
\internal_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_buffer[4]~feeder_combout\,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(4));

-- Location: LCCOMB_X31_Y31_N4
\Mux0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (bit_pos(3) & (!bit_pos(2))) # (!bit_pos(3) & ((bit_pos(2) & (internal_buffer(0))) # (!bit_pos(2) & ((internal_buffer(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(3),
	datab => bit_pos(2),
	datac => internal_buffer(0),
	datad => internal_buffer(4),
	combout => \Mux0~8_combout\);

-- Location: IOIBUF_X23_Y34_N22
\spi_data_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(12),
	o => \spi_data_in[12]~input_o\);

-- Location: FF_X31_Y31_N31
\internal_buffer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[12]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(12));

-- Location: IOIBUF_X16_Y34_N15
\spi_data_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_data_in(8),
	o => \spi_data_in[8]~input_o\);

-- Location: FF_X31_Y31_N25
\internal_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spi_data_in[8]~input_o\,
	sload => VCC,
	ena => \state.saving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_buffer(8));

-- Location: LCCOMB_X31_Y31_N30
\Mux0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (bit_pos(3) & ((\Mux0~8_combout\ & (internal_buffer(12))) # (!\Mux0~8_combout\ & ((internal_buffer(8)))))) # (!bit_pos(3) & (\Mux0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(3),
	datab => \Mux0~8_combout\,
	datac => internal_buffer(12),
	datad => internal_buffer(8),
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X34_Y31_N16
\Mux0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (bit_pos(0) & (bit_pos(1) & ((\Mux0~9_combout\)))) # (!bit_pos(0) & (((\Mux0~7_combout\)) # (!bit_pos(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_pos(0),
	datab => bit_pos(1),
	datac => \Mux0~7_combout\,
	datad => \Mux0~9_combout\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X35_Y31_N28
\Mux0~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (\Mux0~10_combout\ & (((\Mux0~12_combout\) # (bit_pos(1))))) # (!\Mux0~10_combout\ & (\Mux0~5_combout\ & ((!bit_pos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => \Mux0~12_combout\,
	datac => \Mux0~10_combout\,
	datad => bit_pos(1),
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X35_Y31_N30
\sdata~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \sdata~2_combout\ = (\sdata~1_combout\) # ((\Mux0~13_combout\ & (bit_pos(4) & \state.tx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdata~1_combout\,
	datab => \Mux0~13_combout\,
	datac => bit_pos(4),
	datad => \state.tx~q\,
	combout => \sdata~2_combout\);

ww_sclk <= \sclk~output_o\;

ww_sdata <= \sdata~output_o\;

ww_csn <= \csn~output_o\;
END structure;


