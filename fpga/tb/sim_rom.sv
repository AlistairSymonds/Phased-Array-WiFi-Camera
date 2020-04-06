module sim_rom
#(parameter data_width=8, parameter addr_width=8)
(

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

    logic [data_width-1:0] rom[1024-1:0];
    logic [29:0] dword_addr;
    assign dword_addr = i_wb_addr >> 2;

    initial // Read the memory contents in the file
    begin
     $readmemh("sim_rom_hex.txt", rom);
    end

    always_ff @ (posedge clk)
    begin
        o_wb_ack <= 1'b0;
        if (i_wb_stb)
            o_wb_ack <= 1'b1;
        
        o_wb_data <= rom[dword_addr];
    end

    assign o_wb_stall = 1'b0;

endmodule
