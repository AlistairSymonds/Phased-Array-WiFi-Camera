	WiPhase_top_level u0 (
		.mac_mdio_connection_mdc           (<connected-to-mac_mdio_connection_mdc>),           //       mac_mdio_connection.mdc
		.mac_mdio_connection_mdio_in       (<connected-to-mac_mdio_connection_mdio_in>),       //                          .mdio_in
		.mac_mdio_connection_mdio_out      (<connected-to-mac_mdio_connection_mdio_out>),      //                          .mdio_out
		.mac_mdio_connection_mdio_oen      (<connected-to-mac_mdio_connection_mdio_oen>),      //                          .mdio_oen
		.mac_misc_connection_ff_tx_crc_fwd (<connected-to-mac_misc_connection_ff_tx_crc_fwd>), //       mac_misc_connection.ff_tx_crc_fwd
		.mac_misc_connection_ff_tx_septy   (<connected-to-mac_misc_connection_ff_tx_septy>),   //                          .ff_tx_septy
		.mac_misc_connection_tx_ff_uflow   (<connected-to-mac_misc_connection_tx_ff_uflow>),   //                          .tx_ff_uflow
		.mac_misc_connection_ff_tx_a_full  (<connected-to-mac_misc_connection_ff_tx_a_full>),  //                          .ff_tx_a_full
		.mac_misc_connection_ff_tx_a_empty (<connected-to-mac_misc_connection_ff_tx_a_empty>), //                          .ff_tx_a_empty
		.mac_misc_connection_rx_err_stat   (<connected-to-mac_misc_connection_rx_err_stat>),   //                          .rx_err_stat
		.mac_misc_connection_rx_frm_type   (<connected-to-mac_misc_connection_rx_frm_type>),   //                          .rx_frm_type
		.mac_misc_connection_ff_rx_dsav    (<connected-to-mac_misc_connection_ff_rx_dsav>),    //                          .ff_rx_dsav
		.mac_misc_connection_ff_rx_a_full  (<connected-to-mac_misc_connection_ff_rx_a_full>),  //                          .ff_rx_a_full
		.mac_misc_connection_ff_rx_a_empty (<connected-to-mac_misc_connection_ff_rx_a_empty>), //                          .ff_rx_a_empty
		.mac_status_set_10                 (<connected-to-mac_status_set_10>),                 //                mac_status.set_10
		.mac_status_set_1000               (<connected-to-mac_status_set_1000>),               //                          .set_1000
		.mac_status_eth_mode               (<connected-to-mac_status_eth_mode>),               //                          .eth_mode
		.mac_status_ena_10                 (<connected-to-mac_status_ena_10>),                 //                          .ena_10
		.mclk_i_clk                        (<connected-to-mclk_i_clk>),                        //                    mclk_i.clk
		.mclk_reset_reset_n                (<connected-to-mclk_reset_reset_n>),                //                mclk_reset.reset_n
		.pll_inclk_clk                     (<connected-to-pll_inclk_clk>),                     //                 pll_inclk.clk
		.pll_out_clk                       (<connected-to-pll_out_clk>),                       //                   pll_out.clk
		.rgmii_connection_rgmii_in         (<connected-to-rgmii_connection_rgmii_in>),         //          rgmii_connection.rgmii_in
		.rgmii_connection_rgmii_out        (<connected-to-rgmii_connection_rgmii_out>),        //                          .rgmii_out
		.rgmii_connection_rx_control       (<connected-to-rgmii_connection_rx_control>),       //                          .rx_control
		.rgmii_connection_tx_control       (<connected-to-rgmii_connection_tx_control>),       //                          .tx_control
		.rgmii_rx_clk_clk                  (<connected-to-rgmii_rx_clk_clk>),                  //              rgmii_rx_clk.clk
		.sample_pll_areset_conduit_export  (<connected-to-sample_pll_areset_conduit_export>),  // sample_pll_areset_conduit.export
		.sample_pll_locked_conduit_export  (<connected-to-sample_pll_locked_conduit_export>),  // sample_pll_locked_conduit.export
		.spi_signals_o_MISO                (<connected-to-spi_signals_o_MISO>),                //             spi_signals_o.MISO
		.spi_signals_o_MOSI                (<connected-to-spi_signals_o_MOSI>),                //                          .MOSI
		.spi_signals_o_SCLK                (<connected-to-spi_signals_o_SCLK>),                //                          .SCLK
		.spi_signals_o_SS_n                (<connected-to-spi_signals_o_SS_n>),                //                          .SS_n
		.rgmii_tx_clk_clk                  (<connected-to-rgmii_tx_clk_clk>)                   //              rgmii_tx_clk.clk
	);

