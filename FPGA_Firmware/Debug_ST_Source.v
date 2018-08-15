// Debug_ST_Source.v

// This file was auto-generated as a prototype implementation of a module
// created in component editor.  It ties off all outputs to ground and
// ignores all inputs.  It needs to be edited to make it do something
// useful.
// 
// This file will not be automatically regenerated.  You should check it in
// to your version control system if you want to keep it.

`timescale 1 ps / 1 ps
module Debug_ST_Source (
		output wire [7:0] avalon_streaming_source_data,          // avalon_streaming_source.data
		output wire       avalon_streaming_source_endofpacket,   //                        .endofpacket
		output wire       avalon_streaming_source_startofpacket, //                        .startofpacket
		input  wire       clk                                    //                     clk.clk
	);

	// TODO: Auto-generated HDL template

	assign avalon_streaming_source_data = 8'b00000000;

	assign avalon_streaming_source_startofpacket = 1'b0;

	assign avalon_streaming_source_endofpacket = 1'b0;

endmodule
