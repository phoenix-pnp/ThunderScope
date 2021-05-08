//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sat May  8 19:18:19 2021
//Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXI_LITE_IO_imp_1879I2S
   (AXI_STR_TXD_0_tdata,
    AXI_STR_TXD_0_tlast,
    AXI_STR_TXD_0_tready,
    AXI_STR_TXD_0_tvalid,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    axi_aclk,
    axi_resetn,
    gpio2_io_i,
    gpio2_io_i_0,
    gpio_io_o_0,
    gpio_io_o_1);
  output [31:0]AXI_STR_TXD_0_tdata;
  output AXI_STR_TXD_0_tlast;
  input AXI_STR_TXD_0_tready;
  output AXI_STR_TXD_0_tvalid;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input axi_aclk;
  input axi_resetn;
  input [31:0]gpio2_io_i;
  input [31:0]gpio2_io_i_0;
  output [31:0]gpio_io_o_0;
  output [31:0]gpio_io_o_1;

  wire [31:0]Conn1_TDATA;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [0:0]S00_AXI_1_ARREADY;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [0:0]S00_AXI_1_AWREADY;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire [0:0]S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [0:0]S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire [0:0]S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire axi_aclk_1;
  wire [31:0]axi_crossbar_0_M00_AXI_ARADDR;
  wire axi_crossbar_0_M00_AXI_ARREADY;
  wire [0:0]axi_crossbar_0_M00_AXI_ARVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_AWADDR;
  wire axi_crossbar_0_M00_AXI_AWREADY;
  wire [0:0]axi_crossbar_0_M00_AXI_AWVALID;
  wire [0:0]axi_crossbar_0_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_BRESP;
  wire axi_crossbar_0_M00_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_RDATA;
  wire [0:0]axi_crossbar_0_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_RRESP;
  wire axi_crossbar_0_M00_AXI_RVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_WDATA;
  wire axi_crossbar_0_M00_AXI_WREADY;
  wire [3:0]axi_crossbar_0_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_0_M00_AXI_WVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_ARADDR;
  wire axi_crossbar_0_M01_AXI_ARREADY;
  wire [1:1]axi_crossbar_0_M01_AXI_ARVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_AWADDR;
  wire axi_crossbar_0_M01_AXI_AWREADY;
  wire [1:1]axi_crossbar_0_M01_AXI_AWVALID;
  wire [1:1]axi_crossbar_0_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_BRESP;
  wire axi_crossbar_0_M01_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M01_AXI_RDATA;
  wire [1:1]axi_crossbar_0_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_RRESP;
  wire axi_crossbar_0_M01_AXI_RVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_WDATA;
  wire axi_crossbar_0_M01_AXI_WREADY;
  wire [7:4]axi_crossbar_0_M01_AXI_WSTRB;
  wire [1:1]axi_crossbar_0_M01_AXI_WVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_ARADDR;
  wire axi_crossbar_0_M02_AXI_ARREADY;
  wire [2:2]axi_crossbar_0_M02_AXI_ARVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_AWADDR;
  wire axi_crossbar_0_M02_AXI_AWREADY;
  wire [2:2]axi_crossbar_0_M02_AXI_AWVALID;
  wire [2:2]axi_crossbar_0_M02_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M02_AXI_BRESP;
  wire axi_crossbar_0_M02_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M02_AXI_RDATA;
  wire [2:2]axi_crossbar_0_M02_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M02_AXI_RRESP;
  wire axi_crossbar_0_M02_AXI_RVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_WDATA;
  wire axi_crossbar_0_M02_AXI_WREADY;
  wire [11:8]axi_crossbar_0_M02_AXI_WSTRB;
  wire [2:2]axi_crossbar_0_M02_AXI_WVALID;
  wire [31:0]axi_gpio_0_gpio_io_o;
  wire [31:0]axi_gpio_1_gpio_io_o;
  wire axi_resetn_1;
  wire [31:0]gpio2_io_i_0_1;
  wire [31:0]gpio2_io_i_1;

  assign AXI_STR_TXD_0_tdata[31:0] = Conn1_TDATA;
  assign AXI_STR_TXD_0_tlast = Conn1_TLAST;
  assign AXI_STR_TXD_0_tvalid = Conn1_TVALID;
  assign Conn1_TREADY = AXI_STR_TXD_0_tready;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[31:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[31:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign axi_aclk_1 = axi_aclk;
  assign axi_resetn_1 = axi_resetn;
  assign gpio2_io_i_0_1 = gpio2_io_i_0[31:0];
  assign gpio2_io_i_1 = gpio2_io_i[31:0];
  assign gpio_io_o_0[31:0] = axi_gpio_0_gpio_io_o;
  assign gpio_io_o_1[31:0] = axi_gpio_1_gpio_io_o;
  design_1_axi_crossbar_0_0 axi_crossbar_0
       (.aclk(axi_aclk_1),
        .aresetn(axi_resetn_1),
        .m_axi_araddr({axi_crossbar_0_M02_AXI_ARADDR,axi_crossbar_0_M01_AXI_ARADDR,axi_crossbar_0_M00_AXI_ARADDR}),
        .m_axi_arready({axi_crossbar_0_M02_AXI_ARREADY,axi_crossbar_0_M01_AXI_ARREADY,axi_crossbar_0_M00_AXI_ARREADY}),
        .m_axi_arvalid({axi_crossbar_0_M02_AXI_ARVALID,axi_crossbar_0_M01_AXI_ARVALID,axi_crossbar_0_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_0_M02_AXI_AWADDR,axi_crossbar_0_M01_AXI_AWADDR,axi_crossbar_0_M00_AXI_AWADDR}),
        .m_axi_awready({axi_crossbar_0_M02_AXI_AWREADY,axi_crossbar_0_M01_AXI_AWREADY,axi_crossbar_0_M00_AXI_AWREADY}),
        .m_axi_awvalid({axi_crossbar_0_M02_AXI_AWVALID,axi_crossbar_0_M01_AXI_AWVALID,axi_crossbar_0_M00_AXI_AWVALID}),
        .m_axi_bready({axi_crossbar_0_M02_AXI_BREADY,axi_crossbar_0_M01_AXI_BREADY,axi_crossbar_0_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_0_M02_AXI_BRESP,axi_crossbar_0_M01_AXI_BRESP,axi_crossbar_0_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_0_M02_AXI_BVALID,axi_crossbar_0_M01_AXI_BVALID,axi_crossbar_0_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_0_M02_AXI_RDATA,axi_crossbar_0_M01_AXI_RDATA,axi_crossbar_0_M00_AXI_RDATA}),
        .m_axi_rready({axi_crossbar_0_M02_AXI_RREADY,axi_crossbar_0_M01_AXI_RREADY,axi_crossbar_0_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_0_M02_AXI_RRESP,axi_crossbar_0_M01_AXI_RRESP,axi_crossbar_0_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_0_M02_AXI_RVALID,axi_crossbar_0_M01_AXI_RVALID,axi_crossbar_0_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_0_M02_AXI_WDATA,axi_crossbar_0_M01_AXI_WDATA,axi_crossbar_0_M00_AXI_WDATA}),
        .m_axi_wready({axi_crossbar_0_M02_AXI_WREADY,axi_crossbar_0_M01_AXI_WREADY,axi_crossbar_0_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_0_M02_AXI_WSTRB,axi_crossbar_0_M01_AXI_WSTRB,axi_crossbar_0_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_0_M02_AXI_WVALID,axi_crossbar_0_M01_AXI_WVALID,axi_crossbar_0_M00_AXI_WVALID}),
        .s_axi_araddr(S00_AXI_1_ARADDR),
        .s_axi_arprot(S00_AXI_1_ARPROT),
        .s_axi_arready(S00_AXI_1_ARREADY),
        .s_axi_arvalid(S00_AXI_1_ARVALID),
        .s_axi_awaddr(S00_AXI_1_AWADDR),
        .s_axi_awprot(S00_AXI_1_AWPROT),
        .s_axi_awready(S00_AXI_1_AWREADY),
        .s_axi_awvalid(S00_AXI_1_AWVALID),
        .s_axi_bready(S00_AXI_1_BREADY),
        .s_axi_bresp(S00_AXI_1_BRESP),
        .s_axi_bvalid(S00_AXI_1_BVALID),
        .s_axi_rdata(S00_AXI_1_RDATA),
        .s_axi_rready(S00_AXI_1_RREADY),
        .s_axi_rresp(S00_AXI_1_RRESP),
        .s_axi_rvalid(S00_AXI_1_RVALID),
        .s_axi_wdata(S00_AXI_1_WDATA),
        .s_axi_wready(S00_AXI_1_WREADY),
        .s_axi_wstrb(S00_AXI_1_WSTRB),
        .s_axi_wvalid(S00_AXI_1_WVALID));
  design_1_axi_fifo_mm_s_0_0 axi_fifo_mm_s_0
       (.axi_str_txd_tdata(Conn1_TDATA),
        .axi_str_txd_tlast(Conn1_TLAST),
        .axi_str_txd_tready(Conn1_TREADY),
        .axi_str_txd_tvalid(Conn1_TVALID),
        .s_axi_aclk(axi_aclk_1),
        .s_axi_araddr(axi_crossbar_0_M00_AXI_ARADDR),
        .s_axi_aresetn(axi_resetn_1),
        .s_axi_arready(axi_crossbar_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M00_AXI_AWADDR),
        .s_axi_awready(axi_crossbar_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M00_AXI_RDATA),
        .s_axi_rready(axi_crossbar_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M00_AXI_WDATA),
        .s_axi_wready(axi_crossbar_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M00_AXI_WVALID));
  design_1_axi_gpio_0_1 axi_gpio_0
       (.gpio2_io_i(gpio2_io_i_1),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(axi_aclk_1),
        .s_axi_araddr(axi_crossbar_0_M01_AXI_ARADDR[40:32]),
        .s_axi_aresetn(axi_resetn_1),
        .s_axi_arready(axi_crossbar_0_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M01_AXI_AWADDR[40:32]),
        .s_axi_awready(axi_crossbar_0_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_0_M01_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M01_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M01_AXI_RDATA),
        .s_axi_rready(axi_crossbar_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M01_AXI_WDATA),
        .s_axi_wready(axi_crossbar_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M01_AXI_WVALID));
  design_1_axi_gpio_1_0 axi_gpio_1
       (.gpio2_io_i(gpio2_io_i_0_1),
        .gpio_io_o(axi_gpio_1_gpio_io_o),
        .s_axi_aclk(axi_aclk_1),
        .s_axi_araddr(axi_crossbar_0_M02_AXI_ARADDR[72:64]),
        .s_axi_aresetn(axi_resetn_1),
        .s_axi_arready(axi_crossbar_0_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M02_AXI_AWADDR[72:64]),
        .s_axi_awready(axi_crossbar_0_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_0_M02_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_0_M02_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M02_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M02_AXI_RDATA),
        .s_axi_rready(axi_crossbar_0_M02_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M02_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M02_AXI_WDATA),
        .s_axi_wready(axi_crossbar_0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M02_AXI_WVALID));
endmodule

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=10,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (AXI_STR_TXD_0_tdata,
    AXI_STR_TXD_0_tlast,
    AXI_STR_TXD_0_tready,
    AXI_STR_TXD_0_tvalid,
    BRAM_PORTA_addr,
    BRAM_PORTA_clk,
    BRAM_PORTA_din,
    BRAM_PORTA_dout,
    BRAM_PORTA_we,
    M_AXI_0_araddr,
    M_AXI_0_arburst,
    M_AXI_0_arcache,
    M_AXI_0_arid,
    M_AXI_0_arlen,
    M_AXI_0_arlock,
    M_AXI_0_arprot,
    M_AXI_0_arready,
    M_AXI_0_arsize,
    M_AXI_0_arvalid,
    M_AXI_0_awaddr,
    M_AXI_0_awburst,
    M_AXI_0_awcache,
    M_AXI_0_awid,
    M_AXI_0_awlen,
    M_AXI_0_awlock,
    M_AXI_0_awprot,
    M_AXI_0_awready,
    M_AXI_0_awsize,
    M_AXI_0_awvalid,
    M_AXI_0_bid,
    M_AXI_0_bready,
    M_AXI_0_bresp,
    M_AXI_0_bvalid,
    M_AXI_0_rdata,
    M_AXI_0_rid,
    M_AXI_0_rlast,
    M_AXI_0_rready,
    M_AXI_0_rresp,
    M_AXI_0_rvalid,
    M_AXI_0_wdata,
    M_AXI_0_wlast,
    M_AXI_0_wready,
    M_AXI_0_wstrb,
    M_AXI_0_wvalid,
    S_AXI_0_araddr,
    S_AXI_0_arburst,
    S_AXI_0_arcache,
    S_AXI_0_arid,
    S_AXI_0_arlen,
    S_AXI_0_arlock,
    S_AXI_0_arprot,
    S_AXI_0_arready,
    S_AXI_0_arsize,
    S_AXI_0_arvalid,
    S_AXI_0_awaddr,
    S_AXI_0_awburst,
    S_AXI_0_awcache,
    S_AXI_0_awid,
    S_AXI_0_awlen,
    S_AXI_0_awlock,
    S_AXI_0_awprot,
    S_AXI_0_awready,
    S_AXI_0_awsize,
    S_AXI_0_awvalid,
    S_AXI_0_bid,
    S_AXI_0_bready,
    S_AXI_0_bresp,
    S_AXI_0_bvalid,
    S_AXI_0_rdata,
    S_AXI_0_rid,
    S_AXI_0_rlast,
    S_AXI_0_rready,
    S_AXI_0_rresp,
    S_AXI_0_rvalid,
    S_AXI_0_wdata,
    S_AXI_0_wlast,
    S_AXI_0_wready,
    S_AXI_0_wstrb,
    S_AXI_0_wvalid,
    axi_aclk,
    axi_aresetn,
    gpio2_io_i,
    gpio2_io_i_0,
    gpio_io_o_0,
    gpio_io_o_1,
    pcie_clk_n,
    pcie_clk_p,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_perstn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_STR_TXD_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_STR_TXD_0, FREQ_HZ 125000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]AXI_STR_TXD_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_STR_TXD_0 TLAST" *) output AXI_STR_TXD_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_STR_TXD_0 TREADY" *) input AXI_STR_TXD_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_STR_TXD_0 TVALID" *) output AXI_STR_TXD_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1, READ_WRITE_MODE READ_WRITE" *) input [31:0]BRAM_PORTA_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input BRAM_PORTA_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]BRAM_PORTA_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]BRAM_PORTA_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [7:0]BRAM_PORTA_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, DATA_WIDTH 128, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARBURST" *) output [1:0]M_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARCACHE" *) output [3:0]M_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARID" *) output [3:0]M_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARLEN" *) output [7:0]M_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARLOCK" *) output M_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARPROT" *) output [2:0]M_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARREADY" *) input M_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARSIZE" *) output [2:0]M_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARVALID" *) output M_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWADDR" *) output [63:0]M_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWBURST" *) output [1:0]M_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWCACHE" *) output [3:0]M_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWID" *) output [3:0]M_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWLEN" *) output [7:0]M_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWLOCK" *) output M_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWPROT" *) output [2:0]M_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWREADY" *) input M_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWSIZE" *) output [2:0]M_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWVALID" *) output M_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BID" *) input [3:0]M_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BREADY" *) output M_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BRESP" *) input [1:0]M_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BVALID" *) input M_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RDATA" *) input [127:0]M_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RID" *) input [3:0]M_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RLAST" *) input M_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RREADY" *) output M_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RRESP" *) input [1:0]M_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RVALID" *) input M_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WDATA" *) output [127:0]M_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WLAST" *) output M_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WREADY" *) input M_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WSTRB" *) output [15:0]M_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WVALID" *) output M_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_0, ADDR_WIDTH 18, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 128, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [17:0]S_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARBURST" *) input [1:0]S_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARCACHE" *) input [3:0]S_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARID" *) input [3:0]S_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARLEN" *) input [7:0]S_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARLOCK" *) input S_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARPROT" *) input [2:0]S_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARREADY" *) output S_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARSIZE" *) input [2:0]S_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARVALID" *) input S_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWADDR" *) input [17:0]S_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWBURST" *) input [1:0]S_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWCACHE" *) input [3:0]S_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWID" *) input [3:0]S_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWLEN" *) input [7:0]S_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWLOCK" *) input S_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWPROT" *) input [2:0]S_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWREADY" *) output S_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWSIZE" *) input [2:0]S_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWVALID" *) input S_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BID" *) output [3:0]S_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BREADY" *) input S_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BRESP" *) output [1:0]S_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BVALID" *) output S_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RDATA" *) output [127:0]S_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RID" *) output [3:0]S_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RLAST" *) output S_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RREADY" *) input S_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RRESP" *) output [1:0]S_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RVALID" *) output S_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WDATA" *) input [127:0]S_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WLAST" *) input S_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WREADY" *) output S_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WSTRB" *) input [15:0]S_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WVALID" *) input S_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_ACLK, ASSOCIATED_BUSIF M_AXI_0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output axi_aclk;
  output axi_aresetn;
  input [31:0]gpio2_io_i;
  input [31:0]gpio2_io_i_0;
  output [31:0]gpio_io_o_0;
  output [31:0]gpio_io_o_1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie CLK_P" *) input [0:0]pcie_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [3:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [3:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [3:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [3:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_PERSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_PERSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input pcie_perstn;

  wire [31:0]AXI_LITE_IO_AXI_STR_TXD_0_TDATA;
  wire AXI_LITE_IO_AXI_STR_TXD_0_TLAST;
  wire AXI_LITE_IO_AXI_STR_TXD_0_TREADY;
  wire AXI_LITE_IO_AXI_STR_TXD_0_TVALID;
  wire [31:0]AXI_LITE_IO_gpio_io_o_0;
  wire [31:0]AXI_LITE_IO_gpio_io_o_1;
  wire [31:0]BRAM_PORTA_1_1_ADDR;
  wire BRAM_PORTA_1_1_CLK;
  wire [63:0]BRAM_PORTA_1_1_DIN;
  wire [63:0]BRAM_PORTA_1_1_DOUT;
  wire [7:0]BRAM_PORTA_1_1_WE;
  wire [0:0]CLK_IN_D_0_1_CLK_N;
  wire [0:0]CLK_IN_D_0_1_CLK_P;
  wire [31:0]PCIe_M_AXI_LITE_ARADDR;
  wire [2:0]PCIe_M_AXI_LITE_ARPROT;
  wire PCIe_M_AXI_LITE_ARREADY;
  wire PCIe_M_AXI_LITE_ARVALID;
  wire [31:0]PCIe_M_AXI_LITE_AWADDR;
  wire [2:0]PCIe_M_AXI_LITE_AWPROT;
  wire PCIe_M_AXI_LITE_AWREADY;
  wire PCIe_M_AXI_LITE_AWVALID;
  wire PCIe_M_AXI_LITE_BREADY;
  wire [1:0]PCIe_M_AXI_LITE_BRESP;
  wire PCIe_M_AXI_LITE_BVALID;
  wire [31:0]PCIe_M_AXI_LITE_RDATA;
  wire PCIe_M_AXI_LITE_RREADY;
  wire [1:0]PCIe_M_AXI_LITE_RRESP;
  wire PCIe_M_AXI_LITE_RVALID;
  wire [31:0]PCIe_M_AXI_LITE_WDATA;
  wire PCIe_M_AXI_LITE_WREADY;
  wire [3:0]PCIe_M_AXI_LITE_WSTRB;
  wire PCIe_M_AXI_LITE_WVALID;
  wire PCIe_axi_aresetn;
  wire [17:0]S_AXI_0_1_ARADDR;
  wire [1:0]S_AXI_0_1_ARBURST;
  wire [3:0]S_AXI_0_1_ARCACHE;
  wire [3:0]S_AXI_0_1_ARID;
  wire [7:0]S_AXI_0_1_ARLEN;
  wire S_AXI_0_1_ARLOCK;
  wire [2:0]S_AXI_0_1_ARPROT;
  wire S_AXI_0_1_ARREADY;
  wire [2:0]S_AXI_0_1_ARSIZE;
  wire S_AXI_0_1_ARVALID;
  wire [17:0]S_AXI_0_1_AWADDR;
  wire [1:0]S_AXI_0_1_AWBURST;
  wire [3:0]S_AXI_0_1_AWCACHE;
  wire [3:0]S_AXI_0_1_AWID;
  wire [7:0]S_AXI_0_1_AWLEN;
  wire S_AXI_0_1_AWLOCK;
  wire [2:0]S_AXI_0_1_AWPROT;
  wire S_AXI_0_1_AWREADY;
  wire [2:0]S_AXI_0_1_AWSIZE;
  wire S_AXI_0_1_AWVALID;
  wire [3:0]S_AXI_0_1_BID;
  wire S_AXI_0_1_BREADY;
  wire [1:0]S_AXI_0_1_BRESP;
  wire S_AXI_0_1_BVALID;
  wire [127:0]S_AXI_0_1_RDATA;
  wire [3:0]S_AXI_0_1_RID;
  wire S_AXI_0_1_RLAST;
  wire S_AXI_0_1_RREADY;
  wire [1:0]S_AXI_0_1_RRESP;
  wire S_AXI_0_1_RVALID;
  wire [127:0]S_AXI_0_1_WDATA;
  wire S_AXI_0_1_WLAST;
  wire S_AXI_0_1_WREADY;
  wire [15:0]S_AXI_0_1_WSTRB;
  wire S_AXI_0_1_WVALID;
  wire [17:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [127:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [127:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [15:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [31:0]gpio2_io_i_0_1;
  wire [31:0]gpio2_io_i_0_2;
  wire sys_rst_n_0_1;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [63:0]xdma_0_M_AXI_ARADDR;
  wire [1:0]xdma_0_M_AXI_ARBURST;
  wire [3:0]xdma_0_M_AXI_ARCACHE;
  wire [3:0]xdma_0_M_AXI_ARID;
  wire [7:0]xdma_0_M_AXI_ARLEN;
  wire xdma_0_M_AXI_ARLOCK;
  wire [2:0]xdma_0_M_AXI_ARPROT;
  wire xdma_0_M_AXI_ARREADY;
  wire [2:0]xdma_0_M_AXI_ARSIZE;
  wire xdma_0_M_AXI_ARVALID;
  wire [63:0]xdma_0_M_AXI_AWADDR;
  wire [1:0]xdma_0_M_AXI_AWBURST;
  wire [3:0]xdma_0_M_AXI_AWCACHE;
  wire [3:0]xdma_0_M_AXI_AWID;
  wire [7:0]xdma_0_M_AXI_AWLEN;
  wire xdma_0_M_AXI_AWLOCK;
  wire [2:0]xdma_0_M_AXI_AWPROT;
  wire xdma_0_M_AXI_AWREADY;
  wire [2:0]xdma_0_M_AXI_AWSIZE;
  wire xdma_0_M_AXI_AWVALID;
  wire [3:0]xdma_0_M_AXI_BID;
  wire xdma_0_M_AXI_BREADY;
  wire [1:0]xdma_0_M_AXI_BRESP;
  wire xdma_0_M_AXI_BVALID;
  wire [127:0]xdma_0_M_AXI_RDATA;
  wire [3:0]xdma_0_M_AXI_RID;
  wire xdma_0_M_AXI_RLAST;
  wire xdma_0_M_AXI_RREADY;
  wire [1:0]xdma_0_M_AXI_RRESP;
  wire xdma_0_M_AXI_RVALID;
  wire [127:0]xdma_0_M_AXI_WDATA;
  wire xdma_0_M_AXI_WLAST;
  wire xdma_0_M_AXI_WREADY;
  wire [15:0]xdma_0_M_AXI_WSTRB;
  wire xdma_0_M_AXI_WVALID;
  wire xdma_0_axi_aclk;
  wire [3:0]xdma_0_pcie_mgt_rxn;
  wire [3:0]xdma_0_pcie_mgt_rxp;
  wire [3:0]xdma_0_pcie_mgt_txn;
  wire [3:0]xdma_0_pcie_mgt_txp;

  assign AXI_LITE_IO_AXI_STR_TXD_0_TREADY = AXI_STR_TXD_0_tready;
  assign AXI_STR_TXD_0_tdata[31:0] = AXI_LITE_IO_AXI_STR_TXD_0_TDATA;
  assign AXI_STR_TXD_0_tlast = AXI_LITE_IO_AXI_STR_TXD_0_TLAST;
  assign AXI_STR_TXD_0_tvalid = AXI_LITE_IO_AXI_STR_TXD_0_TVALID;
  assign BRAM_PORTA_1_1_ADDR = BRAM_PORTA_addr[31:0];
  assign BRAM_PORTA_1_1_CLK = BRAM_PORTA_clk;
  assign BRAM_PORTA_1_1_DIN = BRAM_PORTA_din[63:0];
  assign BRAM_PORTA_1_1_WE = BRAM_PORTA_we[7:0];
  assign BRAM_PORTA_dout[63:0] = BRAM_PORTA_1_1_DOUT;
  assign CLK_IN_D_0_1_CLK_N = pcie_clk_n[0];
  assign CLK_IN_D_0_1_CLK_P = pcie_clk_p[0];
  assign M_AXI_0_araddr[63:0] = xdma_0_M_AXI_ARADDR;
  assign M_AXI_0_arburst[1:0] = xdma_0_M_AXI_ARBURST;
  assign M_AXI_0_arcache[3:0] = xdma_0_M_AXI_ARCACHE;
  assign M_AXI_0_arid[3:0] = xdma_0_M_AXI_ARID;
  assign M_AXI_0_arlen[7:0] = xdma_0_M_AXI_ARLEN;
  assign M_AXI_0_arlock = xdma_0_M_AXI_ARLOCK;
  assign M_AXI_0_arprot[2:0] = xdma_0_M_AXI_ARPROT;
  assign M_AXI_0_arsize[2:0] = xdma_0_M_AXI_ARSIZE;
  assign M_AXI_0_arvalid = xdma_0_M_AXI_ARVALID;
  assign M_AXI_0_awaddr[63:0] = xdma_0_M_AXI_AWADDR;
  assign M_AXI_0_awburst[1:0] = xdma_0_M_AXI_AWBURST;
  assign M_AXI_0_awcache[3:0] = xdma_0_M_AXI_AWCACHE;
  assign M_AXI_0_awid[3:0] = xdma_0_M_AXI_AWID;
  assign M_AXI_0_awlen[7:0] = xdma_0_M_AXI_AWLEN;
  assign M_AXI_0_awlock = xdma_0_M_AXI_AWLOCK;
  assign M_AXI_0_awprot[2:0] = xdma_0_M_AXI_AWPROT;
  assign M_AXI_0_awsize[2:0] = xdma_0_M_AXI_AWSIZE;
  assign M_AXI_0_awvalid = xdma_0_M_AXI_AWVALID;
  assign M_AXI_0_bready = xdma_0_M_AXI_BREADY;
  assign M_AXI_0_rready = xdma_0_M_AXI_RREADY;
  assign M_AXI_0_wdata[127:0] = xdma_0_M_AXI_WDATA;
  assign M_AXI_0_wlast = xdma_0_M_AXI_WLAST;
  assign M_AXI_0_wstrb[15:0] = xdma_0_M_AXI_WSTRB;
  assign M_AXI_0_wvalid = xdma_0_M_AXI_WVALID;
  assign S_AXI_0_1_ARADDR = S_AXI_0_araddr[17:0];
  assign S_AXI_0_1_ARBURST = S_AXI_0_arburst[1:0];
  assign S_AXI_0_1_ARCACHE = S_AXI_0_arcache[3:0];
  assign S_AXI_0_1_ARID = S_AXI_0_arid[3:0];
  assign S_AXI_0_1_ARLEN = S_AXI_0_arlen[7:0];
  assign S_AXI_0_1_ARLOCK = S_AXI_0_arlock;
  assign S_AXI_0_1_ARPROT = S_AXI_0_arprot[2:0];
  assign S_AXI_0_1_ARSIZE = S_AXI_0_arsize[2:0];
  assign S_AXI_0_1_ARVALID = S_AXI_0_arvalid;
  assign S_AXI_0_1_AWADDR = S_AXI_0_awaddr[17:0];
  assign S_AXI_0_1_AWBURST = S_AXI_0_awburst[1:0];
  assign S_AXI_0_1_AWCACHE = S_AXI_0_awcache[3:0];
  assign S_AXI_0_1_AWID = S_AXI_0_awid[3:0];
  assign S_AXI_0_1_AWLEN = S_AXI_0_awlen[7:0];
  assign S_AXI_0_1_AWLOCK = S_AXI_0_awlock;
  assign S_AXI_0_1_AWPROT = S_AXI_0_awprot[2:0];
  assign S_AXI_0_1_AWSIZE = S_AXI_0_awsize[2:0];
  assign S_AXI_0_1_AWVALID = S_AXI_0_awvalid;
  assign S_AXI_0_1_BREADY = S_AXI_0_bready;
  assign S_AXI_0_1_RREADY = S_AXI_0_rready;
  assign S_AXI_0_1_WDATA = S_AXI_0_wdata[127:0];
  assign S_AXI_0_1_WLAST = S_AXI_0_wlast;
  assign S_AXI_0_1_WSTRB = S_AXI_0_wstrb[15:0];
  assign S_AXI_0_1_WVALID = S_AXI_0_wvalid;
  assign S_AXI_0_arready = S_AXI_0_1_ARREADY;
  assign S_AXI_0_awready = S_AXI_0_1_AWREADY;
  assign S_AXI_0_bid[3:0] = S_AXI_0_1_BID;
  assign S_AXI_0_bresp[1:0] = S_AXI_0_1_BRESP;
  assign S_AXI_0_bvalid = S_AXI_0_1_BVALID;
  assign S_AXI_0_rdata[127:0] = S_AXI_0_1_RDATA;
  assign S_AXI_0_rid[3:0] = S_AXI_0_1_RID;
  assign S_AXI_0_rlast = S_AXI_0_1_RLAST;
  assign S_AXI_0_rresp[1:0] = S_AXI_0_1_RRESP;
  assign S_AXI_0_rvalid = S_AXI_0_1_RVALID;
  assign S_AXI_0_wready = S_AXI_0_1_WREADY;
  assign axi_aclk = xdma_0_axi_aclk;
  assign axi_aresetn = PCIe_axi_aresetn;
  assign gpio2_io_i_0_1 = gpio2_io_i[31:0];
  assign gpio2_io_i_0_2 = gpio2_io_i_0[31:0];
  assign gpio_io_o_0[31:0] = AXI_LITE_IO_gpio_io_o_0;
  assign gpio_io_o_1[31:0] = AXI_LITE_IO_gpio_io_o_1;
  assign pcie_mgt_txn[3:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[3:0] = xdma_0_pcie_mgt_txp;
  assign sys_rst_n_0_1 = pcie_perstn;
  assign xdma_0_M_AXI_ARREADY = M_AXI_0_arready;
  assign xdma_0_M_AXI_AWREADY = M_AXI_0_awready;
  assign xdma_0_M_AXI_BID = M_AXI_0_bid[3:0];
  assign xdma_0_M_AXI_BRESP = M_AXI_0_bresp[1:0];
  assign xdma_0_M_AXI_BVALID = M_AXI_0_bvalid;
  assign xdma_0_M_AXI_RDATA = M_AXI_0_rdata[127:0];
  assign xdma_0_M_AXI_RID = M_AXI_0_rid[3:0];
  assign xdma_0_M_AXI_RLAST = M_AXI_0_rlast;
  assign xdma_0_M_AXI_RRESP = M_AXI_0_rresp[1:0];
  assign xdma_0_M_AXI_RVALID = M_AXI_0_rvalid;
  assign xdma_0_M_AXI_WREADY = M_AXI_0_wready;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[3:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[3:0];
  AXI_LITE_IO_imp_1879I2S AXI_LITE_IO
       (.AXI_STR_TXD_0_tdata(AXI_LITE_IO_AXI_STR_TXD_0_TDATA),
        .AXI_STR_TXD_0_tlast(AXI_LITE_IO_AXI_STR_TXD_0_TLAST),
        .AXI_STR_TXD_0_tready(AXI_LITE_IO_AXI_STR_TXD_0_TREADY),
        .AXI_STR_TXD_0_tvalid(AXI_LITE_IO_AXI_STR_TXD_0_TVALID),
        .S00_AXI_araddr(PCIe_M_AXI_LITE_ARADDR),
        .S00_AXI_arprot(PCIe_M_AXI_LITE_ARPROT),
        .S00_AXI_arready(PCIe_M_AXI_LITE_ARREADY),
        .S00_AXI_arvalid(PCIe_M_AXI_LITE_ARVALID),
        .S00_AXI_awaddr(PCIe_M_AXI_LITE_AWADDR),
        .S00_AXI_awprot(PCIe_M_AXI_LITE_AWPROT),
        .S00_AXI_awready(PCIe_M_AXI_LITE_AWREADY),
        .S00_AXI_awvalid(PCIe_M_AXI_LITE_AWVALID),
        .S00_AXI_bready(PCIe_M_AXI_LITE_BREADY),
        .S00_AXI_bresp(PCIe_M_AXI_LITE_BRESP),
        .S00_AXI_bvalid(PCIe_M_AXI_LITE_BVALID),
        .S00_AXI_rdata(PCIe_M_AXI_LITE_RDATA),
        .S00_AXI_rready(PCIe_M_AXI_LITE_RREADY),
        .S00_AXI_rresp(PCIe_M_AXI_LITE_RRESP),
        .S00_AXI_rvalid(PCIe_M_AXI_LITE_RVALID),
        .S00_AXI_wdata(PCIe_M_AXI_LITE_WDATA),
        .S00_AXI_wready(PCIe_M_AXI_LITE_WREADY),
        .S00_AXI_wstrb(PCIe_M_AXI_LITE_WSTRB),
        .S00_AXI_wvalid(PCIe_M_AXI_LITE_WVALID),
        .axi_aclk(xdma_0_axi_aclk),
        .axi_resetn(PCIe_axi_aresetn),
        .gpio2_io_i(gpio2_io_i_0_1),
        .gpio2_io_i_0(gpio2_io_i_0_2),
        .gpio_io_o_0(AXI_LITE_IO_gpio_io_o_0),
        .gpio_io_o_1(AXI_LITE_IO_gpio_io_o_1));
  design_1_axi_bram_ctrl_0_1 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(xdma_0_axi_aclk),
        .s_axi_araddr(S_AXI_0_1_ARADDR),
        .s_axi_arburst(S_AXI_0_1_ARBURST),
        .s_axi_arcache(S_AXI_0_1_ARCACHE),
        .s_axi_aresetn(PCIe_axi_aresetn),
        .s_axi_arid(S_AXI_0_1_ARID),
        .s_axi_arlen(S_AXI_0_1_ARLEN),
        .s_axi_arlock(S_AXI_0_1_ARLOCK),
        .s_axi_arprot(S_AXI_0_1_ARPROT),
        .s_axi_arready(S_AXI_0_1_ARREADY),
        .s_axi_arsize(S_AXI_0_1_ARSIZE),
        .s_axi_arvalid(S_AXI_0_1_ARVALID),
        .s_axi_awaddr(S_AXI_0_1_AWADDR),
        .s_axi_awburst(S_AXI_0_1_AWBURST),
        .s_axi_awcache(S_AXI_0_1_AWCACHE),
        .s_axi_awid(S_AXI_0_1_AWID),
        .s_axi_awlen(S_AXI_0_1_AWLEN),
        .s_axi_awlock(S_AXI_0_1_AWLOCK),
        .s_axi_awprot(S_AXI_0_1_AWPROT),
        .s_axi_awready(S_AXI_0_1_AWREADY),
        .s_axi_awsize(S_AXI_0_1_AWSIZE),
        .s_axi_awvalid(S_AXI_0_1_AWVALID),
        .s_axi_bid(S_AXI_0_1_BID),
        .s_axi_bready(S_AXI_0_1_BREADY),
        .s_axi_bresp(S_AXI_0_1_BRESP),
        .s_axi_bvalid(S_AXI_0_1_BVALID),
        .s_axi_rdata(S_AXI_0_1_RDATA),
        .s_axi_rid(S_AXI_0_1_RID),
        .s_axi_rlast(S_AXI_0_1_RLAST),
        .s_axi_rready(S_AXI_0_1_RREADY),
        .s_axi_rresp(S_AXI_0_1_RRESP),
        .s_axi_rvalid(S_AXI_0_1_RVALID),
        .s_axi_wdata(S_AXI_0_1_WDATA),
        .s_axi_wlast(S_AXI_0_1_WLAST),
        .s_axi_wready(S_AXI_0_1_WREADY),
        .s_axi_wstrb(S_AXI_0_1_WSTRB),
        .s_axi_wvalid(S_AXI_0_1_WVALID));
  design_1_blk_mem_gen_0_2 blk_mem_gen_0
       (.addra(BRAM_PORTA_1_1_ADDR),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(BRAM_PORTA_1_1_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(BRAM_PORTA_1_1_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(BRAM_PORTA_1_1_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .enb(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rstb(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(BRAM_PORTA_1_1_WE),
        .web(axi_bram_ctrl_0_BRAM_PORTA_WE));
  design_1_util_ds_buf_0_0 util_ds_buf_0
       (.IBUF_DS_N(CLK_IN_D_0_1_CLK_N),
        .IBUF_DS_P(CLK_IN_D_0_1_CLK_P),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  design_1_xdma_0_0 xdma_0
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(PCIe_axi_aresetn),
        .m_axi_araddr(xdma_0_M_AXI_ARADDR),
        .m_axi_arburst(xdma_0_M_AXI_ARBURST),
        .m_axi_arcache(xdma_0_M_AXI_ARCACHE),
        .m_axi_arid(xdma_0_M_AXI_ARID),
        .m_axi_arlen(xdma_0_M_AXI_ARLEN),
        .m_axi_arlock(xdma_0_M_AXI_ARLOCK),
        .m_axi_arprot(xdma_0_M_AXI_ARPROT),
        .m_axi_arready(xdma_0_M_AXI_ARREADY),
        .m_axi_arsize(xdma_0_M_AXI_ARSIZE),
        .m_axi_arvalid(xdma_0_M_AXI_ARVALID),
        .m_axi_awaddr(xdma_0_M_AXI_AWADDR),
        .m_axi_awburst(xdma_0_M_AXI_AWBURST),
        .m_axi_awcache(xdma_0_M_AXI_AWCACHE),
        .m_axi_awid(xdma_0_M_AXI_AWID),
        .m_axi_awlen(xdma_0_M_AXI_AWLEN),
        .m_axi_awlock(xdma_0_M_AXI_AWLOCK),
        .m_axi_awprot(xdma_0_M_AXI_AWPROT),
        .m_axi_awready(xdma_0_M_AXI_AWREADY),
        .m_axi_awsize(xdma_0_M_AXI_AWSIZE),
        .m_axi_awvalid(xdma_0_M_AXI_AWVALID),
        .m_axi_bid(xdma_0_M_AXI_BID),
        .m_axi_bready(xdma_0_M_AXI_BREADY),
        .m_axi_bresp(xdma_0_M_AXI_BRESP),
        .m_axi_bvalid(xdma_0_M_AXI_BVALID),
        .m_axi_rdata(xdma_0_M_AXI_RDATA),
        .m_axi_rid(xdma_0_M_AXI_RID),
        .m_axi_rlast(xdma_0_M_AXI_RLAST),
        .m_axi_rready(xdma_0_M_AXI_RREADY),
        .m_axi_rresp(xdma_0_M_AXI_RRESP),
        .m_axi_rvalid(xdma_0_M_AXI_RVALID),
        .m_axi_wdata(xdma_0_M_AXI_WDATA),
        .m_axi_wlast(xdma_0_M_AXI_WLAST),
        .m_axi_wready(xdma_0_M_AXI_WREADY),
        .m_axi_wstrb(xdma_0_M_AXI_WSTRB),
        .m_axi_wvalid(xdma_0_M_AXI_WVALID),
        .m_axil_araddr(PCIe_M_AXI_LITE_ARADDR),
        .m_axil_arprot(PCIe_M_AXI_LITE_ARPROT),
        .m_axil_arready(PCIe_M_AXI_LITE_ARREADY),
        .m_axil_arvalid(PCIe_M_AXI_LITE_ARVALID),
        .m_axil_awaddr(PCIe_M_AXI_LITE_AWADDR),
        .m_axil_awprot(PCIe_M_AXI_LITE_AWPROT),
        .m_axil_awready(PCIe_M_AXI_LITE_AWREADY),
        .m_axil_awvalid(PCIe_M_AXI_LITE_AWVALID),
        .m_axil_bready(PCIe_M_AXI_LITE_BREADY),
        .m_axil_bresp(PCIe_M_AXI_LITE_BRESP),
        .m_axil_bvalid(PCIe_M_AXI_LITE_BVALID),
        .m_axil_rdata(PCIe_M_AXI_LITE_RDATA),
        .m_axil_rready(PCIe_M_AXI_LITE_RREADY),
        .m_axil_rresp(PCIe_M_AXI_LITE_RRESP),
        .m_axil_rvalid(PCIe_M_AXI_LITE_RVALID),
        .m_axil_wdata(PCIe_M_AXI_LITE_WDATA),
        .m_axil_wready(PCIe_M_AXI_LITE_WREADY),
        .m_axil_wstrb(PCIe_M_AXI_LITE_WSTRB),
        .m_axil_wvalid(PCIe_M_AXI_LITE_WVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .sys_clk(util_ds_buf_0_IBUF_OUT),
        .sys_rst_n(sys_rst_n_0_1),
        .usr_irq_req(1'b0));
endmodule
