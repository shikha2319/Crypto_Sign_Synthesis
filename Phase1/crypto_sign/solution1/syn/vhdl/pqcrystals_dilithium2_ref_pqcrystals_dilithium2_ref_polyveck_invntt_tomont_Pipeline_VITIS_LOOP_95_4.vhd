-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    zext_ln87 : IN STD_LOGIC_VECTOR (9 downto 0);
    v_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    v_ce0 : OUT STD_LOGIC;
    v_we0 : OUT STD_LOGIC;
    v_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    v_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    v_ce1 : OUT STD_LOGIC;
    v_q1 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv49_A3FA : STD_LOGIC_VECTOR (48 downto 0) := "0000000000000000000000000000000001010001111111010";
    constant ap_const_lv32_3802001 : STD_LOGIC_VECTOR (31 downto 0) := "00000011100000000010000000000001";
    constant ap_const_lv55_7FFFFFFF801FFF : STD_LOGIC_VECTOR (54 downto 0) := "1111111111111111111111111111111100000000001111111111111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln95_fu_79_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal v_addr_reg_180 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal zext_ln96_2_fu_101_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal j_fu_44 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln95_fu_85_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_14 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln96_fu_91_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln96_fu_95_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal mul_ln96_fu_115_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal mul_ln96_fu_115_p2 : STD_LOGIC_VECTOR (48 downto 0);
    signal t_fu_129_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_fu_129_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal t_fu_129_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln19_fu_139_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal mul_ln19_fu_139_p2 : STD_LOGIC_VECTOR (54 downto 0);
    signal sext_ln19_14_fu_145_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal sext_ln15_fu_121_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal add_ln19_fu_149_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal t_20_fu_155_p4 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component pqcrystals_dilithium2_ref_mul_32s_17ns_49_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (16 downto 0);
        dout : OUT STD_LOGIC_VECTOR (48 downto 0) );
    end component;


    component pqcrystals_dilithium2_ref_mul_32s_27ns_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (26 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component pqcrystals_dilithium2_ref_mul_32s_24s_55_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (23 downto 0);
        dout : OUT STD_LOGIC_VECTOR (54 downto 0) );
    end component;


    component pqcrystals_dilithium2_ref_flow_control_loop_pipe_sequential_init IS
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
    mul_32s_17ns_49_1_1_U225 : component pqcrystals_dilithium2_ref_mul_32s_17ns_49_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 17,
        dout_WIDTH => 49)
    port map (
        din0 => v_q1,
        din1 => mul_ln96_fu_115_p1,
        dout => mul_ln96_fu_115_p2);

    mul_32s_27ns_32_1_1_U226 : component pqcrystals_dilithium2_ref_mul_32s_27ns_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 27,
        dout_WIDTH => 32)
    port map (
        din0 => t_fu_129_p0,
        din1 => t_fu_129_p1,
        dout => t_fu_129_p2);

    mul_32s_24s_55_1_1_U227 : component pqcrystals_dilithium2_ref_mul_32s_24s_55_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 24,
        dout_WIDTH => 55)
    port map (
        din0 => t_fu_129_p2,
        din1 => mul_ln19_fu_139_p1,
        dout => mul_ln19_fu_139_p2);

    flow_control_loop_pipe_sequential_init_U : component pqcrystals_dilithium2_ref_flow_control_loop_pipe_sequential_init
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


    j_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln95_fu_79_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_fu_44 <= add_ln95_fu_85_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_44 <= ap_const_lv9_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln95_fu_79_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                v_addr_reg_180 <= zext_ln96_2_fu_101_p1(10 - 1 downto 0);
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
    add_ln19_fu_149_p2 <= std_logic_vector(signed(sext_ln19_14_fu_145_p1) + signed(sext_ln15_fu_121_p1));
    add_ln95_fu_85_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j_14) + unsigned(ap_const_lv9_1));
    add_ln96_fu_95_p2 <= std_logic_vector(unsigned(zext_ln87) + unsigned(zext_ln96_fu_91_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln95_fu_79_p2)
    begin
        if (((icmp_ln95_fu_79_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_j_14_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, j_fu_44, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_j_14 <= ap_const_lv9_0;
        else 
            ap_sig_allocacmp_j_14 <= j_fu_44;
        end if; 
    end process;

    icmp_ln95_fu_79_p2 <= "1" when (ap_sig_allocacmp_j_14 = ap_const_lv9_100) else "0";
    mul_ln19_fu_139_p1 <= ap_const_lv55_7FFFFFFF801FFF(24 - 1 downto 0);
    mul_ln96_fu_115_p1 <= ap_const_lv49_A3FA(17 - 1 downto 0);
        sext_ln15_fu_121_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mul_ln96_fu_115_p2),56));

        sext_ln19_14_fu_145_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mul_ln19_fu_139_p2),56));

    t_20_fu_155_p4 <= add_ln19_fu_149_p2(55 downto 32);
    t_fu_129_p0 <= mul_ln96_fu_115_p2(32 - 1 downto 0);
    t_fu_129_p1 <= ap_const_lv32_3802001(27 - 1 downto 0);
    v_address0 <= v_addr_reg_180;
    v_address1 <= zext_ln96_2_fu_101_p1(10 - 1 downto 0);

    v_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            v_ce0 <= ap_const_logic_1;
        else 
            v_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    v_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            v_ce1 <= ap_const_logic_1;
        else 
            v_ce1 <= ap_const_logic_0;
        end if; 
    end process;

        v_d0 <= std_logic_vector(IEEE.numeric_std.resize(signed(t_20_fu_155_p4),32));


    v_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            v_we0 <= ap_const_logic_1;
        else 
            v_we0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln96_2_fu_101_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln96_fu_95_p2),64));
    zext_ln96_fu_91_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_j_14),10));
end behav;
