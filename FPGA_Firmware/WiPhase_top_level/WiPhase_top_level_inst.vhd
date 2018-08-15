	component WiPhase_top_level is
		port (
			enet_clk_125m_i_clk               : in  std_logic                     := 'X';             -- clk
			mac_mdio_connection_mdc           : out std_logic;                                        -- mdc
			mac_mdio_connection_mdio_in       : in  std_logic                     := 'X';             -- mdio_in
			mac_mdio_connection_mdio_out      : out std_logic;                                        -- mdio_out
			mac_mdio_connection_mdio_oen      : out std_logic;                                        -- mdio_oen
			mac_misc_connection_xon_gen       : in  std_logic                     := 'X';             -- xon_gen
			mac_misc_connection_xoff_gen      : in  std_logic                     := 'X';             -- xoff_gen
			mac_misc_connection_magic_wakeup  : out std_logic;                                        -- magic_wakeup
			mac_misc_connection_magic_sleep_n : in  std_logic                     := 'X';             -- magic_sleep_n
			mac_misc_connection_ff_tx_crc_fwd : in  std_logic                     := 'X';             -- ff_tx_crc_fwd
			mac_misc_connection_ff_tx_septy   : out std_logic;                                        -- ff_tx_septy
			mac_misc_connection_tx_ff_uflow   : out std_logic;                                        -- tx_ff_uflow
			mac_misc_connection_ff_tx_a_full  : out std_logic;                                        -- ff_tx_a_full
			mac_misc_connection_ff_tx_a_empty : out std_logic;                                        -- ff_tx_a_empty
			mac_misc_connection_rx_err_stat   : out std_logic_vector(17 downto 0);                    -- rx_err_stat
			mac_misc_connection_rx_frm_type   : out std_logic_vector(3 downto 0);                     -- rx_frm_type
			mac_misc_connection_ff_rx_dsav    : out std_logic;                                        -- ff_rx_dsav
			mac_misc_connection_ff_rx_a_full  : out std_logic;                                        -- ff_rx_a_full
			mac_misc_connection_ff_rx_a_empty : out std_logic;                                        -- ff_rx_a_empty
			mac_status_set_10                 : in  std_logic                     := 'X';             -- set_10
			mac_status_set_1000               : in  std_logic                     := 'X';             -- set_1000
			mac_status_eth_mode               : out std_logic;                                        -- eth_mode
			mac_status_ena_10                 : out std_logic;                                        -- ena_10
			mclk_i_clk                        : in  std_logic                     := 'X';             -- clk
			mclk_reset_reset_n                : in  std_logic                     := 'X';             -- reset_n
			pll_inclk_clk                     : in  std_logic                     := 'X';             -- clk
			pll_out_clk                       : out std_logic;                                        -- clk
			rgmii_connection_rgmii_in         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- rgmii_in
			rgmii_connection_rgmii_out        : out std_logic_vector(3 downto 0);                     -- rgmii_out
			rgmii_connection_rx_control       : in  std_logic                     := 'X';             -- rx_control
			rgmii_connection_tx_control       : out std_logic;                                        -- tx_control
			rgmii_rx_clk_clk                  : in  std_logic                     := 'X';             -- clk
			sample_pll_areset_conduit_export  : in  std_logic                     := 'X';             -- export
			sample_pll_locked_conduit_export  : out std_logic;                                        -- export
			spi_signals_o_MISO                : in  std_logic                     := 'X';             -- MISO
			spi_signals_o_MOSI                : out std_logic;                                        -- MOSI
			spi_signals_o_SCLK                : out std_logic;                                        -- SCLK
			spi_signals_o_SS_n                : out std_logic_vector(2 downto 0);                     -- SS_n
			pio_test_std_logic_vector         : out std_logic_vector(7 downto 0)                      -- std_logic_vector
		);
	end component WiPhase_top_level;

	u0 : component WiPhase_top_level
		port map (
			enet_clk_125m_i_clk               => CONNECTED_TO_enet_clk_125m_i_clk,               --           enet_clk_125m_i.clk
			mac_mdio_connection_mdc           => CONNECTED_TO_mac_mdio_connection_mdc,           --       mac_mdio_connection.mdc
			mac_mdio_connection_mdio_in       => CONNECTED_TO_mac_mdio_connection_mdio_in,       --                          .mdio_in
			mac_mdio_connection_mdio_out      => CONNECTED_TO_mac_mdio_connection_mdio_out,      --                          .mdio_out
			mac_mdio_connection_mdio_oen      => CONNECTED_TO_mac_mdio_connection_mdio_oen,      --                          .mdio_oen
			mac_misc_connection_xon_gen       => CONNECTED_TO_mac_misc_connection_xon_gen,       --       mac_misc_connection.xon_gen
			mac_misc_connection_xoff_gen      => CONNECTED_TO_mac_misc_connection_xoff_gen,      --                          .xoff_gen
			mac_misc_connection_magic_wakeup  => CONNECTED_TO_mac_misc_connection_magic_wakeup,  --                          .magic_wakeup
			mac_misc_connection_magic_sleep_n => CONNECTED_TO_mac_misc_connection_magic_sleep_n, --                          .magic_sleep_n
			mac_misc_connection_ff_tx_crc_fwd => CONNECTED_TO_mac_misc_connection_ff_tx_crc_fwd, --                          .ff_tx_crc_fwd
			mac_misc_connection_ff_tx_septy   => CONNECTED_TO_mac_misc_connection_ff_tx_septy,   --                          .ff_tx_septy
			mac_misc_connection_tx_ff_uflow   => CONNECTED_TO_mac_misc_connection_tx_ff_uflow,   --                          .tx_ff_uflow
			mac_misc_connection_ff_tx_a_full  => CONNECTED_TO_mac_misc_connection_ff_tx_a_full,  --                          .ff_tx_a_full
			mac_misc_connection_ff_tx_a_empty => CONNECTED_TO_mac_misc_connection_ff_tx_a_empty, --                          .ff_tx_a_empty
			mac_misc_connection_rx_err_stat   => CONNECTED_TO_mac_misc_connection_rx_err_stat,   --                          .rx_err_stat
			mac_misc_connection_rx_frm_type   => CONNECTED_TO_mac_misc_connection_rx_frm_type,   --                          .rx_frm_type
			mac_misc_connection_ff_rx_dsav    => CONNECTED_TO_mac_misc_connection_ff_rx_dsav,    --                          .ff_rx_dsav
			mac_misc_connection_ff_rx_a_full  => CONNECTED_TO_mac_misc_connection_ff_rx_a_full,  --                          .ff_rx_a_full
			mac_misc_connection_ff_rx_a_empty => CONNECTED_TO_mac_misc_connection_ff_rx_a_empty, --                          .ff_rx_a_empty
			mac_status_set_10                 => CONNECTED_TO_mac_status_set_10,                 --                mac_status.set_10
			mac_status_set_1000               => CONNECTED_TO_mac_status_set_1000,               --                          .set_1000
			mac_status_eth_mode               => CONNECTED_TO_mac_status_eth_mode,               --                          .eth_mode
			mac_status_ena_10                 => CONNECTED_TO_mac_status_ena_10,                 --                          .ena_10
			mclk_i_clk                        => CONNECTED_TO_mclk_i_clk,                        --                    mclk_i.clk
			mclk_reset_reset_n                => CONNECTED_TO_mclk_reset_reset_n,                --                mclk_reset.reset_n
			pll_inclk_clk                     => CONNECTED_TO_pll_inclk_clk,                     --                 pll_inclk.clk
			pll_out_clk                       => CONNECTED_TO_pll_out_clk,                       --                   pll_out.clk
			rgmii_connection_rgmii_in         => CONNECTED_TO_rgmii_connection_rgmii_in,         --          rgmii_connection.rgmii_in
			rgmii_connection_rgmii_out        => CONNECTED_TO_rgmii_connection_rgmii_out,        --                          .rgmii_out
			rgmii_connection_rx_control       => CONNECTED_TO_rgmii_connection_rx_control,       --                          .rx_control
			rgmii_connection_tx_control       => CONNECTED_TO_rgmii_connection_tx_control,       --                          .tx_control
			rgmii_rx_clk_clk                  => CONNECTED_TO_rgmii_rx_clk_clk,                  --              rgmii_rx_clk.clk
			sample_pll_areset_conduit_export  => CONNECTED_TO_sample_pll_areset_conduit_export,  -- sample_pll_areset_conduit.export
			sample_pll_locked_conduit_export  => CONNECTED_TO_sample_pll_locked_conduit_export,  -- sample_pll_locked_conduit.export
			spi_signals_o_MISO                => CONNECTED_TO_spi_signals_o_MISO,                --             spi_signals_o.MISO
			spi_signals_o_MOSI                => CONNECTED_TO_spi_signals_o_MOSI,                --                          .MOSI
			spi_signals_o_SCLK                => CONNECTED_TO_spi_signals_o_SCLK,                --                          .SCLK
			spi_signals_o_SS_n                => CONNECTED_TO_spi_signals_o_SS_n,                --                          .SS_n
			pio_test_std_logic_vector         => CONNECTED_TO_pio_test_std_logic_vector          --                  pio_test.std_logic_vector
		);

