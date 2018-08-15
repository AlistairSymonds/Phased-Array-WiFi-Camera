
module WiPhase_top_level (
	enet_clk_125m_i_clk,
	mac_mdio_connection_mdc,
	mac_mdio_connection_mdio_in,
	mac_mdio_connection_mdio_out,
	mac_mdio_connection_mdio_oen,
	mac_misc_connection_ff_tx_crc_fwd,
	mac_misc_connection_ff_tx_septy,
	mac_misc_connection_tx_ff_uflow,
	mac_misc_connection_ff_tx_a_full,
	mac_misc_connection_ff_tx_a_empty,
	mac_misc_connection_rx_err_stat,
	mac_misc_connection_rx_frm_type,
	mac_misc_connection_ff_rx_dsav,
	mac_misc_connection_ff_rx_a_full,
	mac_misc_connection_ff_rx_a_empty,
	mac_status_set_10,
	mac_status_set_1000,
	mac_status_eth_mode,
	mac_status_ena_10,
	mclk_i_clk,
	mclk_reset_reset_n,
	pll_inclk_clk,
	pll_out_clk,
	rgmii_connection_rgmii_in,
	rgmii_connection_rgmii_out,
	rgmii_connection_rx_control,
	rgmii_connection_tx_control,
	rgmii_rx_clk_clk,
	sample_pll_areset_conduit_export,
	sample_pll_locked_conduit_export,
	spi_signals_o_MISO,
	spi_signals_o_MOSI,
	spi_signals_o_SCLK,
	spi_signals_o_SS_n);	

	input		enet_clk_125m_i_clk;
	output		mac_mdio_connection_mdc;
	input		mac_mdio_connection_mdio_in;
	output		mac_mdio_connection_mdio_out;
	output		mac_mdio_connection_mdio_oen;
	input		mac_misc_connection_ff_tx_crc_fwd;
	output		mac_misc_connection_ff_tx_septy;
	output		mac_misc_connection_tx_ff_uflow;
	output		mac_misc_connection_ff_tx_a_full;
	output		mac_misc_connection_ff_tx_a_empty;
	output	[17:0]	mac_misc_connection_rx_err_stat;
	output	[3:0]	mac_misc_connection_rx_frm_type;
	output		mac_misc_connection_ff_rx_dsav;
	output		mac_misc_connection_ff_rx_a_full;
	output		mac_misc_connection_ff_rx_a_empty;
	input		mac_status_set_10;
	input		mac_status_set_1000;
	output		mac_status_eth_mode;
	output		mac_status_ena_10;
	input		mclk_i_clk;
	input		mclk_reset_reset_n;
	input		pll_inclk_clk;
	output		pll_out_clk;
	input	[3:0]	rgmii_connection_rgmii_in;
	output	[3:0]	rgmii_connection_rgmii_out;
	input		rgmii_connection_rx_control;
	output		rgmii_connection_tx_control;
	input		rgmii_rx_clk_clk;
	input		sample_pll_areset_conduit_export;
	output		sample_pll_locked_conduit_export;
	input		spi_signals_o_MISO;
	output		spi_signals_o_MOSI;
	output		spi_signals_o_SCLK;
	output	[2:0]	spi_signals_o_SS_n;
endmodule
