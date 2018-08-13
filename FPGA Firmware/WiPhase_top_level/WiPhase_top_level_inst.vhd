	component WiPhase_top_level is
		port (
			Debug_ST_Sink_0_ST_sink_connection_data                 : out std_logic_vector(7 downto 0);                    -- data
			Debug_ST_Sink_0_ST_sink_connection_endofpacket          : out std_logic;                                       -- endofpacket
			Debug_ST_Sink_0_ST_sink_connection_startofpacket        : out std_logic;                                       -- startofpacket
			Debug_ST_Source_0_avalon_streaming_source_data          : in  std_logic_vector(7 downto 0) := (others => 'X'); -- data
			Debug_ST_Source_0_avalon_streaming_source_endofpacket   : in  std_logic                    := 'X';             -- endofpacket
			Debug_ST_Source_0_avalon_streaming_source_startofpacket : in  std_logic                    := 'X';             -- startofpacket
			clk_clk                                                 : in  std_logic                    := 'X';             -- clk
			clk_0_clk                                               : in  std_logic                    := 'X';             -- clk
			reset_reset_n                                           : in  std_logic                    := 'X';             -- reset_n
			reset_0_reset_n                                         : in  std_logic                    := 'X';             -- reset_n
			rgmii_rx_clk_clk                                        : in  std_logic                    := 'X'              -- clk
		);
	end component WiPhase_top_level;

	u0 : component WiPhase_top_level
		port map (
			Debug_ST_Sink_0_ST_sink_connection_data                 => CONNECTED_TO_Debug_ST_Sink_0_ST_sink_connection_data,                 --        Debug_ST_Sink_0_ST_sink_connection.data
			Debug_ST_Sink_0_ST_sink_connection_endofpacket          => CONNECTED_TO_Debug_ST_Sink_0_ST_sink_connection_endofpacket,          --                                          .endofpacket
			Debug_ST_Sink_0_ST_sink_connection_startofpacket        => CONNECTED_TO_Debug_ST_Sink_0_ST_sink_connection_startofpacket,        --                                          .startofpacket
			Debug_ST_Source_0_avalon_streaming_source_data          => CONNECTED_TO_Debug_ST_Source_0_avalon_streaming_source_data,          -- Debug_ST_Source_0_avalon_streaming_source.data
			Debug_ST_Source_0_avalon_streaming_source_endofpacket   => CONNECTED_TO_Debug_ST_Source_0_avalon_streaming_source_endofpacket,   --                                          .endofpacket
			Debug_ST_Source_0_avalon_streaming_source_startofpacket => CONNECTED_TO_Debug_ST_Source_0_avalon_streaming_source_startofpacket, --                                          .startofpacket
			clk_clk                                                 => CONNECTED_TO_clk_clk,                                                 --                                       clk.clk
			clk_0_clk                                               => CONNECTED_TO_clk_0_clk,                                               --                                     clk_0.clk
			reset_reset_n                                           => CONNECTED_TO_reset_reset_n,                                           --                                     reset.reset_n
			reset_0_reset_n                                         => CONNECTED_TO_reset_0_reset_n,                                         --                                   reset_0.reset_n
			rgmii_rx_clk_clk                                        => CONNECTED_TO_rgmii_rx_clk_clk                                         --                              rgmii_rx_clk.clk
		);

