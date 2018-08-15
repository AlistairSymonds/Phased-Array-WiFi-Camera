-- megafunction wizard: %ALTIOBUF%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altiobuf_in 

-- ============================================================
-- File Name: lvds_glue.vhd
-- Megafunction Name(s):
-- 			altiobuf_in
--
-- Simulation Library Files(s):
-- 			cyclone10lp
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 17.1.0 Build 590 10/25/2017 SJ Lite Edition
-- ************************************************************


--Copyright (C) 2017  Intel Corporation. All rights reserved.
--Your use of Intel Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Intel Program License 
--Subscription Agreement, the Intel Quartus Prime License Agreement,
--the Intel FPGA IP License Agreement, or other applicable license
--agreement, including, without limitation, that your use is for
--the sole purpose of programming logic devices manufactured by
--Intel and sold by Intel or its authorized distributors.  Please
--refer to the applicable agreement for further details.


--altiobuf_in CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone 10 LP" ENABLE_BUS_HOLD="FALSE" NUMBER_OF_CHANNELS=10 USE_DIFFERENTIAL_MODE="TRUE" USE_DYNAMIC_TERMINATION_CONTROL="FALSE" datain datain_b dataout
--VERSION_BEGIN 17.1 cbx_altiobuf_in 2017:10:25:18:06:52:SJ cbx_mgl 2017:10:25:18:08:29:SJ cbx_stratixiii 2017:10:25:18:06:53:SJ cbx_stratixv 2017:10:25:18:06:53:SJ  VERSION_END

 LIBRARY cyclone10lp;
 USE cyclone10lp.all;

--synthesis_resources = cyclone10lp_io_ibuf 10 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  lvds_glue_iobuf_in_t1j IS 
	 PORT 
	 ( 
		 datain	:	IN  STD_LOGIC_VECTOR (9 DOWNTO 0);
		 datain_b	:	IN  STD_LOGIC_VECTOR (9 DOWNTO 0) := (OTHERS => '0');
		 dataout	:	OUT  STD_LOGIC_VECTOR (9 DOWNTO 0)
	 ); 
 END lvds_glue_iobuf_in_t1j;

 ARCHITECTURE RTL OF lvds_glue_iobuf_in_t1j IS

	 SIGNAL  wire_ibufa_i	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
	 SIGNAL  wire_ibufa_ibar	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
	 SIGNAL  wire_ibufa_o	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
	 COMPONENT  cyclone10lp_io_ibuf
	 GENERIC 
	 (
		bus_hold	:	STRING := "false";
		differential_mode	:	STRING := "false";
		simulate_z_as	:	STRING := "Z";
		lpm_type	:	STRING := "cyclone10lp_io_ibuf"
	 );
	 PORT
	 ( 
		i	:	IN STD_LOGIC := '0';
		ibar	:	IN STD_LOGIC := '0';
		o	:	OUT STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	dataout <= wire_ibufa_o;
	wire_ibufa_i <= datain;
	wire_ibufa_ibar <= datain_b;
	loop0 : FOR i IN 0 TO 9 GENERATE 
	  ibufa :  cyclone10lp_io_ibuf
	  GENERIC MAP (
		bus_hold => "false",
		differential_mode => "true"
	  )
	  PORT MAP ( 
		i => wire_ibufa_i(i),
		ibar => wire_ibufa_ibar(i),
		o => wire_ibufa_o(i)
	  );
	END GENERATE loop0;

 END RTL; --lvds_glue_iobuf_in_t1j
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lvds_glue IS
	PORT
	(
		datain		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		datain_b		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		dataout		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
END lvds_glue;


ARCHITECTURE RTL OF lvds_glue IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (9 DOWNTO 0);



	COMPONENT lvds_glue_iobuf_in_t1j
	PORT (
			datain	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			datain_b	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			dataout	: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	dataout    <= sub_wire0(9 DOWNTO 0);

	lvds_glue_iobuf_in_t1j_component : lvds_glue_iobuf_in_t1j
	PORT MAP (
		datain => datain,
		datain_b => datain_b,
		dataout => sub_wire0
	);



END RTL;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone 10 LP"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone 10 LP"
-- Retrieval info: CONSTANT: enable_bus_hold STRING "FALSE"
-- Retrieval info: CONSTANT: number_of_channels NUMERIC "10"
-- Retrieval info: CONSTANT: use_differential_mode STRING "TRUE"
-- Retrieval info: CONSTANT: use_dynamic_termination_control STRING "FALSE"
-- Retrieval info: USED_PORT: datain 0 0 10 0 INPUT NODEFVAL "datain[9..0]"
-- Retrieval info: USED_PORT: datain_b 0 0 10 0 INPUT NODEFVAL "datain_b[9..0]"
-- Retrieval info: USED_PORT: dataout 0 0 10 0 OUTPUT NODEFVAL "dataout[9..0]"
-- Retrieval info: CONNECT: @datain 0 0 10 0 datain 0 0 10 0
-- Retrieval info: CONNECT: @datain_b 0 0 10 0 datain_b 0 0 10 0
-- Retrieval info: CONNECT: dataout 0 0 10 0 @dataout 0 0 10 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL lvds_glue.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lvds_glue.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lvds_glue.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lvds_glue.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lvds_glue_inst.vhd FALSE
-- Retrieval info: LIB_FILE: cyclone10lp