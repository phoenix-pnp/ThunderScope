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
  always @(*)
    begin
        case(gpio_io_o_0[5:4]) // pga_cs demux
            2'b00: axis_data_tdata <= {fifo_data[63:0],fifo_data[127:64]};
            2'b01: axis_data_tdata <= {fifo_data[63:56],fifo_data[31:24],fifo_data[55:48],fifo_data[23:16],fifo_data[47:40],fifo_data[15:8],fifo_data[39:32],fifo_data[7:0],fifo_data[127:120],fifo_data[95:88],fifo_data[119:112],fifo_data[87:80],fifo_data[111:104],fifo_data[79:72],fifo_data[103:96],fifo_data[71:64]};
            2'b10: axis_data_tdata <= {fifo_data[63:56],fifo_data[47:40],fifo_data[31:24],fifo_data[15:8],fifo_data[55:48],fifo_data[39:32],fifo_data[23:16],fifo_data[7:0],fifo_data[127:120],fifo_data[111:104],fifo_data[95:88],fifo_data[79:72],fifo_data[119:112],fifo_data[103:96],fifo_data[87:80],fifo_data[71:64]};		
            2'b11: axis_data_tdata <= {fifo_data[63:56],fifo_data[47:40],fifo_data[31:24],fifo_data[15:8],fifo_data[55:48],fifo_data[39:32],fifo_data[23:16],fifo_data[7:0],fifo_data[127:120],fifo_data[111:104],fifo_data[95:88],fifo_data[79:72],fifo_data[119:112],fifo_data[103:96],fifo_data[87:80],fifo_data[71:64]};
    endcase
  end

  */

endmodule
