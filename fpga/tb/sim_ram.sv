module sim_ram(
    input logic clk, resetn,
    input logic i_wb_cyc , 
    input logic i_wb_stb ,
    input logic i_wb_we ,
    input logic [31:0] i_wb_addr ,
    input logic [31:0] i_wb_data, 
    output logic o_wb_ack,
    output logic o_wb_stall, 
    output logic [31:0] o_wb_data
);
logic[31:0] ram[2047:0];

    always_ff @ (posedge clk) begin

        o_wb_ack <= 1'b0;
        if (i_wb_stb)
            o_wb_ack <= 1'b1;
        
        if (i_wb_we)
            ram[i_wb_addr] <= i_wb_data;
        o_wb_data <= ram[i_wb_addr];
    end

    assign o_wb_stall = 1'b0;
endmodule;