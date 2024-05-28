set SynModuleInfo {
  {SRCNAME mem_streaming_Pipeline_VITIS_LOOP_9_1 MODELNAME mem_streaming_Pipeline_VITIS_LOOP_9_1 RTLNAME mem_streaming_mem_streaming_Pipeline_VITIS_LOOP_9_1
    SUBMODULES {
      {MODELNAME mem_streaming_flow_control_loop_pipe_sequential_init RTLNAME mem_streaming_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mem_streaming_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mem_streaming_Pipeline_VITIS_LOOP_40_1 MODELNAME mem_streaming_Pipeline_VITIS_LOOP_40_1 RTLNAME mem_streaming_mem_streaming_Pipeline_VITIS_LOOP_40_1
    SUBMODULES {
      {MODELNAME mem_streaming_sparsemux_11_3_16_1_1 RTLNAME mem_streaming_sparsemux_11_3_16_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME mem_streaming_Pipeline_VITIS_LOOP_25_1 MODELNAME mem_streaming_Pipeline_VITIS_LOOP_25_1 RTLNAME mem_streaming_mem_streaming_Pipeline_VITIS_LOOP_25_1}
  {SRCNAME mem_streaming MODELNAME mem_streaming RTLNAME mem_streaming IS_TOP 1
    SUBMODULES {
      {MODELNAME mem_streaming_data_buf_RAM_AUTO_1R1W RTLNAME mem_streaming_data_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mem_streaming_out_r_m_axi RTLNAME mem_streaming_out_r_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mem_streaming_in_r_m_axi RTLNAME mem_streaming_in_r_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mem_streaming_control_s_axi RTLNAME mem_streaming_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
