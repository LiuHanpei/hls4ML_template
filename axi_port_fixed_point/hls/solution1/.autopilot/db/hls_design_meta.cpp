#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("m_axi_out_r_AWVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_out_r_AWREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_out_r_AWADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_out_r_AWID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_out_r_AWLEN", 8, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_out_r_AWSIZE", 3, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_out_r_AWBURST", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_out_r_AWLOCK", 2, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_out_r_AWCACHE", 4, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_out_r_AWPROT", 3, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_out_r_AWQOS", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_out_r_AWREGION", 4, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_out_r_AWUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_out_r_WVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_out_r_WREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_out_r_WDATA", 256, hls_out, 0, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_out_r_WSTRB", 32, hls_out, 0, "m_axi", "STRB", 1),
	Port_Property("m_axi_out_r_WLAST", 1, hls_out, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_out_r_WID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_out_r_WUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_out_r_ARVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_out_r_ARREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_out_r_ARADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_out_r_ARID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_out_r_ARLEN", 8, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_out_r_ARSIZE", 3, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_out_r_ARBURST", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_out_r_ARLOCK", 2, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_out_r_ARCACHE", 4, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_out_r_ARPROT", 3, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_out_r_ARQOS", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_out_r_ARREGION", 4, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_out_r_ARUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_out_r_RVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_out_r_RREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_out_r_RDATA", 256, hls_in, 0, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_out_r_RLAST", 1, hls_in, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_out_r_RID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_out_r_RUSER", 1, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_out_r_RRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_out_r_BVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_out_r_BREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_out_r_BRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_out_r_BID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_out_r_BUSER", 1, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_in_r_AWVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_in_r_AWREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_in_r_AWADDR", 64, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_in_r_AWID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_in_r_AWLEN", 8, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_in_r_AWSIZE", 3, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_in_r_AWBURST", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_in_r_AWLOCK", 2, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_in_r_AWCACHE", 4, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_in_r_AWPROT", 3, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_in_r_AWQOS", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_in_r_AWREGION", 4, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_in_r_AWUSER", 1, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_in_r_WVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_in_r_WREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_in_r_WDATA", 256, hls_out, 1, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_in_r_WSTRB", 32, hls_out, 1, "m_axi", "STRB", 1),
	Port_Property("m_axi_in_r_WLAST", 1, hls_out, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_in_r_WID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_in_r_WUSER", 1, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_in_r_ARVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_in_r_ARREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_in_r_ARADDR", 64, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_in_r_ARID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_in_r_ARLEN", 8, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_in_r_ARSIZE", 3, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_in_r_ARBURST", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_in_r_ARLOCK", 2, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_in_r_ARCACHE", 4, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_in_r_ARPROT", 3, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_in_r_ARQOS", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_in_r_ARREGION", 4, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_in_r_ARUSER", 1, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_in_r_RVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_in_r_RREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_in_r_RDATA", 256, hls_in, 1, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_in_r_RLAST", 1, hls_in, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_in_r_RID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_in_r_RUSER", 1, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_in_r_RRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_in_r_BVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_in_r_BREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_in_r_BRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_in_r_BID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_in_r_BUSER", 1, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("s_axi_control_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_AWADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_ARADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "mem_streaming";
