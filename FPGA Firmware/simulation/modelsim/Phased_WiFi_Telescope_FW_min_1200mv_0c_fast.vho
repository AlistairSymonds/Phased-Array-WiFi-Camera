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

-- DATE "08/12/2018 22:12:22"

-- 
-- Device: Altera 10CL025YU256C8G Package UFBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	wifi_tele_phy IS
    PORT (
	\sample_pll_out(n)\ : OUT std_logic;
	\hmcad1511_fclk(n)\ : IN std_logic := '0';
	\hmcad1511_d4b(n)\ : IN std_logic := '0';
	\hmcad1511_lclk(n)\ : IN std_logic := '0';
	\hmcad1511_d4a(n)\ : IN std_logic := '0';
	\hmcad1511_d3b(n)\ : IN std_logic := '0';
	\hmcad1511_d3a(n)\ : IN std_logic := '0';
	\hmcad1511_d2b(n)\ : IN std_logic := '0';
	\hmcad1511_d2a(n)\ : IN std_logic := '0';
	\hmcad1511_d1b(n)\ : IN std_logic := '0';
	\hmcad1511_d1a(n)\ : IN std_logic := '0';
	C10_clk50M : IN std_logic;
	adc_cs : BUFFER std_logic;
	vga_cs : BUFFER std_logic;
	dac_cs : BUFFER std_logic;
	mosi : BUFFER std_logic;
	sclk : BUFFER std_logic;
	sample_pll_out : BUFFER std_logic;
	hmcad1511_fclk : IN std_logic;
	hmcad1511_lclk : IN std_logic;
	hmcad1511_d1a : IN std_logic;
	hmcad1511_d1b : IN std_logic;
	hmcad1511_d2a : IN std_logic;
	hmcad1511_d2b : IN std_logic;
	hmcad1511_d3a : IN std_logic;
	hmcad1511_d3b : IN std_logic;
	hmcad1511_d4a : IN std_logic;
	hmcad1511_d4b : IN std_logic
	);
END wifi_tele_phy;

-- Design Ports Information
-- adc_cs	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_cs	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac_cs	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_pll_out	=>  Location: PIN_R4,	 I/O Standard: Differential 2.5-V SSTL Class I,	 Current Strength: Default
-- hmcad1511_fclk	=>  Location: PIN_L15,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d4b	=>  Location: PIN_P2,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_lclk	=>  Location: PIN_R16,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d4a	=>  Location: PIN_R3,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d3b	=>  Location: PIN_N3,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d3a	=>  Location: PIN_N5,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d2b	=>  Location: PIN_R5,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d2a	=>  Location: PIN_R6,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d1b	=>  Location: PIN_R7,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d1a	=>  Location: PIN_N15,	 I/O Standard: LVDS,	 Current Strength: Default
-- C10_clk50M	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sample_pll_out(n)	=>  Location: PIN_T4,	 I/O Standard: Differential 2.5-V SSTL Class I,	 Current Strength: Default
-- hmcad1511_fclk(n)	=>  Location: PIN_L16,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d4b(n)	=>  Location: PIN_P1,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_lclk(n)	=>  Location: PIN_P16,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d4a(n)	=>  Location: PIN_T3,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d3b(n)	=>  Location: PIN_P3,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d3a(n)	=>  Location: PIN_N6,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d2b(n)	=>  Location: PIN_T5,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d2a(n)	=>  Location: PIN_T6,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d1b(n)	=>  Location: PIN_T7,	 I/O Standard: LVDS,	 Current Strength: Default
-- hmcad1511_d1a(n)	=>  Location: PIN_N16,	 I/O Standard: LVDS,	 Current Strength: Default


ARCHITECTURE structure OF wifi_tele_phy IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_sample_pll_out(n)\ : std_logic;
SIGNAL \ww_hmcad1511_fclk(n)\ : std_logic;
SIGNAL \ww_hmcad1511_d4b(n)\ : std_logic;
SIGNAL \ww_hmcad1511_lclk(n)\ : std_logic;
SIGNAL \ww_hmcad1511_d4a(n)\ : std_logic;
SIGNAL \ww_hmcad1511_d3b(n)\ : std_logic;
SIGNAL \ww_hmcad1511_d3a(n)\ : std_logic;
SIGNAL \ww_hmcad1511_d2b(n)\ : std_logic;
SIGNAL \ww_hmcad1511_d2a(n)\ : std_logic;
SIGNAL \ww_hmcad1511_d1b(n)\ : std_logic;
SIGNAL \ww_hmcad1511_d1a(n)\ : std_logic;
SIGNAL ww_C10_clk50M : std_logic;
SIGNAL ww_adc_cs : std_logic;
SIGNAL ww_vga_cs : std_logic;
SIGNAL ww_dac_cs : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_sample_pll_out : std_logic;
SIGNAL ww_hmcad1511_fclk : std_logic;
SIGNAL ww_hmcad1511_lclk : std_logic;
SIGNAL ww_hmcad1511_d1a : std_logic;
SIGNAL ww_hmcad1511_d1b : std_logic;
SIGNAL ww_hmcad1511_d2a : std_logic;
SIGNAL ww_hmcad1511_d2b : std_logic;
SIGNAL ww_hmcad1511_d3a : std_logic;
SIGNAL ww_hmcad1511_d3b : std_logic;
SIGNAL ww_hmcad1511_d4a : std_logic;
SIGNAL ww_hmcad1511_d4b : std_logic;
SIGNAL \pll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sample_pll_out_7e_output_pseudo_diff_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hmcad1511_fclk~input_o\ : std_logic;
SIGNAL \hmcad1511_d4b~input_o\ : std_logic;
SIGNAL \hmcad1511_lclk~input_o\ : std_logic;
SIGNAL \hmcad1511_d4a~input_o\ : std_logic;
SIGNAL \hmcad1511_d3b~input_o\ : std_logic;
SIGNAL \hmcad1511_d3a~input_o\ : std_logic;
SIGNAL \hmcad1511_d2b~input_o\ : std_logic;
SIGNAL \hmcad1511_d2a~input_o\ : std_logic;
SIGNAL \hmcad1511_d1b~input_o\ : std_logic;
SIGNAL \hmcad1511_d1a~input_o\ : std_logic;
SIGNAL \~ALTERA_DCLK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \C10_clk50M~input_o\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sample_pll_out_7e_output_pseudo_diff_outclk\ : std_logic;
SIGNAL \sample_pll_out~output_pseudo_diff_o\ : std_logic;
SIGNAL \sample_pll_out~output_pseudo_diffoutn\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adc|d3lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \adc|d4lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \adc|d1lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \adc|d4lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \adc|d2lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \adc|d3lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \adc|d2lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \adc|d1lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_hmcad1511_lclk~input_o\ : std_logic;

BEGIN

\sample_pll_out(n)\ <= \ww_sample_pll_out(n)\;
\ww_hmcad1511_fclk(n)\ <= \hmcad1511_fclk(n)\;
\ww_hmcad1511_d4b(n)\ <= \hmcad1511_d4b(n)\;
\ww_hmcad1511_lclk(n)\ <= \hmcad1511_lclk(n)\;
\ww_hmcad1511_d4a(n)\ <= \hmcad1511_d4a(n)\;
\ww_hmcad1511_d3b(n)\ <= \hmcad1511_d3b(n)\;
\ww_hmcad1511_d3a(n)\ <= \hmcad1511_d3a(n)\;
\ww_hmcad1511_d2b(n)\ <= \hmcad1511_d2b(n)\;
\ww_hmcad1511_d2a(n)\ <= \hmcad1511_d2a(n)\;
\ww_hmcad1511_d1b(n)\ <= \hmcad1511_d1b(n)\;
\ww_hmcad1511_d1a(n)\ <= \hmcad1511_d1a(n)\;
ww_C10_clk50M <= C10_clk50M;
adc_cs <= ww_adc_cs;
vga_cs <= ww_vga_cs;
dac_cs <= ww_dac_cs;
mosi <= ww_mosi;
sclk <= ww_sclk;
sample_pll_out <= ww_sample_pll_out;
ww_hmcad1511_fclk <= hmcad1511_fclk;
ww_hmcad1511_lclk <= hmcad1511_lclk;
ww_hmcad1511_d1a <= hmcad1511_d1a;
ww_hmcad1511_d1b <= hmcad1511_d1b;
ww_hmcad1511_d2a <= hmcad1511_d2a;
ww_hmcad1511_d2b <= hmcad1511_d2b;
ww_hmcad1511_d3a <= hmcad1511_d3a;
ww_hmcad1511_d3b <= hmcad1511_d3b;
ww_hmcad1511_d4a <= hmcad1511_d4a;
ww_hmcad1511_d4b <= hmcad1511_d4b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \C10_clk50M~input_o\);

\pll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(4);

\pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sample_pll_out_7e_output_pseudo_diff_INCLK_bus\ <= (vcc & vcc & vcc & \pll|altpll_component|auto_generated|wire_pll1_clk\(0));
\ALT_INV_hmcad1511_lclk~input_o\ <= NOT \hmcad1511_lclk~input_o\;

-- Location: IOIBUF_X0_Y4_N15
\hmcad1511_d4b~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hmcad1511_d4b,
	ibar => \ww_hmcad1511_d4b(n)\,
	o => \hmcad1511_d4b~input_o\);

-- Location: IOIBUF_X53_Y8_N22
\hmcad1511_lclk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hmcad1511_lclk,
	ibar => \ww_hmcad1511_lclk(n)\,
	o => \hmcad1511_lclk~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\hmcad1511_d4a~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hmcad1511_d4a,
	ibar => \ww_hmcad1511_d4a(n)\,
	o => \hmcad1511_d4a~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\hmcad1511_d3b~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hmcad1511_d3b,
	ibar => \ww_hmcad1511_d3b(n)\,
	o => \hmcad1511_d3b~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\hmcad1511_d3a~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hmcad1511_d3a,
	ibar => \ww_hmcad1511_d3a(n)\,
	o => \hmcad1511_d3a~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\hmcad1511_d2b~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hmcad1511_d2b,
	ibar => \ww_hmcad1511_d2b(n)\,
	o => \hmcad1511_d2b~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\hmcad1511_d2a~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hmcad1511_d2a,
	ibar => \ww_hmcad1511_d2a(n)\,
	o => \hmcad1511_d2a~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\hmcad1511_d1b~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hmcad1511_d1b,
	ibar => \ww_hmcad1511_d1b(n)\,
	o => \hmcad1511_d1b~input_o\);

-- Location: IOIBUF_X53_Y9_N15
\hmcad1511_d1a~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hmcad1511_d1a,
	ibar => \ww_hmcad1511_d1a(n)\,
	o => \hmcad1511_d1a~input_o\);

-- Location: IOOBUF_X34_Y0_N23
\adc_cs~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_adc_cs);

-- Location: IOOBUF_X23_Y34_N16
\vga_cs~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vga_cs);

-- Location: IOOBUF_X0_Y25_N9
\dac_cs~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dac_cs);

-- Location: IOOBUF_X0_Y10_N23
\mosi~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_mosi);

-- Location: IOOBUF_X38_Y0_N9
\sclk~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sclk);

-- Location: IOOBUF_X5_Y0_N23
\sample_pll_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sample_pll_out~output_pseudo_diff_o\,
	devoe => ww_devoe,
	o => ww_sample_pll_out);

-- Location: IOOBUF_X5_Y0_N16
\sample_pll_out~output(n)\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sample_pll_out~output_pseudo_diffoutn\,
	devoe => ww_devoe,
	o => \ww_sample_pll_out(n)\);

-- Location: IOIBUF_X0_Y16_N1
\C10_clk50M~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C10_clk50M,
	o => \C10_clk50M~input_o\);

-- Location: PLL_1
\pll|altpll_component|auto_generated|pll1\ : cyclone10lp_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 2,
	c0_initial => 1,
	c0_low => 1,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 4,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "zero delay buffer",
	pfd_max => 200000,
	pfd_min => 3076,
	scan_chain_mif_file => "pll_controller.mif",
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \pll|altpll_component|auto_generated|wire_pll1_fbout\,
	scandata => GND,
	scanclk => VCC,
	scanclkena => GND,
	configupdate => GND,
	inclk => \pll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_PLL1E0
\pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sample_pll_out_7e_output_pseudo_diff\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sample_pll_out_7e_output_pseudo_diff_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sample_pll_out_7e_output_pseudo_diff_outclk\);

-- Location: PSEUDODIFFOUT_X5_Y0_N27
\sample_pll_out~output_pseudo_diff\ : cyclone10lp_pseudo_diff_out
PORT MAP (
	i => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sample_pll_out_7e_output_pseudo_diff_outclk\,
	o => \sample_pll_out~output_pseudo_diff_o\,
	obar => \sample_pll_out~output_pseudo_diffoutn\);

-- Location: FF_X0_Y4_N24
\adc|d4lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hmcad1511_lclk~input_o\,
	d => \hmcad1511_d4b~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d4lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg\(0));

-- Location: FF_X0_Y4_N17
\adc|d4lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hmcad1511_lclk~input_o\,
	d => \hmcad1511_d4b~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d4lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg\(0));

-- Location: FF_X1_Y0_N3
\adc|d4lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hmcad1511_lclk~input_o\,
	d => \hmcad1511_d4a~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d4lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg\(1));

-- Location: FF_X1_Y0_N10
\adc|d4lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hmcad1511_lclk~input_o\,
	d => \hmcad1511_d4a~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d4lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg\(1));

-- Location: FF_X1_Y0_N17
\adc|d3lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hmcad1511_lclk~input_o\,
	d => \hmcad1511_d3b~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d3lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg\(0));

-- Location: FF_X1_Y0_N24
\adc|d3lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hmcad1511_lclk~input_o\,
	d => \hmcad1511_d3b~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d3lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg\(0));

-- Location: FF_X5_Y0_N3
\adc|d3lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hmcad1511_lclk~input_o\,
	d => \hmcad1511_d3a~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d3lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg\(1));

-- Location: FF_X5_Y0_N10
\adc|d3lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hmcad1511_lclk~input_o\,
	d => \hmcad1511_d3a~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d3lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg\(1));

-- Location: FF_X14_Y0_N17
\adc|d2lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hmcad1511_lclk~input_o\,
	d => \hmcad1511_d2b~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d2lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg\(0));

-- Location: FF_X14_Y0_N24
\adc|d2lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hmcad1511_lclk~input_o\,
	d => \hmcad1511_d2b~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d2lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg\(0));

-- Location: FF_X14_Y0_N3
\adc|d2lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hmcad1511_lclk~input_o\,
	d => \hmcad1511_d2a~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d2lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg\(1));

-- Location: FF_X14_Y0_N10
\adc|d2lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hmcad1511_lclk~input_o\,
	d => \hmcad1511_d2a~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d2lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg\(1));

-- Location: FF_X18_Y0_N24
\adc|d1lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hmcad1511_lclk~input_o\,
	d => \hmcad1511_d1b~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d1lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg\(0));

-- Location: FF_X16_Y0_N17
\adc|d1lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hmcad1511_lclk~input_o\,
	d => \hmcad1511_d1b~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d1lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg\(0));

-- Location: FF_X53_Y9_N24
\adc|d1lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hmcad1511_lclk~input_o\,
	d => \hmcad1511_d1a~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d1lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_l_reg\(1));

-- Location: FF_X53_Y9_N17
\adc|d1lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hmcad1511_lclk~input_o\,
	d => \hmcad1511_d1a~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|d1lvds|ALTLVDS_RX_component|auto_generated|ddio_in|ddio_h_reg\(1));

-- Location: IOIBUF_X53_Y11_N1
\hmcad1511_fclk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hmcad1511_fclk,
	ibar => \ww_hmcad1511_fclk(n)\,
	o => \hmcad1511_fclk~input_o\);
END structure;


