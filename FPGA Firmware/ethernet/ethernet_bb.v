
module ethernet (
	clk,
	reset,
	reg_data_out,
	reg_rd,
	reg_data_in,
	reg_wr,
	reg_busy,
	reg_addr,
	tx_clk,
	rx_clk,
	set_10,
	set_1000,
	eth_mode,
	ena_10,
	gm_rx_d,
	gm_rx_dv,
	gm_rx_err,
	gm_tx_d,
	gm_tx_en,
	gm_tx_err,
	m_rx_d,
	m_rx_en,
	m_rx_err,
	m_tx_d,
	m_tx_en,
	m_tx_err,
	ff_rx_clk,
	ff_tx_clk,
	ff_rx_data,
	ff_rx_eop,
	rx_err,
	ff_rx_mod,
	ff_rx_rdy,
	ff_rx_sop,
	ff_rx_dval,
	ff_tx_data,
	ff_tx_eop,
	ff_tx_err,
	ff_tx_mod,
	ff_tx_rdy,
	ff_tx_sop,
	ff_tx_wren,
	xon_gen,
	xoff_gen,
	magic_wakeup,
	magic_sleep_n,
	ff_tx_crc_fwd,
	ff_tx_septy,
	tx_ff_uflow,
	ff_tx_a_full,
	ff_tx_a_empty,
	rx_err_stat,
	rx_frm_type,
	ff_rx_dsav,
	ff_rx_a_full,
	ff_rx_a_empty);	

	input		clk;
	input		reset;
	output	[31:0]	reg_data_out;
	input		reg_rd;
	input	[31:0]	reg_data_in;
	input		reg_wr;
	output		reg_busy;
	input	[7:0]	reg_addr;
	input		tx_clk;
	input		rx_clk;
	input		set_10;
	input		set_1000;
	output		eth_mode;
	output		ena_10;
	input	[7:0]	gm_rx_d;
	input		gm_rx_dv;
	input		gm_rx_err;
	output	[7:0]	gm_tx_d;
	output		gm_tx_en;
	output		gm_tx_err;
	input	[3:0]	m_rx_d;
	input		m_rx_en;
	input		m_rx_err;
	output	[3:0]	m_tx_d;
	output		m_tx_en;
	output		m_tx_err;
	input		ff_rx_clk;
	input		ff_tx_clk;
	output	[31:0]	ff_rx_data;
	output		ff_rx_eop;
	output	[5:0]	rx_err;
	output	[1:0]	ff_rx_mod;
	input		ff_rx_rdy;
	output		ff_rx_sop;
	output		ff_rx_dval;
	input	[31:0]	ff_tx_data;
	input		ff_tx_eop;
	input		ff_tx_err;
	input	[1:0]	ff_tx_mod;
	output		ff_tx_rdy;
	input		ff_tx_sop;
	input		ff_tx_wren;
	input		xon_gen;
	input		xoff_gen;
	output		magic_wakeup;
	input		magic_sleep_n;
	input		ff_tx_crc_fwd;
	output		ff_tx_septy;
	output		tx_ff_uflow;
	output		ff_tx_a_full;
	output		ff_tx_a_empty;
	output	[17:0]	rx_err_stat;
	output	[3:0]	rx_frm_type;
	output		ff_rx_dsav;
	output		ff_rx_a_full;
	output		ff_rx_a_empty;
endmodule
