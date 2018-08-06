//altlvds_rx BUFFER_IMPLEMENTATION="RAM" CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" COMMON_RX_TX_PLL="OFF" CYCLONEII_M4K_COMPATIBILITY="ON" DATA_ALIGN_ROLLOVER=4 DATA_RATE="800.0 Mbps" DESERIALIZATION_FACTOR=4 DEVICE_FAMILY="Cyclone 10 LP" DPA_INITIAL_PHASE_VALUE=0 DPLL_LOCK_COUNT=0 DPLL_LOCK_WINDOW=0 ENABLE_DPA_ALIGN_TO_RISING_EDGE_ONLY="OFF" ENABLE_DPA_CALIBRATION="ON" ENABLE_DPA_INITIAL_PHASE_SELECTION="OFF" ENABLE_DPA_MODE="OFF" ENABLE_DPA_PLL_CALIBRATION="OFF" ENABLE_SOFT_CDR_MODE="OFF" IMPLEMENT_IN_LES="ON" INCLOCK_BOOST=0 INCLOCK_DATA_ALIGNMENT="EDGE_ALIGNED" INCLOCK_PERIOD=10000 INCLOCK_PHASE_SHIFT=0 INPUT_DATA_RATE=800 NUMBER_OF_CHANNELS=2 OUTCLOCK_RESOURCE="AUTO" PLL_SELF_RESET_ON_LOSS_LOCK="OFF" PORT_RX_CHANNEL_DATA_ALIGN="PORT_UNUSED" PORT_RX_DATA_ALIGN="PORT_UNUSED" REGISTERED_OUTPUT="OFF" SIM_DPA_IS_NEGATIVE_PPM_DRIFT="OFF" SIM_DPA_NET_PPM_VARIATION=0 SIM_DPA_OUTPUT_CLOCK_PHASE_SHIFT=0 USE_CORECLOCK_INPUT="OFF" USE_DPLL_RAWPERROR="OFF" USE_EXTERNAL_PLL="ON" USE_NO_PHASE_SHIFT="ON" X_ON_BITSLIP="ON" rx_in rx_inclock rx_out CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 LOW_POWER_MODE="AUTO" ALTERA_INTERNAL_OPTIONS=AUTO_SHIFT_REGISTER_RECOGNITION=OFF
//VERSION_BEGIN 17.1 cbx_altaccumulate 2017:10:25:18:06:52:SJ cbx_altclkbuf 2017:10:25:18:06:52:SJ cbx_altddio_in 2017:10:25:18:06:52:SJ cbx_altddio_out 2017:10:25:18:06:52:SJ cbx_altera_syncram_nd_impl 2017:10:25:18:06:52:SJ cbx_altiobuf_bidir 2017:10:25:18:06:52:SJ cbx_altiobuf_in 2017:10:25:18:06:52:SJ cbx_altiobuf_out 2017:10:25:18:06:52:SJ cbx_altlvds_rx 2017:10:25:18:06:52:SJ cbx_altpll 2017:10:25:18:06:53:SJ cbx_altsyncram 2017:10:25:18:06:53:SJ cbx_arriav 2017:10:25:18:06:52:SJ cbx_cyclone 2017:10:25:18:06:53:SJ cbx_cycloneii 2017:10:25:18:06:53:SJ cbx_lpm_add_sub 2017:10:25:18:06:53:SJ cbx_lpm_compare 2017:10:25:18:06:53:SJ cbx_lpm_counter 2017:10:25:18:06:53:SJ cbx_lpm_decode 2017:10:25:18:06:53:SJ cbx_lpm_mux 2017:10:25:18:06:53:SJ cbx_lpm_shiftreg 2017:10:25:18:06:53:SJ cbx_maxii 2017:10:25:18:06:53:SJ cbx_mgl 2017:10:25:18:08:29:SJ cbx_nadder 2017:10:25:18:06:53:SJ cbx_stratix 2017:10:25:18:06:53:SJ cbx_stratixii 2017:10:25:18:06:53:SJ cbx_stratixiii 2017:10:25:18:06:53:SJ cbx_stratixv 2017:10:25:18:06:53:SJ cbx_util_mgl 2017:10:25:18:06:53:SJ  VERSION_END
//CBXI_INSTANCE_NAME="hmcad1511_controller_adc_lvds_d1lvds_altlvds_rx_ALTLVDS_RX_component"
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




//alt_lvds_ddio_in ADD_LATENCY_REG="TRUE" CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" WIDTH=2 clock datain dataout_h dataout_l
//VERSION_BEGIN 17.1 cbx_altaccumulate 2017:10:25:18:06:52:SJ cbx_altclkbuf 2017:10:25:18:06:52:SJ cbx_altddio_in 2017:10:25:18:06:52:SJ cbx_altddio_out 2017:10:25:18:06:52:SJ cbx_altera_syncram_nd_impl 2017:10:25:18:06:52:SJ cbx_altiobuf_bidir 2017:10:25:18:06:52:SJ cbx_altiobuf_in 2017:10:25:18:06:52:SJ cbx_altiobuf_out 2017:10:25:18:06:52:SJ cbx_altlvds_rx 2017:10:25:18:06:52:SJ cbx_altpll 2017:10:25:18:06:53:SJ cbx_altsyncram 2017:10:25:18:06:53:SJ cbx_arriav 2017:10:25:18:06:52:SJ cbx_cyclone 2017:10:25:18:06:53:SJ cbx_cycloneii 2017:10:25:18:06:53:SJ cbx_lpm_add_sub 2017:10:25:18:06:53:SJ cbx_lpm_compare 2017:10:25:18:06:53:SJ cbx_lpm_counter 2017:10:25:18:06:53:SJ cbx_lpm_decode 2017:10:25:18:06:53:SJ cbx_lpm_mux 2017:10:25:18:06:53:SJ cbx_lpm_shiftreg 2017:10:25:18:06:53:SJ cbx_maxii 2017:10:25:18:06:53:SJ cbx_mgl 2017:10:25:18:08:29:SJ cbx_nadder 2017:10:25:18:06:53:SJ cbx_stratix 2017:10:25:18:06:53:SJ cbx_stratixii 2017:10:25:18:06:53:SJ cbx_stratixiii 2017:10:25:18:06:53:SJ cbx_stratixv 2017:10:25:18:06:53:SJ cbx_util_mgl 2017:10:25:18:06:53:SJ  VERSION_END

//synthesis_resources = reg 10 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"{-to ddio_h_reg*} PLL_COMPENSATE=ON;ADV_NETLIST_OPT_ALLOWED=\"NEVER_ALLOW\""} *)
module  adc_lvds_lvds_ddio_in
	( 
	clock,
	datain,
	dataout_h,
	dataout_l) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	input   [1:0]  datain;
	output   [1:0]  dataout_h;
	output   [1:0]  dataout_l;

	reg	[1:0]	dataout_h_reg;
	reg	[1:0]	dataout_l_latch;
	reg	[1:0]	dataout_l_reg;
	(* ALTERA_ATTRIBUTE = {"LVDS_RX_REGISTER=HIGH;PRESERVE_REGISTER=ON;PRESERVE_FANOUT_FREE_NODE=ON"} *)
	reg	[1:0]	ddio_h_reg;
	(* ALTERA_ATTRIBUTE = {"LVDS_RX_REGISTER=LOW;PRESERVE_REGISTER=ON;PRESERVE_FANOUT_FREE_NODE=ON"} *)
	reg	[1:0]	ddio_l_reg;

	// synopsys translate_off
	initial
		dataout_h_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		  dataout_h_reg <= ddio_h_reg;
	// synopsys translate_off
	initial
		dataout_l_latch = 0;
	// synopsys translate_on
	always @ ( negedge clock)
		  dataout_l_latch <= ddio_l_reg;
	// synopsys translate_off
	initial
		dataout_l_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		  dataout_l_reg <= dataout_l_latch;
	// synopsys translate_off
	initial
		ddio_h_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		  ddio_h_reg <= datain;
	// synopsys translate_off
	initial
		ddio_l_reg = 0;
	// synopsys translate_on
	always @ ( negedge clock)
		  ddio_l_reg <= datain;
	assign
		dataout_h = dataout_l_reg,
		dataout_l = dataout_h_reg;
endmodule //adc_lvds_lvds_ddio_in


//dffpipe CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DELAY=1 WIDTH=2 clock d q ALTERA_INTERNAL_OPTIONS=AUTO_SHIFT_REGISTER_RECOGNITION=OFF
//VERSION_BEGIN 17.1 cbx_mgl 2017:10:25:18:08:29:SJ cbx_stratixii 2017:10:25:18:06:53:SJ cbx_util_mgl 2017:10:25:18:06:53:SJ  VERSION_END

//synthesis_resources = reg 2 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"AUTO_SHIFT_REGISTER_RECOGNITION=OFF"} *)
module  adc_lvds_dffpipe
	( 
	clock,
	d,
	q) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	input   [1:0]  d;
	output   [1:0]  q;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	[1:0]	dffe5a;
	wire clrn;
	wire ena;
	wire prn;
	wire sclr;

	// synopsys translate_off
	initial
		dffe5a = 0;
	// synopsys translate_on
	always @ ( posedge clock or  negedge prn or  negedge clrn)
		if (prn == 1'b0) dffe5a <= {2{1'b1}};
		else if (clrn == 1'b0) dffe5a <= 2'b0;
		else if  (ena == 1'b1)   dffe5a <= (d & {2{(~ sclr)}});
	assign
		clrn = 1'b1,
		ena = 1'b1,
		prn = 1'b1,
		q = dffe5a,
		sclr = 1'b0;
endmodule //adc_lvds_dffpipe

//synthesis_resources = reg 22 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"AUTO_SHIFT_REGISTER_RECOGNITION=OFF"} *)
module  adc_lvds_lvds_rx
	( 
	rx_in,
	rx_inclock,
	rx_out) /* synthesis synthesis_clearbox=1 */;
	input   [1:0]  rx_in;
	input   rx_inclock;
	output   [7:0]  rx_out;

	wire  [1:0]   wire_ddio_in_dataout_h;
	wire  [1:0]   wire_ddio_in_dataout_l;
	reg	[1:0]	h_shiftreg2a;
	reg	[1:0]	h_shiftreg4a;
	reg	[1:0]	l_shiftreg1a;
	reg	[1:0]	l_shiftreg3a;
	wire  [1:0]   wire_h_dffpipe_q;
	wire  [1:0]   wire_l_dffpipe_q;
	wire  [1:0]  ddio_dataout_h;
	wire  [1:0]  ddio_dataout_h_int;
	wire  [1:0]  ddio_dataout_l;
	wire  [1:0]  ddio_dataout_l_int;
	wire  fast_clock;
	wire  [7:0]  rx_out_wire;

	adc_lvds_lvds_ddio_in   ddio_in
	( 
	.clock(fast_clock),
	.datain(rx_in),
	.dataout_h(wire_ddio_in_dataout_h),
	.dataout_l(wire_ddio_in_dataout_l));
	// synopsys translate_off
	initial
		h_shiftreg2a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		  h_shiftreg2a <= {h_shiftreg2a[0], ddio_dataout_l[0]};
	// synopsys translate_off
	initial
		h_shiftreg4a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		  h_shiftreg4a <= {h_shiftreg4a[0], ddio_dataout_l[1]};
	// synopsys translate_off
	initial
		l_shiftreg1a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		  l_shiftreg1a <= {l_shiftreg1a[0], ddio_dataout_h[0]};
	// synopsys translate_off
	initial
		l_shiftreg3a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		  l_shiftreg3a <= {l_shiftreg3a[0], ddio_dataout_h[1]};
	adc_lvds_dffpipe   h_dffpipe
	( 
	.clock(fast_clock),
	.d(ddio_dataout_h_int),
	.q(wire_h_dffpipe_q));
	adc_lvds_dffpipe   l_dffpipe
	( 
	.clock(fast_clock),
	.d(ddio_dataout_l_int),
	.q(wire_l_dffpipe_q));
	assign
		ddio_dataout_h = wire_h_dffpipe_q,
		ddio_dataout_h_int = wire_ddio_in_dataout_h,
		ddio_dataout_l = wire_l_dffpipe_q,
		ddio_dataout_l_int = wire_ddio_in_dataout_l,
		fast_clock = rx_inclock,
		rx_out = rx_out_wire,
		rx_out_wire = {l_shiftreg3a[1], h_shiftreg4a[1], l_shiftreg3a[0], h_shiftreg4a[0], l_shiftreg1a[1], h_shiftreg2a[1], l_shiftreg1a[0], h_shiftreg2a[0]};
endmodule //adc_lvds_lvds_rx
//VALID FILE
