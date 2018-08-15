//altpll_avalon avalon_use_separate_sysclk="YES" CBX_SINGLE_OUTPUT_FILE="ON" CBX_SUBMODULE_USED_PORTS="altpll:areset,configupdate,clk,scandata,locked,inclk,scandataout,scandone,scanclkena,scanclk" address areset c0 clk configupdate inclk0 locked phasecounterselect phasedone phasestep phaseupdown read readdata reset scanclk scanclkena scandata scandataout scandone write writedata bandwidth_type="AUTO" clk0_divide_by=1 clk0_duty_cycle=50 clk0_multiply_by=4 clk0_phase_shift="0" compensate_clock="CLK0" device_family="CYCLONE10LP" inclk0_input_frequency=20000 intended_device_family="Cyclone 10 LP" operation_mode="normal" pll_type="AUTO" port_clk0="PORT_USED" port_clk1="PORT_UNUSED" port_clk2="PORT_UNUSED" port_clk3="PORT_UNUSED" port_clk4="PORT_UNUSED" port_clk5="PORT_UNUSED" port_extclk0="PORT_UNUSED" port_extclk1="PORT_UNUSED" port_extclk2="PORT_UNUSED" port_extclk3="PORT_UNUSED" port_inclk1="PORT_UNUSED" port_phasecounterselect="PORT_UNUSED" port_phasedone="PORT_UNUSED" port_scandata="PORT_UNUSED" port_scandataout="PORT_UNUSED" scan_chain_mif_file="ALTPLL1534141790949945.mif" width_clock=5
//VERSION_BEGIN 17.1 cbx_altclkbuf 2017:10:25:18:06:52:SJ cbx_altiobuf_bidir 2017:10:25:18:06:52:SJ cbx_altiobuf_in 2017:10:25:18:06:52:SJ cbx_altiobuf_out 2017:10:25:18:06:52:SJ cbx_altpll 2017:10:25:18:06:53:SJ cbx_altpll_avalon 2017:10:25:18:06:52:SJ cbx_cycloneii 2017:10:25:18:06:53:SJ cbx_lpm_add_sub 2017:10:25:18:06:53:SJ cbx_lpm_compare 2017:10:25:18:06:53:SJ cbx_lpm_counter 2017:10:25:18:06:53:SJ cbx_lpm_decode 2017:10:25:18:06:53:SJ cbx_lpm_mux 2017:10:25:18:06:53:SJ cbx_lpm_shiftreg 2017:10:25:18:06:53:SJ cbx_mgl 2017:10:25:18:08:29:SJ cbx_nadder 2017:10:25:18:06:53:SJ cbx_stratix 2017:10:25:18:06:53:SJ cbx_stratixii 2017:10:25:18:06:53:SJ cbx_stratixiii 2017:10:25:18:06:53:SJ cbx_stratixv 2017:10:25:18:06:53:SJ cbx_util_mgl 2017:10:25:18:06:53:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2017  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel FPGA IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Intel and sold by Intel or its authorized distributors.  Please
//  refer to the applicable agreement for further details.




//altera_std_synchronizer CBX_SINGLE_OUTPUT_FILE="ON" clk din dout reset_n
//VERSION_BEGIN 17.1 cbx_mgl 2017:10:25:18:08:29:SJ cbx_stratixii 2017:10:25:18:06:53:SJ cbx_util_mgl 2017:10:25:18:06:53:SJ  VERSION_END


//dffpipe CBX_SINGLE_OUTPUT_FILE="ON" DELAY=3 WIDTH=1 clock clrn d q ALTERA_INTERNAL_OPTIONS=AUTO_SHIFT_REGISTER_RECOGNITION=OFF
//VERSION_BEGIN 17.1 cbx_mgl 2017:10:25:18:08:29:SJ cbx_stratixii 2017:10:25:18:06:53:SJ cbx_util_mgl 2017:10:25:18:06:53:SJ  VERSION_END

//synthesis_resources = reg 3 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"AUTO_SHIFT_REGISTER_RECOGNITION=OFF"} *)
module  WiPhase_top_level_sample_pll_dffpipe_l2c
	( 
	clock,
	clrn,
	d,
	q) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	input   clrn;
	input   [0:0]  d;
	output   [0:0]  q;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   clock;
	tri1   clrn;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	[0:0]	dffe4a;
	reg	[0:0]	dffe5a;
	reg	[0:0]	dffe6a;
	wire ena;
	wire prn;
	wire sclr;

	// synopsys translate_off
	initial
		dffe4a = 0;
	// synopsys translate_on
	always @ ( posedge clock or  negedge prn or  negedge clrn)
		if (prn == 1'b0) dffe4a <= {1{1'b1}};
		else if (clrn == 1'b0) dffe4a <= 1'b0;
		else if  (ena == 1'b1)   dffe4a <= (d & (~ sclr));
	// synopsys translate_off
	initial
		dffe5a = 0;
	// synopsys translate_on
	always @ ( posedge clock or  negedge prn or  negedge clrn)
		if (prn == 1'b0) dffe5a <= {1{1'b1}};
		else if (clrn == 1'b0) dffe5a <= 1'b0;
		else if  (ena == 1'b1)   dffe5a <= (dffe4a & (~ sclr));
	// synopsys translate_off
	initial
		dffe6a = 0;
	// synopsys translate_on
	always @ ( posedge clock or  negedge prn or  negedge clrn)
		if (prn == 1'b0) dffe6a <= {1{1'b1}};
		else if (clrn == 1'b0) dffe6a <= 1'b0;
		else if  (ena == 1'b1)   dffe6a <= (dffe5a & (~ sclr));
	assign
		ena = 1'b1,
		prn = 1'b1,
		q = dffe6a,
		sclr = 1'b0;
endmodule //WiPhase_top_level_sample_pll_dffpipe_l2c

//synthesis_resources = reg 3 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  WiPhase_top_level_sample_pll_stdsync_sv6
	( 
	clk,
	din,
	dout,
	reset_n) /* synthesis synthesis_clearbox=1 */;
	input   clk;
	input   din;
	output   dout;
	input   reset_n;

	wire  [0:0]   wire_dffpipe3_q;

	WiPhase_top_level_sample_pll_dffpipe_l2c   dffpipe3
	( 
	.clock(clk),
	.clrn(reset_n),
	.d(din),
	.q(wire_dffpipe3_q));
	assign
		dout = wire_dffpipe3_q;
endmodule //WiPhase_top_level_sample_pll_stdsync_sv6


//altpll bandwidth_type="AUTO" CBX_SINGLE_OUTPUT_FILE="ON" clk0_divide_by=1 clk0_duty_cycle=50 clk0_multiply_by=4 clk0_phase_shift="0" compensate_clock="CLK0" device_family="CYCLONE10LP" inclk0_input_frequency=20000 intended_device_family="Cyclone 10 LP" operation_mode="normal" pll_type="AUTO" port_clk0="PORT_USED" port_clk1="PORT_UNUSED" port_clk2="PORT_UNUSED" port_clk3="PORT_UNUSED" port_clk4="PORT_UNUSED" port_clk5="PORT_UNUSED" port_extclk0="PORT_UNUSED" port_extclk1="PORT_UNUSED" port_extclk2="PORT_UNUSED" port_extclk3="PORT_UNUSED" port_inclk1="PORT_UNUSED" port_phasecounterselect="PORT_UNUSED" port_phasedone="PORT_UNUSED" port_scandata="PORT_UNUSED" port_scandataout="PORT_UNUSED" scan_chain_mif_file="ALTPLL1534141790949945.mif" width_clock=5 areset clk configupdate inclk locked scanclk scanclkena scandata scandataout scandone
//VERSION_BEGIN 17.1 cbx_altclkbuf 2017:10:25:18:06:52:SJ cbx_altiobuf_bidir 2017:10:25:18:06:52:SJ cbx_altiobuf_in 2017:10:25:18:06:52:SJ cbx_altiobuf_out 2017:10:25:18:06:52:SJ cbx_altpll 2017:10:25:18:06:53:SJ cbx_cycloneii 2017:10:25:18:06:53:SJ cbx_lpm_add_sub 2017:10:25:18:06:53:SJ cbx_lpm_compare 2017:10:25:18:06:53:SJ cbx_lpm_counter 2017:10:25:18:06:53:SJ cbx_lpm_decode 2017:10:25:18:06:53:SJ cbx_lpm_mux 2017:10:25:18:06:53:SJ cbx_mgl 2017:10:25:18:08:29:SJ cbx_nadder 2017:10:25:18:06:53:SJ cbx_stratix 2017:10:25:18:06:53:SJ cbx_stratixii 2017:10:25:18:06:53:SJ cbx_stratixiii 2017:10:25:18:06:53:SJ cbx_stratixv 2017:10:25:18:06:53:SJ cbx_util_mgl 2017:10:25:18:06:53:SJ  VERSION_END

//synthesis_resources = cyclone10lp_pll 1 reg 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"SUPPRESS_DA_RULE_INTERNAL=C104;SUPPRESS_DA_RULE_INTERNAL=R101"} *)
module  WiPhase_top_level_sample_pll_altpll_mtd2
	( 
	areset,
	clk,
	configupdate,
	inclk,
	locked,
	scanclk,
	scanclkena,
	scandata,
	scandataout,
	scandone) /* synthesis synthesis_clearbox=1 */;
	input   areset;
	output   [4:0]  clk;
	input   configupdate;
	input   [1:0]  inclk;
	output   locked;
	input   scanclk;
	input   scanclkena;
	input   scandata;
	output   scandataout;
	output   scandone;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   areset;
	tri0   configupdate;
	tri0   [1:0]  inclk;
	tri0   scanclk;
	tri1   scanclkena;
	tri0   scandata;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	pll_lock_sync;
	wire  [4:0]   wire_pll7_clk;
	wire  wire_pll7_fbout;
	wire  wire_pll7_locked;
	wire  wire_pll7_scandataout;
	wire  wire_pll7_scandone;

	// synopsys translate_off
	initial
		pll_lock_sync = 0;
	// synopsys translate_on
	always @ ( posedge wire_pll7_locked or  posedge areset)
		if (areset == 1'b1) pll_lock_sync <= 1'b0;
		else  pll_lock_sync <= 1'b1;
	cyclone10lp_pll   pll7
	( 
	.activeclock(),
	.areset(areset),
	.clk(wire_pll7_clk),
	.clkbad(),
	.configupdate(configupdate),
	.fbin(wire_pll7_fbout),
	.fbout(wire_pll7_fbout),
	.inclk(inclk),
	.locked(wire_pll7_locked),
	.phasedone(),
	.scanclk(scanclk),
	.scanclkena(scanclkena),
	.scandata(scandata),
	.scandataout(wire_pll7_scandataout),
	.scandone(wire_pll7_scandone),
	.vcooverrange(),
	.vcounderrange()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clkswitch(1'b0),
	.pfdena(1'b1),
	.phasecounterselect({3{1'b0}}),
	.phasestep(1'b0),
	.phaseupdown(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		pll7.bandwidth_type = "auto",
		pll7.clk0_divide_by = 1,
		pll7.clk0_duty_cycle = 50,
		pll7.clk0_multiply_by = 4,
		pll7.clk0_phase_shift = "0",
		pll7.compensate_clock = "clk0",
		pll7.inclk0_input_frequency = 20000,
		pll7.operation_mode = "normal",
		pll7.pll_type = "auto",
		pll7.scan_chain_mif_file = "ALTPLL1534141790949945.mif",
		pll7.lpm_type = "cyclone10lp_pll";
	assign
		clk = {wire_pll7_clk[4:0]},
		locked = (wire_pll7_locked & pll_lock_sync),
		scandataout = wire_pll7_scandataout,
		scandone = wire_pll7_scandone;
endmodule //WiPhase_top_level_sample_pll_altpll_mtd2

//synthesis_resources = cyclone10lp_pll 1 reg 6 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  WiPhase_top_level_sample_pll
	( 
	address,
	areset,
	c0,
	clk,
	configupdate,
	inclk0,
	locked,
	phasecounterselect,
	phasedone,
	phasestep,
	phaseupdown,
	read,
	readdata,
	reset,
	scanclk,
	scanclkena,
	scandata,
	scandataout,
	scandone,
	write,
	writedata) /* synthesis synthesis_clearbox=1 */;
	input   [1:0]  address;
	input   areset;
	output   c0;
	input   clk;
	input   configupdate;
	input   inclk0;
	output   locked;
	input   [3:0]  phasecounterselect;
	output   phasedone;
	input   phasestep;
	input   phaseupdown;
	input   read;
	output   [31:0]  readdata;
	input   reset;
	input   scanclk;
	input   scanclkena;
	input   scandata;
	output   scandataout;
	output   scandone;
	input   write;
	input   [31:0]  writedata;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   inclk0;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  wire_stdsync2_dout;
	wire  [4:0]   wire_sd1_clk;
	wire  wire_sd1_locked;
	wire  wire_sd1_scandataout;
	wire  wire_sd1_scandone;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=HIGH"} *)
	reg	pfdena_reg;
	wire	wire_pfdena_reg_ena;
	reg	prev_reset;
	wire  w_locked;
	wire  w_pfdena;
	wire  w_phasedone;
	wire  w_pll_areset_in;
	wire  w_reset;
	wire  w_select_control;
	wire  w_select_status;

	WiPhase_top_level_sample_pll_stdsync_sv6   stdsync2
	( 
	.clk(clk),
	.din(wire_sd1_locked),
	.dout(wire_stdsync2_dout),
	.reset_n((~ reset)));
	WiPhase_top_level_sample_pll_altpll_mtd2   sd1
	( 
	.areset((w_pll_areset_in | areset)),
	.clk(wire_sd1_clk),
	.configupdate(configupdate),
	.inclk({{1{1'b0}}, inclk0}),
	.locked(wire_sd1_locked),
	.scanclk(scanclk),
	.scanclkena(scanclkena),
	.scandata(scandata),
	.scandataout(wire_sd1_scandataout),
	.scandone(wire_sd1_scandone));
	// synopsys translate_off
	initial
		pfdena_reg = {1{1'b1}};
	// synopsys translate_on
	always @ ( posedge clk or  posedge reset)
		if (reset == 1'b1) pfdena_reg <= {1{1'b1}};
		else if  (wire_pfdena_reg_ena == 1'b1)   pfdena_reg <= writedata[1];
	assign
		wire_pfdena_reg_ena = (write & w_select_control);
	// synopsys translate_off
	initial
		prev_reset = 0;
	// synopsys translate_on
	always @ ( posedge clk or  posedge reset)
		if (reset == 1'b1) prev_reset <= 1'b0;
		else  prev_reset <= w_reset;
	assign
		c0 = wire_sd1_clk[0],
		locked = wire_sd1_locked,
		phasedone = 1'b0,
		readdata = {{30{1'b0}}, (read & ((w_select_control & w_pfdena) | (w_select_status & w_phasedone))), (read & ((w_select_control & w_pll_areset_in) | (w_select_status & w_locked)))},
		scandataout = wire_sd1_scandataout,
		scandone = wire_sd1_scandone,
		w_locked = wire_stdsync2_dout,
		w_pfdena = pfdena_reg,
		w_phasedone = 1'b1,
		w_pll_areset_in = prev_reset,
		w_reset = ((write & w_select_control) & writedata[0]),
		w_select_control = ((~ address[1]) & address[0]),
		w_select_status = ((~ address[1]) & (~ address[0]));
endmodule //WiPhase_top_level_sample_pll
//VALID FILE
