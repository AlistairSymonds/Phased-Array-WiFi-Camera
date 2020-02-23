

module pawc_top(
input clk, resetn


);

logic wb_clk, wb_rst;
assign wb_clk = clk;
assign wb_rst = ~resetn;
`include "wb_intercon.vh"

picorv32_wb #(
    .ENABLE_MUL          (1'b1),
    .PROGADDR_RESET      (32'h0000_0000),
    .STACKADDR           (32'hFFFF_FFFF)
    )
    u_picorv32_wb(
	.trap           ( ),
    .wb_rst_i       (~resetn ),
    .wb_clk_i       (clk ),
    .wbm_adr_o      (wb_m2s_pico_rv_adr ),
    .wbm_dat_o      (wb_m2s_pico_rv_dat),
    .wbm_dat_i      (wb_s2m_pico_rv_dat ),
    .wbm_we_o       (wb_m2s_pico_rv_we),
    .wbm_sel_o      (wb_m2s_pico_rv_sel ),
    .wbm_stb_o      (wb_m2s_pico_rv_stb ),
    .wbm_ack_i      (wb_s2m_pico_rv_ack ),
    .wbm_cyc_o      (wb_m2s_pico_rv_cyc ),
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


endmodule