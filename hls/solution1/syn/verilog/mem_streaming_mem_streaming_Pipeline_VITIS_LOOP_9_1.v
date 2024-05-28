// ==============================================================
// Generated by Vitis HLS v2023.2.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module mem_streaming_mem_streaming_Pipeline_VITIS_LOOP_9_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_in_r_AWVALID,
        m_axi_in_r_AWREADY,
        m_axi_in_r_AWADDR,
        m_axi_in_r_AWID,
        m_axi_in_r_AWLEN,
        m_axi_in_r_AWSIZE,
        m_axi_in_r_AWBURST,
        m_axi_in_r_AWLOCK,
        m_axi_in_r_AWCACHE,
        m_axi_in_r_AWPROT,
        m_axi_in_r_AWQOS,
        m_axi_in_r_AWREGION,
        m_axi_in_r_AWUSER,
        m_axi_in_r_WVALID,
        m_axi_in_r_WREADY,
        m_axi_in_r_WDATA,
        m_axi_in_r_WSTRB,
        m_axi_in_r_WLAST,
        m_axi_in_r_WID,
        m_axi_in_r_WUSER,
        m_axi_in_r_ARVALID,
        m_axi_in_r_ARREADY,
        m_axi_in_r_ARADDR,
        m_axi_in_r_ARID,
        m_axi_in_r_ARLEN,
        m_axi_in_r_ARSIZE,
        m_axi_in_r_ARBURST,
        m_axi_in_r_ARLOCK,
        m_axi_in_r_ARCACHE,
        m_axi_in_r_ARPROT,
        m_axi_in_r_ARQOS,
        m_axi_in_r_ARREGION,
        m_axi_in_r_ARUSER,
        m_axi_in_r_RVALID,
        m_axi_in_r_RREADY,
        m_axi_in_r_RDATA,
        m_axi_in_r_RLAST,
        m_axi_in_r_RID,
        m_axi_in_r_RFIFONUM,
        m_axi_in_r_RUSER,
        m_axi_in_r_RRESP,
        m_axi_in_r_BVALID,
        m_axi_in_r_BREADY,
        m_axi_in_r_BRESP,
        m_axi_in_r_BID,
        m_axi_in_r_BUSER,
        sext_ln9,
        data_buf_address0,
        data_buf_ce0,
        data_buf_we0,
        data_buf_d0,
        data_buf_address1,
        data_buf_ce1,
        data_buf_we1,
        data_buf_d1,
        data_buf_1_address0,
        data_buf_1_ce0,
        data_buf_1_we0,
        data_buf_1_d0,
        data_buf_1_address1,
        data_buf_1_ce1,
        data_buf_1_we1,
        data_buf_1_d1,
        data_buf_2_address0,
        data_buf_2_ce0,
        data_buf_2_we0,
        data_buf_2_d0,
        data_buf_2_address1,
        data_buf_2_ce1,
        data_buf_2_we1,
        data_buf_2_d1,
        data_buf_3_address0,
        data_buf_3_ce0,
        data_buf_3_we0,
        data_buf_3_d0,
        data_buf_3_address1,
        data_buf_3_ce1,
        data_buf_3_we1,
        data_buf_3_d1,
        data_buf_4_address0,
        data_buf_4_ce0,
        data_buf_4_we0,
        data_buf_4_d0,
        data_buf_4_address1,
        data_buf_4_ce1,
        data_buf_4_we1,
        data_buf_4_d1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_in_r_AWVALID;
input   m_axi_in_r_AWREADY;
output  [63:0] m_axi_in_r_AWADDR;
output  [0:0] m_axi_in_r_AWID;
output  [31:0] m_axi_in_r_AWLEN;
output  [2:0] m_axi_in_r_AWSIZE;
output  [1:0] m_axi_in_r_AWBURST;
output  [1:0] m_axi_in_r_AWLOCK;
output  [3:0] m_axi_in_r_AWCACHE;
output  [2:0] m_axi_in_r_AWPROT;
output  [3:0] m_axi_in_r_AWQOS;
output  [3:0] m_axi_in_r_AWREGION;
output  [0:0] m_axi_in_r_AWUSER;
output   m_axi_in_r_WVALID;
input   m_axi_in_r_WREADY;
output  [255:0] m_axi_in_r_WDATA;
output  [31:0] m_axi_in_r_WSTRB;
output   m_axi_in_r_WLAST;
output  [0:0] m_axi_in_r_WID;
output  [0:0] m_axi_in_r_WUSER;
output   m_axi_in_r_ARVALID;
input   m_axi_in_r_ARREADY;
output  [63:0] m_axi_in_r_ARADDR;
output  [0:0] m_axi_in_r_ARID;
output  [31:0] m_axi_in_r_ARLEN;
output  [2:0] m_axi_in_r_ARSIZE;
output  [1:0] m_axi_in_r_ARBURST;
output  [1:0] m_axi_in_r_ARLOCK;
output  [3:0] m_axi_in_r_ARCACHE;
output  [2:0] m_axi_in_r_ARPROT;
output  [3:0] m_axi_in_r_ARQOS;
output  [3:0] m_axi_in_r_ARREGION;
output  [0:0] m_axi_in_r_ARUSER;
input   m_axi_in_r_RVALID;
output   m_axi_in_r_RREADY;
input  [255:0] m_axi_in_r_RDATA;
input   m_axi_in_r_RLAST;
input  [0:0] m_axi_in_r_RID;
input  [8:0] m_axi_in_r_RFIFONUM;
input  [0:0] m_axi_in_r_RUSER;
input  [1:0] m_axi_in_r_RRESP;
input   m_axi_in_r_BVALID;
output   m_axi_in_r_BREADY;
input  [1:0] m_axi_in_r_BRESP;
input  [0:0] m_axi_in_r_BID;
input  [0:0] m_axi_in_r_BUSER;
input  [58:0] sext_ln9;
output  [3:0] data_buf_address0;
output   data_buf_ce0;
output   data_buf_we0;
output  [15:0] data_buf_d0;
output  [3:0] data_buf_address1;
output   data_buf_ce1;
output   data_buf_we1;
output  [15:0] data_buf_d1;
output  [3:0] data_buf_1_address0;
output   data_buf_1_ce0;
output   data_buf_1_we0;
output  [15:0] data_buf_1_d0;
output  [3:0] data_buf_1_address1;
output   data_buf_1_ce1;
output   data_buf_1_we1;
output  [15:0] data_buf_1_d1;
output  [3:0] data_buf_2_address0;
output   data_buf_2_ce0;
output   data_buf_2_we0;
output  [15:0] data_buf_2_d0;
output  [3:0] data_buf_2_address1;
output   data_buf_2_ce1;
output   data_buf_2_we1;
output  [15:0] data_buf_2_d1;
output  [3:0] data_buf_3_address0;
output   data_buf_3_ce0;
output   data_buf_3_we0;
output  [15:0] data_buf_3_d0;
output  [3:0] data_buf_3_address1;
output   data_buf_3_ce1;
output   data_buf_3_we1;
output  [15:0] data_buf_3_d1;
output  [3:0] data_buf_4_address0;
output   data_buf_4_ce0;
output   data_buf_4_we0;
output  [15:0] data_buf_4_d0;
output  [3:0] data_buf_4_address1;
output   data_buf_4_ce1;
output   data_buf_4_we1;
output  [15:0] data_buf_4_d1;

reg ap_idle;
reg m_axi_in_r_RREADY;
reg data_buf_ce0;
reg data_buf_we0;
reg data_buf_ce1;
reg data_buf_we1;
reg data_buf_1_ce0;
reg data_buf_1_we0;
reg data_buf_1_ce1;
reg data_buf_1_we1;
reg data_buf_2_ce0;
reg data_buf_2_we0;
reg data_buf_2_ce1;
reg data_buf_2_we1;
reg data_buf_3_ce0;
reg data_buf_3_we0;
reg data_buf_3_ce1;
reg data_buf_3_we1;
reg data_buf_4_ce0;
reg data_buf_4_we0;
reg data_buf_4_ce1;
reg data_buf_4_we1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln9_fu_252_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    in_r_blk_n_R;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
reg   [2:0] i_1_reg_418;
reg   [2:0] i_1_reg_418_pp0_iter1_reg;
reg   [15:0] tmp_fu_275_p4;
reg   [15:0] tmp_reg_427;
reg   [15:0] tmp_1_fu_285_p4;
reg   [15:0] tmp_1_reg_432;
reg   [15:0] tmp_2_fu_295_p4;
reg   [15:0] tmp_2_reg_437;
reg   [15:0] tmp_3_fu_305_p4;
reg   [15:0] tmp_3_reg_442;
reg   [15:0] tmp_4_fu_315_p4;
reg   [15:0] tmp_4_reg_447;
reg   [15:0] tmp_5_fu_325_p4;
reg   [15:0] tmp_5_reg_452;
reg   [15:0] tmp_6_fu_335_p4;
reg   [15:0] tmp_6_reg_457;
reg   [15:0] tmp_7_fu_345_p4;
reg   [15:0] tmp_7_reg_462;
reg   [15:0] tmp_8_fu_355_p4;
reg   [15:0] tmp_8_reg_467;
reg   [15:0] tmp_9_fu_365_p4;
reg   [15:0] tmp_9_reg_472;
wire   [63:0] zext_ln14_fu_382_p1;
wire   [63:0] zext_ln14_1_fu_397_p1;
reg   [2:0] i_fu_100;
wire   [2:0] add_ln9_fu_258_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_1;
wire   [3:0] shl_ln_fu_375_p3;
wire   [3:0] or_ln14_fu_391_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_100 = 3'd0;
#0 ap_done_reg = 1'b0;
end

mem_streaming_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln9_fu_252_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_100 <= add_ln9_fu_258_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_100 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        i_1_reg_418 <= ap_sig_allocacmp_i_1;
        i_1_reg_418_pp0_iter1_reg <= i_1_reg_418;
        tmp_1_reg_432 <= tmp_1_fu_285_p4;
        tmp_2_reg_437 <= tmp_2_fu_295_p4;
        tmp_3_reg_442 <= tmp_3_fu_305_p4;
        tmp_4_reg_447 <= tmp_4_fu_315_p4;
        tmp_5_reg_452 <= tmp_5_fu_325_p4;
        tmp_6_reg_457 <= tmp_6_fu_335_p4;
        tmp_7_reg_462 <= tmp_7_fu_345_p4;
        tmp_8_reg_467 <= tmp_8_fu_355_p4;
        tmp_9_reg_472 <= tmp_9_fu_365_p4;
        tmp_reg_427 <= tmp_fu_275_p4;
    end
end

always @ (*) begin
    if (((icmp_ln9_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_100;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_1_ce0 = 1'b1;
    end else begin
        data_buf_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_1_ce1 = 1'b1;
    end else begin
        data_buf_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_1_we0 = 1'b1;
    end else begin
        data_buf_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_1_we1 = 1'b1;
    end else begin
        data_buf_1_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_2_ce0 = 1'b1;
    end else begin
        data_buf_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_2_ce1 = 1'b1;
    end else begin
        data_buf_2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_2_we0 = 1'b1;
    end else begin
        data_buf_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_2_we1 = 1'b1;
    end else begin
        data_buf_2_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_3_ce0 = 1'b1;
    end else begin
        data_buf_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_3_ce1 = 1'b1;
    end else begin
        data_buf_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_3_we0 = 1'b1;
    end else begin
        data_buf_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_3_we1 = 1'b1;
    end else begin
        data_buf_3_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_4_ce0 = 1'b1;
    end else begin
        data_buf_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_4_ce1 = 1'b1;
    end else begin
        data_buf_4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_4_we0 = 1'b1;
    end else begin
        data_buf_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_4_we1 = 1'b1;
    end else begin
        data_buf_4_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_ce0 = 1'b1;
    end else begin
        data_buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_ce1 = 1'b1;
    end else begin
        data_buf_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_we0 = 1'b1;
    end else begin
        data_buf_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        data_buf_we1 = 1'b1;
    end else begin
        data_buf_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_r_blk_n_R = m_axi_in_r_RVALID;
    end else begin
        in_r_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_in_r_RREADY = 1'b1;
    end else begin
        m_axi_in_r_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln9_fu_258_p2 = (ap_sig_allocacmp_i_1 + 3'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (m_axi_in_r_RVALID == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign data_buf_1_address0 = zext_ln14_1_fu_397_p1;

assign data_buf_1_address1 = zext_ln14_fu_382_p1;

assign data_buf_1_d0 = tmp_6_reg_457;

assign data_buf_1_d1 = tmp_1_reg_432;

assign data_buf_2_address0 = zext_ln14_1_fu_397_p1;

assign data_buf_2_address1 = zext_ln14_fu_382_p1;

assign data_buf_2_d0 = tmp_7_reg_462;

assign data_buf_2_d1 = tmp_2_reg_437;

assign data_buf_3_address0 = zext_ln14_1_fu_397_p1;

assign data_buf_3_address1 = zext_ln14_fu_382_p1;

assign data_buf_3_d0 = tmp_8_reg_467;

assign data_buf_3_d1 = tmp_3_reg_442;

assign data_buf_4_address0 = zext_ln14_1_fu_397_p1;

assign data_buf_4_address1 = zext_ln14_fu_382_p1;

assign data_buf_4_d0 = tmp_9_reg_472;

assign data_buf_4_d1 = tmp_4_reg_447;

assign data_buf_address0 = zext_ln14_1_fu_397_p1;

assign data_buf_address1 = zext_ln14_fu_382_p1;

assign data_buf_d0 = tmp_5_reg_452;

assign data_buf_d1 = tmp_reg_427;

assign icmp_ln9_fu_252_p2 = ((ap_sig_allocacmp_i_1 == 3'd5) ? 1'b1 : 1'b0);

assign m_axi_in_r_ARADDR = 64'd0;

assign m_axi_in_r_ARBURST = 2'd0;

assign m_axi_in_r_ARCACHE = 4'd0;

assign m_axi_in_r_ARID = 1'd0;

assign m_axi_in_r_ARLEN = 32'd0;

assign m_axi_in_r_ARLOCK = 2'd0;

assign m_axi_in_r_ARPROT = 3'd0;

assign m_axi_in_r_ARQOS = 4'd0;

assign m_axi_in_r_ARREGION = 4'd0;

assign m_axi_in_r_ARSIZE = 3'd0;

assign m_axi_in_r_ARUSER = 1'd0;

assign m_axi_in_r_ARVALID = 1'b0;

assign m_axi_in_r_AWADDR = 64'd0;

assign m_axi_in_r_AWBURST = 2'd0;

assign m_axi_in_r_AWCACHE = 4'd0;

assign m_axi_in_r_AWID = 1'd0;

assign m_axi_in_r_AWLEN = 32'd0;

assign m_axi_in_r_AWLOCK = 2'd0;

assign m_axi_in_r_AWPROT = 3'd0;

assign m_axi_in_r_AWQOS = 4'd0;

assign m_axi_in_r_AWREGION = 4'd0;

assign m_axi_in_r_AWSIZE = 3'd0;

assign m_axi_in_r_AWUSER = 1'd0;

assign m_axi_in_r_AWVALID = 1'b0;

assign m_axi_in_r_BREADY = 1'b0;

assign m_axi_in_r_WDATA = 256'd0;

assign m_axi_in_r_WID = 1'd0;

assign m_axi_in_r_WLAST = 1'b0;

assign m_axi_in_r_WSTRB = 32'd0;

assign m_axi_in_r_WUSER = 1'd0;

assign m_axi_in_r_WVALID = 1'b0;

assign or_ln14_fu_391_p2 = (shl_ln_fu_375_p3 | 4'd1);

assign shl_ln_fu_375_p3 = {{i_1_reg_418_pp0_iter1_reg}, {1'd0}};

integer ap_tvar_int_0;

always @ (m_axi_in_r_RDATA) begin
    for (ap_tvar_int_0 = 16 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 31 - 16) begin
            tmp_1_fu_285_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_1_fu_285_p4[ap_tvar_int_0] = m_axi_in_r_RDATA[31 - ap_tvar_int_0];
        end
    end
end

integer ap_tvar_int_1;

always @ (m_axi_in_r_RDATA) begin
    for (ap_tvar_int_1 = 16 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 47 - 32) begin
            tmp_2_fu_295_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_2_fu_295_p4[ap_tvar_int_1] = m_axi_in_r_RDATA[47 - ap_tvar_int_1];
        end
    end
end

integer ap_tvar_int_2;

always @ (m_axi_in_r_RDATA) begin
    for (ap_tvar_int_2 = 16 - 1; ap_tvar_int_2 >= 0; ap_tvar_int_2 = ap_tvar_int_2 - 1) begin
        if (ap_tvar_int_2 > 63 - 48) begin
            tmp_3_fu_305_p4[ap_tvar_int_2] = 1'b0;
        end else begin
            tmp_3_fu_305_p4[ap_tvar_int_2] = m_axi_in_r_RDATA[63 - ap_tvar_int_2];
        end
    end
end

integer ap_tvar_int_3;

always @ (m_axi_in_r_RDATA) begin
    for (ap_tvar_int_3 = 16 - 1; ap_tvar_int_3 >= 0; ap_tvar_int_3 = ap_tvar_int_3 - 1) begin
        if (ap_tvar_int_3 > 79 - 64) begin
            tmp_4_fu_315_p4[ap_tvar_int_3] = 1'b0;
        end else begin
            tmp_4_fu_315_p4[ap_tvar_int_3] = m_axi_in_r_RDATA[79 - ap_tvar_int_3];
        end
    end
end

integer ap_tvar_int_4;

always @ (m_axi_in_r_RDATA) begin
    for (ap_tvar_int_4 = 16 - 1; ap_tvar_int_4 >= 0; ap_tvar_int_4 = ap_tvar_int_4 - 1) begin
        if (ap_tvar_int_4 > 95 - 80) begin
            tmp_5_fu_325_p4[ap_tvar_int_4] = 1'b0;
        end else begin
            tmp_5_fu_325_p4[ap_tvar_int_4] = m_axi_in_r_RDATA[95 - ap_tvar_int_4];
        end
    end
end

integer ap_tvar_int_5;

always @ (m_axi_in_r_RDATA) begin
    for (ap_tvar_int_5 = 16 - 1; ap_tvar_int_5 >= 0; ap_tvar_int_5 = ap_tvar_int_5 - 1) begin
        if (ap_tvar_int_5 > 111 - 96) begin
            tmp_6_fu_335_p4[ap_tvar_int_5] = 1'b0;
        end else begin
            tmp_6_fu_335_p4[ap_tvar_int_5] = m_axi_in_r_RDATA[111 - ap_tvar_int_5];
        end
    end
end

integer ap_tvar_int_6;

always @ (m_axi_in_r_RDATA) begin
    for (ap_tvar_int_6 = 16 - 1; ap_tvar_int_6 >= 0; ap_tvar_int_6 = ap_tvar_int_6 - 1) begin
        if (ap_tvar_int_6 > 127 - 112) begin
            tmp_7_fu_345_p4[ap_tvar_int_6] = 1'b0;
        end else begin
            tmp_7_fu_345_p4[ap_tvar_int_6] = m_axi_in_r_RDATA[127 - ap_tvar_int_6];
        end
    end
end

integer ap_tvar_int_7;

always @ (m_axi_in_r_RDATA) begin
    for (ap_tvar_int_7 = 16 - 1; ap_tvar_int_7 >= 0; ap_tvar_int_7 = ap_tvar_int_7 - 1) begin
        if (ap_tvar_int_7 > 143 - 128) begin
            tmp_8_fu_355_p4[ap_tvar_int_7] = 1'b0;
        end else begin
            tmp_8_fu_355_p4[ap_tvar_int_7] = m_axi_in_r_RDATA[143 - ap_tvar_int_7];
        end
    end
end

integer ap_tvar_int_8;

always @ (m_axi_in_r_RDATA) begin
    for (ap_tvar_int_8 = 16 - 1; ap_tvar_int_8 >= 0; ap_tvar_int_8 = ap_tvar_int_8 - 1) begin
        if (ap_tvar_int_8 > 159 - 144) begin
            tmp_9_fu_365_p4[ap_tvar_int_8] = 1'b0;
        end else begin
            tmp_9_fu_365_p4[ap_tvar_int_8] = m_axi_in_r_RDATA[159 - ap_tvar_int_8];
        end
    end
end

integer ap_tvar_int_9;

always @ (m_axi_in_r_RDATA) begin
    for (ap_tvar_int_9 = 16 - 1; ap_tvar_int_9 >= 0; ap_tvar_int_9 = ap_tvar_int_9 - 1) begin
        if (ap_tvar_int_9 > 15 - 0) begin
            tmp_fu_275_p4[ap_tvar_int_9] = 1'b0;
        end else begin
            tmp_fu_275_p4[ap_tvar_int_9] = m_axi_in_r_RDATA[15 - ap_tvar_int_9];
        end
    end
end

assign zext_ln14_1_fu_397_p1 = or_ln14_fu_391_p2;

assign zext_ln14_fu_382_p1 = shl_ln_fu_375_p3;

endmodule //mem_streaming_mem_streaming_Pipeline_VITIS_LOOP_9_1
