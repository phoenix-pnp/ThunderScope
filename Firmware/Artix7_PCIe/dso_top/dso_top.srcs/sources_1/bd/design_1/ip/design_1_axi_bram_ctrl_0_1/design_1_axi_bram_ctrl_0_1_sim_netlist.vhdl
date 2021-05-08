-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat May  8 17:44:59 2021
-- Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_1/design_1_axi_bram_ctrl_0_1_sim_netlist.vhdl
-- Design      : design_1_axi_bram_ctrl_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_bram_ctrl_0_1_SRL_FIFO is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bid_gets_fifo_load : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bvalid_cnt_inc : out STD_LOGIC;
    Data_Exists_DFF_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AW2Arb_BVALID_Cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bid_gets_fifo_load_d1_reg : in STD_LOGIC;
    Data_Exists_DFF_1 : in STD_LOGIC;
    Arb2AW_Active : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    bid_gets_fifo_load_d1 : in STD_LOGIC;
    Data_Exists_DFF_2 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0\ : in STD_LOGIC;
    axi_wdata_full_reg : in STD_LOGIC;
    axi_wr_burst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_bram_ctrl_0_1_SRL_FIFO : entity is "SRL_FIFO";
end design_1_axi_bram_ctrl_0_1_SRL_FIFO;

architecture STRUCTURE of design_1_axi_bram_ctrl_0_1_SRL_FIFO is
  signal \Addr_Counters[0].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[0].MUXCY_L_I_i_3_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal Data_Exists_DFF_i_2_n_0 : STD_LOGIC;
  signal Data_Exists_DFF_i_3_n_0 : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal \axi_bid_int[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_bid_int[3]_i_5_n_0\ : STD_LOGIC;
  signal \axi_bid_int[3]_i_6_n_0\ : STD_LOGIC;
  signal bid_fifo_not_empty : STD_LOGIC;
  signal bid_fifo_rd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^bid_gets_fifo_load\ : STD_LOGIC;
  signal \^bvalid_cnt_inc\ : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute BOX_TYPE of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of Data_Exists_DFF : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute BOX_TYPE of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[2].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[3].SRL16E_I ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_bid_int[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \axi_bid_int[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \axi_bid_int[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \axi_bid_int[3]_i_2\ : label is "soft_lutpair36";
begin
  bid_gets_fifo_load <= \^bid_gets_fifo_load\;
  bvalid_cnt_inc <= \^bvalid_cnt_inc\;
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_3,
      Q => \Addr_Counters[0].FDRE_I_n_0\,
      R => Data_Exists_DFF_0
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      CYINIT => CI,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \Addr_Counters[2].FDRE_I_n_0\,
      DI(1) => \Addr_Counters[1].FDRE_I_n_0\,
      DI(0) => \Addr_Counters[0].FDRE_I_n_0\,
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(3) => \Addr_Counters[3].XORCY_I_i_1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[3].FDRE_I_n_0\,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[1].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[3]_i_3_n_0\,
      I5 => \Addr_Counters[0].FDRE_I_n_0\,
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => aw_active_re,
      I1 => \Addr_Counters[1].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[3].FDRE_I_n_0\,
      I4 => \Addr_Counters[2].FDRE_I_n_0\,
      I5 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      O => CI
    );
\Addr_Counters[0].MUXCY_L_I_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7577777755575757"
    )
        port map (
      I0 => bid_fifo_not_empty,
      I1 => bid_gets_fifo_load_d1,
      I2 => \axi_bid_int[3]_i_6_n_0\,
      I3 => Data_Exists_DFF_2,
      I4 => s_axi_bready,
      I5 => \axi_bid_int[3]_i_5_n_0\,
      O => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_2,
      Q => \Addr_Counters[1].FDRE_I_n_0\,
      R => Data_Exists_DFF_0
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[3].FDRE_I_n_0\,
      I1 => \Addr_Counters[0].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[3]_i_3_n_0\,
      I5 => \Addr_Counters[1].FDRE_I_n_0\,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_1,
      Q => \Addr_Counters[2].FDRE_I_n_0\,
      R => Data_Exists_DFF_0
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[3].FDRE_I_n_0\,
      I1 => \Addr_Counters[0].FDRE_I_n_0\,
      I2 => \Addr_Counters[1].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[3]_i_3_n_0\,
      I5 => \Addr_Counters[2].FDRE_I_n_0\,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_0,
      Q => \Addr_Counters[3].FDRE_I_n_0\,
      R => Data_Exists_DFF_0
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[0].FDRE_I_n_0\,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[1].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[3]_i_3_n_0\,
      I5 => \Addr_Counters[3].FDRE_I_n_0\,
      O => \Addr_Counters[3].XORCY_I_i_1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D_0,
      Q => bid_fifo_not_empty,
      R => Data_Exists_DFF_0
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF20022"
    )
        port map (
      I0 => Arb2AW_Active,
      I1 => Data_Exists_DFF_1,
      I2 => Data_Exists_DFF_i_2_n_0,
      I3 => Data_Exists_DFF_i_3_n_0,
      I4 => bid_fifo_not_empty,
      O => D_0
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070F07"
    )
        port map (
      I0 => s_axi_bready,
      I1 => Data_Exists_DFF_2,
      I2 => bid_gets_fifo_load_d1,
      I3 => \axi_bid_int[3]_i_6_n_0\,
      I4 => \^bvalid_cnt_inc\,
      O => Data_Exists_DFF_i_2_n_0
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Addr_Counters[3].FDRE_I_n_0\,
      I1 => \Addr_Counters[0].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      O => Data_Exists_DFF_i_3_n_0
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(3),
      Q => bid_fifo_rd(3)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(2),
      Q => bid_fifo_rd(2)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(1),
      Q => bid_fifo_rd(1)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(0),
      Q => bid_fifo_rd(0)
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\,
      I2 => s_axi_wvalid,
      I3 => Arb2AW_Active,
      I4 => \axi_bid_int[3]_i_5_n_0\,
      O => \^bvalid_cnt_inc\
    );
\axi_bid_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(0),
      O => D(0)
    );
\axi_bid_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(1),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(1),
      O => D(1)
    );
\axi_bid_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(2),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(2),
      O => D(2)
    );
\axi_bid_int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => \axi_bid_int[3]_i_3_n_0\,
      I1 => bid_gets_fifo_load_d1_reg,
      I2 => Data_Exists_DFF_1,
      I3 => Arb2AW_Active,
      I4 => \axi_bid_int[3]_i_5_n_0\,
      O => E(0)
    );
\axi_bid_int[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(3),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(3),
      O => D(3)
    );
\axi_bid_int[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAA80AA80AA80"
    )
        port map (
      I0 => bid_fifo_not_empty,
      I1 => \^bvalid_cnt_inc\,
      I2 => \axi_bid_int[3]_i_6_n_0\,
      I3 => bid_gets_fifo_load_d1,
      I4 => Data_Exists_DFF_2,
      I5 => s_axi_bready,
      O => \axi_bid_int[3]_i_3_n_0\
    );
\axi_bid_int[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F7D5F7F7F7F7F7"
    )
        port map (
      I0 => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0\,
      I1 => axi_wdata_full_reg,
      I2 => axi_wr_burst,
      I3 => s_axi_wlast,
      I4 => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\,
      I5 => s_axi_wvalid,
      O => \axi_bid_int[3]_i_5_n_0\
    );
\axi_bid_int[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(0),
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(1),
      O => \axi_bid_int[3]_i_6_n_0\
    );
bid_gets_fifo_load_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000100010"
    )
        port map (
      I0 => bid_gets_fifo_load_d1_reg,
      I1 => Data_Exists_DFF_1,
      I2 => Arb2AW_Active,
      I3 => \axi_bid_int[3]_i_5_n_0\,
      I4 => bid_fifo_not_empty,
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \^bid_gets_fifo_load\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_bram_ctrl_0_1_sng_port_arb is
  port (
    s_axi_awready : out STD_LOGIC;
    axi_arready_int_reg_0 : out STD_LOGIC;
    Arb2AW_Active : out STD_LOGIC;
    Arb2AR_Active : out STD_LOGIC;
    ar_active_reg_0 : out STD_LOGIC;
    s_axi_araddr_5_sp_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aw_active_re : out STD_LOGIC;
    s_axi_arvalid_0 : out STD_LOGIC;
    ar_active_reg_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlen_1_sp_1 : out STD_LOGIC;
    arb_sm_cs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_arlen[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_arlen[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi_arlen[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_arlen[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_arready_int_reg_1 : out STD_LOGIC;
    s_axi_arburst_1_sp_1 : out STD_LOGIC;
    \s_axi_araddr[8]\ : out STD_LOGIC;
    \s_axi_araddr[10]\ : out STD_LOGIC;
    \s_axi_araddr[11]\ : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ar_active_reg_2 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[5]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[7]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[7]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[7]_1\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_1\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_2\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_3\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_4\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_1\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_2\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_3\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aw_active_d1 : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[7]_2\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_5\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[8]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[8]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[9]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[9]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[10]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[8]_1\ : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg\ : in STD_LOGIC;
    last_arb_won_reg_0 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    last_arb_won_reg_1 : in STD_LOGIC;
    \FSM_sequential_arb_sm_cs_reg[0]_0\ : in STD_LOGIC;
    aw_active_cmb : in STD_LOGIC;
    AW2Arb_Active_Clr : in STD_LOGIC;
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bram_addr_a[6]\ : in STD_LOGIC;
    \wrap_burst_total_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bram_addr_a[11]\ : in STD_LOGIC;
    \bram_addr_a[9]\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.arlen_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bram_we_a[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    last_arb_won_reg_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_bram_ctrl_0_1_sng_port_arb : entity is "sng_port_arb";
end design_1_axi_bram_ctrl_0_1_sng_port_arb;

architecture STRUCTURE of design_1_axi_bram_ctrl_0_1_sng_port_arb is
  signal \ADDR_SNG_PORT.bram_addr_int[10]_i_3_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[4]_i_3_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[5]_i_3_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[5]_i_6_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[6]_i_3_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[6]_i_6_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[7]_i_3_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[7]_i_8_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[9]_i_3_n_0\ : STD_LOGIC;
  signal \^arb2ar_active\ : STD_LOGIC;
  signal \^arb2aw_active\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[1]_i_3_n_0\ : STD_LOGIC;
  signal ar_active_i_1_n_0 : STD_LOGIC;
  signal \^ar_active_reg_0\ : STD_LOGIC;
  signal \^ar_active_reg_1\ : STD_LOGIC;
  signal \^arb_sm_cs\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aw_active_i_1_n_0 : STD_LOGIC;
  signal \^aw_active_re\ : STD_LOGIC;
  signal axi_arready_cmb : STD_LOGIC;
  signal axi_arready_int_i_2_n_0 : STD_LOGIC;
  signal \^axi_arready_int_reg_0\ : STD_LOGIC;
  signal axi_awready_cmb : STD_LOGIC;
  signal last_arb_won : STD_LOGIC;
  signal last_arb_won_cmb : STD_LOGIC;
  signal last_arb_won_i_1_n_0 : STD_LOGIC;
  signal s_axi_araddr_5_sn_1 : STD_LOGIC;
  signal s_axi_arburst_1_sn_1 : STD_LOGIC;
  signal s_axi_arlen_1_sn_1 : STD_LOGIC;
  signal \^s_axi_arvalid_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[4]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[4]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[4]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[7]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_arb_sm_cs[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_arb_sm_cs[1]_i_3\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_arb_sm_cs_reg[0]\ : label is "wr_data:01,idle:00,rd_data:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_arb_sm_cs_reg[1]\ : label is "wr_data:01,idle:00,rd_data:10";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arlen_reg[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_data[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.wrap_addr_assign_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_arready_int_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bram_addr_a[4]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bram_addr_a[8]_INST_0_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bram_we_a[0]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bram_we_a[10]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bram_we_a[11]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bram_we_a[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bram_we_a[13]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bram_we_a[14]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bram_we_a[15]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bram_we_a[1]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bram_we_a[2]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bram_we_a[3]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bram_we_a[4]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bram_we_a[5]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bram_we_a[6]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bram_we_a[7]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bram_we_a[8]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bram_we_a[9]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of last_arb_won_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[17]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld_reg[11]_i_1\ : label is "soft_lutpair7";
begin
  Arb2AR_Active <= \^arb2ar_active\;
  Arb2AW_Active <= \^arb2aw_active\;
  ar_active_reg_0 <= \^ar_active_reg_0\;
  ar_active_reg_1 <= \^ar_active_reg_1\;
  arb_sm_cs(1 downto 0) <= \^arb_sm_cs\(1 downto 0);
  aw_active_re <= \^aw_active_re\;
  axi_arready_int_reg_0 <= \^axi_arready_int_reg_0\;
  s_axi_araddr_5_sp_1 <= s_axi_araddr_5_sn_1;
  s_axi_arburst_1_sp_1 <= s_axi_arburst_1_sn_1;
  s_axi_arlen_1_sp_1 <= s_axi_arlen_1_sn_1;
  s_axi_arvalid_0 <= \^s_axi_arvalid_0\;
\ADDR_SNG_PORT.bram_addr_int[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8FFF8F8"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I1 => \^ar_active_reg_1\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[10]_i_3_n_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_1\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(2),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[10]_0\,
      O => D(6)
    );
\ADDR_SNG_PORT.bram_addr_int[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202F2020202020"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => \^s_axi_arvalid_0\,
      I2 => \^arb2ar_active\,
      I3 => s_axi_awaddr(6),
      I4 => aw_active_d1,
      I5 => \^arb2aw_active\,
      O => \ADDR_SNG_PORT.bram_addr_int[10]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4FFF4F4"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\,
      I1 => \^ar_active_reg_1\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_1\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(3),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\,
      O => D(7)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202F2020202020"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \^s_axi_arvalid_0\,
      I2 => \^arb2ar_active\,
      I3 => s_axi_awaddr(7),
      I4 => aw_active_d1,
      I5 => \^arb2aw_active\,
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[17]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ar_active_reg_1\,
      O => E(0)
    );
\ADDR_SNG_PORT.bram_addr_int[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0000000E000E"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_3\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_2\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[8]_1\,
      I3 => \^aw_active_re\,
      I4 => \^s_axi_arvalid_0\,
      I5 => \^arb2ar_active\,
      O => \^ar_active_reg_1\
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FB8BFFFFFFFF"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[4]_i_3_n_0\,
      I3 => s_axi_awaddr(0),
      I4 => Q(0),
      I5 => \ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0\,
      O => D(0)
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^arb2ar_active\,
      I1 => \^axi_arready_int_reg_0\,
      I2 => s_axi_arvalid,
      O => \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => aw_active_d1,
      I1 => \^arb2aw_active\,
      I2 => \^arb2ar_active\,
      O => \ADDR_SNG_PORT.bram_addr_int[4]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^axi_arready_int_reg_0\,
      I1 => s_axi_arvalid,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[8]_1\,
      O => \ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF60FF60FFFFFF60"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[5]\,
      I3 => \ADDR_SNG_PORT.bram_addr_int[5]_i_3_n_0\,
      I4 => \^ar_active_reg_0\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[5]_0\,
      O => D(1)
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4000"
    )
        port map (
      I0 => \^arb2ar_active\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[5]_1\,
      I2 => s_axi_wvalid,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[5]_2\,
      I4 => \ADDR_SNG_PORT.bram_addr_int[5]_i_6_n_0\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[5]_3\,
      O => \ADDR_SNG_PORT.bram_addr_int[5]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444400F00000"
    )
        port map (
      I0 => \^s_axi_arvalid_0\,
      I1 => s_axi_araddr(1),
      I2 => s_axi_awaddr(1),
      I3 => aw_active_d1,
      I4 => \^arb2aw_active\,
      I5 => \^arb2ar_active\,
      O => \ADDR_SNG_PORT.bram_addr_int[5]_i_6_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF60FF60FFFFFF60"
    )
        port map (
      I0 => Q(2),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[6]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int[6]_i_3_n_0\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_0\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_1\,
      O => D(2)
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0444"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_5\,
      I1 => \^arb2ar_active\,
      I2 => \^axi_arready_int_reg_0\,
      I3 => s_axi_arvalid,
      I4 => \ADDR_SNG_PORT.bram_addr_int[6]_i_6_n_0\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[5]_3\,
      O => \ADDR_SNG_PORT.bram_addr_int[6]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22220F0022220000"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \^s_axi_arvalid_0\,
      I2 => aw_active_d1,
      I3 => \^arb2aw_active\,
      I4 => \^arb2ar_active\,
      I5 => s_axi_awaddr(2),
      O => \ADDR_SNG_PORT.bram_addr_int[6]_i_6_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFEFEFCCCFCCC"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[7]_i_3_n_0\,
      I2 => \^ar_active_reg_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[7]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[7]_0\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[7]_1\,
      O => D(3)
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF545400005454"
    )
        port map (
      I0 => \^aw_active_re\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_2\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_3\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_4\,
      I4 => \^arb2ar_active\,
      I5 => \^s_axi_arvalid_0\,
      O => \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4000"
    )
        port map (
      I0 => \^arb2ar_active\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[5]_1\,
      I2 => s_axi_wvalid,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[7]_2\,
      I4 => \ADDR_SNG_PORT.bram_addr_int[7]_i_8_n_0\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[5]_3\,
      O => \ADDR_SNG_PORT.bram_addr_int[7]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^arb2ar_active\,
      I1 => \^axi_arready_int_reg_0\,
      I2 => s_axi_arvalid,
      O => \^ar_active_reg_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222200F00000"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \^s_axi_arvalid_0\,
      I2 => s_axi_awaddr(3),
      I3 => aw_active_d1,
      I4 => \^arb2aw_active\,
      I5 => \^arb2ar_active\,
      O => \ADDR_SNG_PORT.bram_addr_int[7]_i_8_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4FFF4F4"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[8]\,
      I1 => \^ar_active_reg_1\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_1\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(0),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[8]_0\,
      O => D(4)
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202F2020202020"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => \^s_axi_arvalid_0\,
      I2 => \^arb2ar_active\,
      I3 => s_axi_awaddr(4),
      I4 => aw_active_d1,
      I5 => \^arb2aw_active\,
      O => \ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[9]\,
      I1 => \^ar_active_reg_1\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_1\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(1),
      I4 => \ADDR_SNG_PORT.bram_addr_int[9]_i_3_n_0\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[9]_0\,
      O => D(5)
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202F2020202020"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \^s_axi_arvalid_0\,
      I2 => \^arb2ar_active\,
      I3 => s_axi_awaddr(5),
      I4 => aw_active_d1,
      I5 => \^arb2aw_active\,
      O => \ADDR_SNG_PORT.bram_addr_int[9]_i_3_n_0\
    );
\FSM_sequential_arb_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA000FFF00110A"
    )
        port map (
      I0 => aw_active_cmb,
      I1 => AW2Arb_Active_Clr,
      I2 => \FSM_sequential_arb_sm_cs[0]_i_3_n_0\,
      I3 => \^arb_sm_cs\(0),
      I4 => \^arb_sm_cs\(1),
      I5 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      O => \FSM_sequential_arb_sm_cs[0]_i_1_n_0\
    );
\FSM_sequential_arb_sm_cs[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => last_arb_won,
      I2 => s_axi_arvalid,
      O => \FSM_sequential_arb_sm_cs[0]_i_3_n_0\
    );
\FSM_sequential_arb_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500FFFFF7000000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => last_arb_won,
      I2 => \^arb_sm_cs\(0),
      I3 => s_axi_arvalid,
      I4 => \FSM_sequential_arb_sm_cs[1]_i_2_n_0\,
      I5 => \^arb_sm_cs\(1),
      O => \FSM_sequential_arb_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_arb_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00EA"
    )
        port map (
      I0 => aw_active_cmb,
      I1 => AW2Arb_Active_Clr,
      I2 => \^arb_sm_cs\(0),
      I3 => \^arb_sm_cs\(1),
      I4 => \FSM_sequential_arb_sm_cs[1]_i_3_n_0\,
      I5 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      O => \FSM_sequential_arb_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_arb_sm_cs[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101010"
    )
        port map (
      I0 => \^arb_sm_cs\(1),
      I1 => \^arb_sm_cs\(0),
      I2 => s_axi_arvalid,
      I3 => last_arb_won,
      I4 => s_axi_awvalid,
      O => \FSM_sequential_arb_sm_cs[1]_i_3_n_0\
    );
\FSM_sequential_arb_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_arb_sm_cs[0]_i_1_n_0\,
      Q => \^arb_sm_cs\(0),
      R => ar_active_reg_2
    );
\FSM_sequential_arb_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_arb_sm_cs[1]_i_1_n_0\,
      Q => \^arb_sm_cs\(1),
      R => ar_active_reg_2
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      I2 => \^axi_arready_int_reg_0\,
      I3 => s_axi_arvalid,
      O => s_axi_arburst_1_sn_1
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \^axi_arready_int_reg_0\,
      I2 => s_axi_arvalid,
      O => \s_axi_araddr[11]\
    );
\GEN_RD_CMD_OPT.arlen_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => \^axi_arready_int_reg_0\,
      I2 => s_axi_arvalid,
      I3 => \GEN_RD_CMD_OPT.arlen_reg_reg[1]\(0),
      O => \s_axi_arlen[1]_0\(0)
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80BF"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arvalid,
      I2 => \^axi_arready_int_reg_0\,
      I3 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]\(0),
      O => \s_axi_arlen[0]\(0)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80BF"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arvalid,
      I2 => \^axi_arready_int_reg_0\,
      I3 => \GEN_RD_CMD_OPT.brst_cnt_data_reg[0]\(0),
      O => \s_axi_arlen[0]_0\(0)
    );
\GEN_RD_CMD_OPT.wrap_addr_assign_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(2),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr_5_sn_1,
      I4 => s_axi_araddr(3),
      I5 => \GEN_RD_CMD_OPT.wrap_addr_assign_reg\,
      O => s_axi_arlen_1_sn_1
    );
\GEN_RD_CMD_OPT.wrap_addr_assign_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => \^axi_arready_int_reg_0\,
      I3 => s_axi_araddr(0),
      O => s_axi_araddr_5_sn_1
    );
ar_active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => last_arb_won_cmb,
      I1 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      I2 => axi_arready_int_i_2_n_0,
      I3 => \^arb2ar_active\,
      O => ar_active_i_1_n_0
    );
ar_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ar_active_i_1_n_0,
      Q => \^arb2ar_active\,
      R => ar_active_reg_2
    );
aw_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => aw_active_cmb,
      I1 => AW2Arb_Active_Clr,
      I2 => \^arb_sm_cs\(0),
      I3 => \^arb_sm_cs\(1),
      I4 => axi_awready_cmb,
      I5 => \^arb2aw_active\,
      O => aw_active_i_1_n_0
    );
aw_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_active_i_1_n_0,
      Q => \^arb2aw_active\,
      R => ar_active_reg_2
    );
axi_arready_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => axi_arready_int_i_2_n_0,
      I1 => last_arb_won_reg_0,
      I2 => s_axi_arvalid,
      I3 => s_axi_awvalid,
      O => axi_arready_cmb
    );
axi_arready_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0770000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => last_arb_won,
      I2 => AW2Arb_Active_Clr,
      I3 => \^arb_sm_cs\(0),
      I4 => s_axi_arvalid,
      I5 => \^arb_sm_cs\(1),
      O => axi_arready_int_i_2_n_0
    );
axi_arready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready_cmb,
      Q => \^axi_arready_int_reg_0\,
      R => ar_active_reg_2
    );
axi_awready_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888A8AA"
    )
        port map (
      I0 => last_arb_won_reg_1,
      I1 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      I2 => last_arb_won,
      I3 => s_axi_arvalid,
      I4 => \^arb_sm_cs\(1),
      I5 => \^arb_sm_cs\(0),
      O => axi_awready_cmb
    );
axi_awready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready_cmb,
      Q => s_axi_awready,
      R => ar_active_reg_2
    );
\bram_addr_a[10]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => \^axi_arready_int_reg_0\,
      I2 => s_axi_arvalid,
      O => \s_axi_araddr[10]\
    );
\bram_addr_a[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACACACACACACACA"
    )
        port map (
      I0 => Q(4),
      I1 => \bram_addr_a[11]\,
      I2 => \^arb2ar_active\,
      I3 => s_axi_arvalid,
      I4 => \^axi_arready_int_reg_0\,
      I5 => s_axi_araddr(7),
      O => bram_addr_a(2)
    );
\bram_addr_a[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^axi_arready_int_reg_0\,
      O => \^s_axi_arvalid_0\
    );
\bram_addr_a[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FFFFFF80FF0000"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => \^axi_arready_int_reg_0\,
      I3 => \bram_addr_a[6]\,
      I4 => \^arb2ar_active\,
      I5 => Q(2),
      O => bram_addr_a(0)
    );
\bram_addr_a[8]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => \^axi_arready_int_reg_0\,
      I2 => s_axi_arvalid,
      O => \s_axi_araddr[8]\
    );
\bram_addr_a[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACACACACACACACA"
    )
        port map (
      I0 => Q(3),
      I1 => \bram_addr_a[9]\,
      I2 => \^arb2ar_active\,
      I3 => s_axi_arvalid,
      I4 => \^axi_arready_int_reg_0\,
      I5 => s_axi_araddr(5),
      O => bram_addr_a(1)
    );
\bram_we_a[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(0),
      O => bram_we_a(0)
    );
\bram_we_a[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(10),
      O => bram_we_a(10)
    );
\bram_we_a[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(11),
      O => bram_we_a(11)
    );
\bram_we_a[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(12),
      O => bram_we_a(12)
    );
\bram_we_a[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(13),
      O => bram_we_a(13)
    );
\bram_we_a[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(14),
      O => bram_we_a(14)
    );
\bram_we_a[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(15),
      O => bram_we_a(15)
    );
\bram_we_a[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(1),
      O => bram_we_a(1)
    );
\bram_we_a[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(2),
      O => bram_we_a(2)
    );
\bram_we_a[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(3),
      O => bram_we_a(3)
    );
\bram_we_a[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(4),
      O => bram_we_a(4)
    );
\bram_we_a[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(5),
      O => bram_we_a(5)
    );
\bram_we_a[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(6),
      O => bram_we_a(6)
    );
\bram_we_a[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(7),
      O => bram_we_a(7)
    );
\bram_we_a[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(8),
      O => bram_we_a(8)
    );
\bram_we_a[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => \bram_we_a[15]\(9),
      O => bram_we_a(9)
    );
last_arb_won_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBABAAAA88A8"
    )
        port map (
      I0 => last_arb_won_cmb,
      I1 => axi_arready_cmb,
      I2 => last_arb_won_reg_1,
      I3 => last_arb_won_reg_0,
      I4 => last_arb_won_reg_2,
      I5 => last_arb_won,
      O => last_arb_won_i_1_n_0
    );
last_arb_won_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0500F700"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => last_arb_won,
      I2 => \^arb_sm_cs\(0),
      I3 => s_axi_arvalid,
      I4 => \^arb_sm_cs\(1),
      O => last_arb_won_cmb
    );
last_arb_won_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_arb_won_i_1_n_0,
      Q => last_arb_won,
      R => ar_active_reg_2
    );
\save_init_bram_addr_ld[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => aw_active_d1,
      O => \^aw_active_re\
    );
\save_init_bram_addr_ld_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_arready_int_reg_0\,
      I1 => s_axi_arvalid,
      O => axi_arready_int_reg_1
    );
\wrap_burst_total_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FFFFFF08000000"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arvalid,
      I4 => \^axi_arready_int_reg_0\,
      I5 => \wrap_burst_total_reg_reg[1]\(0),
      O => \s_axi_arlen[0]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_bram_ctrl_0_1_wrap_brst is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    curr_wrap_burst_reg_reg : out STD_LOGIC;
    aw_active_reg : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ : out STD_LOGIC;
    \wrap_burst_total_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \save_init_bram_addr_ld_reg[5]_0\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[6]_0\ : out STD_LOGIC;
    curr_wrap_burst_reg_reg_0 : out STD_LOGIC;
    curr_fixed_burst_reg_reg : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[17]\ : in STD_LOGIC;
    curr_fixed_burst_reg : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[17]_0\ : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Arb2AW_Active : in STD_LOGIC;
    curr_fixed_burst_reg_reg_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]\ : in STD_LOGIC;
    Arb2AR_Active : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[17]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int[17]_i_5_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    curr_wrap_burst_reg : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \save_init_bram_addr_ld_reg[5]_1\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_bram_ctrl_0_1_wrap_brst : entity is "wrap_brst";
end design_1_axi_bram_ctrl_0_1_wrap_brst;

architecture STRUCTURE of design_1_axi_bram_ctrl_0_1_wrap_brst is
  signal \ADDR_SNG_PORT.bram_addr_int[17]_i_7_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^curr_wrap_burst_reg_reg\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \save_init_bram_addr_ld[17]_i_3_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[5]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[12]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[13]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[14]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[15]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[16]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[17]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[5]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[6]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[7]\ : STD_LOGIC;
  signal \wrap_burst_total[0]_i_1_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_1_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[2]_i_1_n_0\ : STD_LOGIC;
  signal \^wrap_burst_total_reg[1]_0\ : STD_LOGIC;
  signal \wrap_burst_total_reg_n_0_[0]\ : STD_LOGIC;
  signal \wrap_burst_total_reg_n_0_[1]\ : STD_LOGIC;
  signal \wrap_burst_total_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[12]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[13]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[14]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[15]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[16]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[17]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[10]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[12]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[13]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[14]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[15]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[16]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[17]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[7]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[9]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_1\ : label is "soft_lutpair44";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  SR(0) <= \^sr\(0);
  curr_wrap_burst_reg_reg <= \^curr_wrap_burst_reg_reg\;
  \wrap_burst_total_reg[1]_0\ <= \^wrap_burst_total_reg[1]_0\;
\ADDR_SNG_PORT.bram_addr_int[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEFFFFFF"
    )
        port map (
      I0 => \^curr_wrap_burst_reg_reg\,
      I1 => Arb2AW_Active,
      I2 => curr_fixed_burst_reg_reg_0,
      I3 => s_axi_wvalid,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[6]\,
      I5 => Arb2AR_Active,
      O => aw_active_reg
    );
\ADDR_SNG_PORT.bram_addr_int[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[17]_1\(0),
      I1 => Arb2AR_Active,
      I2 => s_axi_awaddr(7),
      I3 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[12]\,
      O => D(0)
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[17]_1\(1),
      I1 => Arb2AR_Active,
      I2 => s_axi_awaddr(8),
      I3 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[13]\,
      O => D(1)
    );
\ADDR_SNG_PORT.bram_addr_int[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[17]_1\(2),
      I1 => Arb2AR_Active,
      I2 => s_axi_awaddr(9),
      I3 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[14]\,
      O => D(2)
    );
\ADDR_SNG_PORT.bram_addr_int[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[17]_1\(3),
      I1 => Arb2AR_Active,
      I2 => s_axi_awaddr(10),
      I3 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[15]\,
      O => D(3)
    );
\ADDR_SNG_PORT.bram_addr_int[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[17]_1\(4),
      I1 => Arb2AR_Active,
      I2 => s_axi_awaddr(11),
      I3 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[16]\,
      O => D(4)
    );
\ADDR_SNG_PORT.bram_addr_int[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E000A0FFFFFFFF"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[17]\,
      I1 => curr_fixed_burst_reg,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[17]_0\,
      I3 => aw_active_re,
      I4 => \^curr_wrap_burst_reg_reg\,
      I5 => s_axi_aresetn,
      O => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[17]_1\(5),
      I1 => Arb2AR_Active,
      I2 => s_axi_awaddr(12),
      I3 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[17]\,
      O => D(5)
    );
\ADDR_SNG_PORT.bram_addr_int[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7F7F777"
    )
        port map (
      I0 => curr_wrap_burst_reg,
      I1 => \ADDR_SNG_PORT.bram_addr_int[17]_i_5_0\(0),
      I2 => \wrap_burst_total_reg_n_0_[2]\,
      I3 => \wrap_burst_total_reg_n_0_[0]\,
      I4 => \wrap_burst_total_reg_n_0_[1]\,
      I5 => \ADDR_SNG_PORT.bram_addr_int[17]_i_7_n_0\,
      O => \^curr_wrap_burst_reg_reg\
    );
\ADDR_SNG_PORT.bram_addr_int[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5153D3D35353D3D3"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[17]_i_5_0\(1),
      I1 => \wrap_burst_total_reg_n_0_[0]\,
      I2 => \wrap_burst_total_reg_n_0_[1]\,
      I3 => \wrap_burst_total_reg_n_0_[2]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int[17]_i_5_0\(2),
      I5 => \ADDR_SNG_PORT.bram_addr_int[17]_i_5_0\(3),
      O => \ADDR_SNG_PORT.bram_addr_int[17]_i_7_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7F700F7"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[6]\,
      I1 => s_axi_wvalid,
      I2 => \^curr_wrap_burst_reg_reg\,
      I3 => Arb2AW_Active,
      I4 => curr_fixed_burst_reg_reg_0,
      I5 => Arb2AR_Active,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \save_init_bram_addr_ld[5]_i_2_n_0\,
      I1 => \save_init_bram_addr_ld_reg_n_0_[5]\,
      I2 => \wrap_burst_total_reg_n_0_[1]\,
      I3 => \wrap_burst_total_reg_n_0_[0]\,
      O => \save_init_bram_addr_ld_reg[5]_0\
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A82A"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[6]\,
      I1 => \wrap_burst_total_reg_n_0_[1]\,
      I2 => \wrap_burst_total_reg_n_0_[0]\,
      I3 => \wrap_burst_total_reg_n_0_[2]\,
      O => \save_init_bram_addr_ld_reg[6]_0\
    );
curr_fixed_burst_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A8A8ABA"
    )
        port map (
      I0 => curr_fixed_burst_reg,
      I1 => curr_fixed_burst_reg_reg_0,
      I2 => Arb2AW_Active,
      I3 => s_axi_awburst(1),
      I4 => s_axi_awburst(0),
      I5 => \^sr\(0),
      O => curr_fixed_burst_reg_reg
    );
curr_wrap_burst_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008ABA8A8A"
    )
        port map (
      I0 => curr_wrap_burst_reg,
      I1 => curr_fixed_burst_reg_reg_0,
      I2 => Arb2AW_Active,
      I3 => s_axi_awburst(0),
      I4 => s_axi_awburst(1),
      I5 => \^sr\(0),
      O => curr_wrap_burst_reg_reg_0
    );
\save_init_bram_addr_ld[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I2 => \^q\(2),
      O => p_1_in(5)
    );
\save_init_bram_addr_ld[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I2 => \^q\(3),
      O => p_1_in(6)
    );
\save_init_bram_addr_ld[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[12]\,
      O => p_1_in(7)
    );
\save_init_bram_addr_ld[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[13]\,
      O => p_1_in(8)
    );
\save_init_bram_addr_ld[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[14]\,
      O => p_1_in(9)
    );
\save_init_bram_addr_ld[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[15]\,
      O => p_1_in(10)
    );
\save_init_bram_addr_ld[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[16]\,
      O => p_1_in(11)
    );
\save_init_bram_addr_ld[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(12),
      I1 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[17]\,
      O => p_1_in(12)
    );
\save_init_bram_addr_ld[17]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => curr_fixed_burst_reg_reg_0,
      I1 => Arb2AW_Active,
      I2 => \^curr_wrap_burst_reg_reg\,
      O => \save_init_bram_addr_ld[17]_i_3_n_0\
    );
\save_init_bram_addr_ld[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[0]\,
      I1 => \wrap_burst_total_reg_n_0_[1]\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[5]\,
      I3 => \save_init_bram_addr_ld[5]_i_2_n_0\,
      I4 => s_axi_awaddr(0),
      I5 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      O => p_1_in(0)
    );
\save_init_bram_addr_ld[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40400040"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[2]\,
      I1 => curr_wrap_burst_reg,
      I2 => \ADDR_SNG_PORT.bram_addr_int[17]_i_5_0\(0),
      I3 => Arb2AW_Active,
      I4 => curr_fixed_burst_reg_reg_0,
      O => \save_init_bram_addr_ld[5]_i_2_n_0\
    );
\save_init_bram_addr_ld[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B88888B8B8B8"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[6]\,
      I3 => \wrap_burst_total_reg_n_0_[1]\,
      I4 => \wrap_burst_total_reg_n_0_[0]\,
      I5 => \wrap_burst_total_reg_n_0_[2]\,
      O => p_1_in(1)
    );
\save_init_bram_addr_ld[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^wrap_burst_total_reg[1]_0\,
      I1 => s_axi_awaddr(2),
      I2 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      O => p_1_in(2)
    );
\save_init_bram_addr_ld[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E644000000000000"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[1]\,
      I1 => \wrap_burst_total_reg_n_0_[0]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[17]_i_5_0\(2),
      I3 => \ADDR_SNG_PORT.bram_addr_int[17]_i_5_0\(1),
      I4 => \save_init_bram_addr_ld[5]_i_2_n_0\,
      I5 => \save_init_bram_addr_ld_reg_n_0_[7]\,
      O => \^wrap_burst_total_reg[1]_0\
    );
\save_init_bram_addr_ld[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I2 => \^q\(0),
      O => p_1_in(3)
    );
\save_init_bram_addr_ld[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \save_init_bram_addr_ld[17]_i_3_n_0\,
      I2 => \^q\(1),
      O => p_1_in(4)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(5),
      Q => \^q\(2),
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(6),
      Q => \^q\(3),
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(7),
      Q => \save_init_bram_addr_ld_reg_n_0_[12]\,
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\save_init_bram_addr_ld_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(8),
      Q => \save_init_bram_addr_ld_reg_n_0_[13]\,
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\save_init_bram_addr_ld_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(9),
      Q => \save_init_bram_addr_ld_reg_n_0_[14]\,
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\save_init_bram_addr_ld_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(10),
      Q => \save_init_bram_addr_ld_reg_n_0_[15]\,
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\save_init_bram_addr_ld_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(11),
      Q => \save_init_bram_addr_ld_reg_n_0_[16]\,
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\save_init_bram_addr_ld_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(12),
      Q => \save_init_bram_addr_ld_reg_n_0_[17]\,
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(0),
      Q => \save_init_bram_addr_ld_reg_n_0_[5]\,
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(1),
      Q => \save_init_bram_addr_ld_reg_n_0_[6]\,
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(2),
      Q => \save_init_bram_addr_ld_reg_n_0_[7]\,
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(3),
      Q => \^q\(0),
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => p_1_in(4),
      Q => \^q\(1),
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\wrap_burst_total[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000040"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awvalid,
      I2 => s_axi_awlen(0),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awlen(2),
      O => \wrap_burst_total[0]_i_1_n_0\
    );
\wrap_burst_total[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(0),
      O => \wrap_burst_total[1]_i_1_n_0\
    );
\wrap_burst_total[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awvalid,
      I2 => s_axi_awlen(2),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awlen(3),
      O => \wrap_burst_total[2]_i_1_n_0\
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[0]_i_1_n_0\,
      Q => \wrap_burst_total_reg_n_0_[0]\,
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[1]_i_1_n_0\,
      Q => \wrap_burst_total_reg_n_0_[1]\,
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[2]_i_1_n_0\,
      Q => \wrap_burst_total_reg_n_0_[2]\,
      R => \save_init_bram_addr_ld_reg[5]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_bram_ctrl_0_1_wrap_brst_rd is
  port (
    \wrap_burst_total_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[6]\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.arsize_reg_reg[2]\ : out STD_LOGIC;
    s_axi_arlen_2_sp_1 : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \wrap_burst_total_reg_reg[1]_1\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[8]\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.arsize_reg_reg[2]_0\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]_0\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]\ : out STD_LOGIC;
    \wrap_burst_total_reg_reg[1]_2\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0\ : out STD_LOGIC;
    \wrap_burst_total_reg_reg[1]_3\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    curr_wrap_burst_reg : in STD_LOGIC;
    wrap_addr_assign : in STD_LOGIC;
    arsize_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_1\ : in STD_LOGIC;
    \wrap_burst_total_reg_reg[2]_0\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_1\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_2\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_3\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[6]_0\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7]\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_1\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_2\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int[6]_i_3\ : in STD_LOGIC;
    \wrap_burst_total_reg_reg[1]_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bram_addr_a[10]\ : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \save_init_bram_addr_ld_reg_reg[17]_0\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    Arb2AR_Active : in STD_LOGIC;
    \bram_addr_a[17]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bram_addr_a[10]_0\ : in STD_LOGIC;
    bram_addr_a_8_sp_1 : in STD_LOGIC;
    \wrap_burst_total_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[5]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int[6]_i_3_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_3\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_4\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_5\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_6\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \save_init_bram_addr_ld_reg_reg[5]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_bram_ctrl_0_1_wrap_brst_rd : entity is "wrap_brst_rd";
end design_1_axi_bram_ctrl_0_1_wrap_brst_rd;

architecture STRUCTURE of design_1_axi_bram_ctrl_0_1_wrap_brst_rd is
  signal \ADDR_SNG_PORT.bram_addr_int[7]_i_10_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[7]_i_11_n_0\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[9]_i_2_n_0\ : STD_LOGIC;
  signal \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[11]\ : STD_LOGIC;
  signal \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[6]\ : STD_LOGIC;
  signal \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[9]\ : STD_LOGIC;
  signal \^gen_rd_cmd_opt.arsize_reg_reg[2]_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.wrap_addr_assign_i_10_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.wrap_addr_assign_i_5_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bram_addr_a[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_a[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_a[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_a[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_a[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_addr_a[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_a[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_a[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal bram_addr_a_8_sn_1 : STD_LOGIC;
  signal s_axi_arlen_2_sn_1 : STD_LOGIC;
  signal save_init_bram_addr_ld : STD_LOGIC_VECTOR ( 17 downto 12 );
  signal save_init_bram_addr_ld_reg : STD_LOGIC_VECTOR ( 17 downto 5 );
  signal wrap_burst_total : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wrap_burst_total_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^wrap_burst_total_reg_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^wrap_burst_total_reg_reg[1]_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[10]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[11]_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[7]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[8]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[9]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[9]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bram_addr_a[10]_INST_0_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bram_addr_a[12]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bram_addr_a[13]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bram_addr_a[14]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bram_addr_a[15]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bram_addr_a[16]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bram_addr_a[17]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bram_addr_a[5]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bram_addr_a[5]_INST_0_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bram_addr_a[7]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bram_addr_a[7]_INST_0_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bram_addr_a[8]_INST_0_i_1\ : label is "soft_lutpair19";
begin
  D(12 downto 0) <= \^d\(12 downto 0);
  \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]\ <= \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[11]\;
  \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[6]\ <= \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[6]\;
  \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]\ <= \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[9]\;
  \GEN_RD_CMD_OPT.arsize_reg_reg[2]_0\ <= \^gen_rd_cmd_opt.arsize_reg_reg[2]_0\;
  SR(0) <= \^sr\(0);
  bram_addr_a_8_sn_1 <= bram_addr_a_8_sp_1;
  s_axi_arlen_2_sp_1 <= s_axi_arlen_2_sn_1;
  \wrap_burst_total_reg_reg[1]_0\(0) <= \^wrap_burst_total_reg_reg[1]_0\(0);
  \wrap_burst_total_reg_reg[1]_1\ <= \^wrap_burst_total_reg_reg[1]_1\;
\ADDR_SNG_PORT.bram_addr_int[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => Q(6),
      I1 => \^gen_rd_cmd_opt.arsize_reg_reg[2]_0\,
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => Q(7),
      I1 => \^gen_rd_cmd_opt.arsize_reg_reg[2]_0\,
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0\
    );
\ADDR_SNG_PORT.bram_addr_int[17]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => arsize_reg(0),
      I1 => wrap_addr_assign,
      I2 => Q(0),
      I3 => curr_wrap_burst_reg,
      I4 => Arb2AR_Active,
      I5 => \GEN_RD_CMD_OPT.wrap_addr_assign_i_10_n_0\,
      O => \^gen_rd_cmd_opt.arsize_reg_reg[2]_0\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0282BABAAAAAAAAA"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[5]\,
      I1 => \^wrap_burst_total_reg_reg[1]_0\(0),
      I2 => wrap_burst_total_reg(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \ADDR_SNG_PORT.bram_addr_int[7]_i_10_n_0\,
      O => \wrap_burst_total_reg_reg[1]_2\
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AAAFAA2EAAEEAA"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[6]_i_3_0\,
      I1 => Q(1),
      I2 => \^wrap_burst_total_reg_reg[1]_0\(0),
      I3 => \ADDR_SNG_PORT.bram_addr_int[7]_i_10_n_0\,
      I4 => Q(2),
      I5 => wrap_burst_total_reg(0),
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => wrap_burst_total_reg(2),
      I1 => curr_wrap_burst_reg,
      I2 => Q(0),
      I3 => wrap_addr_assign,
      I4 => arsize_reg(0),
      O => \ADDR_SNG_PORT.bram_addr_int[7]_i_10_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => wrap_burst_total_reg(0),
      I3 => \^wrap_burst_total_reg_reg[1]_0\(0),
      I4 => wrap_burst_total_reg(2),
      I5 => Q(1),
      O => \ADDR_SNG_PORT.bram_addr_int[7]_i_11_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B838000000000000"
    )
        port map (
      I0 => Q(1),
      I1 => \^wrap_burst_total_reg_reg[1]_0\(0),
      I2 => wrap_burst_total_reg(0),
      I3 => Q(2),
      I4 => \ADDR_SNG_PORT.bram_addr_int[7]_i_10_n_0\,
      I5 => Q(3),
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A222A2A2"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[7]_i_10_n_0\,
      I1 => \^wrap_burst_total_reg_reg[1]_0\(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => wrap_burst_total_reg(0),
      O => \wrap_burst_total_reg_reg[1]_3\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => arsize_reg(0),
      I1 => wrap_addr_assign,
      I2 => Q(0),
      I3 => curr_wrap_burst_reg,
      I4 => \ADDR_SNG_PORT.bram_addr_int[6]_i_3\,
      I5 => \ADDR_SNG_PORT.bram_addr_int[7]_i_11_n_0\,
      O => \GEN_RD_CMD_OPT.arsize_reg_reg[2]\
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => Q(4),
      I1 => \^gen_rd_cmd_opt.arsize_reg_reg[2]_0\,
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[8]\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => Q(5),
      I1 => \^gen_rd_cmd_opt.arsize_reg_reg[2]_0\,
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F046FC13FC"
    )
        port map (
      I0 => \wrap_burst_total_reg_reg[2]_0\,
      I1 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_2\,
      I3 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_3_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0\,
      O => \^d\(5)
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F111FDDD"
    )
        port map (
      I0 => Q(6),
      I1 => wrap_addr_assign,
      I2 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I3 => s_axi_arvalid,
      I4 => save_init_bram_addr_ld_reg(10),
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_3_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEE10000"
    )
        port map (
      I0 => \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[11]\,
      I1 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_1\,
      I2 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0\,
      I3 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_4_n_0\,
      I4 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_2\,
      I5 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_5_n_0\,
      O => \^d\(6)
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBFFFBFBFBFF"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7]\,
      I1 => \bram_addr_a[7]_INST_0_i_1_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_6_n_0\,
      I3 => \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[9]\,
      I4 => s_axi_araddr(4),
      I5 => \wrap_burst_total_reg_reg[2]_0\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00474747FF474747"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(10),
      I1 => wrap_addr_assign,
      I2 => Q(6),
      I3 => s_axi_arvalid,
      I4 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I5 => s_axi_araddr(5),
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_4_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF010001000100"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      I2 => \wrap_burst_total_reg_reg[2]_0\,
      I3 => s_axi_araddr(6),
      I4 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_2\,
      I5 => \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[11]\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_5_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5333500053335FFF"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => save_init_bram_addr_ld_reg(8),
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I4 => wrap_addr_assign,
      I5 => Q(4),
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_6_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9C9C9C9FFEAC0D9"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_1\,
      I1 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_3_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_2\,
      I3 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_3\,
      I4 => s_axi_araddr(0),
      I5 => \wrap_burst_total_reg_reg[2]_0\,
      O => \^d\(0)
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003A3A3A"
    )
        port map (
      I0 => Q(1),
      I1 => \bram_addr_a[5]_INST_0_i_2_n_0\,
      I2 => wrap_addr_assign,
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I4 => s_axi_arvalid,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_3_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF46FC00F013FC"
    )
        port map (
      I0 => \wrap_burst_total_reg_reg[2]_0\,
      I1 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[6]_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_2\,
      I3 => \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[6]\,
      I4 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0\,
      I5 => s_axi_araddr(1),
      O => \^d\(1)
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F4C6F1C3"
    )
        port map (
      I0 => \wrap_burst_total_reg_reg[2]_0\,
      I1 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7]\,
      I2 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_3_n_0\,
      I3 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_2\,
      I4 => s_axi_araddr(2),
      I5 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0\,
      O => \^d\(2)
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0CAAAA00000000"
    )
        port map (
      I0 => Q(3),
      I1 => save_init_bram_addr_ld_reg(7),
      I2 => wrap_burst_total_reg(2),
      I3 => \^wrap_burst_total_reg_reg[1]_1\,
      I4 => wrap_addr_assign,
      I5 => \wrap_burst_total_reg_reg[2]_0\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_3_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrap_burst_total_reg_reg[1]_0\(0),
      I1 => wrap_burst_total_reg(0),
      O => \^wrap_burst_total_reg_reg[1]_1\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F4C6F1C3"
    )
        port map (
      I0 => \wrap_burst_total_reg_reg[2]_0\,
      I1 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_2_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_3_n_0\,
      I3 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_2\,
      I4 => s_axi_araddr(3),
      I5 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0\,
      O => \^d\(3)
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7]\,
      I1 => \bram_addr_a[7]_INST_0_i_1_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEE0222"
    )
        port map (
      I0 => Q(4),
      I1 => wrap_addr_assign,
      I2 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I3 => s_axi_arvalid,
      I4 => save_init_bram_addr_ld_reg(8),
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_3_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F4C6F1C3"
    )
        port map (
      I0 => \wrap_burst_total_reg_reg[2]_0\,
      I1 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[9]_i_2_n_0\,
      I2 => \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[9]\,
      I3 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_2\,
      I4 => s_axi_araddr(4),
      I5 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0\,
      O => \^d\(4)
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_6_n_0\,
      I1 => \bram_addr_a[7]_INST_0_i_1_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7]\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[9]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.wrap_addr_assign_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF54FFFFFF540000"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.wrap_addr_assign_reg_3\,
      I1 => \GEN_RD_CMD_OPT.wrap_addr_assign_reg_4\,
      I2 => \GEN_RD_CMD_OPT.wrap_addr_assign_reg_5\,
      I3 => \GEN_RD_CMD_OPT.wrap_addr_assign_i_5_n_0\,
      I4 => \GEN_RD_CMD_OPT.wrap_addr_assign_reg_6\,
      I5 => wrap_addr_assign,
      O => \GEN_RD_CMD_OPT.wrap_addr_assign_reg\
    );
\GEN_RD_CMD_OPT.wrap_addr_assign_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF300FFF0F"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => wrap_burst_total_reg(0),
      I3 => \^wrap_burst_total_reg_reg[1]_0\(0),
      I4 => Q(1),
      I5 => wrap_burst_total_reg(2),
      O => \GEN_RD_CMD_OPT.wrap_addr_assign_i_10_n_0\
    );
\GEN_RD_CMD_OPT.wrap_addr_assign_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0\,
      I1 => \GEN_RD_CMD_OPT.wrap_addr_assign_reg_1\,
      I2 => \wrap_burst_total_reg_reg[2]_0\,
      I3 => \GEN_RD_CMD_OPT.wrap_addr_assign_reg_2\(0),
      I4 => \GEN_RD_CMD_OPT.wrap_addr_assign_reg_2\(1),
      I5 => \GEN_RD_CMD_OPT.wrap_addr_assign_i_10_n_0\,
      O => \GEN_RD_CMD_OPT.wrap_addr_assign_i_5_n_0\
    );
\bram_addr_a[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACAFAFAFACAFACA"
    )
        port map (
      I0 => \bram_addr_a[17]\(3),
      I1 => \bram_addr_a[10]_INST_0_i_1_n_0\,
      I2 => Arb2AR_Active,
      I3 => \bram_addr_a[10]_0\,
      I4 => \bram_addr_a[10]\,
      I5 => Q(6),
      O => bram_addr_a(3)
    );
\bram_addr_a[10]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(10),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I3 => wrap_addr_assign,
      O => \bram_addr_a[10]_INST_0_i_1_n_0\
    );
\bram_addr_a[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEE0222"
    )
        port map (
      I0 => Q(7),
      I1 => wrap_addr_assign,
      I2 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I3 => s_axi_arvalid,
      I4 => save_init_bram_addr_ld_reg(11),
      O => \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[11]\
    );
\bram_addr_a[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(7),
      I1 => Arb2AR_Active,
      I2 => \bram_addr_a[17]\(4),
      O => bram_addr_a(4)
    );
\bram_addr_a[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAFAFAFCCA0A0A0"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(12),
      I1 => s_axi_araddr(7),
      I2 => wrap_addr_assign,
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I4 => s_axi_arvalid,
      I5 => Q(8),
      O => \^d\(7)
    );
\bram_addr_a[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(8),
      I1 => Arb2AR_Active,
      I2 => \bram_addr_a[17]\(5),
      O => bram_addr_a(5)
    );
\bram_addr_a[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAFAFAFCCA0A0A0"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(13),
      I1 => s_axi_araddr(8),
      I2 => wrap_addr_assign,
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I4 => s_axi_arvalid,
      I5 => Q(9),
      O => \^d\(8)
    );
\bram_addr_a[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(9),
      I1 => Arb2AR_Active,
      I2 => \bram_addr_a[17]\(6),
      O => bram_addr_a(6)
    );
\bram_addr_a[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAFAFAFCCA0A0A0"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(14),
      I1 => s_axi_araddr(9),
      I2 => wrap_addr_assign,
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I4 => s_axi_arvalid,
      I5 => Q(10),
      O => \^d\(9)
    );
\bram_addr_a[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(10),
      I1 => Arb2AR_Active,
      I2 => \bram_addr_a[17]\(7),
      O => bram_addr_a(7)
    );
\bram_addr_a[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAFAFAFCCA0A0A0"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(15),
      I1 => s_axi_araddr(10),
      I2 => wrap_addr_assign,
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I4 => s_axi_arvalid,
      I5 => Q(11),
      O => \^d\(10)
    );
\bram_addr_a[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(11),
      I1 => Arb2AR_Active,
      I2 => \bram_addr_a[17]\(8),
      O => bram_addr_a(8)
    );
\bram_addr_a[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAFAFAFCCA0A0A0"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(16),
      I1 => s_axi_araddr(11),
      I2 => wrap_addr_assign,
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I4 => s_axi_arvalid,
      I5 => Q(12),
      O => \^d\(11)
    );
\bram_addr_a[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(12),
      I1 => Arb2AR_Active,
      I2 => \bram_addr_a[17]\(9),
      O => bram_addr_a(9)
    );
\bram_addr_a[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAFAFAFCCA0A0A0"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(17),
      I1 => s_axi_araddr(12),
      I2 => wrap_addr_assign,
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I4 => s_axi_arvalid,
      I5 => Q(13),
      O => \^d\(12)
    );
\bram_addr_a[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \bram_addr_a[5]_INST_0_i_1_n_0\,
      I1 => Arb2AR_Active,
      I2 => \bram_addr_a[17]\(0),
      O => bram_addr_a(0)
    );
\bram_addr_a[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00727272727272"
    )
        port map (
      I0 => wrap_addr_assign,
      I1 => \bram_addr_a[5]_INST_0_i_2_n_0\,
      I2 => Q(1),
      I3 => s_axi_araddr(0),
      I4 => s_axi_arvalid,
      I5 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      O => \bram_addr_a[5]_INST_0_i_1_n_0\
    );
\bram_addr_a[5]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"757D"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(5),
      I1 => wrap_burst_total_reg(2),
      I2 => \^wrap_burst_total_reg_reg[1]_0\(0),
      I3 => wrap_burst_total_reg(0),
      O => \bram_addr_a[5]_INST_0_i_2_n_0\
    );
\bram_addr_a[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF420000FF42FF42"
    )
        port map (
      I0 => \wrap_burst_total_reg_reg[1]_4\(0),
      I1 => wrap_burst_total(2),
      I2 => \bram_addr_a[6]_INST_0_i_2_n_0\,
      I3 => \bram_addr_a[6]_INST_0_i_3_n_0\,
      I4 => \bram_addr_a[10]\,
      I5 => Q(2),
      O => \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[6]\
    );
\bram_addr_a[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF555555FF555555"
    )
        port map (
      I0 => wrap_burst_total_reg(0),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arvalid,
      I4 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I5 => s_axi_arlen_2_sn_1,
      O => \bram_addr_a[6]_INST_0_i_2_n_0\
    );
\bram_addr_a[6]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FFF"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I2 => wrap_addr_assign,
      I3 => save_init_bram_addr_ld_reg(6),
      O => \bram_addr_a[6]_INST_0_i_3_n_0\
    );
\bram_addr_a[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \bram_addr_a[7]_INST_0_i_1_n_0\,
      I1 => Arb2AR_Active,
      I2 => \bram_addr_a[17]\(1),
      O => bram_addr_a(1)
    );
\bram_addr_a[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE2E2E2EE2222222"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \wrap_burst_total_reg_reg[2]_0\,
      I2 => wrap_addr_assign,
      I3 => \bram_addr_a[7]_INST_0_i_2_n_0\,
      I4 => save_init_bram_addr_ld_reg(7),
      I5 => Q(3),
      O => \bram_addr_a[7]_INST_0_i_1_n_0\
    );
\bram_addr_a[7]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => wrap_burst_total_reg(0),
      I1 => \^wrap_burst_total_reg_reg[1]_0\(0),
      I2 => wrap_burst_total_reg(2),
      O => \bram_addr_a[7]_INST_0_i_2_n_0\
    );
\bram_addr_a[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACAFAFAFACAFACA"
    )
        port map (
      I0 => \bram_addr_a[17]\(2),
      I1 => \bram_addr_a[8]_INST_0_i_1_n_0\,
      I2 => Arb2AR_Active,
      I3 => bram_addr_a_8_sn_1,
      I4 => \bram_addr_a[10]\,
      I5 => Q(4),
      O => bram_addr_a(2)
    );
\bram_addr_a[8]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(8),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I3 => wrap_addr_assign,
      O => \bram_addr_a[8]_INST_0_i_1_n_0\
    );
\bram_addr_a[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEE0222"
    )
        port map (
      I0 => Q(5),
      I1 => wrap_addr_assign,
      I2 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I3 => s_axi_arvalid,
      I4 => save_init_bram_addr_ld_reg(9),
      O => \^gen_rd_cmd_opt.gen_wo_narrow.bram_addr_int_reg[9]\
    );
bram_rst_a_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(12),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I3 => s_axi_araddr(7),
      O => save_init_bram_addr_ld(12)
    );
\save_init_bram_addr_ld_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(13),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I3 => s_axi_araddr(8),
      O => save_init_bram_addr_ld(13)
    );
\save_init_bram_addr_ld_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(14),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I3 => s_axi_araddr(9),
      O => save_init_bram_addr_ld(14)
    );
\save_init_bram_addr_ld_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(15),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I3 => s_axi_araddr(10),
      O => save_init_bram_addr_ld(15)
    );
\save_init_bram_addr_ld_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(16),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I3 => s_axi_araddr(11),
      O => save_init_bram_addr_ld(16)
    );
\save_init_bram_addr_ld_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => save_init_bram_addr_ld_reg(17),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I3 => s_axi_araddr(12),
      O => save_init_bram_addr_ld(17)
    );
\save_init_bram_addr_ld_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]_0\,
      D => s_axi_araddr(5),
      Q => save_init_bram_addr_ld_reg(10),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]_0\,
      D => s_axi_araddr(6),
      Q => save_init_bram_addr_ld_reg(11),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => save_init_bram_addr_ld(12),
      Q => save_init_bram_addr_ld_reg(12),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => save_init_bram_addr_ld(13),
      Q => save_init_bram_addr_ld_reg(13),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => save_init_bram_addr_ld(14),
      Q => save_init_bram_addr_ld_reg(14),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => save_init_bram_addr_ld(15),
      Q => save_init_bram_addr_ld_reg(15),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => save_init_bram_addr_ld(16),
      Q => save_init_bram_addr_ld_reg(16),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => save_init_bram_addr_ld(17),
      Q => save_init_bram_addr_ld_reg(17),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]_0\,
      D => s_axi_araddr(0),
      Q => save_init_bram_addr_ld_reg(5),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]_0\,
      D => s_axi_araddr(1),
      Q => save_init_bram_addr_ld_reg(6),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]_0\,
      D => s_axi_araddr(2),
      Q => save_init_bram_addr_ld_reg(7),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]_0\,
      D => s_axi_araddr(3),
      Q => save_init_bram_addr_ld_reg(8),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]_0\,
      D => s_axi_araddr(4),
      Q => save_init_bram_addr_ld_reg(9),
      R => \^sr\(0)
    );
\wrap_burst_total_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3FBF3F00008000"
    )
        port map (
      I0 => s_axi_arlen_2_sn_1,
      I1 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I2 => s_axi_arvalid,
      I3 => s_axi_arlen(0),
      I4 => s_axi_arlen(3),
      I5 => wrap_burst_total_reg(0),
      O => wrap_burst_total(0)
    );
\wrap_burst_total_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5CCCCCCA5333333"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => \wrap_burst_total_reg_reg[0]_0\(1),
      I2 => s_axi_arlen(1),
      I3 => \save_init_bram_addr_ld_reg_reg[17]_0\,
      I4 => s_axi_arvalid,
      I5 => \wrap_burst_total_reg_reg[0]_0\(0),
      O => s_axi_arlen_2_sn_1
    );
\wrap_burst_total_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => wrap_burst_total_reg(2),
      I1 => \wrap_burst_total_reg_reg[2]_0\,
      I2 => s_axi_arlen(3),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arlen(2),
      I5 => s_axi_arlen(1),
      O => wrap_burst_total(2)
    );
\wrap_burst_total_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_burst_total(0),
      Q => wrap_burst_total_reg(0),
      R => \^sr\(0)
    );
\wrap_burst_total_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \wrap_burst_total_reg_reg[1]_4\(0),
      Q => \^wrap_burst_total_reg_reg[1]_0\(0),
      R => \^sr\(0)
    );
\wrap_burst_total_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_burst_total(2),
      Q => wrap_burst_total_reg(2),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_bram_ctrl_0_1_rd_chnl is
  port (
    \GEN_RD_CMD_OPT.axi_rvalid_int_reg_0\ : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    \GEN_RD_CMD_OPT.axi_rvalid_int_reg_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_en_a : out STD_LOGIC;
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr_4_sp_1 : out STD_LOGIC;
    \FSM_sequential_arb_sm_cs_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0\ : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[6]_0\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]_0\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.arsize_reg_reg[2]_0\ : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \wrap_burst_total_reg_reg[1]\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.arlen_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[8]_0\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.arsize_reg_reg[2]_1\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]_1\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_1\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0\ : out STD_LOGIC;
    \wrap_burst_total_reg_reg[1]_0\ : out STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_1\ : out STD_LOGIC;
    \wrap_burst_total_reg_reg[1]_1\ : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \save_init_bram_addr_ld_reg_reg[17]\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \wrap_burst_total_reg_reg[2]\ : in STD_LOGIC;
    BRAM_En_A_i : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    arb_sm_cs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_1\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_2\ : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int[6]_i_3\ : in STD_LOGIC;
    \bram_addr_a[17]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Arb2AR_Active : in STD_LOGIC;
    \wrap_burst_total_reg_reg[1]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    bram_addr_a_10_sp_1 : in STD_LOGIC;
    bram_addr_a_8_sp_1 : in STD_LOGIC;
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.arlen_reg_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[5]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int[6]_i_3_0\ : in STD_LOGIC;
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_1\ : in STD_LOGIC;
    \save_init_bram_addr_ld_reg_reg[5]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_bram_ctrl_0_1_rd_chnl : entity is "rd_chnl";
end design_1_axi_bram_ctrl_0_1_rd_chnl;

architecture STRUCTURE of design_1_axi_bram_ctrl_0_1_rd_chnl is
  signal \^d\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[6]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[10]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[11]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[12]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[13]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[14]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[15]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[16]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[17]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[9]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.I_WRAP_BRST_n_18\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.I_WRAP_BRST_n_40\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_rd_cmd_opt.arlen_reg_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \GEN_RD_CMD_OPT.arsize_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0\ : STD_LOGIC;
  signal \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\ : STD_LOGIC;
  signal \^gen_rd_cmd_opt.axi_rvalid_int_reg_1\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr_reg\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^gen_rd_cmd_opt.brst_cnt_addr_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_data_reg\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^gen_rd_cmd_opt.brst_cnt_data_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \GEN_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.wrap_addr_assign_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.wrap_addr_assign_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.wrap_addr_assign_i_6_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.wrap_addr_assign_i_9_n_0\ : STD_LOGIC;
  signal arburst_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal arid_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal arid_temp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal arlen_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal arlen_temp : STD_LOGIC_VECTOR ( 2 to 2 );
  signal arsize_reg : STD_LOGIC_VECTOR ( 2 to 2 );
  signal axi_aresetn_d3 : STD_LOGIC;
  signal axi_rlast_cmb_reg : STD_LOGIC;
  signal axi_rvalid_cmb : STD_LOGIC;
  signal \bram_addr_a[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal bram_addr_a_10_sn_1 : STD_LOGIC;
  signal bram_addr_a_8_sn_1 : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_addr_sm_cs : STD_LOGIC;
  signal rd_data_sm_cs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rd_data_sm_ns : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_araddr_4_sn_1 : STD_LOGIC;
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal wrap_addr_assign : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[11]_i_3\ : label is "soft_lutpair30";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_reg\ : label is "next_addr:1,idle:0";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[0]\ : label is "last_data:10,read_data_one:01,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ : label is "last_data:10,read_data_one:01,idle:00";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arburst_reg[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arburst_reg[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arlen_reg[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arsize_reg[2]_i_1\ : label is "soft_lutpair33";
  attribute srl_name : string;
  attribute srl_name of \GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2 ";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.wrap_addr_assign_i_6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of axi_arready_int_i_3 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bram_addr_a[10]_INST_0_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of s_axi_rlast_INST_0 : label is "soft_lutpair29";
begin
  D(5 downto 0) <= \^d\(5 downto 0);
  \GEN_RD_CMD_OPT.arlen_reg_reg[1]_0\(0) <= \^gen_rd_cmd_opt.arlen_reg_reg[1]_0\(0);
  \GEN_RD_CMD_OPT.axi_rvalid_int_reg_0\ <= \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\;
  \GEN_RD_CMD_OPT.axi_rvalid_int_reg_1\ <= \^gen_rd_cmd_opt.axi_rvalid_int_reg_1\;
  \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0\(0) <= \^gen_rd_cmd_opt.brst_cnt_addr_reg[0]_0\(0);
  \GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0\(0) <= \^gen_rd_cmd_opt.brst_cnt_data_reg[0]_0\(0);
  bram_addr_a_10_sn_1 <= bram_addr_a_10_sp_1;
  bram_addr_a_8_sn_1 <= bram_addr_a_8_sp_1;
  s_axi_araddr_4_sp_1 <= s_axi_araddr_4_sn_1;
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
\ADDR_SNG_PORT.bram_addr_int[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I1 => s_axi_rready,
      I2 => rd_addr_sm_cs,
      O => \^gen_rd_cmd_opt.axi_rvalid_int_reg_1\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4744676400000000"
    )
        port map (
      I0 => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0\,
      I1 => rd_addr_sm_cs,
      I2 => \wrap_burst_total_reg_reg[2]\,
      I3 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_2_n_0\,
      I4 => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0\,
      I5 => axi_aresetn_d3,
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_1\,
      I1 => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_4_n_0\,
      I2 => \^gen_rd_cmd_opt.brst_cnt_addr_reg[0]_0\(0),
      I3 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(2),
      I4 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(6),
      I5 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(4),
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => arlen_reg(0),
      I1 => arlen_reg(4),
      I2 => \^gen_rd_cmd_opt.arlen_reg_reg[1]_0\(0),
      I3 => arlen_reg(5),
      I4 => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_5_n_0\,
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(3),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(1),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(7),
      I3 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(5),
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_4_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => arlen_reg(7),
      I1 => arlen_reg(6),
      I2 => arlen_reg(3),
      I3 => arlen_reg(2),
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_5_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0\,
      Q => rd_addr_sm_cs,
      R => '0'
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECFFC0C000000000"
    )
        port map (
      I0 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(1),
      I3 => \wrap_burst_total_reg_reg[2]\,
      I4 => rd_data_sm_ns(0),
      I5 => axi_aresetn_d3,
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101F131F10101310"
    )
        port map (
      I0 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0\,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(0),
      I3 => \wrap_burst_total_reg_reg[2]\,
      I4 => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0\,
      I5 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_2_n_0\,
      O => rd_data_sm_ns(0)
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCCCD0C000000000"
    )
        port map (
      I0 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(1),
      I3 => \wrap_burst_total_reg_reg[2]\,
      I4 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0\,
      I5 => axi_aresetn_d3,
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(1),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(5),
      I2 => \^gen_rd_cmd_opt.brst_cnt_data_reg[0]_0\(0),
      I3 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(7),
      I4 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\,
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I1 => s_axi_rready,
      I2 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(3),
      I3 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(6),
      I4 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(2),
      I5 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(4),
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1_n_0\,
      Q => rd_data_sm_cs(0),
      R => '0'
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0\,
      Q => rd_data_sm_cs(1),
      R => '0'
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arburst_reg(0),
      I1 => arburst_reg(1),
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F0F0F4F4F4F4F"
    )
        port map (
      I0 => \wrap_burst_total_reg_reg[2]\,
      I1 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_2_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_3_n_0\,
      I3 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I4 => s_axi_rready,
      I5 => rd_addr_sm_cs,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => s_axi_arlen(5),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arlen(4),
      I4 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_4_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFFFEFFFE000"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]\,
      I4 => arburst_reg(0),
      I5 => arburst_reg(1),
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_3_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(2),
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_4_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2DFF2D002D002DFF"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4]\,
      I1 => wrap_addr_assign,
      I2 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_2_n_0\,
      I3 => \wrap_burst_total_reg_reg[2]\,
      I4 => s_axi_araddr(0),
      I5 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_4_n_0\,
      O => p_2_in(0)
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0BBBFBBB"
    )
        port map (
      I0 => wrap_addr_assign,
      I1 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4]\,
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]\,
      I4 => s_axi_araddr(0),
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_4_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF77777777"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      I2 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[5]\,
      I3 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4]\,
      I4 => wrap_addr_assign,
      I5 => \wrap_burst_total_reg_reg[2]\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[6]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF0000F7FFF7FF"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(1),
      I2 => \wrap_burst_total_reg_reg[2]\,
      I3 => s_axi_araddr(0),
      I4 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_4_n_0\,
      I5 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[6]\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFFFFF"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \save_init_bram_addr_ld_reg_reg[17]\,
      I2 => wrap_addr_assign,
      I3 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4]\,
      I4 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[5]\,
      O => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_4_n_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => p_2_in(6),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[10]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => p_2_in(7),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[11]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => \^d\(0),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[12]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => \^d\(1),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[13]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => \^d\(2),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[14]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => \^d\(3),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[15]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => \^d\(4),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[16]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => \^d\(5),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[17]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => p_2_in(0),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => p_2_in(1),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[5]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => p_2_in(2),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[6]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => p_2_in(3),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[7]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => p_2_in(4),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[8]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_1_n_0\,
      D => p_2_in(5),
      Q => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[9]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.I_WRAP_BRST\: entity work.design_1_axi_bram_ctrl_0_1_wrap_brst_rd
     port map (
      \ADDR_SNG_PORT.bram_addr_int[6]_i_3\ => \ADDR_SNG_PORT.bram_addr_int[6]_i_3\,
      \ADDR_SNG_PORT.bram_addr_int[6]_i_3_0\ => \ADDR_SNG_PORT.bram_addr_int[6]_i_3_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]\ => \ADDR_SNG_PORT.bram_addr_int_reg[5]\,
      Arb2AR_Active => Arb2AR_Active,
      D(12 downto 7) => \^d\(5 downto 0),
      D(6 downto 0) => p_2_in(7 downto 1),
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_1\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_1\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_1\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_2\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_2\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_3_n_0\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_1\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_1\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_2_n_0\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_2\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_2_n_0\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_3\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_4_n_0\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[6]\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[6]_0\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[6]_0\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[6]_i_2_n_0\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7]\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2_n_0\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[8]\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[8]_0\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]_0\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]_0\ => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]_1\,
      \GEN_RD_CMD_OPT.arsize_reg_reg[2]\ => \GEN_RD_CMD_OPT.arsize_reg_reg[2]_0\,
      \GEN_RD_CMD_OPT.arsize_reg_reg[2]_0\ => \GEN_RD_CMD_OPT.arsize_reg_reg[2]_1\,
      \GEN_RD_CMD_OPT.wrap_addr_assign_reg\ => \GEN_RD_CMD_OPT.I_WRAP_BRST_n_40\,
      \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0\ => \GEN_RD_CMD_OPT.wrap_addr_assign_i_9_n_0\,
      \GEN_RD_CMD_OPT.wrap_addr_assign_reg_1\ => \^gen_rd_cmd_opt.axi_rvalid_int_reg_1\,
      \GEN_RD_CMD_OPT.wrap_addr_assign_reg_2\(1 downto 0) => arburst_reg(1 downto 0),
      \GEN_RD_CMD_OPT.wrap_addr_assign_reg_3\ => \GEN_RD_CMD_OPT.wrap_addr_assign_i_2_n_0\,
      \GEN_RD_CMD_OPT.wrap_addr_assign_reg_4\ => \GEN_RD_CMD_OPT.wrap_addr_assign_i_3_n_0\,
      \GEN_RD_CMD_OPT.wrap_addr_assign_reg_5\ => \GEN_RD_CMD_OPT.wrap_addr_assign_reg_1\,
      \GEN_RD_CMD_OPT.wrap_addr_assign_reg_6\ => \GEN_RD_CMD_OPT.wrap_addr_assign_i_6_n_0\,
      Q(13) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[17]\,
      Q(12) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[16]\,
      Q(11) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[15]\,
      Q(10) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[14]\,
      Q(9) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[13]\,
      Q(8) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[12]\,
      Q(7) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[11]\,
      Q(6) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[10]\,
      Q(5) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[9]\,
      Q(4) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[8]\,
      Q(3) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[7]\,
      Q(2) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[6]\,
      Q(1) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[5]\,
      Q(0) => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4]\,
      SR(0) => \^s_axi_aresetn_0\,
      arsize_reg(0) => arsize_reg(2),
      bram_addr_a(9 downto 0) => bram_addr_a(10 downto 1),
      \bram_addr_a[10]\ => \bram_addr_a[10]_INST_0_i_3_n_0\,
      \bram_addr_a[10]_0\ => bram_addr_a_10_sn_1,
      \bram_addr_a[17]\(9 downto 0) => \bram_addr_a[17]\(10 downto 1),
      bram_addr_a_8_sp_1 => bram_addr_a_8_sn_1,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(12 downto 0) => s_axi_araddr(13 downto 1),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arlen_2_sp_1 => \GEN_RD_CMD_OPT.I_WRAP_BRST_n_18\,
      s_axi_arvalid => s_axi_arvalid,
      \save_init_bram_addr_ld_reg_reg[17]_0\ => \save_init_bram_addr_ld_reg_reg[17]\,
      \save_init_bram_addr_ld_reg_reg[5]_0\ => \save_init_bram_addr_ld_reg_reg[5]\,
      wrap_addr_assign => wrap_addr_assign,
      \wrap_burst_total_reg_reg[0]_0\(1) => arlen_reg(2),
      \wrap_burst_total_reg_reg[0]_0\(0) => \^gen_rd_cmd_opt.arlen_reg_reg[1]_0\(0),
      \wrap_burst_total_reg_reg[1]_0\(0) => Q(0),
      \wrap_burst_total_reg_reg[1]_1\ => \wrap_burst_total_reg_reg[1]\,
      \wrap_burst_total_reg_reg[1]_2\ => \wrap_burst_total_reg_reg[1]_0\,
      \wrap_burst_total_reg_reg[1]_3\ => \wrap_burst_total_reg_reg[1]_1\,
      \wrap_burst_total_reg_reg[1]_4\(0) => \wrap_burst_total_reg_reg[1]_2\(0),
      \wrap_burst_total_reg_reg[2]_0\ => \wrap_burst_total_reg_reg[2]\
    );
\GEN_RD_CMD_OPT.arburst_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => arburst_reg(0),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]\,
      I3 => s_axi_arburst(0),
      O => \GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.arburst_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => arburst_reg(1),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]\,
      I3 => s_axi_arburst(1),
      O => \GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.arburst_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0\,
      Q => arburst_reg(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arburst_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0\,
      Q => arburst_reg(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]\,
      D => s_axi_arid(0),
      Q => arid_reg(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]\,
      D => s_axi_arid(1),
      Q => arid_reg(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]\,
      D => s_axi_arid(2),
      Q => arid_reg(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]\,
      D => s_axi_arid(3),
      Q => arid_reg(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => arlen_reg(2),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]\,
      I3 => s_axi_arlen(2),
      O => arlen_temp(2)
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]\,
      D => s_axi_arlen(0),
      Q => arlen_reg(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.arlen_reg_reg[1]_1\(0),
      Q => \^gen_rd_cmd_opt.arlen_reg_reg[1]_0\(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => arlen_temp(2),
      Q => arlen_reg(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]\,
      D => s_axi_arlen(3),
      Q => arlen_reg(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]\,
      D => s_axi_arlen(4),
      Q => arlen_reg(4),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]\,
      D => s_axi_arlen(5),
      Q => arlen_reg(5),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]\,
      D => s_axi_arlen(6),
      Q => arlen_reg(6),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \save_init_bram_addr_ld_reg_reg[5]\,
      D => s_axi_arlen(7),
      Q => arlen_reg(7),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arsize_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => arsize_reg(2),
      I1 => \save_init_bram_addr_ld_reg_reg[17]\,
      I2 => s_axi_arvalid,
      O => \GEN_RD_CMD_OPT.arsize_reg[2]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.arsize_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.arsize_reg[2]_i_1_n_0\,
      Q => arsize_reg(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => s_axi_aclk,
      D => s_axi_aresetn,
      Q => \GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2_n_0\
    );
\GEN_RD_CMD_OPT.axi_aresetn_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2_n_0\,
      Q => axi_aresetn_d3,
      R => '0'
    );
\GEN_RD_CMD_OPT.axi_rid_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => arid_reg(0),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]\,
      I3 => s_axi_arid(0),
      O => arid_temp(0)
    );
\GEN_RD_CMD_OPT.axi_rid_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => arid_reg(1),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]\,
      I3 => s_axi_arid(1),
      O => arid_temp(1)
    );
\GEN_RD_CMD_OPT.axi_rid_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => arid_reg(2),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]\,
      I3 => s_axi_arid(2),
      O => arid_temp(2)
    );
\GEN_RD_CMD_OPT.axi_rid_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F88FF8888"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_reg[17]\,
      I1 => s_axi_arvalid,
      I2 => rd_data_sm_cs(1),
      I3 => s_axi_rready,
      I4 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => rd_data_sm_cs(0),
      O => axi_rvalid_cmb
    );
\GEN_RD_CMD_OPT.axi_rid_int[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => arid_reg(3),
      I1 => s_axi_arvalid,
      I2 => \save_init_bram_addr_ld_reg_reg[17]\,
      I3 => s_axi_arid(3),
      O => arid_temp(3)
    );
\GEN_RD_CMD_OPT.axi_rid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rvalid_cmb,
      D => arid_temp(0),
      Q => s_axi_rid(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.axi_rid_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rvalid_cmb,
      D => arid_temp(1),
      Q => s_axi_rid(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.axi_rid_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rvalid_cmb,
      D => arid_temp(2),
      Q => s_axi_rid(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.axi_rid_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rvalid_cmb,
      D => arid_temp(3),
      Q => s_axi_rid(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFFDDDD00001111"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[17]_i_2_n_0\,
      I1 => rd_data_sm_cs(0),
      I2 => s_axi_rready,
      I3 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I4 => \wrap_burst_total_reg_reg[2]\,
      I5 => axi_rlast_cmb_reg,
      O => \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0\
    );
\GEN_RD_CMD_OPT.axi_rlast_cmb_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0\,
      Q => axi_rlast_cmb_reg,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.axi_rvalid_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_cmb,
      Q => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAC3C3C3"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(1),
      I2 => \^gen_rd_cmd_opt.brst_cnt_addr_reg[0]_0\(0),
      I3 => s_axi_arvalid,
      I4 => \save_init_bram_addr_ld_reg_reg[17]\,
      O => \p_0_in__0\(1)
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA9A9A900A9A9A9"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(2),
      I1 => \^gen_rd_cmd_opt.brst_cnt_addr_reg[0]_0\(0),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(1),
      I3 => s_axi_arvalid,
      I4 => \save_init_bram_addr_ld_reg_reg[17]\,
      I5 => s_axi_arlen(2),
      O => \p_0_in__0\(2)
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(3),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(2),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(1),
      I3 => \^gen_rd_cmd_opt.brst_cnt_addr_reg[0]_0\(0),
      I4 => \wrap_burst_total_reg_reg[2]\,
      I5 => s_axi_arlen(3),
      O => \p_0_in__0\(3)
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6660666"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(4),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0\,
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]\,
      I4 => s_axi_arlen(4),
      O => \p_0_in__0\(4)
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(2),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(1),
      I2 => \^gen_rd_cmd_opt.brst_cnt_addr_reg[0]_0\(0),
      I3 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(3),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6660666"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(5),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0\,
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]\,
      I4 => s_axi_arlen(5),
      O => \p_0_in__0\(5)
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(3),
      I1 => \^gen_rd_cmd_opt.brst_cnt_addr_reg[0]_0\(0),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(1),
      I3 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(2),
      I4 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(4),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6660666"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(6),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0\,
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]\,
      I4 => s_axi_arlen(6),
      O => \p_0_in__0\(6)
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => rd_addr_sm_cs,
      I1 => s_axi_rready,
      I2 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I3 => \save_init_bram_addr_ld_reg_reg[17]\,
      I4 => s_axi_arvalid,
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9A9A9A009A9A9A"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(7),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(6),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0\,
      I3 => s_axi_arvalid,
      I4 => \save_init_bram_addr_ld_reg_reg[17]\,
      I5 => s_axi_arlen(7),
      O => \p_0_in__0\(7)
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(4),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(2),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(1),
      I3 => \^gen_rd_cmd_opt.brst_cnt_addr_reg[0]_0\(0),
      I4 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(3),
      I5 => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(5),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_1\(0),
      Q => \^gen_rd_cmd_opt.brst_cnt_addr_reg[0]_0\(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(4),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(5),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(6),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(7),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAC3C3C3"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(1),
      I2 => \^gen_rd_cmd_opt.brst_cnt_data_reg[0]_0\(0),
      I3 => s_axi_arvalid,
      I4 => \save_init_bram_addr_ld_reg_reg[17]\,
      O => p_0_in(1)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA9A9A900A9A9A9"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(2),
      I1 => \^gen_rd_cmd_opt.brst_cnt_data_reg[0]_0\(0),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(1),
      I3 => s_axi_arvalid,
      I4 => \save_init_bram_addr_ld_reg_reg[17]\,
      I5 => s_axi_arlen(2),
      O => p_0_in(2)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(3),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(2),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(1),
      I3 => \^gen_rd_cmd_opt.brst_cnt_data_reg[0]_0\(0),
      I4 => \wrap_burst_total_reg_reg[2]\,
      I5 => s_axi_arlen(3),
      O => p_0_in(3)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6660666"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(4),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2_n_0\,
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]\,
      I4 => s_axi_arlen(4),
      O => p_0_in(4)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(2),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(1),
      I2 => \^gen_rd_cmd_opt.brst_cnt_data_reg[0]_0\(0),
      I3 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(3),
      O => \GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6660666"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(5),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0\,
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]\,
      I4 => s_axi_arlen(5),
      O => p_0_in(5)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(3),
      I1 => \^gen_rd_cmd_opt.brst_cnt_data_reg[0]_0\(0),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(1),
      I3 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(2),
      I4 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(4),
      O => \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6660666"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(6),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0\,
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]\,
      I4 => s_axi_arlen(6),
      O => p_0_in(6)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(1),
      I2 => s_axi_rready,
      I3 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I4 => \save_init_bram_addr_ld_reg_reg[17]\,
      I5 => s_axi_arvalid,
      O => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9A9A9A009A9A9A"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(7),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(6),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0\,
      I3 => s_axi_arvalid,
      I4 => \save_init_bram_addr_ld_reg_reg[17]\,
      I5 => s_axi_arlen(7),
      O => p_0_in(7)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(4),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(2),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(1),
      I3 => \^gen_rd_cmd_opt.brst_cnt_data_reg[0]_0\(0),
      I4 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(3),
      I5 => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(5),
      O => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0\,
      D => \GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_1\(0),
      Q => \^gen_rd_cmd_opt.brst_cnt_data_reg[0]_0\(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(4),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(5),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(6),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(7),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.curr_wrap_burst_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04F4040400000000"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      I2 => \wrap_burst_total_reg_reg[2]\,
      I3 => arburst_reg(0),
      I4 => arburst_reg(1),
      I5 => axi_aresetn_d3,
      O => \GEN_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0\
    );
\GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0\,
      Q => curr_wrap_burst_reg,
      R => '0'
    );
\GEN_RD_CMD_OPT.wrap_addr_assign_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF70FFFFFFFFFF"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => rd_addr_sm_cs,
      I3 => s_axi_arburst(1),
      I4 => s_axi_arburst(0),
      I5 => s_axi_arlen(0),
      O => \GEN_RD_CMD_OPT.wrap_addr_assign_i_2_n_0\
    );
\GEN_RD_CMD_OPT.wrap_addr_assign_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D0"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.I_WRAP_BRST_n_18\,
      I1 => s_axi_araddr(2),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(3),
      I4 => \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0\,
      O => \GEN_RD_CMD_OPT.wrap_addr_assign_i_3_n_0\
    );
\GEN_RD_CMD_OPT.wrap_addr_assign_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888F000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => s_axi_arvalid,
      I3 => \save_init_bram_addr_ld_reg_reg[17]\,
      I4 => rd_addr_sm_cs,
      O => \GEN_RD_CMD_OPT.wrap_addr_assign_i_6_n_0\
    );
\GEN_RD_CMD_OPT.wrap_addr_assign_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.I_WRAP_BRST_n_18\,
      I1 => s_axi_araddr(0),
      I2 => \save_init_bram_addr_ld_reg_reg[17]\,
      I3 => s_axi_arvalid,
      I4 => s_axi_arlen(3),
      I5 => s_axi_arlen(1),
      O => s_axi_araddr_4_sn_1
    );
\GEN_RD_CMD_OPT.wrap_addr_assign_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4]\,
      I1 => wrap_addr_assign,
      I2 => arsize_reg(2),
      O => \GEN_RD_CMD_OPT.wrap_addr_assign_i_9_n_0\
    );
\GEN_RD_CMD_OPT.wrap_addr_assign_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.I_WRAP_BRST_n_40\,
      Q => wrap_addr_assign,
      R => \^s_axi_aresetn_0\
    );
axi_arready_int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0DFF"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(0),
      I2 => axi_rlast_cmb_reg,
      I3 => s_axi_rready,
      I4 => arb_sm_cs(0),
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0\
    );
axi_awready_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000202020002000"
    )
        port map (
      I0 => arb_sm_cs(1),
      I1 => arb_sm_cs(0),
      I2 => s_axi_rready,
      I3 => axi_rlast_cmb_reg,
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(1),
      O => \FSM_sequential_arb_sm_cs_reg[1]\
    );
\bram_addr_a[10]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => wrap_addr_assign,
      I1 => \save_init_bram_addr_ld_reg_reg[17]\,
      I2 => s_axi_arvalid,
      O => \bram_addr_a[10]_INST_0_i_3_n_0\
    );
\bram_addr_a[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30FF3000AAAAAAAA"
    )
        port map (
      I0 => \bram_addr_a[17]\(0),
      I1 => wrap_addr_assign,
      I2 => \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4]\,
      I3 => \wrap_burst_total_reg_reg[2]\,
      I4 => s_axi_araddr(0),
      I5 => Arb2AR_Active,
      O => bram_addr_a(0)
    );
bram_en_a_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEBAAABAAABAAA"
    )
        port map (
      I0 => BRAM_En_A_i,
      I1 => rd_addr_sm_cs,
      I2 => \save_init_bram_addr_ld_reg_reg[17]\,
      I3 => s_axi_arvalid,
      I4 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => s_axi_rready,
      O => bram_en_a
    );
s_axi_rlast_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(0),
      I2 => axi_rlast_cmb_reg,
      O => s_axi_rlast
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_bram_ctrl_0_1_wr_chnl is
  port (
    aw_active_d1 : out STD_LOGIC;
    BRAM_En_A_i : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wready : out STD_LOGIC;
    axi_bvalid_int_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid_0 : out STD_LOGIC;
    AW2Arb_Active_Clr : out STD_LOGIC;
    curr_wrap_burst_reg_reg_0 : out STD_LOGIC;
    aw_active_reg : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_burst_total_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \save_init_bram_addr_ld_reg[5]\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[6]\ : out STD_LOGIC;
    \FSM_sequential_arb_sm_cs_reg[0]\ : out STD_LOGIC;
    aw_active_cmb : out STD_LOGIC;
    s_axi_awvalid_0 : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \save_init_bram_addr_ld_reg[5]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Arb2AW_Active : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    aw_active_re : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    Arb2AR_Active : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[17]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int[17]_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    arb_sm_cs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_bram_ctrl_0_1_wr_chnl : entity is "wr_chnl";
end design_1_axi_bram_ctrl_0_1_wr_chnl;

architecture STRUCTURE of design_1_axi_bram_ctrl_0_1_wr_chnl is
  signal \^aw2arb_active_clr\ : STD_LOGIC;
  signal AW2Arb_BVALID_Cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal BID_FIFO_n_0 : STD_LOGIC;
  signal BID_FIFO_n_1 : STD_LOGIC;
  signal BID_FIFO_n_2 : STD_LOGIC;
  signal BID_FIFO_n_3 : STD_LOGIC;
  signal BID_FIFO_n_5 : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0\ : STD_LOGIC;
  signal \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\ : STD_LOGIC;
  signal I_WRAP_BRST_n_17 : STD_LOGIC;
  signal I_WRAP_BRST_n_18 : STD_LOGIC;
  signal \^aw_active_d1\ : STD_LOGIC;
  signal \axi_bid_int[3]_i_4_n_0\ : STD_LOGIC;
  signal axi_bvalid_int_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_int_i_2_n_0 : STD_LOGIC;
  signal \^axi_bvalid_int_reg_0\ : STD_LOGIC;
  signal axi_wdata_full_cmb : STD_LOGIC;
  signal axi_wdata_full_reg : STD_LOGIC;
  signal axi_wr_burst : STD_LOGIC;
  signal axi_wr_burst_i_1_n_0 : STD_LOGIC;
  signal axi_wr_burst_i_2_n_0 : STD_LOGIC;
  signal axi_wready_int_mod_i_1_n_0 : STD_LOGIC;
  signal bid_gets_fifo_load : STD_LOGIC;
  signal bid_gets_fifo_load_d1 : STD_LOGIC;
  signal \bvalid_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal bvalid_cnt_inc : STD_LOGIC;
  signal clr_bram_we : STD_LOGIC;
  signal curr_fixed_burst_reg : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal \^s_axi_wvalid_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[17]_i_4\ : label is "soft_lutpair49";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ : label is "idle:001,brst_wr_data:010,sng_wr_data:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ : label is "idle:001,brst_wr_data:010,sng_wr_data:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ : label is "idle:001,brst_wr_data:010,sng_wr_data:100";
  attribute SOFT_HLUTNM of \FSM_sequential_arb_sm_cs[0]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of axi_awready_int_i_2 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \axi_bid_int[3]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of axi_bvalid_int_i_2 : label is "soft_lutpair47";
begin
  AW2Arb_Active_Clr <= \^aw2arb_active_clr\;
  \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0\ <= \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\;
  aw_active_d1 <= \^aw_active_d1\;
  axi_bvalid_int_reg_0 <= \^axi_bvalid_int_reg_0\;
  s_axi_wvalid_0 <= \^s_axi_wvalid_0\;
\ADDR_SNG_PORT.bram_addr_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF080008FFFFFFFF"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I2 => curr_fixed_burst_reg,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[4]\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\,
      O => E(0)
    );
\ADDR_SNG_PORT.bram_addr_int[17]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      O => \^s_axi_wvalid_0\
    );
BID_FIFO: entity work.design_1_axi_bram_ctrl_0_1_SRL_FIFO
     port map (
      AW2Arb_BVALID_Cnt(2 downto 0) => AW2Arb_BVALID_Cnt(2 downto 0),
      Arb2AW_Active => Arb2AW_Active,
      D(3) => BID_FIFO_n_0,
      D(2) => BID_FIFO_n_1,
      D(1) => BID_FIFO_n_2,
      D(0) => BID_FIFO_n_3,
      Data_Exists_DFF_0 => \save_init_bram_addr_ld_reg[5]_0\,
      Data_Exists_DFF_1 => \^aw_active_d1\,
      Data_Exists_DFF_2 => \^axi_bvalid_int_reg_0\,
      E(0) => BID_FIFO_n_5,
      \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\ => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0\ => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      aw_active_re => aw_active_re,
      axi_wdata_full_reg => axi_wdata_full_reg,
      axi_wr_burst => axi_wr_burst,
      bid_gets_fifo_load => bid_gets_fifo_load,
      bid_gets_fifo_load_d1 => bid_gets_fifo_load_d1,
      bid_gets_fifo_load_d1_reg => \axi_bid_int[3]_i_4_n_0\,
      bvalid_cnt_inc => bvalid_cnt_inc,
      s_axi_aclk => s_axi_aclk,
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001F00"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => axi_wdata_full_reg,
      I2 => Arb2AW_Active,
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_2_n_0\,
      I5 => \^aw2arb_active_clr\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I2 => s_axi_wvalid,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_2_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C500FFFFC5000000"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => axi_wr_burst,
      I2 => axi_wdata_full_reg,
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\,
      I5 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2_n_0\,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\,
      I2 => \^aw2arb_active_clr\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44C0"
    )
        port map (
      I0 => axi_wr_burst,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I2 => s_axi_wlast,
      I3 => axi_wdata_full_reg,
      I4 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => axi_wdata_full_reg,
      I2 => Arb2AW_Active,
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_2_n_0\,
      I5 => \^aw2arb_active_clr\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\,
      Q => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      S => \save_init_bram_addr_ld_reg[5]_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\,
      Q => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0\,
      Q => \^aw2arb_active_clr\,
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
\FSM_sequential_arb_sm_cs[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F00"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(0),
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => s_axi_awvalid,
      I4 => arb_sm_cs(0),
      O => aw_active_cmb
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECA0ECA0FFF0ECA0"
    )
        port map (
      I0 => \^aw2arb_active_clr\,
      I1 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I2 => s_axi_wvalid,
      I3 => axi_wdata_full_reg,
      I4 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I5 => Arb2AW_Active,
      O => axi_wdata_full_cmb
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wdata_full_cmb,
      Q => axi_wdata_full_reg,
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC08080"
    )
        port map (
      I0 => axi_wdata_full_reg,
      I1 => Arb2AW_Active,
      I2 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I3 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I4 => s_axi_wvalid,
      O => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0\,
      Q => BRAM_En_A_i,
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bvalid_cnt_inc,
      Q => clr_bram_we,
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
\GEN_WRDATA[0].bram_wrdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => bram_wrdata_a(0),
      R => '0'
    );
\GEN_WRDATA[100].bram_wrdata_int_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(100),
      Q => bram_wrdata_a(100),
      R => '0'
    );
\GEN_WRDATA[101].bram_wrdata_int_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(101),
      Q => bram_wrdata_a(101),
      R => '0'
    );
\GEN_WRDATA[102].bram_wrdata_int_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(102),
      Q => bram_wrdata_a(102),
      R => '0'
    );
\GEN_WRDATA[103].bram_wrdata_int_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(103),
      Q => bram_wrdata_a(103),
      R => '0'
    );
\GEN_WRDATA[104].bram_wrdata_int_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(104),
      Q => bram_wrdata_a(104),
      R => '0'
    );
\GEN_WRDATA[105].bram_wrdata_int_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(105),
      Q => bram_wrdata_a(105),
      R => '0'
    );
\GEN_WRDATA[106].bram_wrdata_int_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(106),
      Q => bram_wrdata_a(106),
      R => '0'
    );
\GEN_WRDATA[107].bram_wrdata_int_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(107),
      Q => bram_wrdata_a(107),
      R => '0'
    );
\GEN_WRDATA[108].bram_wrdata_int_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(108),
      Q => bram_wrdata_a(108),
      R => '0'
    );
\GEN_WRDATA[109].bram_wrdata_int_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(109),
      Q => bram_wrdata_a(109),
      R => '0'
    );
\GEN_WRDATA[10].bram_wrdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => bram_wrdata_a(10),
      R => '0'
    );
\GEN_WRDATA[110].bram_wrdata_int_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(110),
      Q => bram_wrdata_a(110),
      R => '0'
    );
\GEN_WRDATA[111].bram_wrdata_int_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(111),
      Q => bram_wrdata_a(111),
      R => '0'
    );
\GEN_WRDATA[112].bram_wrdata_int_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(112),
      Q => bram_wrdata_a(112),
      R => '0'
    );
\GEN_WRDATA[113].bram_wrdata_int_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(113),
      Q => bram_wrdata_a(113),
      R => '0'
    );
\GEN_WRDATA[114].bram_wrdata_int_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(114),
      Q => bram_wrdata_a(114),
      R => '0'
    );
\GEN_WRDATA[115].bram_wrdata_int_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(115),
      Q => bram_wrdata_a(115),
      R => '0'
    );
\GEN_WRDATA[116].bram_wrdata_int_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(116),
      Q => bram_wrdata_a(116),
      R => '0'
    );
\GEN_WRDATA[117].bram_wrdata_int_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(117),
      Q => bram_wrdata_a(117),
      R => '0'
    );
\GEN_WRDATA[118].bram_wrdata_int_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(118),
      Q => bram_wrdata_a(118),
      R => '0'
    );
\GEN_WRDATA[119].bram_wrdata_int_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(119),
      Q => bram_wrdata_a(119),
      R => '0'
    );
\GEN_WRDATA[11].bram_wrdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => bram_wrdata_a(11),
      R => '0'
    );
\GEN_WRDATA[120].bram_wrdata_int_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(120),
      Q => bram_wrdata_a(120),
      R => '0'
    );
\GEN_WRDATA[121].bram_wrdata_int_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(121),
      Q => bram_wrdata_a(121),
      R => '0'
    );
\GEN_WRDATA[122].bram_wrdata_int_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(122),
      Q => bram_wrdata_a(122),
      R => '0'
    );
\GEN_WRDATA[123].bram_wrdata_int_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(123),
      Q => bram_wrdata_a(123),
      R => '0'
    );
\GEN_WRDATA[124].bram_wrdata_int_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(124),
      Q => bram_wrdata_a(124),
      R => '0'
    );
\GEN_WRDATA[125].bram_wrdata_int_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(125),
      Q => bram_wrdata_a(125),
      R => '0'
    );
\GEN_WRDATA[126].bram_wrdata_int_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(126),
      Q => bram_wrdata_a(126),
      R => '0'
    );
\GEN_WRDATA[127].bram_wrdata_int[127]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBA0000"
    )
        port map (
      I0 => \^aw2arb_active_clr\,
      I1 => axi_wdata_full_reg,
      I2 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I3 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I4 => s_axi_wvalid,
      O => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\
    );
\GEN_WRDATA[127].bram_wrdata_int_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(127),
      Q => bram_wrdata_a(127),
      R => '0'
    );
\GEN_WRDATA[12].bram_wrdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => bram_wrdata_a(12),
      R => '0'
    );
\GEN_WRDATA[13].bram_wrdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => bram_wrdata_a(13),
      R => '0'
    );
\GEN_WRDATA[14].bram_wrdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => bram_wrdata_a(14),
      R => '0'
    );
\GEN_WRDATA[15].bram_wrdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => bram_wrdata_a(15),
      R => '0'
    );
\GEN_WRDATA[16].bram_wrdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => bram_wrdata_a(16),
      R => '0'
    );
\GEN_WRDATA[17].bram_wrdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => bram_wrdata_a(17),
      R => '0'
    );
\GEN_WRDATA[18].bram_wrdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => bram_wrdata_a(18),
      R => '0'
    );
\GEN_WRDATA[19].bram_wrdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => bram_wrdata_a(19),
      R => '0'
    );
\GEN_WRDATA[1].bram_wrdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => bram_wrdata_a(1),
      R => '0'
    );
\GEN_WRDATA[20].bram_wrdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => bram_wrdata_a(20),
      R => '0'
    );
\GEN_WRDATA[21].bram_wrdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => bram_wrdata_a(21),
      R => '0'
    );
\GEN_WRDATA[22].bram_wrdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => bram_wrdata_a(22),
      R => '0'
    );
\GEN_WRDATA[23].bram_wrdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => bram_wrdata_a(23),
      R => '0'
    );
\GEN_WRDATA[24].bram_wrdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => bram_wrdata_a(24),
      R => '0'
    );
\GEN_WRDATA[25].bram_wrdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => bram_wrdata_a(25),
      R => '0'
    );
\GEN_WRDATA[26].bram_wrdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => bram_wrdata_a(26),
      R => '0'
    );
\GEN_WRDATA[27].bram_wrdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => bram_wrdata_a(27),
      R => '0'
    );
\GEN_WRDATA[28].bram_wrdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => bram_wrdata_a(28),
      R => '0'
    );
\GEN_WRDATA[29].bram_wrdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => bram_wrdata_a(29),
      R => '0'
    );
\GEN_WRDATA[2].bram_wrdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => bram_wrdata_a(2),
      R => '0'
    );
\GEN_WRDATA[30].bram_wrdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => bram_wrdata_a(30),
      R => '0'
    );
\GEN_WRDATA[31].bram_wrdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => bram_wrdata_a(31),
      R => '0'
    );
\GEN_WRDATA[32].bram_wrdata_int_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(32),
      Q => bram_wrdata_a(32),
      R => '0'
    );
\GEN_WRDATA[33].bram_wrdata_int_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(33),
      Q => bram_wrdata_a(33),
      R => '0'
    );
\GEN_WRDATA[34].bram_wrdata_int_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(34),
      Q => bram_wrdata_a(34),
      R => '0'
    );
\GEN_WRDATA[35].bram_wrdata_int_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(35),
      Q => bram_wrdata_a(35),
      R => '0'
    );
\GEN_WRDATA[36].bram_wrdata_int_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(36),
      Q => bram_wrdata_a(36),
      R => '0'
    );
\GEN_WRDATA[37].bram_wrdata_int_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(37),
      Q => bram_wrdata_a(37),
      R => '0'
    );
\GEN_WRDATA[38].bram_wrdata_int_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(38),
      Q => bram_wrdata_a(38),
      R => '0'
    );
\GEN_WRDATA[39].bram_wrdata_int_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(39),
      Q => bram_wrdata_a(39),
      R => '0'
    );
\GEN_WRDATA[3].bram_wrdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => bram_wrdata_a(3),
      R => '0'
    );
\GEN_WRDATA[40].bram_wrdata_int_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(40),
      Q => bram_wrdata_a(40),
      R => '0'
    );
\GEN_WRDATA[41].bram_wrdata_int_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(41),
      Q => bram_wrdata_a(41),
      R => '0'
    );
\GEN_WRDATA[42].bram_wrdata_int_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(42),
      Q => bram_wrdata_a(42),
      R => '0'
    );
\GEN_WRDATA[43].bram_wrdata_int_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(43),
      Q => bram_wrdata_a(43),
      R => '0'
    );
\GEN_WRDATA[44].bram_wrdata_int_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(44),
      Q => bram_wrdata_a(44),
      R => '0'
    );
\GEN_WRDATA[45].bram_wrdata_int_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(45),
      Q => bram_wrdata_a(45),
      R => '0'
    );
\GEN_WRDATA[46].bram_wrdata_int_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(46),
      Q => bram_wrdata_a(46),
      R => '0'
    );
\GEN_WRDATA[47].bram_wrdata_int_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(47),
      Q => bram_wrdata_a(47),
      R => '0'
    );
\GEN_WRDATA[48].bram_wrdata_int_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(48),
      Q => bram_wrdata_a(48),
      R => '0'
    );
\GEN_WRDATA[49].bram_wrdata_int_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(49),
      Q => bram_wrdata_a(49),
      R => '0'
    );
\GEN_WRDATA[4].bram_wrdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => bram_wrdata_a(4),
      R => '0'
    );
\GEN_WRDATA[50].bram_wrdata_int_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(50),
      Q => bram_wrdata_a(50),
      R => '0'
    );
\GEN_WRDATA[51].bram_wrdata_int_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(51),
      Q => bram_wrdata_a(51),
      R => '0'
    );
\GEN_WRDATA[52].bram_wrdata_int_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(52),
      Q => bram_wrdata_a(52),
      R => '0'
    );
\GEN_WRDATA[53].bram_wrdata_int_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(53),
      Q => bram_wrdata_a(53),
      R => '0'
    );
\GEN_WRDATA[54].bram_wrdata_int_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(54),
      Q => bram_wrdata_a(54),
      R => '0'
    );
\GEN_WRDATA[55].bram_wrdata_int_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(55),
      Q => bram_wrdata_a(55),
      R => '0'
    );
\GEN_WRDATA[56].bram_wrdata_int_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(56),
      Q => bram_wrdata_a(56),
      R => '0'
    );
\GEN_WRDATA[57].bram_wrdata_int_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(57),
      Q => bram_wrdata_a(57),
      R => '0'
    );
\GEN_WRDATA[58].bram_wrdata_int_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(58),
      Q => bram_wrdata_a(58),
      R => '0'
    );
\GEN_WRDATA[59].bram_wrdata_int_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(59),
      Q => bram_wrdata_a(59),
      R => '0'
    );
\GEN_WRDATA[5].bram_wrdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => bram_wrdata_a(5),
      R => '0'
    );
\GEN_WRDATA[60].bram_wrdata_int_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(60),
      Q => bram_wrdata_a(60),
      R => '0'
    );
\GEN_WRDATA[61].bram_wrdata_int_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(61),
      Q => bram_wrdata_a(61),
      R => '0'
    );
\GEN_WRDATA[62].bram_wrdata_int_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(62),
      Q => bram_wrdata_a(62),
      R => '0'
    );
\GEN_WRDATA[63].bram_wrdata_int_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(63),
      Q => bram_wrdata_a(63),
      R => '0'
    );
\GEN_WRDATA[64].bram_wrdata_int_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(64),
      Q => bram_wrdata_a(64),
      R => '0'
    );
\GEN_WRDATA[65].bram_wrdata_int_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(65),
      Q => bram_wrdata_a(65),
      R => '0'
    );
\GEN_WRDATA[66].bram_wrdata_int_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(66),
      Q => bram_wrdata_a(66),
      R => '0'
    );
\GEN_WRDATA[67].bram_wrdata_int_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(67),
      Q => bram_wrdata_a(67),
      R => '0'
    );
\GEN_WRDATA[68].bram_wrdata_int_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(68),
      Q => bram_wrdata_a(68),
      R => '0'
    );
\GEN_WRDATA[69].bram_wrdata_int_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(69),
      Q => bram_wrdata_a(69),
      R => '0'
    );
\GEN_WRDATA[6].bram_wrdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => bram_wrdata_a(6),
      R => '0'
    );
\GEN_WRDATA[70].bram_wrdata_int_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(70),
      Q => bram_wrdata_a(70),
      R => '0'
    );
\GEN_WRDATA[71].bram_wrdata_int_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(71),
      Q => bram_wrdata_a(71),
      R => '0'
    );
\GEN_WRDATA[72].bram_wrdata_int_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(72),
      Q => bram_wrdata_a(72),
      R => '0'
    );
\GEN_WRDATA[73].bram_wrdata_int_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(73),
      Q => bram_wrdata_a(73),
      R => '0'
    );
\GEN_WRDATA[74].bram_wrdata_int_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(74),
      Q => bram_wrdata_a(74),
      R => '0'
    );
\GEN_WRDATA[75].bram_wrdata_int_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(75),
      Q => bram_wrdata_a(75),
      R => '0'
    );
\GEN_WRDATA[76].bram_wrdata_int_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(76),
      Q => bram_wrdata_a(76),
      R => '0'
    );
\GEN_WRDATA[77].bram_wrdata_int_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(77),
      Q => bram_wrdata_a(77),
      R => '0'
    );
\GEN_WRDATA[78].bram_wrdata_int_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(78),
      Q => bram_wrdata_a(78),
      R => '0'
    );
\GEN_WRDATA[79].bram_wrdata_int_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(79),
      Q => bram_wrdata_a(79),
      R => '0'
    );
\GEN_WRDATA[7].bram_wrdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => bram_wrdata_a(7),
      R => '0'
    );
\GEN_WRDATA[80].bram_wrdata_int_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(80),
      Q => bram_wrdata_a(80),
      R => '0'
    );
\GEN_WRDATA[81].bram_wrdata_int_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(81),
      Q => bram_wrdata_a(81),
      R => '0'
    );
\GEN_WRDATA[82].bram_wrdata_int_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(82),
      Q => bram_wrdata_a(82),
      R => '0'
    );
\GEN_WRDATA[83].bram_wrdata_int_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(83),
      Q => bram_wrdata_a(83),
      R => '0'
    );
\GEN_WRDATA[84].bram_wrdata_int_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(84),
      Q => bram_wrdata_a(84),
      R => '0'
    );
\GEN_WRDATA[85].bram_wrdata_int_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(85),
      Q => bram_wrdata_a(85),
      R => '0'
    );
\GEN_WRDATA[86].bram_wrdata_int_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(86),
      Q => bram_wrdata_a(86),
      R => '0'
    );
\GEN_WRDATA[87].bram_wrdata_int_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(87),
      Q => bram_wrdata_a(87),
      R => '0'
    );
\GEN_WRDATA[88].bram_wrdata_int_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(88),
      Q => bram_wrdata_a(88),
      R => '0'
    );
\GEN_WRDATA[89].bram_wrdata_int_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(89),
      Q => bram_wrdata_a(89),
      R => '0'
    );
\GEN_WRDATA[8].bram_wrdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => bram_wrdata_a(8),
      R => '0'
    );
\GEN_WRDATA[90].bram_wrdata_int_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(90),
      Q => bram_wrdata_a(90),
      R => '0'
    );
\GEN_WRDATA[91].bram_wrdata_int_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(91),
      Q => bram_wrdata_a(91),
      R => '0'
    );
\GEN_WRDATA[92].bram_wrdata_int_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(92),
      Q => bram_wrdata_a(92),
      R => '0'
    );
\GEN_WRDATA[93].bram_wrdata_int_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(93),
      Q => bram_wrdata_a(93),
      R => '0'
    );
\GEN_WRDATA[94].bram_wrdata_int_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(94),
      Q => bram_wrdata_a(94),
      R => '0'
    );
\GEN_WRDATA[95].bram_wrdata_int_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(95),
      Q => bram_wrdata_a(95),
      R => '0'
    );
\GEN_WRDATA[96].bram_wrdata_int_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(96),
      Q => bram_wrdata_a(96),
      R => '0'
    );
\GEN_WRDATA[97].bram_wrdata_int_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(97),
      Q => bram_wrdata_a(97),
      R => '0'
    );
\GEN_WRDATA[98].bram_wrdata_int_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(98),
      Q => bram_wrdata_a(98),
      R => '0'
    );
\GEN_WRDATA[99].bram_wrdata_int_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(99),
      Q => bram_wrdata_a(99),
      R => '0'
    );
\GEN_WRDATA[9].bram_wrdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => bram_wrdata_a(9),
      R => '0'
    );
\GEN_WR_NO_ECC.bram_we_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      I1 => clr_bram_we,
      I2 => s_axi_aresetn,
      O => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(0),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(0),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(10),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(10),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(11),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(11),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(12),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(12),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(13),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(13),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(14),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(14),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(15),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(15),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(1),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(1),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(2),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(2),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(3),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(3),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(4),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(4),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(5),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(5),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(6),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(6),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(7),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(7),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(8),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(8),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[127].bram_wrdata_int[127]_i_1_n_0\,
      D => s_axi_wstrb(9),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(9),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
I_WRAP_BRST: entity work.design_1_axi_bram_ctrl_0_1_wrap_brst
     port map (
      \ADDR_SNG_PORT.bram_addr_int[17]_i_5_0\(3 downto 0) => \ADDR_SNG_PORT.bram_addr_int[17]_i_5\(3 downto 0),
      \ADDR_SNG_PORT.bram_addr_int_reg[17]\ => \^s_axi_wvalid_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[17]_0\ => \^aw2arb_active_clr\,
      \ADDR_SNG_PORT.bram_addr_int_reg[17]_1\(5 downto 0) => \ADDR_SNG_PORT.bram_addr_int_reg[17]\(5 downto 0),
      \ADDR_SNG_PORT.bram_addr_int_reg[6]\ => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      Arb2AR_Active => Arb2AR_Active,
      Arb2AW_Active => Arb2AW_Active,
      D(5 downto 0) => D(5 downto 0),
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_1\,
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => SR(0),
      aw_active_re => aw_active_re,
      aw_active_reg => aw_active_reg,
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      curr_fixed_burst_reg_reg => I_WRAP_BRST_n_18,
      curr_fixed_burst_reg_reg_0 => \^aw_active_d1\,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      curr_wrap_burst_reg_reg => curr_wrap_burst_reg_reg_0,
      curr_wrap_burst_reg_reg_0 => I_WRAP_BRST_n_17,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid,
      \save_init_bram_addr_ld_reg[5]_0\ => \save_init_bram_addr_ld_reg[5]\,
      \save_init_bram_addr_ld_reg[5]_1\ => \save_init_bram_addr_ld_reg[5]_0\,
      \save_init_bram_addr_ld_reg[6]_0\ => \save_init_bram_addr_ld_reg[6]\,
      \wrap_burst_total_reg[1]_0\ => \wrap_burst_total_reg[1]\
    );
aw_active_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Arb2AW_Active,
      Q => \^aw_active_d1\,
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
axi_awready_int_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => AW2Arb_BVALID_Cnt(0),
      O => s_axi_awvalid_0
    );
\axi_bid_int[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEEEE"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(2),
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => \^axi_bvalid_int_reg_0\,
      I3 => s_axi_bready,
      I4 => AW2Arb_BVALID_Cnt(0),
      O => \axi_bid_int[3]_i_4_n_0\
    );
\axi_bid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_5,
      D => BID_FIFO_n_3,
      Q => s_axi_bid(0),
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
\axi_bid_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_5,
      D => BID_FIFO_n_2,
      Q => s_axi_bid(1),
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
\axi_bid_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_5,
      D => BID_FIFO_n_1,
      Q => s_axi_bid(2),
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
\axi_bid_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_5,
      D => BID_FIFO_n_0,
      Q => s_axi_bid(3),
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
axi_bvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAA8A8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => axi_bvalid_int_i_2_n_0,
      I4 => AW2Arb_BVALID_Cnt(0),
      I5 => bvalid_cnt_inc,
      O => axi_bvalid_int_i_1_n_0
    );
axi_bvalid_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_bvalid_int_reg_0\,
      I1 => s_axi_bready,
      O => axi_bvalid_int_i_2_n_0
    );
axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_int_i_1_n_0,
      Q => \^axi_bvalid_int_reg_0\,
      R => '0'
    );
axi_wr_burst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5777777754444444"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => axi_wr_burst_i_2_n_0,
      I2 => axi_wdata_full_reg,
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I4 => Arb2AW_Active,
      I5 => axi_wr_burst,
      O => axi_wr_burst_i_1_n_0
    );
axi_wr_burst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I2 => axi_wdata_full_reg,
      I3 => \^aw2arb_active_clr\,
      O => axi_wr_burst_i_2_n_0
    );
axi_wr_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wr_burst_i_1_n_0,
      Q => axi_wr_burst,
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
axi_wready_int_mod_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => axi_wdata_full_cmb,
      O => axi_wready_int_mod_i_1_n_0
    );
axi_wready_int_mod_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready_int_mod_i_1_n_0,
      Q => s_axi_wready,
      R => '0'
    );
bid_gets_fifo_load_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bid_gets_fifo_load,
      Q => bid_gets_fifo_load_d1,
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
\bvalid_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88887777777F8880"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^axi_bvalid_int_reg_0\,
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => AW2Arb_BVALID_Cnt(2),
      I4 => bvalid_cnt_inc,
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \bvalid_cnt[0]_i_1_n_0\
    );
\bvalid_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE10778877887788"
    )
        port map (
      I0 => bvalid_cnt_inc,
      I1 => AW2Arb_BVALID_Cnt(0),
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => \^axi_bvalid_int_reg_0\,
      I5 => s_axi_bready,
      O => \bvalid_cnt[1]_i_1_n_0\
    );
\bvalid_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E078F078F078F0"
    )
        port map (
      I0 => bvalid_cnt_inc,
      I1 => AW2Arb_BVALID_Cnt(0),
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => \^axi_bvalid_int_reg_0\,
      I5 => s_axi_bready,
      O => \bvalid_cnt[2]_i_1_n_0\
    );
\bvalid_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[0]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(0),
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
\bvalid_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[1]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(1),
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
\bvalid_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[2]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(2),
      R => \save_init_bram_addr_ld_reg[5]_0\
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_WRAP_BRST_n_18,
      Q => curr_fixed_burst_reg,
      R => '0'
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_WRAP_BRST_n_17,
      Q => curr_wrap_burst_reg,
      R => '0'
    );
last_arb_won_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004444444"
    )
        port map (
      I0 => arb_sm_cs(0),
      I1 => s_axi_awvalid,
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => AW2Arb_BVALID_Cnt(0),
      I5 => arb_sm_cs(1),
      O => \FSM_sequential_arb_sm_cs_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_bram_ctrl_0_1_full_axi is
  port (
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    axi_bvalid_int_reg : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 13 downto 0 );
    bram_we_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_bram_ctrl_0_1_full_axi : entity is "full_axi";
end design_1_axi_bram_ctrl_0_1_full_axi;

architecture STRUCTURE of design_1_axi_bram_ctrl_0_1_full_axi is
  signal \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[5]_i_7_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[6]_i_7_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[7]_i_7_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10]\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[11]\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[12]\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[13]\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[14]\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[15]\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[16]\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4]\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5]\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6]\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7]\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8]\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9]\ : STD_LOGIC;
  signal AW2Arb_Active_Clr : STD_LOGIC;
  signal Arb2AR_Active : STD_LOGIC;
  signal Arb2AW_Active : STD_LOGIC;
  signal BRAM_En_A_i : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_10\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_11\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_12\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_13\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_15\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_16\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_18\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_28\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_29\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_30\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_31\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_32\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_4\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_5\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_6\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_7\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_8\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_9\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.I_WRAP_BRST/wrap_burst_total\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \GEN_RD_CMD_OPT.I_WRAP_BRST/wrap_burst_total_reg\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \GEN_RD_CMD_OPT.brst_cnt_addr_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \GEN_RD_CMD_OPT.brst_cnt_data_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal I_RD_CHNL_n_17 : STD_LOGIC;
  signal I_RD_CHNL_n_18 : STD_LOGIC;
  signal I_RD_CHNL_n_19 : STD_LOGIC;
  signal I_RD_CHNL_n_2 : STD_LOGIC;
  signal I_RD_CHNL_n_20 : STD_LOGIC;
  signal I_RD_CHNL_n_32 : STD_LOGIC;
  signal I_RD_CHNL_n_34 : STD_LOGIC;
  signal I_RD_CHNL_n_35 : STD_LOGIC;
  signal I_RD_CHNL_n_36 : STD_LOGIC;
  signal I_RD_CHNL_n_37 : STD_LOGIC;
  signal I_RD_CHNL_n_38 : STD_LOGIC;
  signal I_RD_CHNL_n_39 : STD_LOGIC;
  signal I_RD_CHNL_n_40 : STD_LOGIC;
  signal I_RD_CHNL_n_41 : STD_LOGIC;
  signal I_RD_CHNL_n_42 : STD_LOGIC;
  signal I_RD_CHNL_n_7 : STD_LOGIC;
  signal I_RD_CHNL_n_8 : STD_LOGIC;
  signal I_RD_CHNL_n_9 : STD_LOGIC;
  signal I_WR_CHNL_n_132 : STD_LOGIC;
  signal I_WR_CHNL_n_133 : STD_LOGIC;
  signal I_WR_CHNL_n_135 : STD_LOGIC;
  signal I_WR_CHNL_n_136 : STD_LOGIC;
  signal I_WR_CHNL_n_137 : STD_LOGIC;
  signal I_WR_CHNL_n_138 : STD_LOGIC;
  signal I_WR_CHNL_n_139 : STD_LOGIC;
  signal I_WR_CHNL_n_140 : STD_LOGIC;
  signal I_WR_CHNL_n_141 : STD_LOGIC;
  signal I_WR_CHNL_n_142 : STD_LOGIC;
  signal I_WR_CHNL_n_143 : STD_LOGIC;
  signal I_WR_CHNL_n_144 : STD_LOGIC;
  signal I_WR_CHNL_n_151 : STD_LOGIC;
  signal I_WR_CHNL_n_152 : STD_LOGIC;
  signal I_WR_CHNL_n_153 : STD_LOGIC;
  signal I_WR_CHNL_n_155 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal arb_sm_cs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal arlen_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal arlen_temp : STD_LOGIC_VECTOR ( 1 to 1 );
  signal aw_active_cmb : STD_LOGIC;
  signal aw_active_d1 : STD_LOGIC;
  signal aw_active_re : STD_LOGIC;
  signal bram_we_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 13 downto 8 );
  signal sng_bram_addr_ld : STD_LOGIC_VECTOR ( 17 downto 12 );
  signal sng_bram_addr_ld_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[5]_i_7\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[6]_i_7\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[7]_i_7\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[8]_i_2\ : label is "soft_lutpair50";
begin
  SR(0) <= \^sr\(0);
  S_AXI_ARREADY <= \^s_axi_arready\;
\ADDR_SNG_PORT.bram_addr_int[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7]\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8]\,
      O => \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[11]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10]\,
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5]\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7]\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9]\,
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4]\,
      O => \ADDR_SNG_PORT.bram_addr_int[5]_i_7_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4]\,
      O => \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5]\,
      O => \ADDR_SNG_PORT.bram_addr_int[6]_i_7_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5]\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4]\,
      O => \ADDR_SNG_PORT.bram_addr_int[7]_i_7_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95555555"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6]\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4]\,
      O => \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555555555555555"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4]\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6]\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7]\,
      O => \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WR_CHNL_n_139,
      D => \GEN_ARB.I_SNG_PORT_n_7\,
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10]\,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WR_CHNL_n_139,
      D => \GEN_ARB.I_SNG_PORT_n_6\,
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[11]\,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sng_bram_addr_ld_en,
      D => sng_bram_addr_ld(12),
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[12]\,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sng_bram_addr_ld_en,
      D => sng_bram_addr_ld(13),
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[13]\,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sng_bram_addr_ld_en,
      D => sng_bram_addr_ld(14),
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[14]\,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sng_bram_addr_ld_en,
      D => sng_bram_addr_ld(15),
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[15]\,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sng_bram_addr_ld_en,
      D => sng_bram_addr_ld(16),
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[16]\,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sng_bram_addr_ld_en,
      D => sng_bram_addr_ld(17),
      Q => p_0_in_0,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WR_CHNL_n_139,
      D => \GEN_ARB.I_SNG_PORT_n_13\,
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4]\,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WR_CHNL_n_139,
      D => \GEN_ARB.I_SNG_PORT_n_12\,
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5]\,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WR_CHNL_n_139,
      D => \GEN_ARB.I_SNG_PORT_n_11\,
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6]\,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WR_CHNL_n_139,
      D => \GEN_ARB.I_SNG_PORT_n_10\,
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7]\,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WR_CHNL_n_139,
      D => \GEN_ARB.I_SNG_PORT_n_9\,
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8]\,
      R => I_WR_CHNL_n_132
    );
\ADDR_SNG_PORT.bram_addr_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WR_CHNL_n_139,
      D => \GEN_ARB.I_SNG_PORT_n_8\,
      Q => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9]\,
      R => I_WR_CHNL_n_132
    );
\GEN_ARB.I_SNG_PORT\: entity work.design_1_axi_bram_ctrl_0_1_sng_port_arb
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[10]\ => \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[10]_0\ => I_RD_CHNL_n_37,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\(3) => I_WR_CHNL_n_141,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\(2) => I_WR_CHNL_n_142,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\(1) => I_WR_CHNL_n_143,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\(0) => I_WR_CHNL_n_144,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\ => I_RD_CHNL_n_38,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]\ => I_WR_CHNL_n_138,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]_0\ => I_RD_CHNL_n_40,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]_1\ => I_WR_CHNL_n_137,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]_2\ => I_WR_CHNL_n_151,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]_3\ => I_RD_CHNL_n_20,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]\ => \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]_0\ => I_WR_CHNL_n_152,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]_1\ => I_WR_CHNL_n_136,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]_2\ => I_WR_CHNL_n_135,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]_3\ => I_WR_CHNL_n_133,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]_4\ => I_RD_CHNL_n_32,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]_5\ => I_RD_CHNL_n_41,
      \ADDR_SNG_PORT.bram_addr_int_reg[7]\ => I_RD_CHNL_n_39,
      \ADDR_SNG_PORT.bram_addr_int_reg[7]_0\ => I_RD_CHNL_n_42,
      \ADDR_SNG_PORT.bram_addr_int_reg[7]_1\ => \ADDR_SNG_PORT.bram_addr_int[7]_i_7_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[7]_2\ => I_WR_CHNL_n_140,
      \ADDR_SNG_PORT.bram_addr_int_reg[8]\ => \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[8]_0\ => I_RD_CHNL_n_34,
      \ADDR_SNG_PORT.bram_addr_int_reg[8]_1\ => I_RD_CHNL_n_35,
      \ADDR_SNG_PORT.bram_addr_int_reg[9]\ => \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[9]_0\ => I_RD_CHNL_n_36,
      AW2Arb_Active_Clr => AW2Arb_Active_Clr,
      Arb2AR_Active => Arb2AR_Active,
      Arb2AW_Active => Arb2AW_Active,
      D(7) => \GEN_ARB.I_SNG_PORT_n_6\,
      D(6) => \GEN_ARB.I_SNG_PORT_n_7\,
      D(5) => \GEN_ARB.I_SNG_PORT_n_8\,
      D(4) => \GEN_ARB.I_SNG_PORT_n_9\,
      D(3) => \GEN_ARB.I_SNG_PORT_n_10\,
      D(2) => \GEN_ARB.I_SNG_PORT_n_11\,
      D(1) => \GEN_ARB.I_SNG_PORT_n_12\,
      D(0) => \GEN_ARB.I_SNG_PORT_n_13\,
      E(0) => sng_bram_addr_ld_en,
      \FSM_sequential_arb_sm_cs_reg[0]_0\ => I_RD_CHNL_n_8,
      \GEN_RD_CMD_OPT.arlen_reg_reg[1]\(0) => arlen_reg(1),
      \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]\(0) => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(0),
      \GEN_RD_CMD_OPT.brst_cnt_data_reg[0]\(0) => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(0),
      \GEN_RD_CMD_OPT.wrap_addr_assign_reg\ => I_RD_CHNL_n_7,
      Q(4) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[11]\,
      Q(3) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9]\,
      Q(2) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6]\,
      Q(1) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5]\,
      Q(0) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4]\,
      ar_active_reg_0 => \GEN_ARB.I_SNG_PORT_n_4\,
      ar_active_reg_1 => \GEN_ARB.I_SNG_PORT_n_16\,
      ar_active_reg_2 => \^sr\(0),
      arb_sm_cs(1 downto 0) => arb_sm_cs(1 downto 0),
      aw_active_cmb => aw_active_cmb,
      aw_active_d1 => aw_active_d1,
      aw_active_re => aw_active_re,
      axi_arready_int_reg_0 => \^s_axi_arready\,
      axi_arready_int_reg_1 => \GEN_ARB.I_SNG_PORT_n_28\,
      bram_addr_a(2) => bram_addr_a(7),
      bram_addr_a(1) => bram_addr_a(5),
      bram_addr_a(0) => bram_addr_a(2),
      \bram_addr_a[11]\ => I_RD_CHNL_n_19,
      \bram_addr_a[6]\ => I_RD_CHNL_n_17,
      \bram_addr_a[9]\ => I_RD_CHNL_n_18,
      bram_we_a(15 downto 0) => bram_we_a(15 downto 0),
      \bram_we_a[15]\(15 downto 0) => bram_we_int(15 downto 0),
      last_arb_won_reg_0 => I_RD_CHNL_n_9,
      last_arb_won_reg_1 => I_WR_CHNL_n_155,
      last_arb_won_reg_2 => I_WR_CHNL_n_153,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(7 downto 0) => s_axi_araddr(7 downto 0),
      \s_axi_araddr[10]\ => \GEN_ARB.I_SNG_PORT_n_31\,
      \s_axi_araddr[11]\ => \GEN_ARB.I_SNG_PORT_n_32\,
      \s_axi_araddr[8]\ => \GEN_ARB.I_SNG_PORT_n_30\,
      s_axi_araddr_5_sp_1 => \GEN_ARB.I_SNG_PORT_n_5\,
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arburst_1_sp_1 => \GEN_ARB.I_SNG_PORT_n_29\,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      \s_axi_arlen[0]\(0) => \p_0_in__0\(0),
      \s_axi_arlen[0]_0\(0) => p_0_in(0),
      \s_axi_arlen[0]_1\(0) => \GEN_RD_CMD_OPT.I_WRAP_BRST/wrap_burst_total\(1),
      \s_axi_arlen[1]_0\(0) => arlen_temp(1),
      s_axi_arlen_1_sp_1 => \GEN_ARB.I_SNG_PORT_n_18\,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arvalid_0 => \GEN_ARB.I_SNG_PORT_n_15\,
      s_axi_awaddr(7 downto 0) => s_axi_awaddr(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid,
      \wrap_burst_total_reg_reg[1]\(0) => \GEN_RD_CMD_OPT.I_WRAP_BRST/wrap_burst_total_reg\(1)
    );
I_RD_CHNL: entity work.design_1_axi_bram_ctrl_0_1_rd_chnl
     port map (
      \ADDR_SNG_PORT.bram_addr_int[6]_i_3\ => \GEN_ARB.I_SNG_PORT_n_4\,
      \ADDR_SNG_PORT.bram_addr_int[6]_i_3_0\ => \ADDR_SNG_PORT.bram_addr_int[6]_i_7_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]\ => \ADDR_SNG_PORT.bram_addr_int[5]_i_7_n_0\,
      Arb2AR_Active => Arb2AR_Active,
      BRAM_En_A_i => BRAM_En_A_i,
      D(5 downto 0) => p_2_in(13 downto 8),
      \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0\ => I_RD_CHNL_n_9,
      \FSM_sequential_arb_sm_cs_reg[1]\ => I_RD_CHNL_n_8,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0\ => I_RD_CHNL_n_37,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_1\ => \GEN_ARB.I_SNG_PORT_n_29\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0\ => I_RD_CHNL_n_19,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_1\ => I_RD_CHNL_n_38,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_2\ => \GEN_ARB.I_SNG_PORT_n_32\,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0\ => I_RD_CHNL_n_39,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_1\ => I_RD_CHNL_n_41,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[6]_0\ => I_RD_CHNL_n_17,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[8]_0\ => I_RD_CHNL_n_34,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]_0\ => I_RD_CHNL_n_18,
      \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9]_1\ => I_RD_CHNL_n_36,
      \GEN_RD_CMD_OPT.arlen_reg_reg[1]_0\(0) => arlen_reg(1),
      \GEN_RD_CMD_OPT.arlen_reg_reg[1]_1\(0) => arlen_temp(1),
      \GEN_RD_CMD_OPT.arsize_reg_reg[2]_0\ => I_RD_CHNL_n_20,
      \GEN_RD_CMD_OPT.arsize_reg_reg[2]_1\ => I_RD_CHNL_n_35,
      \GEN_RD_CMD_OPT.axi_rvalid_int_reg_0\ => S_AXI_RVALID,
      \GEN_RD_CMD_OPT.axi_rvalid_int_reg_1\ => I_RD_CHNL_n_2,
      \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0\(0) => \GEN_RD_CMD_OPT.brst_cnt_addr_reg\(0),
      \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_1\(0) => \p_0_in__0\(0),
      \GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0\(0) => \GEN_RD_CMD_OPT.brst_cnt_data_reg\(0),
      \GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_1\(0) => p_0_in(0),
      \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0\ => \GEN_ARB.I_SNG_PORT_n_5\,
      \GEN_RD_CMD_OPT.wrap_addr_assign_reg_1\ => \GEN_ARB.I_SNG_PORT_n_18\,
      Q(0) => \GEN_RD_CMD_OPT.I_WRAP_BRST/wrap_burst_total_reg\(1),
      arb_sm_cs(1 downto 0) => arb_sm_cs(1 downto 0),
      bram_addr_a(10 downto 5) => bram_addr_a(13 downto 8),
      bram_addr_a(4) => bram_addr_a(6),
      bram_addr_a(3 downto 2) => bram_addr_a(4 downto 3),
      bram_addr_a(1 downto 0) => bram_addr_a(1 downto 0),
      \bram_addr_a[17]\(10) => p_0_in_0,
      \bram_addr_a[17]\(9) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[16]\,
      \bram_addr_a[17]\(8) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[15]\,
      \bram_addr_a[17]\(7) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[14]\,
      \bram_addr_a[17]\(6) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[13]\,
      \bram_addr_a[17]\(5) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[12]\,
      \bram_addr_a[17]\(4) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10]\,
      \bram_addr_a[17]\(3) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8]\,
      \bram_addr_a[17]\(2) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7]\,
      \bram_addr_a[17]\(1) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5]\,
      \bram_addr_a[17]\(0) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4]\,
      bram_addr_a_10_sp_1 => \GEN_ARB.I_SNG_PORT_n_31\,
      bram_addr_a_8_sp_1 => \GEN_ARB.I_SNG_PORT_n_30\,
      bram_en_a => bram_en_a,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(13 downto 0) => s_axi_araddr(13 downto 0),
      s_axi_araddr_4_sp_1 => I_RD_CHNL_n_7,
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^sr\(0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      \save_init_bram_addr_ld_reg_reg[17]\ => \^s_axi_arready\,
      \save_init_bram_addr_ld_reg_reg[5]\ => \GEN_ARB.I_SNG_PORT_n_28\,
      \wrap_burst_total_reg_reg[1]\ => I_RD_CHNL_n_32,
      \wrap_burst_total_reg_reg[1]_0\ => I_RD_CHNL_n_40,
      \wrap_burst_total_reg_reg[1]_1\ => I_RD_CHNL_n_42,
      \wrap_burst_total_reg_reg[1]_2\(0) => \GEN_RD_CMD_OPT.I_WRAP_BRST/wrap_burst_total\(1),
      \wrap_burst_total_reg_reg[2]\ => \GEN_ARB.I_SNG_PORT_n_15\
    );
I_WR_CHNL: entity work.design_1_axi_bram_ctrl_0_1_wr_chnl
     port map (
      \ADDR_SNG_PORT.bram_addr_int[17]_i_5\(3) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7]\,
      \ADDR_SNG_PORT.bram_addr_int[17]_i_5\(2) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6]\,
      \ADDR_SNG_PORT.bram_addr_int[17]_i_5\(1) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5]\,
      \ADDR_SNG_PORT.bram_addr_int[17]_i_5\(0) => \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[17]\(5 downto 0) => p_2_in(13 downto 8),
      \ADDR_SNG_PORT.bram_addr_int_reg[4]\ => I_RD_CHNL_n_2,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\ => \GEN_ARB.I_SNG_PORT_n_16\,
      AW2Arb_Active_Clr => AW2Arb_Active_Clr,
      Arb2AR_Active => Arb2AR_Active,
      Arb2AW_Active => Arb2AW_Active,
      BRAM_En_A_i => BRAM_En_A_i,
      D(5 downto 0) => sng_bram_addr_ld(17 downto 12),
      E(0) => I_WR_CHNL_n_139,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0\ => I_WR_CHNL_n_137,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_1\ => I_WR_CHNL_n_138,
      \FSM_sequential_arb_sm_cs_reg[0]\ => I_WR_CHNL_n_153,
      \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(15 downto 0) => bram_we_int(15 downto 0),
      Q(3) => I_WR_CHNL_n_141,
      Q(2) => I_WR_CHNL_n_142,
      Q(1) => I_WR_CHNL_n_143,
      Q(0) => I_WR_CHNL_n_144,
      SR(0) => I_WR_CHNL_n_132,
      arb_sm_cs(1 downto 0) => arb_sm_cs(1 downto 0),
      aw_active_cmb => aw_active_cmb,
      aw_active_d1 => aw_active_d1,
      aw_active_re => aw_active_re,
      aw_active_reg => I_WR_CHNL_n_136,
      axi_bvalid_int_reg_0 => axi_bvalid_int_reg,
      bram_wrdata_a(127 downto 0) => bram_wrdata_a(127 downto 0),
      curr_wrap_burst_reg_reg_0 => I_WR_CHNL_n_135,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(13 downto 1),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awvalid_0 => I_WR_CHNL_n_155,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0 => I_WR_CHNL_n_133,
      \save_init_bram_addr_ld_reg[5]\ => I_WR_CHNL_n_151,
      \save_init_bram_addr_ld_reg[5]_0\ => \^sr\(0),
      \save_init_bram_addr_ld_reg[6]\ => I_WR_CHNL_n_152,
      \wrap_burst_total_reg[1]\ => I_WR_CHNL_n_140
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_bram_ctrl_0_1_axi_bram_ctrl_top is
  port (
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    axi_bvalid_int_reg : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 13 downto 0 );
    bram_we_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl_top : entity is "axi_bram_ctrl_top";
end design_1_axi_bram_ctrl_0_1_axi_bram_ctrl_top;

architecture STRUCTURE of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl_top is
begin
\GEN_AXI4.I_FULL_AXI\: entity work.design_1_axi_bram_ctrl_0_1_full_axi
     port map (
      SR(0) => s_axi_aresetn_0,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      axi_bvalid_int_reg => axi_bvalid_int_reg,
      bram_addr_a(13 downto 0) => bram_addr_a(13 downto 0),
      bram_en_a => bram_en_a,
      bram_we_a(15 downto 0) => bram_we_a(15 downto 0),
      bram_wrdata_a(127 downto 0) => bram_wrdata_a(127 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(13 downto 0) => s_axi_araddr(13 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(13 downto 0) => s_axi_awaddr(13 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_bram_ctrl_0_1_axi_bram_ctrl is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 127 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 127 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 127 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 14;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is "artix7";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 16384;
  attribute C_RD_CMD_OPTIMIZATION : integer;
  attribute C_RD_CMD_OPTIMIZATION of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 1;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 18;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 128;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 4;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is "axi_bram_ctrl";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl : entity is "yes";
end design_1_axi_bram_ctrl_0_1_axi_bram_ctrl;

architecture STRUCTURE of design_1_axi_bram_ctrl_0_1_axi_bram_ctrl is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 17 downto 4 );
  signal \^bram_rddata_a\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \^s_axi_aclk\ : STD_LOGIC;
begin
  \^bram_rddata_a\(127 downto 0) <= bram_rddata_a(127 downto 0);
  \^s_axi_aclk\ <= s_axi_aclk;
  bram_addr_a(17 downto 4) <= \^bram_addr_a\(17 downto 4);
  bram_addr_a(3) <= \<const0>\;
  bram_addr_a(2) <= \<const0>\;
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  bram_addr_b(17) <= \<const0>\;
  bram_addr_b(16) <= \<const0>\;
  bram_addr_b(15) <= \<const0>\;
  bram_addr_b(14) <= \<const0>\;
  bram_addr_b(13) <= \<const0>\;
  bram_addr_b(12) <= \<const0>\;
  bram_addr_b(11) <= \<const0>\;
  bram_addr_b(10) <= \<const0>\;
  bram_addr_b(9) <= \<const0>\;
  bram_addr_b(8) <= \<const0>\;
  bram_addr_b(7) <= \<const0>\;
  bram_addr_b(6) <= \<const0>\;
  bram_addr_b(5) <= \<const0>\;
  bram_addr_b(4) <= \<const0>\;
  bram_addr_b(3) <= \<const0>\;
  bram_addr_b(2) <= \<const0>\;
  bram_addr_b(1) <= \<const0>\;
  bram_addr_b(0) <= \<const0>\;
  bram_clk_a <= \^s_axi_aclk\;
  bram_clk_b <= \<const0>\;
  bram_en_b <= \<const0>\;
  bram_rst_b <= \<const0>\;
  bram_we_b(15) <= \<const0>\;
  bram_we_b(14) <= \<const0>\;
  bram_we_b(13) <= \<const0>\;
  bram_we_b(12) <= \<const0>\;
  bram_we_b(11) <= \<const0>\;
  bram_we_b(10) <= \<const0>\;
  bram_we_b(9) <= \<const0>\;
  bram_we_b(8) <= \<const0>\;
  bram_we_b(7) <= \<const0>\;
  bram_we_b(6) <= \<const0>\;
  bram_we_b(5) <= \<const0>\;
  bram_we_b(4) <= \<const0>\;
  bram_we_b(3) <= \<const0>\;
  bram_we_b(2) <= \<const0>\;
  bram_we_b(1) <= \<const0>\;
  bram_we_b(0) <= \<const0>\;
  bram_wrdata_b(127) <= \<const0>\;
  bram_wrdata_b(126) <= \<const0>\;
  bram_wrdata_b(125) <= \<const0>\;
  bram_wrdata_b(124) <= \<const0>\;
  bram_wrdata_b(123) <= \<const0>\;
  bram_wrdata_b(122) <= \<const0>\;
  bram_wrdata_b(121) <= \<const0>\;
  bram_wrdata_b(120) <= \<const0>\;
  bram_wrdata_b(119) <= \<const0>\;
  bram_wrdata_b(118) <= \<const0>\;
  bram_wrdata_b(117) <= \<const0>\;
  bram_wrdata_b(116) <= \<const0>\;
  bram_wrdata_b(115) <= \<const0>\;
  bram_wrdata_b(114) <= \<const0>\;
  bram_wrdata_b(113) <= \<const0>\;
  bram_wrdata_b(112) <= \<const0>\;
  bram_wrdata_b(111) <= \<const0>\;
  bram_wrdata_b(110) <= \<const0>\;
  bram_wrdata_b(109) <= \<const0>\;
  bram_wrdata_b(108) <= \<const0>\;
  bram_wrdata_b(107) <= \<const0>\;
  bram_wrdata_b(106) <= \<const0>\;
  bram_wrdata_b(105) <= \<const0>\;
  bram_wrdata_b(104) <= \<const0>\;
  bram_wrdata_b(103) <= \<const0>\;
  bram_wrdata_b(102) <= \<const0>\;
  bram_wrdata_b(101) <= \<const0>\;
  bram_wrdata_b(100) <= \<const0>\;
  bram_wrdata_b(99) <= \<const0>\;
  bram_wrdata_b(98) <= \<const0>\;
  bram_wrdata_b(97) <= \<const0>\;
  bram_wrdata_b(96) <= \<const0>\;
  bram_wrdata_b(95) <= \<const0>\;
  bram_wrdata_b(94) <= \<const0>\;
  bram_wrdata_b(93) <= \<const0>\;
  bram_wrdata_b(92) <= \<const0>\;
  bram_wrdata_b(91) <= \<const0>\;
  bram_wrdata_b(90) <= \<const0>\;
  bram_wrdata_b(89) <= \<const0>\;
  bram_wrdata_b(88) <= \<const0>\;
  bram_wrdata_b(87) <= \<const0>\;
  bram_wrdata_b(86) <= \<const0>\;
  bram_wrdata_b(85) <= \<const0>\;
  bram_wrdata_b(84) <= \<const0>\;
  bram_wrdata_b(83) <= \<const0>\;
  bram_wrdata_b(82) <= \<const0>\;
  bram_wrdata_b(81) <= \<const0>\;
  bram_wrdata_b(80) <= \<const0>\;
  bram_wrdata_b(79) <= \<const0>\;
  bram_wrdata_b(78) <= \<const0>\;
  bram_wrdata_b(77) <= \<const0>\;
  bram_wrdata_b(76) <= \<const0>\;
  bram_wrdata_b(75) <= \<const0>\;
  bram_wrdata_b(74) <= \<const0>\;
  bram_wrdata_b(73) <= \<const0>\;
  bram_wrdata_b(72) <= \<const0>\;
  bram_wrdata_b(71) <= \<const0>\;
  bram_wrdata_b(70) <= \<const0>\;
  bram_wrdata_b(69) <= \<const0>\;
  bram_wrdata_b(68) <= \<const0>\;
  bram_wrdata_b(67) <= \<const0>\;
  bram_wrdata_b(66) <= \<const0>\;
  bram_wrdata_b(65) <= \<const0>\;
  bram_wrdata_b(64) <= \<const0>\;
  bram_wrdata_b(63) <= \<const0>\;
  bram_wrdata_b(62) <= \<const0>\;
  bram_wrdata_b(61) <= \<const0>\;
  bram_wrdata_b(60) <= \<const0>\;
  bram_wrdata_b(59) <= \<const0>\;
  bram_wrdata_b(58) <= \<const0>\;
  bram_wrdata_b(57) <= \<const0>\;
  bram_wrdata_b(56) <= \<const0>\;
  bram_wrdata_b(55) <= \<const0>\;
  bram_wrdata_b(54) <= \<const0>\;
  bram_wrdata_b(53) <= \<const0>\;
  bram_wrdata_b(52) <= \<const0>\;
  bram_wrdata_b(51) <= \<const0>\;
  bram_wrdata_b(50) <= \<const0>\;
  bram_wrdata_b(49) <= \<const0>\;
  bram_wrdata_b(48) <= \<const0>\;
  bram_wrdata_b(47) <= \<const0>\;
  bram_wrdata_b(46) <= \<const0>\;
  bram_wrdata_b(45) <= \<const0>\;
  bram_wrdata_b(44) <= \<const0>\;
  bram_wrdata_b(43) <= \<const0>\;
  bram_wrdata_b(42) <= \<const0>\;
  bram_wrdata_b(41) <= \<const0>\;
  bram_wrdata_b(40) <= \<const0>\;
  bram_wrdata_b(39) <= \<const0>\;
  bram_wrdata_b(38) <= \<const0>\;
  bram_wrdata_b(37) <= \<const0>\;
  bram_wrdata_b(36) <= \<const0>\;
  bram_wrdata_b(35) <= \<const0>\;
  bram_wrdata_b(34) <= \<const0>\;
  bram_wrdata_b(33) <= \<const0>\;
  bram_wrdata_b(32) <= \<const0>\;
  bram_wrdata_b(31) <= \<const0>\;
  bram_wrdata_b(30) <= \<const0>\;
  bram_wrdata_b(29) <= \<const0>\;
  bram_wrdata_b(28) <= \<const0>\;
  bram_wrdata_b(27) <= \<const0>\;
  bram_wrdata_b(26) <= \<const0>\;
  bram_wrdata_b(25) <= \<const0>\;
  bram_wrdata_b(24) <= \<const0>\;
  bram_wrdata_b(23) <= \<const0>\;
  bram_wrdata_b(22) <= \<const0>\;
  bram_wrdata_b(21) <= \<const0>\;
  bram_wrdata_b(20) <= \<const0>\;
  bram_wrdata_b(19) <= \<const0>\;
  bram_wrdata_b(18) <= \<const0>\;
  bram_wrdata_b(17) <= \<const0>\;
  bram_wrdata_b(16) <= \<const0>\;
  bram_wrdata_b(15) <= \<const0>\;
  bram_wrdata_b(14) <= \<const0>\;
  bram_wrdata_b(13) <= \<const0>\;
  bram_wrdata_b(12) <= \<const0>\;
  bram_wrdata_b(11) <= \<const0>\;
  bram_wrdata_b(10) <= \<const0>\;
  bram_wrdata_b(9) <= \<const0>\;
  bram_wrdata_b(8) <= \<const0>\;
  bram_wrdata_b(7) <= \<const0>\;
  bram_wrdata_b(6) <= \<const0>\;
  bram_wrdata_b(5) <= \<const0>\;
  bram_wrdata_b(4) <= \<const0>\;
  bram_wrdata_b(3) <= \<const0>\;
  bram_wrdata_b(2) <= \<const0>\;
  bram_wrdata_b(1) <= \<const0>\;
  bram_wrdata_b(0) <= \<const0>\;
  ecc_interrupt <= \<const0>\;
  ecc_ue <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
  s_axi_rdata(127 downto 0) <= \^bram_rddata_a\(127 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gext_inst.abcv4_0_ext_inst\: entity work.design_1_axi_bram_ctrl_0_1_axi_bram_ctrl_top
     port map (
      S_AXI_ARREADY => s_axi_arready,
      S_AXI_RVALID => s_axi_rvalid,
      axi_bvalid_int_reg => s_axi_bvalid,
      bram_addr_a(13 downto 0) => \^bram_addr_a\(17 downto 4),
      bram_en_a => bram_en_a,
      bram_we_a(15 downto 0) => bram_we_a(15 downto 0),
      bram_wrdata_a(127 downto 0) => bram_wrdata_a(127 downto 0),
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(13 downto 0) => s_axi_araddr(17 downto 4),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => bram_rst_a,
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(13 downto 0) => s_axi_awaddr(17 downto 4),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_bram_ctrl_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 127 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_bram_ctrl_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_bram_ctrl_0_1 : entity is "design_1_axi_bram_ctrl_0_1,axi_bram_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_axi_bram_ctrl_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_axi_bram_ctrl_0_1 : entity is "axi_bram_ctrl,Vivado 2020.1";
end design_1_axi_bram_ctrl_0_1;

architecture STRUCTURE of design_1_axi_bram_ctrl_0_1 is
  signal NLW_U0_bram_clk_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_en_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_rst_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_ue_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_addr_b_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_U0_bram_we_b_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_bram_wrdata_b_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_U0_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of U0 : label is 14;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of U0 : label is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of U0 : label is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of U0 : label is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of U0 : label is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of U0 : label is 16384;
  attribute C_RD_CMD_OPTIMIZATION : integer;
  attribute C_RD_CMD_OPTIMIZATION of U0 : label is 1;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of U0 : label is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 18;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 128;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of U0 : label is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of bram_clk_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_info of bram_en_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of bram_rst_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of bram_rst_a : signal is "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 262144, MEM_WIDTH 128, MEM_ECC NONE, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of bram_addr_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of bram_rddata_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of bram_we_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
  attribute x_interface_info of bram_wrdata_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute x_interface_info of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute x_interface_info of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute x_interface_info of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_info of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute x_interface_info of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute x_interface_info of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute x_interface_parameter of s_axi_awid : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute x_interface_info of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
U0: entity work.design_1_axi_bram_ctrl_0_1_axi_bram_ctrl
     port map (
      bram_addr_a(17 downto 0) => bram_addr_a(17 downto 0),
      bram_addr_b(17 downto 0) => NLW_U0_bram_addr_b_UNCONNECTED(17 downto 0),
      bram_clk_a => bram_clk_a,
      bram_clk_b => NLW_U0_bram_clk_b_UNCONNECTED,
      bram_en_a => bram_en_a,
      bram_en_b => NLW_U0_bram_en_b_UNCONNECTED,
      bram_rddata_a(127 downto 0) => bram_rddata_a(127 downto 0),
      bram_rddata_b(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      bram_rst_a => bram_rst_a,
      bram_rst_b => NLW_U0_bram_rst_b_UNCONNECTED,
      bram_we_a(15 downto 0) => bram_we_a(15 downto 0),
      bram_we_b(15 downto 0) => NLW_U0_bram_we_b_UNCONNECTED(15 downto 0),
      bram_wrdata_a(127 downto 0) => bram_wrdata_a(127 downto 0),
      bram_wrdata_b(127 downto 0) => NLW_U0_bram_wrdata_b_UNCONNECTED(127 downto 0),
      ecc_interrupt => NLW_U0_ecc_interrupt_UNCONNECTED,
      ecc_ue => NLW_U0_ecc_ue_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(17 downto 0) => s_axi_araddr(17 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock => s_axi_arlock,
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(17 downto 0) => s_axi_awaddr(17 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock => s_axi_awlock,
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_ctrl_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_arready => NLW_U0_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_awready => NLW_U0_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_U0_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_U0_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_U0_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_wready => NLW_U0_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
