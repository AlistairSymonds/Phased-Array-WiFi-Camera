//altpll bandwidth_type="AUTO" CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" clk0_divide_by=1 clk0_duty_cycle=50 clk0_multiply_by=4 clk0_phase_shift="0" compensate_clock="CLK0" device_family="Cyclone 10 LP" inclk0_input_frequency=20000 intended_device_family="Cyclone 10 LP" lpm_hint="CBX_MODULE_PREFIX=pll_controller" operation_mode="zero_delay_buffer" pll_type="AUTO" port_clk0="PORT_USED" port_clk1="PORT_UNUSED" port_clk2="PORT_UNUSED" port_clk3="PORT_UNUSED" port_clk4="PORT_UNUSED" port_clk5="PORT_UNUSED" port_extclk0="PORT_UNUSED" port_extclk1="PORT_UNUSED" port_extclk2="PORT_UNUSED" port_extclk3="PORT_UNUSED" port_inclk1="PORT_UNUSED" port_phasecounterselect="PORT_UNUSED" port_phasedone="PORT_UNUSED" port_scandata="PORT_USED" port_scandataout="PORT_USED" scan_chain_mif_file="pll_controller.mif" self_reset_on_loss_lock="OFF" width_clock=5 clk configupdate inclk locked scanclk scanclkena scandata scandataout scandone CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48
//VERSION_BEGIN 17.1 cbx_altclkbuf 2017:10:25:18:06:52:SJ cbx_altiobuf_bidir 2017:10:25:18:06:52:SJ cbx_altiobuf_in 2017:10:25:18:06:52:SJ cbx_altiobuf_out 2017:10:25:18:06:52:SJ cbx_altpll 2017:10:25:18:06:53:SJ cbx_cycloneii 2017:10:25:18:06:53:SJ cbx_lpm_add_sub 2017:10:25:18:06:53:SJ cbx_lpm_compare 2017:10:25:18:06:53:SJ cbx_lpm_counter 2017:10:25:18:06:53:SJ cbx_lpm_decode 2017:10:25:18:06:53:SJ cbx_lpm_mux 2017:10:25:18:06:53:SJ cbx_mgl 2017:10:25:18:08:29:SJ cbx_nadder 2017:10:25:18:06:53:SJ cbx_stratix 2017:10:25:18:06:53:SJ cbx_stratixii 2017:10:25:18:06:53:SJ cbx_stratixiii 2017:10:25:18:06:53:SJ cbx_stratixv 2017:10:25:18:06:53:SJ cbx_util_mgl 2017:10:25:18:06:53:SJ  VERSION_END
//CBXI_INSTANCE_NAME="wifi_tele_phy_pll_controller_pll_altpll_altpll_component"
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



//synthesis_resources = cyclone10lp_pll 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  pll_controller_altpll
	( 
	clk,
	configupdate,
	inclk,
	locked,
	scanclk,
	scanclkena,
	scandata,
	scandataout,
	scandone) /* synthesis synthesis_clearbox=1 */;
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
	tri0   configupdate;
	tri0   [1:0]  inclk;
	tri0   scanclk;
	tri1   scanclkena;
	tri0   scandata;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [4:0]   wire_pll1_clk;
	wire  wire_pll1_fbout;
	wire  wire_pll1_locked;
	wire  wire_pll1_scandataout;
	wire  wire_pll1_scandone;

	cyclone10lp_pll   pll1
	( 
	.activeclock(),
	.clk(wire_pll1_clk),
	.clkbad(),
	.configupdate(configupdate),
	.fbin(wire_pll1_fbout),
	.fbout(wire_pll1_fbout),
	.inclk(inclk),
	.locked(wire_pll1_locked),
	.phasedone(),
	.scanclk(scanclk),
	.scanclkena(scanclkena),
	.scandata(scandata),
	.scandataout(wire_pll1_scandataout),
	.scandone(wire_pll1_scandone),
	.vcooverrange(),
	.vcounderrange()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.areset(1'b0),
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
		pll1.bandwidth_type = "auto",
		pll1.clk0_divide_by = 1,
		pll1.clk0_duty_cycle = 50,
		pll1.clk0_multiply_by = 4,
		pll1.clk0_phase_shift = "0",
		pll1.compensate_clock = "clk0",
		pll1.inclk0_input_frequency = 20000,
		pll1.operation_mode = "zero_delay_buffer",
		pll1.pll_type = "auto",
		pll1.scan_chain_mif_file = "pll_controller.mif",
		pll1.self_reset_on_loss_lock = "off",
		pll1.lpm_type = "cyclone10lp_pll";
	assign
		clk = {wire_pll1_clk[4:0]},
		locked = wire_pll1_locked,
		scandataout = wire_pll1_scandataout,
		scandone = wire_pll1_scandone;
endmodule //pll_controller_altpll
//VALID FILE
