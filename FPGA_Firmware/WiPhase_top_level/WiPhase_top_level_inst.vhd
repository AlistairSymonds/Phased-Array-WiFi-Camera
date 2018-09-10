	component WiPhase_top_level is
		port (
			eth_mac_mdio_connection_mdc         : out std_logic;                                       -- mdc
			eth_mac_mdio_connection_mdio_in     : in  std_logic                    := 'X';             -- mdio_in
			eth_mac_mdio_connection_mdio_out    : out std_logic;                                       -- mdio_out
			eth_mac_mdio_connection_mdio_oen    : out std_logic;                                       -- mdio_oen
			eth_mac_rgmii_connection_rgmii_in   : in  std_logic_vector(3 downto 0) := (others => 'X'); -- rgmii_in
			eth_mac_rgmii_connection_rgmii_out  : out std_logic_vector(3 downto 0);                    -- rgmii_out
			eth_mac_rgmii_connection_rx_control : in  std_logic                    := 'X';             -- rx_control
			eth_mac_rgmii_connection_tx_control : out std_logic;                                       -- tx_control
			eth_mac_status_connection_set_10    : in  std_logic                    := 'X';             -- set_10
			eth_mac_status_connection_set_1000  : in  std_logic                    := 'X';             -- set_1000
			eth_mac_status_connection_eth_mode  : out std_logic;                                       -- eth_mode
			eth_mac_status_connection_ena_10    : out std_logic;                                       -- ena_10
			eth_rgmii_rx_clk_clk                : in  std_logic                    := 'X';             -- clk
			eth_rgmii_tx_clk_clk                : in  std_logic                    := 'X';             -- clk
			mclk_i_clk                          : in  std_logic                    := 'X';             -- clk
			mclk_reset_reset_n                  : in  std_logic                    := 'X';             -- reset_n
			pll_inclk_clk                       : in  std_logic                    := 'X';             -- clk
			pll_out_clk                         : out std_logic;                                       -- clk
			sample_pll_areset_conduit_export    : in  std_logic                    := 'X';             -- export
			sample_pll_locked_conduit_export    : out std_logic;                                       -- export
			spi_signals_o_MISO                  : in  std_logic                    := 'X';             -- MISO
			spi_signals_o_MOSI                  : out std_logic;                                       -- MOSI
			spi_signals_o_SCLK                  : out std_logic;                                       -- SCLK
			spi_signals_o_SS_n                  : out std_logic_vector(2 downto 0)                     -- SS_n
		);
	end component WiPhase_top_level;

	u0 : component WiPhase_top_level
		port map (
			eth_mac_mdio_connection_mdc         => CONNECTED_TO_eth_mac_mdio_connection_mdc,         --   eth_mac_mdio_connection.mdc
			eth_mac_mdio_connection_mdio_in     => CONNECTED_TO_eth_mac_mdio_connection_mdio_in,     --                          .mdio_in
			eth_mac_mdio_connection_mdio_out    => CONNECTED_TO_eth_mac_mdio_connection_mdio_out,    --                          .mdio_out
			eth_mac_mdio_connection_mdio_oen    => CONNECTED_TO_eth_mac_mdio_connection_mdio_oen,    --                          .mdio_oen
			eth_mac_rgmii_connection_rgmii_in   => CONNECTED_TO_eth_mac_rgmii_connection_rgmii_in,   --  eth_mac_rgmii_connection.rgmii_in
			eth_mac_rgmii_connection_rgmii_out  => CONNECTED_TO_eth_mac_rgmii_connection_rgmii_out,  --                          .rgmii_out
			eth_mac_rgmii_connection_rx_control => CONNECTED_TO_eth_mac_rgmii_connection_rx_control, --                          .rx_control
			eth_mac_rgmii_connection_tx_control => CONNECTED_TO_eth_mac_rgmii_connection_tx_control, --                          .tx_control
			eth_mac_status_connection_set_10    => CONNECTED_TO_eth_mac_status_connection_set_10,    -- eth_mac_status_connection.set_10
			eth_mac_status_connection_set_1000  => CONNECTED_TO_eth_mac_status_connection_set_1000,  --                          .set_1000
			eth_mac_status_connection_eth_mode  => CONNECTED_TO_eth_mac_status_connection_eth_mode,  --                          .eth_mode
			eth_mac_status_connection_ena_10    => CONNECTED_TO_eth_mac_status_connection_ena_10,    --                          .ena_10
			eth_rgmii_rx_clk_clk                => CONNECTED_TO_eth_rgmii_rx_clk_clk,                --          eth_rgmii_rx_clk.clk
			eth_rgmii_tx_clk_clk                => CONNECTED_TO_eth_rgmii_tx_clk_clk,                --          eth_rgmii_tx_clk.clk
			mclk_i_clk                          => CONNECTED_TO_mclk_i_clk,                          --                    mclk_i.clk
			mclk_reset_reset_n                  => CONNECTED_TO_mclk_reset_reset_n,                  --                mclk_reset.reset_n
			pll_inclk_clk                       => CONNECTED_TO_pll_inclk_clk,                       --                 pll_inclk.clk
			pll_out_clk                         => CONNECTED_TO_pll_out_clk,                         --                   pll_out.clk
			sample_pll_areset_conduit_export    => CONNECTED_TO_sample_pll_areset_conduit_export,    -- sample_pll_areset_conduit.export
			sample_pll_locked_conduit_export    => CONNECTED_TO_sample_pll_locked_conduit_export,    -- sample_pll_locked_conduit.export
			spi_signals_o_MISO                  => CONNECTED_TO_spi_signals_o_MISO,                  --             spi_signals_o.MISO
			spi_signals_o_MOSI                  => CONNECTED_TO_spi_signals_o_MOSI,                  --                          .MOSI
			spi_signals_o_SCLK                  => CONNECTED_TO_spi_signals_o_SCLK,                  --                          .SCLK
			spi_signals_o_SS_n                  => CONNECTED_TO_spi_signals_o_SS_n                   --                          .SS_n
		);

