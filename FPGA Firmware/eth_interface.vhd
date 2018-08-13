library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity eth_interface is
	port(
		clk : in std_logic;
		enet_clk_125M : in std_logic;
		
		
		
		
		
		
		--physical outputs
		Enet_rg_txclk_o : out std_logic;
		enet_rg_txd_o : out std_logic_vector(3 downto 0);
		enet_rg_txctl_o : out std_logic;
		
		enet_rg_rxclk_o : out std_logic;
		enet_rg_rxd_o : out std_logic_vector(3 downto 0);
		enet_rg_rxctl_o : out std_logic
	);
	
end entity;


architecture arch of eth_interface is


component ethernet is
	port (
		reg_addr      : in  std_logic_vector(7 downto 0)  := (others => '0'); --                  control_port.address
		reg_data_out  : out std_logic_vector(31 downto 0);                    --                              .readdata
		reg_rd        : in  std_logic                     := '0';             --                              .read
		reg_data_in   : in  std_logic_vector(31 downto 0) := (others => '0'); --                              .writedata
		reg_wr        : in  std_logic                     := '0';             --                              .write
		reg_busy      : out std_logic;                                        --                              .waitrequest
		clk           : in  std_logic                     := '0';             -- control_port_clock_connection.clk
		gm_rx_d       : in  std_logic_vector(7 downto 0)  := (others => '0'); --           mac_gmii_connection.gmii_rx_d
		gm_rx_dv      : in  std_logic                     := '0';             --                              .gmii_rx_dv
		gm_rx_err     : in  std_logic                     := '0';             --                              .gmii_rx_err
		gm_tx_d       : out std_logic_vector(7 downto 0);                     --                              .gmii_tx_d
		gm_tx_en      : out std_logic;                                        --                              .gmii_tx_en
		gm_tx_err     : out std_logic;                                        --                              .gmii_tx_err
		m_rx_d        : in  std_logic_vector(3 downto 0)  := (others => '0'); --            mac_mii_connection.mii_rx_d
		m_rx_en       : in  std_logic                     := '0';             --                              .mii_rx_dv
		m_rx_err      : in  std_logic                     := '0';             --                              .mii_rx_err
		m_tx_d        : out std_logic_vector(3 downto 0);                     --                              .mii_tx_d
		m_tx_en       : out std_logic;                                        --                              .mii_tx_en
		m_tx_err      : out std_logic;                                        --                              .mii_tx_err
		xon_gen       : in  std_logic                     := '0';             --           mac_misc_connection.xon_gen
		xoff_gen      : in  std_logic                     := '0';             --                              .xoff_gen
		magic_wakeup  : out std_logic;                                        --                              .magic_wakeup
		magic_sleep_n : in  std_logic                     := '0';             --                              .magic_sleep_n
		ff_tx_crc_fwd : in  std_logic                     := '0';             --                              .ff_tx_crc_fwd
		ff_tx_septy   : out std_logic;                                        --                              .ff_tx_septy
		tx_ff_uflow   : out std_logic;                                        --                              .tx_ff_uflow
		ff_tx_a_full  : out std_logic;                                        --                              .ff_tx_a_full
		ff_tx_a_empty : out std_logic;                                        --                              .ff_tx_a_empty
		rx_err_stat   : out std_logic_vector(17 downto 0);                    --                              .rx_err_stat
		rx_frm_type   : out std_logic_vector(3 downto 0);                     --                              .rx_frm_type
		ff_rx_dsav    : out std_logic;                                        --                              .ff_rx_dsav
		ff_rx_a_full  : out std_logic;                                        --                              .ff_rx_a_full
		ff_rx_a_empty : out std_logic;                                        --                              .ff_rx_a_empty
		set_10        : in  std_logic                     := '0';             --         mac_status_connection.set_10
		set_1000      : in  std_logic                     := '0';             --                              .set_1000
		eth_mode      : out std_logic;                                        --                              .eth_mode
		ena_10        : out std_logic;                                        --                              .ena_10
		rx_clk        : in  std_logic                     := '0';             --   pcs_mac_rx_clock_connection.clk
		tx_clk        : in  std_logic                     := '0';             --   pcs_mac_tx_clock_connection.clk
		ff_rx_data    : out std_logic_vector(31 downto 0);                    --                       receive.data
		ff_rx_eop     : out std_logic;                                        --                              .endofpacket
		rx_err        : out std_logic_vector(5 downto 0);                     --                              .error
		ff_rx_mod     : out std_logic_vector(1 downto 0);                     --                              .empty
		ff_rx_rdy     : in  std_logic                     := '0';             --                              .ready
		ff_rx_sop     : out std_logic;                                        --                              .startofpacket
		ff_rx_dval    : out std_logic;                                        --                              .valid
		ff_rx_clk     : in  std_logic                     := '0';             --      receive_clock_connection.clk
		reset         : in  std_logic                     := '0';             --              reset_connection.reset
		ff_tx_data    : in  std_logic_vector(31 downto 0) := (others => '0'); --                      transmit.data
		ff_tx_eop     : in  std_logic                     := '0';             --                              .endofpacket
		ff_tx_err     : in  std_logic                     := '0';             --                              .error
		ff_tx_mod     : in  std_logic_vector(1 downto 0)  := (others => '0'); --                              .empty
		ff_tx_rdy     : out std_logic;                                        --                              .ready
		ff_tx_sop     : in  std_logic                     := '0';             --                              .startofpacket
		ff_tx_wren    : in  std_logic                     := '0';             --                              .valid
		ff_tx_clk     : in  std_logic                     := '0'              --     transmit_clock_connection.clk
	);
end component;	


begin
	tse : ethernet
		port map(
			
		
		);
	
end entity;
