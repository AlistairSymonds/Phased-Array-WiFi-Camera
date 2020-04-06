`default_nettype none

module pawc_tb(
    input logic clk, resetn 
);

pawc_top u_pawc_top(
	.clk    (clk    ),
    .resetn (resetn ),

    //external RAM
    .o_wb_ram_cyc   (ram_cyc) , 
    .o_wb_ram_stb   (ram_stb),
    .o_wb_ram_we    (ram_we),
    .o_wb_ram_addr  (ram_addr),
    .o_wb_ram_data  (pawc2ram_data),
    .i_wb_ram_ack   (ram_ack),
    .i_wb_ram_stall (ram_stall), 
    .i_wb_ram_data  (ram2pawc_data),


    //ROM
    .o_wb_rom_cyc   (rom_cyc) , 
    .o_wb_rom_stb   (rom_stb),
    .o_wb_rom_we    (rom_we),
    .o_wb_rom_addr  (rom_addr),
    .o_wb_rom_data  (pawc2rom_data), 
    .i_wb_rom_ack   (rom_ack),
    .i_wb_rom_stall (rom_stall), 
    .i_wb_rom_data  (rom2pawc_data)

);


logic rom_cyc, rom_stb, rom_we;
logic [31:0] rom_addr, pawc2rom_data;
logic rom_ack, rom_stall;
logic [31:0] rom2pawc_data;

sim_rom #(
    .data_width(32),
    .addr_width(32)
    )
    fw_rom(
    .clk        (clk        ),
    .resetn     (resetn     ),
    .i_wb_cyc   (rom_cyc   ),
    .i_wb_stb   (rom_stb   ),
    .i_wb_we    (rom_we    ),
    .i_wb_addr  (rom_addr  ),
    .i_wb_data  (pawc2rom_data  ),
    .o_wb_ack   (rom_ack   ),
    .o_wb_stall (rom_stall ), //retry and stall are kinda samey right?
    .o_wb_data  (rom2pawc_data  )
);


logic ram_cyc, ram_stb, ram_we;
logic [31:0] ram_addr, pawc2ram_data;
logic ram_ack, ram_stall;
logic [31:0] ram2pawc_data;

sim_ram sys_ram(
    .clk        (clk       ),
    .resetn     (resetn    ),
    .i_wb_cyc   (ram_cyc   ),
    .i_wb_stb   (ram_stb   ),
    .i_wb_we    (ram_we    ),
    .i_wb_addr  (ram_addr  ),
    .i_wb_data  (pawc2rom_data  ),
    .o_wb_ack   (ram_ack   ),
    .o_wb_stall (ram_stall ), //retry and stall are kinda samey right?
    .o_wb_data  (ram2pawc_data  )
);


endmodule

`default_nettype wire