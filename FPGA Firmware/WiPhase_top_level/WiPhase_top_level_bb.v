
module WiPhase_top_level (
	Debug_ST_Sink_0_ST_sink_connection_data,
	Debug_ST_Sink_0_ST_sink_connection_endofpacket,
	Debug_ST_Sink_0_ST_sink_connection_startofpacket,
	Debug_ST_Source_0_avalon_streaming_source_data,
	Debug_ST_Source_0_avalon_streaming_source_endofpacket,
	Debug_ST_Source_0_avalon_streaming_source_startofpacket,
	clk_clk,
	clk_0_clk,
	reset_reset_n,
	reset_0_reset_n,
	rgmii_rx_clk_clk);	

	output	[7:0]	Debug_ST_Sink_0_ST_sink_connection_data;
	output		Debug_ST_Sink_0_ST_sink_connection_endofpacket;
	output		Debug_ST_Sink_0_ST_sink_connection_startofpacket;
	input	[7:0]	Debug_ST_Source_0_avalon_streaming_source_data;
	input		Debug_ST_Source_0_avalon_streaming_source_endofpacket;
	input		Debug_ST_Source_0_avalon_streaming_source_startofpacket;
	input		clk_clk;
	input		clk_0_clk;
	input		reset_reset_n;
	input		reset_0_reset_n;
	input		rgmii_rx_clk_clk;
endmodule
