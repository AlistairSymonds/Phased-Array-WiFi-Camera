module hyperram_wb_wrapper(
    input logic clk, reset
);

hyper_dword u_hyper_dword(
	.reset          (reset          ),
    .clk_lb         (clk_lb         ),
    .lb_cs_reg0     (lb_cs_reg0     ),
    .lb_cs_reg1     (lb_cs_reg1     ),
    .lb_cs_reg2     (lb_cs_reg2     ),
    .lb_cs_reg3     (lb_cs_reg3     ),
    .lb_wr          (lb_wr          ),
    .lb_rd          (lb_rd          ),
    .lb_wr_d        (lb_wr_d        ),
    .lb_rd_d        (lb_rd_d        ),
    .lb_rd_rdy      (lb_rd_rdy      ),
    .sump_dbg       (sump_dbg       ),
    .dram_ck        (dram_ck        ),
    .dram_rst_l     (dram_rst_l     ),
    .dram_cs_l      (dram_cs_l      ),
    .dram_dq_in     (dram_dq_in     ),
    .dram_dq_out    (dram_dq_out    ),
    .dram_dq_oe_l   (dram_dq_oe_l   ),
    .dram_rwds_in   (dram_rwds_in   ),
    .dram_rwds_out  (dram_rwds_out  ),
    .dram_rwds_oe_l (dram_rwds_oe_l )
);

endmodule;