############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project axi_port_fixed_point
set_top mem_streaming
add_files axi_port_fixed_point/mem_streaming.cpp
add_files axi_port_fixed_point/mem_streaming.h
add_files axi_port_fixed_point/utils.cpp
add_files axi_port_fixed_point/utils.h
add_files -tb axi_port_fixed_point/sim.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 10 -name default
config_cosim -tool xsim
#source "./axi_port_fixed_point/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
