`timescale 1 ps / 1 ps

module dso_top
   (input [0:0] pcie_clk_n,
    input [0:0] pcie_clk_p,
    input [3:0] pcie_mgt_rxn,
    input [3:0] pcie_mgt_rxp,
    output [3:0] pcie_mgt_txn,
    output [3:0] pcie_mgt_txp,
    input pcie_perstn,
    output [3:0] led,
    output [3:0] atten,
    output [3:0] dc_cpl,
    output i2c_sda,					
    output i2c_scl,				
    output pga_sdio,				
    output pga_sclk,				
    output [3:0] pga_cs,
    output adc_sdata,
    output adc_sclk,
    output adc_cs,
    output adc_pd,
    output adc_rstn,
    output acq_en,
    output osc_oe,
    output fe_en,
    input  adc_pg,
    input  fe_pg,
    output probe_comp,
    input adc_lclk_p,
	input adc_lclk_n,
	input adc_fclk_p,
	input adc_fclk_n,
	input[7:0] adc_data_p,
	input[7:0] adc_data_n
    );

  wire [31:0]AXI_STR_TXD_0_tdata;
  wire AXI_STR_TXD_0_tlast;
  wire AXI_STR_TXD_0_tready;
  wire AXI_STR_TXD_0_tvalid;
  
  wire [31:0]BRAM_PORTA_addr;
  wire BRAM_PORTA_clk;
  wire [63:0]BRAM_PORTA_din;
  wire [7:0]BRAM_PORTA_we;
  wire bram_addr_rst;
  
  wire S01_ARESETN;
  wire serdes_rst;
  
  wire axi_aclk;
  wire axi_aresetn;
 
  wire [31:0]gpio2_io_i;
  wire [31:0]gpio2_io_i_0;
  wire [31:0]gpio_io_o_0;
  wire [31:0]gpio_io_o_1;
  
  wire fe_sda_buf;
  wire fe_scl_buf;  
  
  wire divclk;
  wire[63:0] data_deser;
  wire[63:0] adc_data;	
  wire serdes_ready;
  
  assign adc_pd = 1'b0;
  assign adc_rstn = 1'b1;
  
  assign atten = gpio_io_o_1[3:0];
  assign dc_cpl = gpio_io_o_1[7:4];
   
  assign led[0] = ~acq_en; //gpio_io_o_1[11:8];
  assign led[1] = adc_pg;
  assign led[2] = ~fe_en;
  assign led[3] = fe_pg;
  
  assign acq_en = gpio_io_o_1[8];
  assign osc_oe = gpio_io_o_1[9];
  assign fe_en = gpio_io_o_1[10];  
  
  assign i2c_sda = (i2c_sda_buf) ? (1'bz) : (1'b0);
  assign i2c_scl = (i2c_scl_buf) ? (1'bz) : (1'b0);
  
  //-----------------------------------------------
  //ADC clock domain reset generation
  //-----------------------------------------------
  
  assign S01_ARESETN = (axi_aresetn & gpio_io_o_0[0]);
  
  reg [2:0] serdes_rst_cdc = 3'b111;
  always @(posedge divclk)
    serdes_rst_cdc <= { serdes_rst_cdc[1:0], !S01_ARESETN };
  assign serdes_rst = serdes_rst_cdc[2];
  
  //-----------------------------------------------
  //Address crossing from ADC to AXI clock domains
  //-----------------------------------------------
  
  reg [2:0] bram_addr_rst_cdc = 3'b000;
  always @(posedge axi_aclk)
    bram_addr_rst_cdc <= { bram_addr_rst_cdc[1:0], bram_addr_rst };
  assign bram_addr_rst_axi = bram_addr_rst_cdc[2];
  
  reg [23:0] bram_address;
  reg write;
  always @(posedge axi_aclk) begin
    if (bram_addr_rst_axi) begin
        bram_address <= 0;
    end
    else begin
        bram_address <= bram_address + 4'h8;
    end
  end
  
  assign gpio2_io_i = bram_address;

  //-----------------------------------------------
  //Probe compensation signal
  //-----------------------------------------------
  
  reg[15:0] probe_div_counter;
  reg probe_div_clk = 1'b0;
  always @ (posedge axi_aclk) begin
      if (probe_div_counter==16'h1869) begin //devide 125MHz clk by 6250 per each period of 10kHz clock
          probe_div_counter <= 16'h0000;
          probe_div_clk <= ~probe_div_clk;
      end
      else 
          probe_div_counter <= probe_div_counter + 1'b1;
  end
  assign probe_comp = probe_div_clk;
  
  //-----------------------------------------------
  //Assign ADC Data (TODO: Channel Mux here)
  //-----------------------------------------------
  reg[63:0] data_deser_twos_comp;
  always @(posedge divclk) begin 
    data_deser_twos_comp[63:56] <= {data_deser[63],~data_deser[62:56]};
    data_deser_twos_comp[55:48] <= {data_deser[55],~data_deser[54:48]};
    data_deser_twos_comp[47:40] <= {data_deser[47],~data_deser[46:40]};
    data_deser_twos_comp[39:32] <= {data_deser[39],~data_deser[38:32]};
    data_deser_twos_comp[31:24] <= {data_deser[31],~data_deser[30:24]};
    data_deser_twos_comp[23:16] <= {~data_deser[23],data_deser[22:16]};
    data_deser_twos_comp[15:8] <= {data_deser[15],~data_deser[14:8]};
    data_deser_twos_comp[7:0] <= {data_deser[7],~data_deser[6:0]};
  end
  
  assign adc_data = data_deser_twos_comp;
  //assign adc_data = {8'h77,8'h66,8'h55,8'h44,8'h33,8'h22,8'h11,8'h00};

/*  reg[31:0] adc_ramp_counter;
  always @(posedge divclk) begin
    if (bram_addr_rst) 
        adc_ramp_counter <= 0;
    else
        adc_ramp_counter <= adc_ramp_counter + 1;
  end
  assign adc_data = {2{adc_ramp_counter}};*/
  

  serdes serdes (
	.rst            (serdes_rst),
	.adc_lclk_p		(adc_lclk_p),
	.adc_lclk_n		(adc_lclk_n),
	.adc_fclk_p		(adc_fclk_p),
	.adc_fclk_n		(adc_fclk_n),
	.adc_data_p		(adc_data_p),
	.adc_data_n		(adc_data_n),
	.axi_aclk       (axi_aclk),
	.divclk			(divclk),
	.data_deser		(data_deser),
	.ready          (serdes_ready)
	);

  adc_to_bram adc_to_bram (
    .BRAM_PORTA_addr(BRAM_PORTA_addr),
    .BRAM_PORTA_clk(BRAM_PORTA_clk),
    .BRAM_PORTA_din(BRAM_PORTA_din),
    .BRAM_PORTA_we(BRAM_PORTA_we),
    .adc_data(adc_data),
    .adc_divclk(divclk),
    .serdes_ready (serdes_ready),
    .serdes_rst(serdes_rst),
    .bram_addr_rst(bram_addr_rst)
  );
  
  serial_controller  serial_controller(
    .clk(axi_aclk),
    .rst(axi_aresetn),
    .AXI_STR_TXD_0_tdata(AXI_STR_TXD_0_tdata),
    .AXI_STR_TXD_0_tready(AXI_STR_TXD_0_tready),
    .AXI_STR_TXD_0_tvalid(AXI_STR_TXD_0_tvalid),
    .i2c_sda(i2c_sda_buf),
    .i2c_scl(i2c_scl_buf),
    .pga_sdio(pga_sdio),
    .pga_sclk(pga_sclk),
    .pga_cs(pga_cs),
    .adc_sdata(adc_sdata),
    .adc_sclk(adc_sclk),
    .adc_cs(adc_cs)
    );

  design_1 design_1_i
       (.AXI_STR_TXD_0_tdata(AXI_STR_TXD_0_tdata),
        .AXI_STR_TXD_0_tlast(AXI_STR_TXD_0_tlast),
        .AXI_STR_TXD_0_tready(AXI_STR_TXD_0_tready),
        .AXI_STR_TXD_0_tvalid(AXI_STR_TXD_0_tvalid),
        .BRAM_PORTA_addr(BRAM_PORTA_addr),
        .BRAM_PORTA_clk(BRAM_PORTA_clk),
        .BRAM_PORTA_din(BRAM_PORTA_din),
        .BRAM_PORTA_dout(),
        .BRAM_PORTA_we(BRAM_PORTA_we),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .gpio2_io_i(gpio2_io_i),
        .gpio2_io_i_0(gpio2_io_i_0),
        .gpio_io_o_0(gpio_io_o_0),
        .gpio_io_o_1(gpio_io_o_1),
        .pcie_clk_n(pcie_clk_n),
        .pcie_clk_p(pcie_clk_p),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .pcie_perstn(pcie_perstn));
        
endmodule