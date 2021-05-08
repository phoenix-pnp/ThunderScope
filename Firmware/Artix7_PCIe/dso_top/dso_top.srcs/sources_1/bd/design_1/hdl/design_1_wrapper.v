//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Fri May  7 20:45:43 2021
//Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (AXI_STR_TXD_0_tdata,
    AXI_STR_TXD_0_tlast,
    AXI_STR_TXD_0_tready,
    AXI_STR_TXD_0_tvalid,
    BRAM_PORTA_addr,
    BRAM_PORTA_clk,
    BRAM_PORTA_din,
    BRAM_PORTA_dout,
    BRAM_PORTA_we,
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
  output [31:0]AXI_STR_TXD_0_tdata;
  output AXI_STR_TXD_0_tlast;
  input AXI_STR_TXD_0_tready;
  output AXI_STR_TXD_0_tvalid;
  input [31:0]BRAM_PORTA_addr;
  input BRAM_PORTA_clk;
  input [63:0]BRAM_PORTA_din;
  output [63:0]BRAM_PORTA_dout;
  input [7:0]BRAM_PORTA_we;
  output axi_aclk;
  output axi_aresetn;
  input [31:0]gpio2_io_i;
  input [31:0]gpio2_io_i_0;
  output [31:0]gpio_io_o_0;
  output [31:0]gpio_io_o_1;
  input [0:0]pcie_clk_n;
  input [0:0]pcie_clk_p;
  input [3:0]pcie_mgt_rxn;
  input [3:0]pcie_mgt_rxp;
  output [3:0]pcie_mgt_txn;
  output [3:0]pcie_mgt_txp;
  input pcie_perstn;

  wire [31:0]AXI_STR_TXD_0_tdata;
  wire AXI_STR_TXD_0_tlast;
  wire AXI_STR_TXD_0_tready;
  wire AXI_STR_TXD_0_tvalid;
  wire [31:0]BRAM_PORTA_addr;
  wire BRAM_PORTA_clk;
  wire [63:0]BRAM_PORTA_din;
  wire [63:0]BRAM_PORTA_dout;
  wire [7:0]BRAM_PORTA_we;
  wire axi_aclk;
  wire axi_aresetn;
  wire [31:0]gpio2_io_i;
  wire [31:0]gpio2_io_i_0;
  wire [31:0]gpio_io_o_0;
  wire [31:0]gpio_io_o_1;
  wire [0:0]pcie_clk_n;
  wire [0:0]pcie_clk_p;
  wire [3:0]pcie_mgt_rxn;
  wire [3:0]pcie_mgt_rxp;
  wire [3:0]pcie_mgt_txn;
  wire [3:0]pcie_mgt_txp;
  wire pcie_perstn;

  design_1 design_1_i
       (.AXI_STR_TXD_0_tdata(AXI_STR_TXD_0_tdata),
        .AXI_STR_TXD_0_tlast(AXI_STR_TXD_0_tlast),
        .AXI_STR_TXD_0_tready(AXI_STR_TXD_0_tready),
        .AXI_STR_TXD_0_tvalid(AXI_STR_TXD_0_tvalid),
        .BRAM_PORTA_addr(BRAM_PORTA_addr),
        .BRAM_PORTA_clk(BRAM_PORTA_clk),
        .BRAM_PORTA_din(BRAM_PORTA_din),
        .BRAM_PORTA_dout(BRAM_PORTA_dout),
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
