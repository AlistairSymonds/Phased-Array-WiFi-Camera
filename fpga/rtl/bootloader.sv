module rv_init_wb(
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
    
always_ff @(posedge clk)
	begin
		// Your write logic here, such as
		// memory[i_addr] <= i_data;
        o_wb_ack <= 1'b0;
        if (i_wb_stb)
            o_wb_ack <= 1'b1;
        
        case(i_wb_addr)
            
            0:  //put stack pointer to top of ram 2048 (start addr) + 1024 (ram size)
                //o_wb_data <= 32'b110000000000_00000_000_00010_0010011; //12bit immediate, 5bit src reg, funct3, dest, opcode
                o_wb_data <= 32'b000000000001_00000_000_00110_0010011; //12bit immediate, 5bit src reg, funct3, dest, opcode
            default:
                o_wb_data <= 32'b0_0001111110_0_00000000_00000_1101111; //JAL to addr 256, rd=0x0
        endcase
        
	end

assign o_wb_stall = 1'b0;

endmodule