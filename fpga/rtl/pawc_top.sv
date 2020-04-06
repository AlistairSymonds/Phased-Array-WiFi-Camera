`default_nettype none

module pawc_top(
    input logic clk, resetn,

//external RAM
    output logic o_wb_ram_cyc , 
    output logic o_wb_ram_stb ,
    output logic o_wb_ram_we ,
    output logic [31:0] o_wb_ram_addr ,
    output logic [31:0] o_wb_ram_data, 
    input  logic i_wb_ram_ack,
    input  logic i_wb_ram_stall, 
    input  logic [31:0] i_wb_ram_data,
//FW Rom
    output logic o_wb_rom_cyc , 
    output logic o_wb_rom_stb ,
    output logic o_wb_rom_we ,
    output logic [31:0] o_wb_rom_addr ,
    output logic [31:0] o_wb_rom_data, 
    input  logic i_wb_rom_ack,
    input  logic i_wb_rom_stall, 
    input  logic [31:0] i_wb_rom_data
);

logic wb_clk, wb_rst;
assign wb_clk = clk;
assign wb_rst = ~resetn;
`include "wb_intercon.vh"

picorv32_wb #(
    .ENABLE_MUL          (1'b1),
    .PROGADDR_RESET      (32'h0000_0000),
    .STACKADDR           (32'h0000_0C00)
    )
    u_picorv32_wb(
	.trap           ( ),
    .wb_rst_i       (~resetn ),
    .wb_clk_i       (clk ),
    .wbm_adr_o      (wb_m2s_pico_rv_adr),
    .wbm_dat_o      (wb_m2s_pico_rv_dat),
    .wbm_dat_i      (wb_s2m_pico_rv_dat),
    .wbm_we_o       (wb_m2s_pico_rv_we ),
    .wbm_sel_o      (wb_m2s_pico_rv_sel),
    .wbm_stb_o      (wb_m2s_pico_rv_stb),
    .wbm_ack_i      (wb_s2m_pico_rv_ack),
    .wbm_cyc_o      (wb_m2s_pico_rv_cyc),
    .pcpi_valid     ( ),
    .pcpi_insn      ( ),
    .pcpi_rs1       ( ),
    .pcpi_rs2       ( ),
    .pcpi_wr        ( ),
    .pcpi_rd        ( ),
    .pcpi_wait      ( ),
    .pcpi_ready     ( ),
    .irq            ( ),
    .eoi            ( ),

    .trace_valid    ( ),
    .trace_data     ( ),
    .mem_instr      ( )
);

rv_init_wb u_rv_init_wb(
	.clk        (clk        ),
    .resetn     (resetn     ),
    .i_wb_cyc   (wb_m2s_boot_cyc   ),
    .i_wb_stb   (wb_m2s_boot_stb   ),
    .i_wb_we    (wb_m2s_boot_we    ),
    .i_wb_addr  (wb_m2s_boot_adr  ),
    .i_wb_data  (wb_m2s_boot_dat  ),
    .o_wb_ack   (wb_s2m_boot_ack   ),
    .o_wb_stall (wb_s2m_boot_rty ), //retry and stall are kinda samey right?
    .o_wb_data  (wb_s2m_boot_dat  )
);

logic [31:0] rom_addr_offset_corrected;

assign rom_addr_offset_corrected = wb_m2s_rom_adr -  32'h0000000FF; 
assign o_wb_rom_cyc         = (wb_m2s_rom_cyc );
assign o_wb_rom_stb         = (wb_m2s_rom_stb );
assign o_wb_rom_we          = (wb_m2s_rom_we  );
assign o_wb_rom_addr        = (rom_addr_offset_corrected);
assign o_wb_rom_data        = (wb_m2s_rom_dat );
assign wb_s2m_rom_ack       = (i_wb_rom_ack);
assign wb_s2m_rom_rty       = (i_wb_rom_stall);
assign wb_s2m_rom_dat       = (i_wb_rom_data );


logic [31:0] ram_addr_offset_corrected;
assign ram_addr_offset_corrected = wb_m2s_ram_adr -  32'h00000800; 
assign o_wb_ram_cyc         = (wb_m2s_ram_cyc );
assign o_wb_ram_stb         = (wb_m2s_ram_stb );
assign o_wb_ram_we          = (wb_m2s_ram_we  );
assign o_wb_ram_addr        = (ram_addr_offset_corrected );
assign o_wb_ram_data        = (wb_m2s_ram_dat );
assign wb_s2m_ram_ack       = (i_wb_ram_ack);
assign wb_s2m_ram_rty       = (i_wb_ram_stall);
assign wb_s2m_ram_dat       = (i_wb_ram_data );


endmodule
`default_nettype wire