
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tfgg484-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: BRAM
proc create_hier_cell_BRAM { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_BRAM() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_PORTA

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir I -type clk axi_aclk
  create_bd_pin -dir I -type rst axi_aresetn

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {256} \
   CONFIG.ECC_TYPE {0} \
   CONFIG.READ_LATENCY {1} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_dwidth_converter_0, and set properties
  set axi_dwidth_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dwidth_converter:2.1 axi_dwidth_converter_0 ]
  set_property -dict [ list \
   CONFIG.FIFO_MODE {0} \
   CONFIG.MI_DATA_WIDTH {256} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_ONLY} \
 ] $axi_dwidth_converter_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {WRITE_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Read_Width_A {64} \
   CONFIG.Read_Width_B {256} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {32768} \
   CONFIG.Write_Width_A {64} \
   CONFIG.Write_Width_B {256} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_dwidth_converter_0_M_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_dwidth_converter_0/M_AXI]
  connect_bd_intf_net -intf_net xdma_0_M_AXI1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_dwidth_converter_0/S_AXI]

  # Create port connections
  connect_bd_net -net PCIe_axi_aresetn [get_bd_pins axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_dwidth_converter_0/s_axi_aresetn]
  connect_bd_net -net xdma_0_axi_aclk [get_bd_pins axi_aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_dwidth_converter_0/s_axi_aclk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: AXI_LITE_IO
proc create_hier_cell_AXI_LITE_IO { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_AXI_LITE_IO() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 AXI_STR_TXD_0

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI


  # Create pins
  create_bd_pin -dir I -type clk axi_aclk
  create_bd_pin -dir I -type rst axi_resetn
  create_bd_pin -dir I -from 31 -to 0 gpio2_io_i
  create_bd_pin -dir I -from 31 -to 0 gpio2_io_i_0
  create_bd_pin -dir O -from 31 -to 0 gpio_io_o_0
  create_bd_pin -dir O -from 31 -to 0 gpio_io_o_1

  # Create instance: axi_crossbar_0, and set properties
  set axi_crossbar_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_0 ]
  set_property -dict [ list \
   CONFIG.CONNECTIVITY_MODE {SASD} \
   CONFIG.NUM_MI {3} \
   CONFIG.STRATEGY {1} \
 ] $axi_crossbar_0

  # Create instance: axi_fifo_mm_s_0, and set properties
  set axi_fifo_mm_s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.2 axi_fifo_mm_s_0 ]
  set_property -dict [ list \
   CONFIG.C_USE_RX_DATA {0} \
   CONFIG.C_USE_TX_CTRL {0} \
 ] $axi_fifo_mm_s_0

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_1

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins AXI_STR_TXD_0] [get_bd_intf_pins axi_fifo_mm_s_0/AXI_STR_TXD]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins axi_crossbar_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M00_AXI [get_bd_intf_pins axi_crossbar_0/M00_AXI] [get_bd_intf_pins axi_fifo_mm_s_0/S_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M01_AXI [get_bd_intf_pins axi_crossbar_0/M01_AXI] [get_bd_intf_pins axi_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M02_AXI [get_bd_intf_pins axi_crossbar_0/M02_AXI] [get_bd_intf_pins axi_gpio_1/S_AXI]

  # Create port connections
  connect_bd_net -net axi_aclk_1 [get_bd_pins axi_aclk] [get_bd_pins axi_crossbar_0/aclk] [get_bd_pins axi_fifo_mm_s_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_gpio_1/s_axi_aclk]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins gpio_io_o_0] [get_bd_pins axi_gpio_0/gpio_io_o]
  connect_bd_net -net axi_gpio_1_gpio_io_o [get_bd_pins gpio_io_o_1] [get_bd_pins axi_gpio_1/gpio_io_o]
  connect_bd_net -net axi_resetn_1 [get_bd_pins axi_resetn] [get_bd_pins axi_crossbar_0/aresetn] [get_bd_pins axi_fifo_mm_s_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_gpio_1/s_axi_aresetn]
  connect_bd_net -net gpio2_io_i_0_1 [get_bd_pins gpio2_io_i_0] [get_bd_pins axi_gpio_1/gpio2_io_i]
  connect_bd_net -net gpio2_io_i_1 [get_bd_pins gpio2_io_i] [get_bd_pins axi_gpio_0/gpio2_io_i]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set AXI_STR_TXD_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 AXI_STR_TXD_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   ] $AXI_STR_TXD_0

  set BRAM_PORTA [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_PORTA ]
  set_property -dict [ list \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   ] $BRAM_PORTA

  set pcie [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 pcie ]

  set pcie_mgt [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt ]


  # Create ports
  set axi_aclk [ create_bd_port -dir O -type clk axi_aclk ]
  set axi_aresetn [ create_bd_port -dir O axi_aresetn ]
  set gpio2_io_i [ create_bd_port -dir I -from 31 -to 0 gpio2_io_i ]
  set gpio2_io_i_0 [ create_bd_port -dir I -from 31 -to 0 gpio2_io_i_0 ]
  set gpio_io_o_0 [ create_bd_port -dir O -from 31 -to 0 gpio_io_o_0 ]
  set gpio_io_o_1 [ create_bd_port -dir O -from 31 -to 0 gpio_io_o_1 ]
  set pcie_perstn [ create_bd_port -dir I -type rst pcie_perstn ]

  # Create instance: AXI_LITE_IO
  create_hier_cell_AXI_LITE_IO [current_bd_instance .] AXI_LITE_IO

  # Create instance: BRAM
  create_hier_cell_BRAM [current_bd_instance .] BRAM

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $util_ds_buf_0

  # Create instance: xdma_0, and set properties
  set xdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma:4.1 xdma_0 ]
  set_property -dict [ list \
   CONFIG.PF0_DEVICE_ID_mqdma {9024} \
   CONFIG.PF2_DEVICE_ID_mqdma {9024} \
   CONFIG.PF3_DEVICE_ID_mqdma {9024} \
   CONFIG.axi_data_width {128_bit} \
   CONFIG.axi_id_width {4} \
   CONFIG.axil_master_64bit_en {false} \
   CONFIG.axil_master_prefetchable {false} \
   CONFIG.axilite_master_en {true} \
   CONFIG.axilite_master_scale {Megabytes} \
   CONFIG.axilite_master_size {1} \
   CONFIG.axisten_freq {125} \
   CONFIG.cfg_mgmt_if {false} \
   CONFIG.dsc_bypass_wr {0000} \
   CONFIG.mode_selection {Advanced} \
   CONFIG.pcie_extended_tag {true} \
   CONFIG.pciebar2axibar_axil_master {0x40000000} \
   CONFIG.performance {true} \
   CONFIG.pf0_device_id {7024} \
   CONFIG.pf0_msi_enabled {true} \
   CONFIG.pf0_msix_cap_pba_bir {BAR_3:2} \
   CONFIG.pf0_msix_cap_table_bir {BAR_3:2} \
   CONFIG.pl_link_cap_max_link_speed {5.0_GT/s} \
   CONFIG.pl_link_cap_max_link_width {X4} \
   CONFIG.plltype {QPLL1} \
   CONFIG.xdma_pcie_64bit_en {true} \
   CONFIG.xdma_pcie_prefetchable {true} \
   CONFIG.xdma_rnum_rids {32} \
   CONFIG.xdma_wnum_chnl {1} \
   CONFIG.xdma_wnum_rids {32} \
 ] $xdma_0

  # Create interface connections
  connect_bd_intf_net -intf_net AXI_LITE_IO_AXI_STR_TXD_0 [get_bd_intf_ports AXI_STR_TXD_0] [get_bd_intf_pins AXI_LITE_IO/AXI_STR_TXD_0]
  connect_bd_intf_net -intf_net BRAM_PORTA_1_1 [get_bd_intf_ports BRAM_PORTA] [get_bd_intf_pins BRAM/BRAM_PORTA]
  connect_bd_intf_net -intf_net CLK_IN_D_0_1 [get_bd_intf_ports pcie] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net PCIe_M_AXI_LITE [get_bd_intf_pins AXI_LITE_IO/S00_AXI] [get_bd_intf_pins xdma_0/M_AXI_LITE]
  connect_bd_intf_net -intf_net xdma_0_M_AXI1 [get_bd_intf_pins BRAM/S_AXI] [get_bd_intf_pins xdma_0/M_AXI]
  connect_bd_intf_net -intf_net xdma_0_pcie_mgt [get_bd_intf_ports pcie_mgt] [get_bd_intf_pins xdma_0/pcie_mgt]

  # Create port connections
  connect_bd_net -net AXI_LITE_IO_gpio_io_o_0 [get_bd_ports gpio_io_o_0] [get_bd_pins AXI_LITE_IO/gpio_io_o_0]
  connect_bd_net -net AXI_LITE_IO_gpio_io_o_1 [get_bd_ports gpio_io_o_1] [get_bd_pins AXI_LITE_IO/gpio_io_o_1]
  connect_bd_net -net PCIe_axi_aresetn [get_bd_ports axi_aresetn] [get_bd_pins AXI_LITE_IO/axi_resetn] [get_bd_pins BRAM/axi_aresetn] [get_bd_pins xdma_0/axi_aresetn]
  connect_bd_net -net gpio2_io_i_0_1 [get_bd_ports gpio2_io_i] [get_bd_pins AXI_LITE_IO/gpio2_io_i]
  connect_bd_net -net gpio2_io_i_0_2 [get_bd_ports gpio2_io_i_0] [get_bd_pins AXI_LITE_IO/gpio2_io_i_0]
  connect_bd_net -net sys_rst_n_0_1 [get_bd_ports pcie_perstn] [get_bd_pins xdma_0/sys_rst_n]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins xdma_0/sys_clk]
  connect_bd_net -net xdma_0_axi_aclk [get_bd_ports axi_aclk] [get_bd_pins AXI_LITE_IO/axi_aclk] [get_bd_pins BRAM/axi_aclk] [get_bd_pins xdma_0/axi_aclk]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces xdma_0/M_AXI] [get_bd_addr_segs BRAM/axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x40020000 -range 0x00010000 -target_address_space [get_bd_addr_spaces xdma_0/M_AXI_LITE] [get_bd_addr_segs AXI_LITE_IO/axi_fifo_mm_s_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces xdma_0/M_AXI_LITE] [get_bd_addr_segs AXI_LITE_IO/axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces xdma_0/M_AXI_LITE] [get_bd_addr_segs AXI_LITE_IO/axi_gpio_1/S_AXI/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


