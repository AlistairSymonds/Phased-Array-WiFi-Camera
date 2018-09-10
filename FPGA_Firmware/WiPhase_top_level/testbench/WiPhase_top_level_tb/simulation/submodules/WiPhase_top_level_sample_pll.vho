--IP Functional Simulation Model
--VERSION_BEGIN 17.1 cbx_mgl 2017:10:25:18:08:29:SJ cbx_simgen 2017:10:25:18:06:53:SJ  VERSION_END


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

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Intel disclaims all warranties of any kind).


--synopsys translate_off

 LIBRARY cyclone10lp;
 USE cyclone10lp.cyclone10lp_components.all;

--synthesis_resources = cyclone10lp_pll 1 lut 6 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  WiPhase_top_level_sample_pll IS 
	 PORT 
	 ( 
		 address	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 areset	:	IN  STD_LOGIC;
		 c0	:	OUT  STD_LOGIC;
		 clk	:	IN  STD_LOGIC;
		 configupdate	:	IN  STD_LOGIC;
		 inclk0	:	IN  STD_LOGIC;
		 locked	:	OUT  STD_LOGIC;
		 phasecounterselect	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 phasedone	:	OUT  STD_LOGIC;
		 phasestep	:	IN  STD_LOGIC;
		 phaseupdown	:	IN  STD_LOGIC;
		 read	:	IN  STD_LOGIC;
		 readdata	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 reset	:	IN  STD_LOGIC;
		 scanclk	:	IN  STD_LOGIC;
		 scanclkena	:	IN  STD_LOGIC;
		 scandata	:	IN  STD_LOGIC;
		 scandataout	:	OUT  STD_LOGIC;
		 scandone	:	OUT  STD_LOGIC;
		 write	:	IN  STD_LOGIC;
		 writedata	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0)
	 ); 
 END WiPhase_top_level_sample_pll;

 ARCHITECTURE RTL OF WiPhase_top_level_sample_pll IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_clk	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_fbout	:	STD_LOGIC;
	 SIGNAL  wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_inclk	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_locked	:	STD_LOGIC;
	 SIGNAL  wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_scandataout	:	STD_LOGIC;
	 SIGNAL  wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_scandone	:	STD_LOGIC;
	 SIGNAL	wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_pll_lock_sync_132q	:	STD_LOGIC := '0';
	 SIGNAL	wiphase_top_level_sample_pll_pfdena_reg_24q	:	STD_LOGIC := '0';
	 SIGNAL	wiphase_top_level_sample_pll_prev_reset_20q	:	STD_LOGIC := '0';
	 SIGNAL	wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_stdsync_sv6_stdsync2_wiphase_top_level_sample_pll_dffpipe_l2c_dffpipe3_dffe4a_0_120q	:	STD_LOGIC := '0';
	 SIGNAL	wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_stdsync_sv6_stdsync2_wiphase_top_level_sample_pll_dffpipe_l2c_dffpipe3_dffe5a_0_123q	:	STD_LOGIC := '0';
	 SIGNAL	wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_stdsync_sv6_stdsync2_wiphase_top_level_sample_pll_dffpipe_l2c_dffpipe3_dffe6a_0_124q	:	STD_LOGIC := '0';
	 SIGNAL  wire_w_lg_w_lg_w20w21w22w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_w14w16w17w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w20w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w14w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w15w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_address_range2w5w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_reset11w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w85w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_address_range3w4w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w20w21w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w14w16w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
	 SIGNAL  s_wire_wiphase_top_level_sample_pll_w_select_control_15_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_wiphase_top_level_sample_pll_w_select_status_16_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_locked_130_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_wiphase_top_level_sample_pll_wire_pfdena_reg_ena_12_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_wiphase_top_level_sample_pll_wire_sd1_areset_18_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_address_range2w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_address_range3w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_lg_w20w21w22w(0) <= wire_w_lg_w20w21w(0) AND read;
	wire_w_lg_w_lg_w14w16w17w(0) <= wire_w_lg_w14w16w(0) AND read;
	wire_w20w(0) <= s_wire_wiphase_top_level_sample_pll_w_select_control_15_dataout AND wiphase_top_level_sample_pll_pfdena_reg_24q;
	wire_w14w(0) <= s_wire_wiphase_top_level_sample_pll_w_select_control_15_dataout AND wiphase_top_level_sample_pll_prev_reset_20q;
	wire_w15w(0) <= s_wire_wiphase_top_level_sample_pll_w_select_status_16_dataout AND wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_stdsync_sv6_stdsync2_wiphase_top_level_sample_pll_dffpipe_l2c_dffpipe3_dffe6a_0_124q;
	wire_w_lg_w_address_range2w5w(0) <= wire_w_address_range2w(0) AND wire_w_lg_w_address_range3w4w(0);
	wire_w_lg_reset11w(0) <= NOT reset;
	wire_w85w(0) <= NOT s_wire_wiphase_top_level_sample_pll_wire_sd1_areset_18_dataout;
	wire_w_lg_w_address_range3w4w(0) <= NOT wire_w_address_range3w(0);
	wire_w_lg_w20w21w(0) <= wire_w20w(0) OR s_wire_wiphase_top_level_sample_pll_w_select_status_16_dataout;
	wire_w_lg_w14w16w(0) <= wire_w14w(0) OR wire_w15w(0);
	c0 <= wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_clk(0);
	locked <= s_wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_locked_130_dataout;
	phasedone <= '0';
	readdata <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & wire_w_lg_w_lg_w20w21w22w & wire_w_lg_w_lg_w14w16w17w);
	s_wire_vcc <= '1';
	s_wire_wiphase_top_level_sample_pll_w_select_control_15_dataout <= wire_w_lg_w_address_range2w5w(0);
	s_wire_wiphase_top_level_sample_pll_w_select_status_16_dataout <= ((NOT address(0)) AND wire_w_lg_w_address_range3w4w(0));
	s_wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_locked_130_dataout <= (wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_pll_lock_sync_132q AND wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_locked);
	s_wire_wiphase_top_level_sample_pll_wire_pfdena_reg_ena_12_dataout <= (s_wire_wiphase_top_level_sample_pll_w_select_control_15_dataout AND write);
	s_wire_wiphase_top_level_sample_pll_wire_sd1_areset_18_dataout <= (wiphase_top_level_sample_pll_prev_reset_20q OR areset);
	scandataout <= wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_scandataout;
	scandone <= wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_scandone;
	wire_w_address_range2w(0) <= address(0);
	wire_w_address_range3w(0) <= address(1);
	wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_inclk <= ( "0" & inclk0);
	wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148 :  cyclone10lp_pll
	  GENERIC MAP (
		BANDWIDTH_TYPE => "auto",
		CLK0_DIVIDE_BY => 1,
		CLK0_DUTY_CYCLE => 50,
		CLK0_MULTIPLY_BY => 4,
		CLK0_PHASE_SHIFT => "0",
		COMPENSATE_CLOCK => "clk0",
		INCLK0_INPUT_FREQUENCY => 20000,
		OPERATION_MODE => "normal",
		PLL_TYPE => "auto",
		SCAN_CHAIN_MIF_FILE => "ALTPLL1534141790949945.mif"
	  )
	  PORT MAP ( 
		areset => s_wire_wiphase_top_level_sample_pll_wire_sd1_areset_18_dataout,
		clk => wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_clk,
		configupdate => configupdate,
		fbin => wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_fbout,
		fbout => wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_fbout,
		inclk => wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_inclk,
		locked => wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_locked,
		scanclk => scanclk,
		scanclkena => scanclkena,
		scandata => scandata,
		scandataout => wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_scandataout,
		scandone => wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_scandone
	  );
	PROCESS (wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_locked, s_wire_wiphase_top_level_sample_pll_wire_sd1_areset_18_dataout)
	BEGIN
		IF (s_wire_wiphase_top_level_sample_pll_wire_sd1_areset_18_dataout = '1') THEN
				wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_pll_lock_sync_132q <= '0';
		ELSIF (wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_locked = '1' AND wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_cyclone10lp_pll_pll7_148_locked'event) THEN
				wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_pll_lock_sync_132q <= s_wire_vcc;
		END IF;
	END PROCESS;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				wiphase_top_level_sample_pll_pfdena_reg_24q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (s_wire_wiphase_top_level_sample_pll_wire_pfdena_reg_ena_12_dataout = '1') THEN
				wiphase_top_level_sample_pll_pfdena_reg_24q <= writedata(1);
			END IF;
		END IF;
		if (now = 0 ns) then
			wiphase_top_level_sample_pll_pfdena_reg_24q <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				wiphase_top_level_sample_pll_prev_reset_20q <= '0';
				wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_stdsync_sv6_stdsync2_wiphase_top_level_sample_pll_dffpipe_l2c_dffpipe3_dffe4a_0_120q <= '0';
				wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_stdsync_sv6_stdsync2_wiphase_top_level_sample_pll_dffpipe_l2c_dffpipe3_dffe5a_0_123q <= '0';
				wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_stdsync_sv6_stdsync2_wiphase_top_level_sample_pll_dffpipe_l2c_dffpipe3_dffe6a_0_124q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				wiphase_top_level_sample_pll_prev_reset_20q <= (s_wire_wiphase_top_level_sample_pll_wire_pfdena_reg_ena_12_dataout AND writedata(0));
				wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_stdsync_sv6_stdsync2_wiphase_top_level_sample_pll_dffpipe_l2c_dffpipe3_dffe4a_0_120q <= s_wire_wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_altpll_mtd2_sd1_locked_130_dataout;
				wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_stdsync_sv6_stdsync2_wiphase_top_level_sample_pll_dffpipe_l2c_dffpipe3_dffe5a_0_123q <= wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_stdsync_sv6_stdsync2_wiphase_top_level_sample_pll_dffpipe_l2c_dffpipe3_dffe4a_0_120q;
				wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_stdsync_sv6_stdsync2_wiphase_top_level_sample_pll_dffpipe_l2c_dffpipe3_dffe6a_0_124q <= wiphase_top_level_sample_pll_wiphase_top_level_sample_pll_stdsync_sv6_stdsync2_wiphase_top_level_sample_pll_dffpipe_l2c_dffpipe3_dffe5a_0_123q;
		END IF;
	END PROCESS;

 END RTL; --WiPhase_top_level_sample_pll
--synopsys translate_on
--VALID FILE
