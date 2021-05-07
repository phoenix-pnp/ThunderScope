`timescale 1ns / 1ps

module adc_to_bram(
    output[31:0] BRAM_PORTA_addr,
    output BRAM_PORTA_clk,
    output[63:0] BRAM_PORTA_din,
    output[7:0] BRAM_PORTA_we,
    input[63:0] adc_data,
    input adc_divclk,
    input serdes_ready,
    input serdes_rst,
    output bram_addr_rst
    );
  
  assign bram_addr_rst = serdes_rst || !serdes_ready;
  
  reg [17:0] address;
  reg bram_write;
  always @(posedge adc_divclk) begin
    if (bram_addr_rst) begin
        address <= 17'h3FFF8;
        bram_write <= 0;
    end
    else begin
        address <= address + 4'h8;
        bram_write <= 1;
    end
  end

  assign BRAM_PORTA_clk = adc_divclk;
  assign BRAM_PORTA_din = adc_data;
  assign BRAM_PORTA_we = {8{bram_write}};
  assign BRAM_PORTA_addr = {14'h0000,address};

/*  
  reg cmd_tvalid;
  reg [27:0] address;
  always @(posedge axi_aclk) begin
    cmd_tvalid <= 1;
    if (!S01_ARESETN) begin
        address <= 0;
        cmd_tvalid <= 0;
    end
    else if (axis_cmd_tready) begin
        address <= address + 16'h1000;
    end
  end

  assign axis_cmd_tvalid = cmd_tvalid;
  //Reserved[3:0], Tag[3:0], SADDR[31:0], DRE, EOF, DSA[3:0], Type, BTT[22:0]
  assign axis_cmd_tdata = {4'h0,4'h0,4'h0,address,1'b0,1'b1,6'h00,1'b1,23'h001000};
  
  wire new_sample;
  assign new_sample = axis_data_tready & ~fifo_empty;
  assign fifo_rd_en = new_sample;
  assign axis_data_tvalid = new_sample & fifo_valid;
  
  reg [7:0] data_counter;
  reg data_tlast;
  always @(posedge axi_aclk) begin
    if (!S01_ARESETN) begin
        data_counter <= 0;
    end
    else if (new_sample) begin
        data_counter <= data_counter + 1;
        data_tlast <= 0;
        if (data_counter==16'd254) begin
            data_tlast <= 1;
        end
    end
  end
  assign axis_data_tlast = data_tlast; 
  
  always @(*)
    begin
        case(gpio_io_o_0[5:4]) // pga_cs demux
            2'b00: axis_data_tdata <= {fifo_data[63:0],fifo_data[127:64]};
            2'b01: axis_data_tdata <= {fifo_data[63:56],fifo_data[31:24],fifo_data[55:48],fifo_data[23:16],fifo_data[47:40],fifo_data[15:8],fifo_data[39:32],fifo_data[7:0],fifo_data[127:120],fifo_data[95:88],fifo_data[119:112],fifo_data[87:80],fifo_data[111:104],fifo_data[79:72],fifo_data[103:96],fifo_data[71:64]};
            2'b10: axis_data_tdata <= {fifo_data[63:56],fifo_data[47:40],fifo_data[31:24],fifo_data[15:8],fifo_data[55:48],fifo_data[39:32],fifo_data[23:16],fifo_data[7:0],fifo_data[127:120],fifo_data[111:104],fifo_data[95:88],fifo_data[79:72],fifo_data[119:112],fifo_data[103:96],fifo_data[87:80],fifo_data[71:64]};		
            2'b11: axis_data_tdata <= {fifo_data[63:56],fifo_data[47:40],fifo_data[31:24],fifo_data[15:8],fifo_data[55:48],fifo_data[39:32],fifo_data[23:16],fifo_data[7:0],fifo_data[127:120],fifo_data[111:104],fifo_data[95:88],fifo_data[79:72],fifo_data[119:112],fifo_data[103:96],fifo_data[87:80],fifo_data[71:64]};
    endcase
  end

  //Transfer Counter
  reg [15:0] transfer_counter;
  always @(posedge axi_aclk) begin
    if (!S01_ARESETN) begin
        transfer_counter <= 0;
    end
    else if (s2mm_wr_xfer_cmplt) begin
        transfer_counter <= transfer_counter + 1;
    end
  end
  
  */

endmodule
