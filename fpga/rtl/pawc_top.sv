module pawc_top(
input clk, resetn


);




picorv32_wb u_picorv32_wb(
	.trap           ( ),
    .wb_rst_i       (~resetn ),
    .wb_clk_i       (clk ),
    .wbm_adr_o      ( ),
    .wbm_dat_o      ( ),
    .wbm_dat_i      ( ),
    .wbm_we_o       ( ),
    .wbm_sel_o      ( ),
    .wbm_stb_o      ( ),
    .wbm_ack_i      ( ),
    .wbm_cyc_o      ( ),
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

endmodule