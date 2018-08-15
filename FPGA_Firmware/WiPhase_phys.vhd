library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity WiPhase_phys is	
	port(
	
	
	
		--
		C10_CLK50M : in std_logic;
	
	
		--ethernet lines
		ENET_CLK_125M : in std_logic;
		ENET_INT : in std_logic;
		ENET_MDC : out std_logic;
		ENET_MDIO : inout std_logic;
	
		ENET_RG_RXCLK : in std_logic;
		ENET_RG_RXCTL : in std_logic;
		ENET_RG_RXD0 : in std_logic;
		ENET_RG_RXD1 : in std_logic;
		ENET_RG_RXD2 : in std_logic;
		ENET_RG_RXD3 : in std_logic;
		
		ENET_RG_TXCLK : out std_logic;
		ENET_RG_TXCTL : out std_logic;
		ENET_RG_TXD0 : out std_logic;
		ENET_RG_TXD1 : out std_logic;
		ENET_RG_TXD2 : out std_logic;
		ENET_RG_TXD3 : out std_logic;
	
		--spi lines
		spi_adc_cs_pin : out std_logic;
		spi_vga_cs_pin : out std_logic;
		spi_dac_cs_pin : out std_logic;
		spi_mosi_pin : out std_logic;
		spi_sclk_pin : out std_logic;
	
		--
		USER_LED : out std_logic_vector(3 downto 0);
	
		
		sample_pll_out : out std_logic;
		
		--HMC AD1511 diff pairs
		hmcad1511_fclk : in std_logic;
		hmcad1511_lclk : in std_logic;
	
		hmcad1511_d1a : in std_logic;
		hmcad1511_d1b : in std_logic;
		
		hmcad1511_d2a : in std_logic;
		hmcad1511_d2b : in std_logic;
		
		hmcad1511_d3a : in std_logic;
		hmcad1511_d3b : in std_logic;
		
		hmcad1511_d4a : in std_logic;
		hmcad1511_d4b : in std_logic
	
	);
	
	
end entity;

architecture arch of WiPhase_phys is

		component WiPhase_top_level is
		port (
			enet_clk_125m_i_clk               : in  std_logic                     := 'X';             -- clk
			mac_mdio_connection_mdc           : out std_logic;                                        -- mdc
			mac_mdio_connection_mdio_in       : in  std_logic                     := 'X';             -- mdio_in
			mac_mdio_connection_mdio_out      : out std_logic;                                        -- mdio_out
			mac_mdio_connection_mdio_oen      : out std_logic;                                        -- mdio_oen
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
			spi_signals_o_SS_n                : out std_logic_vector(2 downto 0)                      -- SS_n
		);
	end component WiPhase_top_level;

	signal sample_pll_sig : std_logic;
	signal enet_rgmii_txd_sig : std_logic_vector(3 downto 0);
	signal leds_sig : std_logic_vector(7 downto 0);
	
	signal spi_ss_sig : std_logic_vector(2 downto 0);
	
	signal temp : std_logic;
	component clock_divider is
	generic (divisor : in integer);
	port(
		clk_in : in std_logic;
		reset : in std_logic;
		clk_out : out std_logic
	);
	end component;
	
	
	begin
	
	u1 : WiPhase_top_level
		port map(
			mclk_reset_reset_n => '1',
			mclk_i_clk => C10_CLK50M,
			
			enet_clk_125M_i_clk => ENET_CLK_125M,
			rgmii_connection_rgmii_out => enet_rgmii_txd_sig,
			pll_inclk_clk => C10_CLK50M,
			pll_out_clk => sample_pll_sig,
			
			
			spi_signals_o_MOSI => spi_mosi_pin,
			spi_signals_o_SCLK => spi_sclk_pin,
			spi_signals_o_SS_n =>  spi_ss_sig
		);
	spi_adc_cs_pin <= spi_ss_sig(0);
	spi_vga_cs_pin <= spi_ss_sig(1);
	spi_dac_cs_pin <= spi_ss_sig(2);
	
	ENET_RG_TXD0 <= enet_rgmii_txd_sig(0);
	ENET_RG_TXD1 <= enet_rgmii_txd_sig(1);
	ENET_RG_TXD2 <= enet_rgmii_txd_sig(2);
	ENET_RG_TXD3 <= enet_rgmii_txd_sig(3);
	
	USER_LED(3) <= leds_sig(0);
	sample_pll_out <= sample_pll_sig;
	
	clk_div : clock_divider
	generic map(divisor => 20000000)
	port map(clk_in => C10_CLK50M,
		reset => '0',
		clk_out => USER_LED(2)
	);
	
end architecture;

