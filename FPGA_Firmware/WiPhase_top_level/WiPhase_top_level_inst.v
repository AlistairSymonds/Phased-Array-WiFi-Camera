	WiPhase_top_level u0 (
		.eth_mac_mdio_connection_mdc         (<connected-to-eth_mac_mdio_connection_mdc>),         //   eth_mac_mdio_connection.mdc
		.eth_mac_mdio_connection_mdio_in     (<connected-to-eth_mac_mdio_connection_mdio_in>),     //                          .mdio_in
		.eth_mac_mdio_connection_mdio_out    (<connected-to-eth_mac_mdio_connection_mdio_out>),    //                          .mdio_out
		.eth_mac_mdio_connection_mdio_oen    (<connected-to-eth_mac_mdio_connection_mdio_oen>),    //                          .mdio_oen
		.eth_mac_rgmii_connection_rgmii_in   (<connected-to-eth_mac_rgmii_connection_rgmii_in>),   //  eth_mac_rgmii_connection.rgmii_in
		.eth_mac_rgmii_connection_rgmii_out  (<connected-to-eth_mac_rgmii_connection_rgmii_out>),  //                          .rgmii_out
		.eth_mac_rgmii_connection_rx_control (<connected-to-eth_mac_rgmii_connection_rx_control>), //                          .rx_control
		.eth_mac_rgmii_connection_tx_control (<connected-to-eth_mac_rgmii_connection_tx_control>), //                          .tx_control
		.eth_mac_status_connection_set_10    (<connected-to-eth_mac_status_connection_set_10>),    // eth_mac_status_connection.set_10
		.eth_mac_status_connection_set_1000  (<connected-to-eth_mac_status_connection_set_1000>),  //                          .set_1000
		.eth_mac_status_connection_eth_mode  (<connected-to-eth_mac_status_connection_eth_mode>),  //                          .eth_mode
		.eth_mac_status_connection_ena_10    (<connected-to-eth_mac_status_connection_ena_10>),    //                          .ena_10
		.eth_rgmii_rx_clk_clk                (<connected-to-eth_rgmii_rx_clk_clk>),                //          eth_rgmii_rx_clk.clk
		.eth_rgmii_tx_clk_clk                (<connected-to-eth_rgmii_tx_clk_clk>),                //          eth_rgmii_tx_clk.clk
		.mclk_i_clk                          (<connected-to-mclk_i_clk>),                          //                    mclk_i.clk
		.mclk_reset_reset_n                  (<connected-to-mclk_reset_reset_n>),                  //                mclk_reset.reset_n
		.pll_inclk_clk                       (<connected-to-pll_inclk_clk>),                       //                 pll_inclk.clk
		.pll_out_clk                         (<connected-to-pll_out_clk>),                         //                   pll_out.clk
		.sample_pll_areset_conduit_export    (<connected-to-sample_pll_areset_conduit_export>),    // sample_pll_areset_conduit.export
		.sample_pll_locked_conduit_export    (<connected-to-sample_pll_locked_conduit_export>),    // sample_pll_locked_conduit.export
		.spi_signals_o_MISO                  (<connected-to-spi_signals_o_MISO>),                  //             spi_signals_o.MISO
		.spi_signals_o_MOSI                  (<connected-to-spi_signals_o_MOSI>),                  //                          .MOSI
		.spi_signals_o_SCLK                  (<connected-to-spi_signals_o_SCLK>),                  //                          .SCLK
		.spi_signals_o_SS_n                  (<connected-to-spi_signals_o_SS_n>)                   //                          .SS_n
	);

