-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_polyveck_invntt_tomont is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    v_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    v_ce0 : OUT STD_LOGIC;
    v_we0 : OUT STD_LOGIC;
    v_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    v_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    v_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    v_ce1 : OUT STD_LOGIC;
    v_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    zetas_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    zetas_ce0 : OUT STD_LOGIC;
    zetas_q0 : IN STD_LOGIC_VECTOR (22 downto 0) );
end;


architecture behav of pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_polyveck_invntt_tomont is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv32_100 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal add_ln298_fu_167_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln298_reg_283 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_173_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_reg_288 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln298_fu_161_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln78_fu_189_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln78_reg_297 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_15_fu_181_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln78_fu_193_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln78_reg_303 : STD_LOGIC_VECTOR (7 downto 0);
    signal k_16_fu_217_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_16_reg_311 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln84_fu_211_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal len_12_fu_228_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zeta_fu_234_p2 : STD_LOGIC_VECTOR (22 downto 0);
    signal zeta_reg_326 : STD_LOGIC_VECTOR (22 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal add_i_i_fu_245_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_i_i_reg_331 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln86_fu_250_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln86_reg_336 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln86_fu_256_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln86_reg_340 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln86_fu_261_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln86_reg_345 : STD_LOGIC_VECTOR (8 downto 0);
    signal start_fu_268_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_start : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_done : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_idle : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_ready : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_ce0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_we0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_ce1 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_start : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_done : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_idle : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_ready : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_ce0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_we0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_ce1 : STD_LOGIC;
    signal len_reg_73 : STD_LOGIC_VECTOR (8 downto 0);
    signal k_reg_85 : STD_LOGIC_VECTOR (31 downto 0);
    signal start_19_reg_97 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state6_on_subcall_done : BOOLEAN;
    signal k_15_reg_109 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_j_0_lcssa_i_i_phi_fu_124_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_0_lcssa_i_i_reg_121 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_start_reg : STD_LOGIC := '0';
    signal zext_ln85_fu_223_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_56 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln298_fu_157_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_16_fu_201_p4 : STD_LOGIC_VECTOR (23 downto 0);
    signal empty_103_fu_241_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4 IS
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
    end component;


    component pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        zext_ln86 : IN STD_LOGIC_VECTOR (7 downto 0);
        zext_ln86_2 : IN STD_LOGIC_VECTOR (8 downto 0);
        zext_ln87 : IN STD_LOGIC_VECTOR (9 downto 0);
        v_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        v_ce0 : OUT STD_LOGIC;
        v_we0 : OUT STD_LOGIC;
        v_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        v_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        v_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        v_ce1 : OUT STD_LOGIC;
        v_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        zext_ln78_2 : IN STD_LOGIC_VECTOR (7 downto 0);
        sext_ln86 : IN STD_LOGIC_VECTOR (22 downto 0) );
    end component;



begin
    grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131 : component pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_start,
        ap_done => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_done,
        ap_idle => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_idle,
        ap_ready => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_ready,
        zext_ln87 => tmp_reg_288,
        v_address0 => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_address0,
        v_ce0 => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_ce0,
        v_we0 => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_we0,
        v_d0 => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_d0,
        v_address1 => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_address1,
        v_ce1 => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_ce1,
        v_q1 => v_q1);

    grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138 : component pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_start,
        ap_done => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_done,
        ap_idle => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_idle,
        ap_ready => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_ready,
        zext_ln86 => trunc_ln86_reg_340,
        zext_ln86_2 => add_ln86_reg_345,
        zext_ln87 => tmp_reg_288,
        v_address0 => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_address0,
        v_ce0 => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_ce0,
        v_we0 => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_we0,
        v_d0 => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_d0,
        v_q0 => v_q0,
        v_address1 => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_address1,
        v_ce1 => grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_ce1,
        v_q1 => v_q1,
        zext_ln78_2 => trunc_ln78_reg_303,
        sext_ln86 => zeta_reg_326);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln86_fu_250_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                    grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_ready = ap_const_logic_1)) then 
                    grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_start_reg <= ap_const_logic_0;
            else
                if (((tmp_15_fu_181_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                    grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_ready = ap_const_logic_1)) then 
                    grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_fu_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_fu_56 <= ap_const_lv3_0;
            elsif (((tmp_15_fu_181_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_fu_56 <= add_ln298_reg_283;
            end if; 
        end if;
    end process;

    j_0_lcssa_i_i_reg_121_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln86_fu_250_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                j_0_lcssa_i_i_reg_121 <= start_19_reg_97;
            elsif (((icmp_ln86_reg_336 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done))) then 
                j_0_lcssa_i_i_reg_121 <= add_i_i_reg_331;
            end if; 
        end if;
    end process;

    k_15_reg_109_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done))) then 
                k_15_reg_109 <= k_16_reg_311;
            elsif (((tmp_15_fu_181_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                k_15_reg_109 <= k_reg_85;
            end if; 
        end if;
    end process;

    k_reg_85_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln84_fu_211_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                k_reg_85 <= k_15_reg_109;
            elsif (((icmp_ln298_fu_161_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                k_reg_85 <= ap_const_lv32_100;
            end if; 
        end if;
    end process;

    len_reg_73_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln84_fu_211_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                len_reg_73 <= len_12_fu_228_p2;
            elsif (((icmp_ln298_fu_161_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                len_reg_73 <= ap_const_lv9_1;
            end if; 
        end if;
    end process;

    start_19_reg_97_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done))) then 
                start_19_reg_97 <= start_fu_268_p2;
            elsif (((tmp_15_fu_181_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                start_19_reg_97 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                add_i_i_reg_331 <= add_i_i_fu_245_p2;
                icmp_ln86_reg_336 <= icmp_ln86_fu_250_p2;
                zeta_reg_326 <= zeta_fu_234_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln298_reg_283 <= add_ln298_fu_167_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln86_fu_250_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                add_ln86_reg_345 <= add_ln86_fu_261_p2;
                trunc_ln86_reg_340 <= trunc_ln86_fu_256_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln84_fu_211_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                k_16_reg_311 <= k_16_fu_217_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln298_fu_161_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    tmp_reg_288(9 downto 8) <= tmp_fu_173_p3(9 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_15_fu_181_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                trunc_ln78_reg_303 <= trunc_ln78_fu_193_p1;
                    zext_ln78_reg_297(8 downto 0) <= zext_ln78_fu_189_p1(8 downto 0);
            end if;
        end if;
    end process;
    tmp_reg_288(7 downto 0) <= "00000000";
    zext_ln78_reg_297(31 downto 9) <= "00000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln298_fu_161_p2, ap_CS_fsm_state3, tmp_15_fu_181_p3, ap_CS_fsm_state4, icmp_ln84_fu_211_p2, ap_CS_fsm_state6, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_done, ap_block_state6_on_subcall_done, ap_CS_fsm_state7)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln298_fu_161_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((tmp_15_fu_181_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln84_fu_211_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    add_i_i_fu_245_p2 <= std_logic_vector(unsigned(start_19_reg_97) + unsigned(zext_ln78_reg_297));
    add_ln298_fu_167_p2 <= std_logic_vector(unsigned(i_fu_56) + unsigned(ap_const_lv3_1));
    add_ln86_fu_261_p2 <= std_logic_vector(unsigned(empty_103_fu_241_p1) + unsigned(len_reg_73));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_ST_fsm_state6_blk_assign_proc : process(ap_block_state6_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state6_on_subcall_done)) then 
            ap_ST_fsm_state6_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state6_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state7_blk_assign_proc : process(grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_done)
    begin
        if ((grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state7_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state7_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state6_on_subcall_done_assign_proc : process(icmp_ln86_reg_336, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_done)
    begin
                ap_block_state6_on_subcall_done <= ((icmp_ln86_reg_336 = ap_const_lv1_1) and (grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_done = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln298_fu_161_p2)
    begin
        if ((((icmp_ln298_fu_161_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_j_0_lcssa_i_i_phi_fu_124_p4_assign_proc : process(add_i_i_reg_331, icmp_ln86_reg_336, ap_CS_fsm_state6, j_0_lcssa_i_i_reg_121)
    begin
        if (((icmp_ln86_reg_336 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            ap_phi_mux_j_0_lcssa_i_i_phi_fu_124_p4 <= add_i_i_reg_331;
        else 
            ap_phi_mux_j_0_lcssa_i_i_phi_fu_124_p4 <= j_0_lcssa_i_i_reg_121;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln298_fu_161_p2)
    begin
        if (((icmp_ln298_fu_161_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    empty_103_fu_241_p1 <= start_19_reg_97(9 - 1 downto 0);
    grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_start <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_ap_start_reg;
    grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_start <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_ap_start_reg;
    icmp_ln298_fu_161_p2 <= "1" when (i_fu_56 = ap_const_lv3_4) else "0";
    icmp_ln84_fu_211_p2 <= "1" when (tmp_16_fu_201_p4 = ap_const_lv24_0) else "0";
    icmp_ln86_fu_250_p2 <= "1" when (unsigned(start_19_reg_97) < unsigned(add_i_i_fu_245_p2)) else "0";
    k_16_fu_217_p2 <= std_logic_vector(unsigned(k_15_reg_109) + unsigned(ap_const_lv32_FFFFFFFF));
    len_12_fu_228_p2 <= std_logic_vector(shift_left(unsigned(len_reg_73),to_integer(unsigned('0' & ap_const_lv9_1(9-1 downto 0)))));
    start_fu_268_p2 <= std_logic_vector(unsigned(ap_phi_mux_j_0_lcssa_i_i_phi_fu_124_p4) + unsigned(zext_ln78_reg_297));
    tmp_15_fu_181_p3 <= len_reg_73(8 downto 8);
    tmp_16_fu_201_p4 <= start_19_reg_97(31 downto 8);
    tmp_fu_173_p3 <= (trunc_ln298_fu_157_p1 & ap_const_lv8_0);
    trunc_ln298_fu_157_p1 <= i_fu_56(2 - 1 downto 0);
    trunc_ln78_fu_193_p1 <= len_reg_73(8 - 1 downto 0);
    trunc_ln86_fu_256_p1 <= start_19_reg_97(8 - 1 downto 0);

    v_address0_assign_proc : process(icmp_ln86_reg_336, ap_CS_fsm_state6, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_address0, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_address0, ap_CS_fsm_state7)
    begin
        if (((icmp_ln86_reg_336 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            v_address0 <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            v_address0 <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_address0;
        else 
            v_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    v_address1_assign_proc : process(icmp_ln86_reg_336, ap_CS_fsm_state6, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_address1, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_address1, ap_CS_fsm_state7)
    begin
        if (((icmp_ln86_reg_336 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            v_address1 <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_address1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            v_address1 <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_address1;
        else 
            v_address1 <= "XXXXXXXXXX";
        end if; 
    end process;


    v_ce0_assign_proc : process(icmp_ln86_reg_336, ap_CS_fsm_state6, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_ce0, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_ce0, ap_CS_fsm_state7)
    begin
        if (((icmp_ln86_reg_336 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            v_ce0 <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            v_ce0 <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_ce0;
        else 
            v_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    v_ce1_assign_proc : process(icmp_ln86_reg_336, ap_CS_fsm_state6, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_ce1, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_ce1, ap_CS_fsm_state7)
    begin
        if (((icmp_ln86_reg_336 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            v_ce1 <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_ce1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            v_ce1 <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_ce1;
        else 
            v_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    v_d0_assign_proc : process(icmp_ln86_reg_336, ap_CS_fsm_state6, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_d0, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_d0, ap_CS_fsm_state7)
    begin
        if (((icmp_ln86_reg_336 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            v_d0 <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_d0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            v_d0 <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_d0;
        else 
            v_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    v_we0_assign_proc : process(icmp_ln86_reg_336, ap_CS_fsm_state6, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_we0, grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_we0, ap_CS_fsm_state7)
    begin
        if (((icmp_ln86_reg_336 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            v_we0 <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3_fu_138_v_we0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            v_we0 <= grp_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_95_4_fu_131_v_we0;
        else 
            v_we0 <= ap_const_logic_0;
        end if; 
    end process;

    zeta_fu_234_p2 <= std_logic_vector(unsigned(ap_const_lv23_0) - unsigned(zetas_q0));
    zetas_address0 <= zext_ln85_fu_223_p1(8 - 1 downto 0);

    zetas_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            zetas_ce0 <= ap_const_logic_1;
        else 
            zetas_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln78_fu_189_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(len_reg_73),32));
    zext_ln85_fu_223_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_16_fu_217_p2),64));
end behav;
