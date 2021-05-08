// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri May  7 19:51:14 2021
// Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Aleksa/Documents/EEVengers/Firmware/Artix7_PCIe/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_2/design_1_blk_mem_gen_0_2_stub.v
// Design      : design_1_blk_mem_gen_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *)
module design_1_blk_mem_gen_0_2(clka, wea, addra, dina, douta, clkb, rstb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[7:0],addra[31:0],dina[63:0],douta[63:0],clkb,rstb,enb,web[31:0],addrb[31:0],dinb[255:0],doutb[255:0]" */;
  input clka;
  input [7:0]wea;
  input [31:0]addra;
  input [63:0]dina;
  output [63:0]douta;
  input clkb;
  input rstb;
  input enb;
  input [31:0]web;
  input [31:0]addrb;
  input [255:0]dinb;
  output [255:0]doutb;
endmodule
