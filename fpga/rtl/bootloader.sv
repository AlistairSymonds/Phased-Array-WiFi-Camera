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
        case(i_wb_addr)
            
            0:  
                o_wb_data <= 32'b000000000001_00000_000_00001_0010011; //12bit immediate, 5bit src reg, funct3, dest, opcode
            default:
                o_wb_data <= 32'b000000000001_00001_000_00001_0010011;
        endcase
        
	end
assign o_wb_ack = (i_wb_stb);
assign o_wb_stall = 1'b0;

endmodule