// --------------------------------------------------------------------------------
//| Data Source
// --------------------------------------------------------------------------------

`timescale 1ns / 100ps
module WiPhase_top_level_test_pattern_st_gen (
    
      // Interface: clk
      input              clk,
      // Interface: reset
      input              reset_n,
      // Interface: csr
      input      [ 1: 0] csr_address,
      input      [31: 0] csr_writedata,
      output reg [31: 0] csr_readdata,
      input              csr_read,
      input              csr_write,
      output reg         csr_waitrequest,
      // Interface: command
      input              command_address,
      input      [31: 0] command_writedata,
      output reg [31: 0] command_readdata,
      input              command_read,
      input              command_write,
      output reg         command_waitrequest,
      // Interface: out
      output reg         out_valid,
      output reg [ 7: 0] out_data,
      input              out_ready,
      output reg         out_startofpacket,
      output reg         out_endofpacket
);

   // ---------------------------------------------------------------------
   //| Internal Parameters
   // ---------------------------------------------------------------------
   parameter ID = 100;
 
   // ---------------------------------------------------------------------
   //| Signal Declarations
   // ---------------------------------------------------------------------


   // Control & Status Registers
   reg          csr_enable;
   reg          csr_ignore_ready;
   reg  [ 8: 0] csr_throttle;
   reg          csr_busy;
   reg          csr_reset;
   reg          csr_read_is_ready;
   reg          internal_reset_n;
   wire [ 4: 0] csr_fifo_fill;

   // Command Registers
   wire         position_waitrequest;
   wire         packetcount_waitrequest;
   reg          command_channel;

   reg          fifo_in_writeenable;
   reg  [15: 0] fifo_in_segment_size;
   reg          fifo_in_channel;
   reg          fifo_in_sop;
   reg          fifo_in_eop;   
   reg  [15: 0] fifo_in_error;
   reg  [ 7: 0] fifo_in_data_error_mask;
   reg          fifo_in_suppress_sop;
   reg          fifo_in_suppress_eop;
   reg  [76: 0] fifo_in_data;
   wire         fifo_in_ready;
   wire [15: 0] fifo_in_position;
   reg  [15: 0] fifo_in_new_position;
   wire [15: 0] fifo_in_packetcount;
   reg  [15: 0] fifo_in_new_packetcount;
   reg          just_wrote_packet;
   
   // Read side of Command FIFO
   reg          fifo_out_get_data;
   reg          fifo_out_ready;
   wire         fifo_out_valid;
   wire [76: 0] fifo_out_data;
   reg  [15: 0] fifo_out_segment_size;
   reg          fifo_out_channel;
   reg          fifo_out_sop;
   reg          fifo_out_eop;
   reg  [15: 0] fifo_out_error;
   reg  [ 7: 0] fifo_out_data_error_mask;
   reg          fifo_out_suppress_sop;
   reg          fifo_out_suppress_eop;
   reg  [15: 0] fifo_out_position;
   reg  [15: 0] fifo_out_packetcount;

   // Current data registers
   reg          current_channel;
   reg  [15: 0] current_remaining;
   reg  [15: 0] current_position;
   reg          current_error;
   reg          current_eop;
   reg          current_sop;
   reg  [ 7: 0] current_data_error_mask;
   reg  [15: 0] current_packetcount;
   
   // Throttle
   reg          throttle_enable;
   reg  [28: 0] throttle_prbs;
   reg  [ 4: 0] ready_vector;
   reg          internal_ready;

   // Dummy assignment targets
   reg          out_empty;
   reg          out_channel;
   reg          out_error;
   reg          out_valid_pre;


   // ----------------------------------------------------------------------
   //| Control & Status Interface
   // ----------------------------------------------------------------------
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         csr_enable              <= 0;
         csr_ignore_ready        <= 0;
         csr_throttle            <= 0;
         csr_readdata            <= 0;
         csr_reset               <= 0;
         csr_read_is_ready       <= 0;
      end else begin
         
         //---------------------------------------------
         // Write
         if (csr_write) begin
            if (csr_address==1) begin
               csr_enable        <= csr_writedata[0];
               csr_ignore_ready  <= csr_writedata[1];
               csr_throttle      <= csr_writedata[16:8];
               csr_reset         <= csr_writedata[17];
            end
         end
         
         //---------------------------------------------
         // Read
         csr_read_is_ready         <= 0;         
         if (csr_read) begin
	         csr_read_is_ready <= 1;
         end
         if (csr_read_is_ready) begin
	         csr_read_is_ready <= 0;
         end
        csr_readdata <= 0;
        if (csr_address==0) begin
           csr_readdata[15:0]    <= ID;
           csr_readdata[23:16]    <= 0; // Number of Channels (8-bit only)
           csr_readdata[30:24]    <= 1; // Symbols per beat
           csr_readdata[31]    <= 1; // Supports Packets
        end else if (csr_address==1) begin
           csr_readdata[0]       <= csr_enable;
           csr_readdata[1]       <= csr_ignore_ready;
           csr_readdata[16:8]    <= csr_throttle;
           csr_readdata[17]      <= csr_reset;
        end else if (csr_address==2) begin
           csr_readdata[0]       <= csr_busy | fifo_in_writeenable;
           csr_readdata[15:7]    <= csr_fifo_fill;           
        end else if (csr_address==3) begin
           csr_readdata[15:0]    <= 0; // Number of Channels
        end
      end
   end

   always @* begin
      internal_reset_n <= reset_n && (~csr_reset);
      csr_waitrequest  <= csr_read && (~csr_read_is_ready);
   end

   
   // ----------------------------------------------------------------------
   //| Throttle control
   // ----------------------------------------------------------------------
   //| Uses a wide (29-bit) PRBS to generate a random-ish number, allowing 
   //| traffic generation when the lower bits are smaller than the throttle 
   //| number.
   // ----------------------------------------------------------------------
   always @(posedge clk or negedge internal_reset_n) begin
      if (!internal_reset_n) begin
         throttle_prbs = 1;
         throttle_enable <= 0;
         ready_vector[4:1] <= 0;
      end else begin
         throttle_enable <= 0;
         throttle_prbs = { throttle_prbs[27] ^ throttle_prbs[0], throttle_prbs[28:1] };
         if ((throttle_prbs[7:0] <= csr_throttle[7:0]) || csr_throttle[8])
           throttle_enable <= 1;
         ready_vector[4:1] <= ready_vector[3:0];
     end
   end

   // ----------------------------------------------------------------------
   //| Command Interface
   // ----------------------------------------------------------------------
   always @* begin
      ready_vector[0] = out_ready;
      internal_ready = ready_vector[ 0 ];
      internal_ready = out_ready || !out_valid;
      command_waitrequest <= command_write && (command_address==0) &&
                             ( !fifo_in_ready || just_wrote_packet || position_waitrequest || packetcount_waitrequest);
      command_channel <= command_writedata[1 +16:16];
   end

   always @(posedge clk or negedge internal_reset_n) begin
      if (!internal_reset_n) begin
         fifo_in_error            <= 0;
         fifo_in_data_error_mask  <= 0;
         fifo_in_suppress_sop     <= 0;
         fifo_in_suppress_eop     <= 0;         
         fifo_in_sop              <= 0;
         fifo_in_eop              <= 0;
         command_readdata         <= 0;
         just_wrote_packet <= 0;
      end else begin
         just_wrote_packet <= 0;
         //---------------------------------------------
         // Write
         if (command_write) begin
            if (command_address==0)begin
               if  (~command_waitrequest) begin
                  just_wrote_packet <= 1;
               end
            end else begin
               fifo_in_error            <= command_writedata[15:0];
               fifo_in_data_error_mask  <= command_writedata[23:16];
               fifo_in_suppress_sop     <= command_writedata[24];
               fifo_in_suppress_eop     <= command_writedata[25];
            end
         end
         
         //---------------------------------------------
         // Read
         command_readdata <= 0;
         if (command_address==0) begin
            command_readdata[15:0]  <= fifo_in_segment_size;
            command_readdata[29:16] <= fifo_in_channel;
            command_readdata[30]    <= fifo_in_sop;
            command_readdata[31]    <= fifo_in_eop;
         end else begin
            command_readdata[15:0]  <= fifo_in_error;
            command_readdata[23:16] <= fifo_in_data_error_mask;
            command_readdata[24]    <= fifo_in_suppress_sop;
            command_readdata[25]    <= fifo_in_suppress_eop;
         end // else: !if(command_address==0)
         
         //---------------------------------------------
         // FIFO Inputs
         fifo_in_segment_size     <= command_writedata[15:0];
         fifo_in_channel          <= command_writedata[29:16];
         fifo_in_sop              <= command_writedata[30];
         fifo_in_eop              <= command_writedata[31];
         fifo_in_writeenable      <= (command_address==0) && command_write && ~command_waitrequest;
         if (command_writedata[15:0] == 0)
           fifo_in_writeenable      <= 0; // discard 0-size segments
      end
   end // always @ (posedge clk or negedge internal_reset_n)

   

   // ----------------------------------------------------------------------
   //| Manage time-sliced Position within packet
   // ----------------------------------------------------------------------
   always @* begin
      fifo_in_new_position = (fifo_in_position + fifo_in_segment_size);
      if (fifo_in_eop) 
        fifo_in_new_position = 0;
   end

   WiPhase_top_level_test_pattern_st_gen_position_ram position_ram
     ( 
       .clk            (clk),
       .reset_n        (internal_reset_n),
       .rd0_address    (command_channel),      
       .rd0_readdata   (fifo_in_position),
       .wr_address     (fifo_in_channel),
       .wr_writedata   (fifo_in_new_position),
       .wr_write       (fifo_in_writeenable),
       .wr_waitrequest (position_waitrequest)
       );
   
   // ----------------------------------------------------------------------
   //| Manage time-sliced Packet Count
   // ----------------------------------------------------------------------
   always @* begin
      fifo_in_new_packetcount = fifo_in_packetcount;
      if (fifo_in_eop) 
        fifo_in_new_packetcount = fifo_in_new_packetcount + 1;
   end

   WiPhase_top_level_test_pattern_st_gen_packetcount_ram packetcount_ram
     ( 
       .clk            (clk),
       .reset_n        (internal_reset_n),
       .rd0_address    (command_channel),      
       .rd0_readdata   (fifo_in_packetcount),
       .wr_address     (fifo_in_channel),
       .wr_writedata   (fifo_in_new_packetcount),
       .wr_write       (fifo_in_writeenable),
       .wr_waitrequest (packetcount_waitrequest)
       );

   // ----------------------------------------------------------------------
   //| Command FIFO
   // ----------------------------------------------------------------------

   always @* begin
      fifo_out_ready = fifo_out_get_data && throttle_enable && csr_enable && internal_ready ;
      fifo_in_data = {fifo_in_segment_size, 
                      fifo_in_channel, 
                      fifo_in_sop, 
                      fifo_in_eop, 
                      fifo_in_error, 
                      fifo_in_data_error_mask, 
                      fifo_in_suppress_sop, 
                      fifo_in_suppress_eop,
                      fifo_in_position,
                      fifo_in_packetcount};
      
      {fifo_out_segment_size, 
       fifo_out_channel, 
       fifo_out_sop, 
       fifo_out_eop,
       fifo_out_error,
       fifo_out_data_error_mask, 
       fifo_out_suppress_sop, 
       fifo_out_suppress_eop,                         
       fifo_out_position,
       fifo_out_packetcount   }     = fifo_out_data;
   end  
   
   WiPhase_top_level_test_pattern_st_gen_command_fifo command_fifo 
     ( 
       .clk        (clk),
       .reset_n    (internal_reset_n),
       .in_ready   (fifo_in_ready),
       .in_valid   (fifo_in_writeenable),      
       .in_data    (fifo_in_data),
       .out_ready  (fifo_out_ready),
       .out_valid  (fifo_out_valid),      
       .out_data   (fifo_out_data),
       .fill_level (csr_fifo_fill)       
       );
   

   // ----------------------------------------------------------------------
   //| Data Generation
   // ----------------------------------------------------------------------
   always @(posedge clk or negedge internal_reset_n) begin
      if (!internal_reset_n) begin
         csr_busy          <= 0;
         fifo_out_get_data <= 1;
         current_channel   <= 0;
         current_remaining <= 0;
         current_position  <= 0;
         current_eop       <= 0;
         current_sop       <= 0;
         current_data_error_mask <= 0;
         current_packetcount <= 0;
         out_valid_pre    <= 0;
         out_data     <= 0;
         out_channel  <= 0;
         out_endofpacket <= 0;
         out_startofpacket <= 0;
         out_error <= 0;
         out_empty       <= 0;
         
      end else begin
         fifo_out_get_data <= 0;

         if (internal_ready) begin
            out_valid_pre <= 0;
            out_endofpacket <= 0;
            if (throttle_enable) begin
               if ( current_remaining > 0 ) begin
                  current_remaining      <= current_remaining - 1;
                  current_position       <= (current_position   + 1);
                  
                  out_valid_pre         <= 1;
                  
                  if (current_remaining <= 1) begin
                     current_remaining    <= 0;
                     out_endofpacket <= current_eop;
                     current_eop          <= 0;
                     if (~fifo_out_valid)
                       csr_busy <= 0;
                  end
               end // if ( current_remaining > 0 ) 
               
               // data outputs
               out_data[ 7: 0]   <= (current_position + 0) ^ current_data_error_mask;
               out_channel       <= current_channel;
               out_startofpacket <= current_sop;
               out_error <= current_error;
               current_sop            <= 0;
            
               if (current_remaining <= (2 * 1)) begin
                  fifo_out_get_data <= 1;
               end

            end
         end 

         // csr_busy
         if (fifo_in_writeenable) begin
            csr_busy <= 1;
         end

         if (current_remaining == 0) begin
            fifo_out_get_data <= 1;
         end

         if (fifo_out_ready && fifo_out_valid) begin
            fifo_out_get_data <= 0;
         end

         // load registers for next segment
         if (fifo_out_ready && fifo_out_valid) begin
            current_channel     <= fifo_out_channel;
            current_remaining   <= fifo_out_segment_size;
            current_position    <= fifo_out_position;
            current_error       <= fifo_out_error;
            current_eop         <= fifo_out_eop & !fifo_out_suppress_eop;
            current_sop         <= fifo_out_sop & !fifo_out_suppress_sop;
            current_data_error_mask <= fifo_out_data_error_mask;
            current_packetcount <= fifo_out_packetcount;

         end
      end
   end

   always @* begin
         out_valid = out_valid_pre;
   end

endmodule

