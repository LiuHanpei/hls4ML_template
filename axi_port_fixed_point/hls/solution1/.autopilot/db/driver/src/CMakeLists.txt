# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
# Tool Version Limit: 2023.12
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
cmake_minimum_required(VERSION 3.15)
project(mem_streaming)
find_package(common)
collector_create (PROJECT_LIB_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_SOURCES xmem_streaming.c)
collect (PROJECT_LIB_SOURCES xmem_streaming_sinit.c)
collect (PROJECT_LIB_SOURCES xmem_streaming_linux.c)
collect (PROJECT_LIB_SOURCES xmem_streaming_g.c)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_create (PROJECT_LIB_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_HEADERS xmem_streaming.h)
collect (PROJECT_LIB_HEADERS xmem_streaming_hw.h)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
include_directories(${CMAKE_BINARY_DIR}/include)
add_library(mem_streaming STATIC ${_sources})
set_target_properties(mem_streaming PROPERTIES LINKER_LANGUAGE C)

