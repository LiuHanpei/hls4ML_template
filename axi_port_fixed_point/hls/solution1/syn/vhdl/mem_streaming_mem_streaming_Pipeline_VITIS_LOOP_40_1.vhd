-- ==============================================================
-- Generated by Vitis HLS v2023.2.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mem_streaming_mem_streaming_Pipeline_VITIS_LOOP_40_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_buf_4_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    data_buf_4_ce0 : OUT STD_LOGIC;
    data_buf_4_we0 : OUT STD_LOGIC;
    data_buf_4_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    data_buf_4_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    data_buf_4_ce1 : OUT STD_LOGIC;
    data_buf_4_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    data_buf_3_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    data_buf_3_ce0 : OUT STD_LOGIC;
    data_buf_3_we0 : OUT STD_LOGIC;
    data_buf_3_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    data_buf_3_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    data_buf_3_ce1 : OUT STD_LOGIC;
    data_buf_3_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    data_buf_2_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    data_buf_2_ce0 : OUT STD_LOGIC;
    data_buf_2_we0 : OUT STD_LOGIC;
    data_buf_2_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    data_buf_2_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    data_buf_2_ce1 : OUT STD_LOGIC;
    data_buf_2_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    data_buf_1_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    data_buf_1_ce0 : OUT STD_LOGIC;
    data_buf_1_we0 : OUT STD_LOGIC;
    data_buf_1_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    data_buf_1_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    data_buf_1_ce1 : OUT STD_LOGIC;
    data_buf_1_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    data_buf_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    data_buf_ce0 : OUT STD_LOGIC;
    data_buf_we0 : OUT STD_LOGIC;
    data_buf_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    data_buf_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    data_buf_ce1 : OUT STD_LOGIC;
    data_buf_q1 : IN STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of mem_streaming_mem_streaming_Pipeline_VITIS_LOOP_40_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv6_32 : STD_LOGIC_VECTOR (5 downto 0) := "110010";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv13_67 : STD_LOGIC_VECTOR (12 downto 0) := "0000001100111";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv6_5 : STD_LOGIC_VECTOR (5 downto 0) := "000101";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv17_0 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln40_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal trunc_ln40_fu_234_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln40_reg_385 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal data_buf_addr_reg_390 : STD_LOGIC_VECTOR (3 downto 0);
    signal data_buf_1_addr_reg_396 : STD_LOGIC_VECTOR (3 downto 0);
    signal data_buf_2_addr_reg_402 : STD_LOGIC_VECTOR (3 downto 0);
    signal data_buf_3_addr_reg_408 : STD_LOGIC_VECTOR (3 downto 0);
    signal data_buf_4_addr_reg_414 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln40_fu_225_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal phi_urem_fu_76 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    signal select_ln40_fu_250_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_phi_urem_load : STD_LOGIC_VECTOR (5 downto 0);
    signal phi_mul_fu_80 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    signal add_ln40_1_fu_209_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_sig_allocacmp_phi_mul_load : STD_LOGIC_VECTOR (12 downto 0);
    signal i_1_fu_84 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    signal add_ln40_fu_200_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_sig_allocacmp_i : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln41_fu_348_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_fu_215_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln40_2_fu_238_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln40_1_fu_244_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_273_p11 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_s_fu_273_p13 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln41_fu_300_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal sub_ln41_fu_312_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal trunc_ln41_2_fu_328_p4 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln41_1_fu_318_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_1_fu_304_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln41_1_fu_342_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln41_1_fu_338_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal tmp_s_fu_273_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_s_fu_273_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_s_fu_273_p5 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_s_fu_273_p7 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_s_fu_273_p9 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component mem_streaming_sparsemux_11_3_16_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        CASE0 : STD_LOGIC_VECTOR (2 downto 0);
        din0_WIDTH : INTEGER;
        CASE1 : STD_LOGIC_VECTOR (2 downto 0);
        din1_WIDTH : INTEGER;
        CASE2 : STD_LOGIC_VECTOR (2 downto 0);
        din2_WIDTH : INTEGER;
        CASE3 : STD_LOGIC_VECTOR (2 downto 0);
        din3_WIDTH : INTEGER;
        CASE4 : STD_LOGIC_VECTOR (2 downto 0);
        din4_WIDTH : INTEGER;
        def_WIDTH : INTEGER;
        sel_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        din3 : IN STD_LOGIC_VECTOR (15 downto 0);
        din4 : IN STD_LOGIC_VECTOR (15 downto 0);
        def : IN STD_LOGIC_VECTOR (15 downto 0);
        sel : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component mem_streaming_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    sparsemux_11_3_16_1_1_U8 : component mem_streaming_sparsemux_11_3_16_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        CASE0 => "000",
        din0_WIDTH => 16,
        CASE1 => "001",
        din1_WIDTH => 16,
        CASE2 => "010",
        din2_WIDTH => 16,
        CASE3 => "011",
        din3_WIDTH => 16,
        CASE4 => "100",
        din4_WIDTH => 16,
        def_WIDTH => 16,
        sel_WIDTH => 3,
        dout_WIDTH => 16)
    port map (
        din0 => data_buf_q1,
        din1 => data_buf_1_q1,
        din2 => data_buf_2_q1,
        din3 => data_buf_3_q1,
        din4 => data_buf_4_q1,
        def => tmp_s_fu_273_p11,
        sel => trunc_ln40_reg_385,
        dout => tmp_s_fu_273_p13);

    flow_control_loop_pipe_sequential_init_U : component mem_streaming_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    i_1_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln40_fu_194_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_1_fu_84 <= add_ln40_fu_200_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_1_fu_84 <= ap_const_lv6_0;
                end if;
            end if; 
        end if;
    end process;

    phi_mul_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln40_fu_194_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    phi_mul_fu_80 <= add_ln40_1_fu_209_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    phi_mul_fu_80 <= ap_const_lv13_0;
                end if;
            end if; 
        end if;
    end process;

    phi_urem_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln40_fu_194_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    phi_urem_fu_76 <= select_ln40_fu_250_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    phi_urem_fu_76 <= ap_const_lv6_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                data_buf_1_addr_reg_396 <= zext_ln40_fu_225_p1(4 - 1 downto 0);
                data_buf_2_addr_reg_402 <= zext_ln40_fu_225_p1(4 - 1 downto 0);
                data_buf_3_addr_reg_408 <= zext_ln40_fu_225_p1(4 - 1 downto 0);
                data_buf_4_addr_reg_414 <= zext_ln40_fu_225_p1(4 - 1 downto 0);
                data_buf_addr_reg_390 <= zext_ln40_fu_225_p1(4 - 1 downto 0);
                trunc_ln40_reg_385 <= trunc_ln40_fu_234_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln40_1_fu_209_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_phi_mul_load) + unsigned(ap_const_lv13_67));
    add_ln40_2_fu_238_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_phi_urem_load) + unsigned(ap_const_lv6_1));
    add_ln40_fu_200_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i) + unsigned(ap_const_lv6_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln40_fu_194_p2)
    begin
        if (((icmp_ln40_fu_194_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_1_fu_84)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i <= ap_const_lv6_0;
        else 
            ap_sig_allocacmp_i <= i_1_fu_84;
        end if; 
    end process;


    ap_sig_allocacmp_phi_mul_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, phi_mul_fu_80)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_phi_mul_load <= ap_const_lv13_0;
        else 
            ap_sig_allocacmp_phi_mul_load <= phi_mul_fu_80;
        end if; 
    end process;


    ap_sig_allocacmp_phi_urem_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, phi_urem_fu_76, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_phi_urem_load <= ap_const_lv6_0;
        else 
            ap_sig_allocacmp_phi_urem_load <= phi_urem_fu_76;
        end if; 
    end process;

    data_buf_1_address0 <= data_buf_1_addr_reg_396;
    data_buf_1_address1 <= zext_ln40_fu_225_p1(4 - 1 downto 0);

    data_buf_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_1_ce0 <= ap_const_logic_1;
        else 
            data_buf_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_buf_1_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_1_ce1 <= ap_const_logic_1;
        else 
            data_buf_1_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    data_buf_1_d0 <= select_ln41_fu_348_p3;

    data_buf_1_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln40_reg_385, ap_block_pp0_stage0_11001)
    begin
        if (((trunc_ln40_reg_385 = ap_const_lv3_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_1_we0 <= ap_const_logic_1;
        else 
            data_buf_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    data_buf_2_address0 <= data_buf_2_addr_reg_402;
    data_buf_2_address1 <= zext_ln40_fu_225_p1(4 - 1 downto 0);

    data_buf_2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_2_ce0 <= ap_const_logic_1;
        else 
            data_buf_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_buf_2_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_2_ce1 <= ap_const_logic_1;
        else 
            data_buf_2_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    data_buf_2_d0 <= select_ln41_fu_348_p3;

    data_buf_2_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln40_reg_385, ap_block_pp0_stage0_11001)
    begin
        if (((trunc_ln40_reg_385 = ap_const_lv3_2) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_2_we0 <= ap_const_logic_1;
        else 
            data_buf_2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    data_buf_3_address0 <= data_buf_3_addr_reg_408;
    data_buf_3_address1 <= zext_ln40_fu_225_p1(4 - 1 downto 0);

    data_buf_3_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_3_ce0 <= ap_const_logic_1;
        else 
            data_buf_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_buf_3_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_3_ce1 <= ap_const_logic_1;
        else 
            data_buf_3_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    data_buf_3_d0 <= select_ln41_fu_348_p3;

    data_buf_3_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln40_reg_385, ap_block_pp0_stage0_11001)
    begin
        if (((trunc_ln40_reg_385 = ap_const_lv3_3) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_3_we0 <= ap_const_logic_1;
        else 
            data_buf_3_we0 <= ap_const_logic_0;
        end if; 
    end process;

    data_buf_4_address0 <= data_buf_4_addr_reg_414;
    data_buf_4_address1 <= zext_ln40_fu_225_p1(4 - 1 downto 0);

    data_buf_4_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_4_ce0 <= ap_const_logic_1;
        else 
            data_buf_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_buf_4_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_4_ce1 <= ap_const_logic_1;
        else 
            data_buf_4_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    data_buf_4_d0 <= select_ln41_fu_348_p3;

    data_buf_4_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln40_reg_385, ap_block_pp0_stage0_11001)
    begin
        if ((not((trunc_ln40_reg_385 = ap_const_lv3_3)) and not((trunc_ln40_reg_385 = ap_const_lv3_2)) and not((trunc_ln40_reg_385 = ap_const_lv3_1)) and not((trunc_ln40_reg_385 = ap_const_lv3_0)) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_4_we0 <= ap_const_logic_1;
        else 
            data_buf_4_we0 <= ap_const_logic_0;
        end if; 
    end process;

    data_buf_address0 <= data_buf_addr_reg_390;
    data_buf_address1 <= zext_ln40_fu_225_p1(4 - 1 downto 0);

    data_buf_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_ce0 <= ap_const_logic_1;
        else 
            data_buf_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_buf_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_ce1 <= ap_const_logic_1;
        else 
            data_buf_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    data_buf_d0 <= select_ln41_fu_348_p3;

    data_buf_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln40_reg_385, ap_block_pp0_stage0_11001)
    begin
        if (((trunc_ln40_reg_385 = ap_const_lv3_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_buf_we0 <= ap_const_logic_1;
        else 
            data_buf_we0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln40_1_fu_244_p2 <= "1" when (unsigned(add_ln40_2_fu_238_p2) < unsigned(ap_const_lv6_5)) else "0";
    icmp_ln40_fu_194_p2 <= "1" when (ap_sig_allocacmp_i = ap_const_lv6_32) else "0";
    select_ln40_fu_250_p3 <= 
        add_ln40_2_fu_238_p2 when (icmp_ln40_1_fu_244_p2(0) = '1') else 
        ap_const_lv6_0;
    select_ln41_fu_348_p3 <= 
        sub_ln41_1_fu_342_p2 when (tmp_1_fu_304_p3(0) = '1') else 
        sext_ln41_1_fu_338_p1;
        sext_ln41_1_fu_338_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln41_2_fu_328_p4),16));

        sext_ln41_fu_300_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_s_fu_273_p13),17));

    sub_ln41_1_fu_342_p2 <= std_logic_vector(unsigned(ap_const_lv16_0) - unsigned(trunc_ln41_1_fu_318_p4));
    sub_ln41_fu_312_p2 <= std_logic_vector(unsigned(ap_const_lv17_0) - unsigned(sext_ln41_fu_300_p1));
    tmp_1_fu_304_p3 <= tmp_s_fu_273_p13(15 downto 15);
    tmp_fu_215_p4 <= ap_sig_allocacmp_phi_mul_load(12 downto 9);
    tmp_s_fu_273_p11 <= "XXXXXXXXXXXXXXXX";
    trunc_ln40_fu_234_p1 <= ap_sig_allocacmp_phi_urem_load(3 - 1 downto 0);
    trunc_ln41_1_fu_318_p4 <= sub_ln41_fu_312_p2(16 downto 1);
    trunc_ln41_2_fu_328_p4 <= tmp_s_fu_273_p13(15 downto 1);
    zext_ln40_fu_225_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_215_p4),64));
end behav;
