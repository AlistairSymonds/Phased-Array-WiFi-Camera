
module WiPhase_top_level (
	eth_mac_mdio_connection_mdc,
	eth_mac_mdio_connection_mdio_in,
	eth_mac_mdio_connection_mdio_out,
	eth_mac_mdio_connection_mdio_oen,
	eth_mac_rgmii_connection_rgmii_in,
	eth_mac_rgmii_connection_rgmii_out,
	eth_mac_rgmii_connection_rx_control,
	eth_mac_rgmii_connection_tx_control,
	eth_mac_status_connection_set_10,
	eth_mac_status_connection_set_1000,
	eth_mac_status_connection_eth_mode,
	eth_mac_status_connection_ena_10,
	eth_rgmii_rx_clk_clk,
	eth_rgmii_tx_clk_clk,
	mclk_i_clk,
	mclk_reset_reset_n,
	pll_inclk_clk,
	pll_out_clk,
	sample_pll_areset_conduit_export,
	sample_pll_locked_conduit_export,
	spi_signals_o_MISO,
	spi_signals_o_MOSI,
	spi_signals_o_SCLK,
	spi_signals_o_SS_n);	

	output		eth_mac_mdio_connection_mdc;
	input		eth_mac_mdio_connection_mdio_in;
	output		eth_mac_mdio_connection_mdio_out;
	output		eth_mac_mdio_connection_mdio_oen;
	input	[3:0]	eth_mac_rgmii_connection_rgmii_in;
	output	[3:0]	eth_mac_rgmii_connection_rgmii_out;
	input		eth_mac_rgmii_connection_rx_control;
	output		eth_mac_rgmii_connection_tx_control;
	input		eth_mac_status_connection_set_10;
	input		eth_mac_status_connection_set_1000;
	output		eth_mac_status_connection_eth_mode;
	output		eth_mac_status_connection_ena_10;
	input		eth_rgmii_rx_clk_clk;
	input		eth_rgmii_tx_clk_clk;
	input		mclk_i_clk;
	input		mclk_reset_reset_n;
	input		pll_inclk_clk;
	output		pll_out_clk;
	input		sample_pll_areset_conduit_export;
	output		sample_pll_locked_conduit_export;
	input		spi_signals_o_MISO;
	output		spi_signals_o_MOSI;
	output		spi_signals_o_SCLK;
	output	[2:0]	spi_signals_o_SS_n;
endmodule
