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
		ENET_RG_RXD : in std_logic_vector(3 downto 0);
		
		ENET_RG_TXCLK : out std_logic;
		ENET_RG_TXCTL : out std_logic;
		ENET_RG_TXD : out std_logic_vector(3 downto 0);
	
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
			mclk_i_clk                          : in  std_logic                    := 'X';             -- clk
			mclk_reset_reset_n                  : in  std_logic                    := 'X';             -- reset_n
			pll_inclk_clk                       : in  std_logic                    := 'X';             -- clk
			pll_out_clk                         : out std_logic;                                       -- clk
			--sample_pll_areset_conduit_export    : in  std_logic                    := 'X';             -- export
			sample_pll_locked_conduit_export    : out std_logic;                                       -- export
			spi_signals_o_MISO                  : in  std_logic                    := 'X';             -- MISO
			spi_signals_o_MOSI                  : out std_logic;                                       -- MOSI
			spi_signals_o_SCLK                  : out std_logic;                                       -- SCLK
			spi_signals_o_SS_n                  : out std_logic_vector(2 downto 0);                    -- SS_n
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
			eth_rgmii_tx_clk_clk                : in  std_logic                    := 'X'              -- clk
		);
	end component WiPhase_top_level;
	
	signal sample_pll_sig : std_logic;
	
	
	signal mdio_out_sig, mdio_oen_sig : std_logic;
	--signal ENET_MDIO_OUT, ENET_MDIO_IN : std_logic;
	
	--signal enet_rgmii_txclk_sig : std_logic;
	--signal enet_rgmii_rxclk_sig : std_logic;
	--signal enet_rgmii_tx_ctl_sig : std_logic;
	--signal enet_rgmii_rx_ctl_sig : std_logic;
	--signal enet_rgmii_txd_sig : std_logic_vector(3 downto 0);
	--signal enet_rgmii_rxd_sig : std_logic_vector(3 downto 0);
	
	
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
			
			
			
			
			pll_inclk_clk => C10_CLK50M,
			pll_out_clk => sample_pll_sig,
			
			
			spi_signals_o_MOSI => spi_mosi_pin,
			spi_signals_o_SCLK => spi_sclk_pin,
			spi_signals_o_SS_n =>  spi_ss_sig,
			
			
			eth_mac_mdio_connection_mdc         => ENET_MDC,         --   eth_mac_mdio_connection.mdc
			eth_mac_mdio_connection_mdio_in     => ENET_MDIO,     --                          .mdio_in
			eth_mac_mdio_connection_mdio_out    => mdio_out_sig,    --                          .mdio_out
			eth_mac_mdio_connection_mdio_oen    => mdio_oen_sig,    --                          .mdio_oen
			eth_mac_rgmii_connection_rgmii_in   => ENET_RG_RXD,   --  eth_mac_rgmii_connection.rgmii_in
			eth_mac_rgmii_connection_rgmii_out  => ENET_RG_TXD,  --                          .rgmii_out
			eth_mac_rgmii_connection_rx_control => ENET_RG_RXCTL, --                          .rx_control
			eth_mac_rgmii_connection_tx_control => ENET_RG_TXCTL, --                          .tx_control
			--eth_mac_status_connection_set_10    => ,    -- eth_mac_status_connection.set_10
			eth_mac_status_connection_set_1000  => '1',  --                          .set_1000
			--eth_mac_status_connection_eth_mode  => ,  --                          .eth_mode
			--eth_mac_status_connection_ena_10    => ,    --                          .ena_10
			eth_rgmii_rx_clk_clk                => ENET_RG_RXCLK,                --          eth_rgmii_rx_clk.clk
			eth_rgmii_tx_clk_clk                => ENET_CLK_125M               --          eth_rgmii_tx_clk.clk
			
		);
		

		
		
	--connecting to the outside world
	spi_adc_cs_pin <= spi_ss_sig(0);
	spi_vga_cs_pin <= spi_ss_sig(1);
	spi_dac_cs_pin <= spi_ss_sig(2);
	
	--ENET_RG_TXD0 <= enet_rgmii_txd_sig(0);
	--ENET_RG_TXD1 <= enet_rgmii_txd_sig(1);
--	ENET_RG_TXD2 <= enet_rgmii_txd_sig(2);
--	ENET_RG_TXD3 <= enet_rgmii_txd_sig(3);
--	
--	enet_rgmii_rxclk_sig <= ENET_RG_RXCLK;
--	enet_rgmii_rxd_sig(0) <= ENET_RG_RXD0;
--	enet_rgmii_rxd_sig(1) <= ENET_RG_RXD1;
--	enet_rgmii_rxd_sig(2) <= ENET_RG_RXD2;
--	enet_rgmii_rxd_sig(3) <= ENET_RG_RXD3;
--	enet_rgmii_rx_ctl_sig <= ENET_RG_RXCTL;
--	
	process(mdio_oen_sig, mdio_out_sig)
	begin
		if(mdio_oen_sig = '0') then
			ENET_MDIO <= mdio_out_sig;
		else
			ENET_MDIO <= 'Z';
		end if;	
	end process;
	
	
	USER_LED(3) <= leds_sig(0);
	sample_pll_out <= sample_pll_sig;
	
	clk_div : clock_divider
	generic map(divisor => 20000000)
	port map(clk_in => C10_CLK50M,
		reset => '0',
		clk_out => USER_LED(2)
	);
	
end architecture;

