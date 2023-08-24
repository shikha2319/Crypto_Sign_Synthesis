-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pqcrystals_dilithium_15 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    sig_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    sig_ce0 : OUT STD_LOGIC;
    sig_we0 : OUT STD_LOGIC;
    sig_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    z_vec_coeffs_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    z_vec_coeffs_ce0 : OUT STD_LOGIC;
    z_vec_coeffs_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    h_vec_coeffs_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    h_vec_coeffs_ce0 : OUT STD_LOGIC;
    h_vec_coeffs_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of pqcrystals_dilithium_15 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv11_20 : STD_LOGIC_VECTOR (10 downto 0) := "00000100000";
    constant ap_const_lv7_54 : STD_LOGIC_VECTOR (6 downto 0) := "1010100";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv12_920 : STD_LOGIC_VECTOR (11 downto 0) := "100100100000";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv7_20 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_const_lv5_12 : STD_LOGIC_VECTOR (4 downto 0) := "10010";
    constant ap_const_lv14_920 : STD_LOGIC_VECTOR (13 downto 0) := "00100100100000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_180_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_363 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal or_ln168_fu_202_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal or_ln168_reg_368 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln167_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_43_fu_215_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal i_44_fu_247_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_44_reg_391 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal zext_ln177_fu_261_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln177_reg_396 : STD_LOGIC_VECTOR (11 downto 0);
    signal icmp_ln176_fu_241_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_fu_271_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal j_reg_404 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal icmp_ln177_fu_265_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_pqcrystals_dilithium_2_fu_160_ap_start : STD_LOGIC;
    signal grp_pqcrystals_dilithium_2_fu_160_ap_done : STD_LOGIC;
    signal grp_pqcrystals_dilithium_2_fu_160_ap_idle : STD_LOGIC;
    signal grp_pqcrystals_dilithium_2_fu_160_ap_ready : STD_LOGIC;
    signal grp_pqcrystals_dilithium_2_fu_160_r_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_pqcrystals_dilithium_2_fu_160_r_ce0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium_2_fu_160_r_we0 : STD_LOGIC;
    signal grp_pqcrystals_dilithium_2_fu_160_r_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_pqcrystals_dilithium_2_fu_160_a_coeffs_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_pqcrystals_dilithium_2_fu_160_a_coeffs_ce0 : STD_LOGIC;
    signal i_1_reg_113 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i_2_reg_125 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln172_fu_209_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_3_reg_136 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_0_reg_148 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_pqcrystals_dilithium_2_fu_160_ap_start_reg : STD_LOGIC := '0';
    signal zext_ln173_1_fu_231_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln178_1_fu_286_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln181_2_fu_318_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln179_fu_350_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln178_fu_323_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_4_fu_66 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_fu_334_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln181_fu_291_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln179_fu_329_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln168_fu_186_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln_fu_190_p5 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln173_fu_221_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln173_fu_225_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_s_fu_253_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln178_fu_277_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln178_fu_281_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal or_ln_fu_296_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln181_fu_304_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln181_1_fu_310_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal trunc_ln179_1_fu_340_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln179_fu_344_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);

    component pqcrystals_dilithium_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        r_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
        r_ce0 : OUT STD_LOGIC;
        r_we0 : OUT STD_LOGIC;
        r_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        r_offset : IN STD_LOGIC_VECTOR (10 downto 0);
        a_coeffs_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        a_coeffs_ce0 : OUT STD_LOGIC;
        a_coeffs_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        a_coeffs_offset : IN STD_LOGIC_VECTOR (2 downto 0) );
    end component;



begin
    grp_pqcrystals_dilithium_2_fu_160 : component pqcrystals_dilithium_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_pqcrystals_dilithium_2_fu_160_ap_start,
        ap_done => grp_pqcrystals_dilithium_2_fu_160_ap_done,
        ap_idle => grp_pqcrystals_dilithium_2_fu_160_ap_idle,
        ap_ready => grp_pqcrystals_dilithium_2_fu_160_ap_ready,
        r_address0 => grp_pqcrystals_dilithium_2_fu_160_r_address0,
        r_ce0 => grp_pqcrystals_dilithium_2_fu_160_r_ce0,
        r_we0 => grp_pqcrystals_dilithium_2_fu_160_r_we0,
        r_d0 => grp_pqcrystals_dilithium_2_fu_160_r_d0,
        r_offset => or_ln168_reg_368,
        a_coeffs_address0 => grp_pqcrystals_dilithium_2_fu_160_a_coeffs_address0,
        a_coeffs_ce0 => grp_pqcrystals_dilithium_2_fu_160_a_coeffs_ce0,
        a_coeffs_q0 => z_vec_coeffs_q0,
        a_coeffs_offset => i_1_reg_113);





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


    grp_pqcrystals_dilithium_2_fu_160_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_pqcrystals_dilithium_2_fu_160_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln167_fu_174_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_pqcrystals_dilithium_2_fu_160_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_pqcrystals_dilithium_2_fu_160_ap_ready = ap_const_logic_1)) then 
                    grp_pqcrystals_dilithium_2_fu_160_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_1_reg_113_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_1_reg_113 <= ap_const_lv3_0;
            elsif (((grp_pqcrystals_dilithium_2_fu_160_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_1_reg_113 <= i_reg_363;
            end if; 
        end if;
    end process;

    i_2_reg_125_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln167_fu_174_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_2_reg_125 <= ap_const_lv7_0;
            elsif (((icmp_ln172_fu_209_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i_2_reg_125 <= i_43_fu_215_p2;
            end if; 
        end if;
    end process;

    i_3_reg_136_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln172_fu_209_p2 = ap_const_lv1_1))) then 
                i_3_reg_136 <= ap_const_lv3_0;
            elsif (((icmp_ln177_fu_265_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                i_3_reg_136 <= i_44_reg_391;
            end if; 
        end if;
    end process;

    j_0_reg_148_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                j_0_reg_148 <= j_reg_404;
            elsif (((icmp_ln176_fu_241_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                j_0_reg_148 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    k_4_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln178_fu_323_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                k_4_fu_66 <= k_fu_334_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln172_fu_209_p2 = ap_const_lv1_1))) then 
                k_4_fu_66 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                i_44_reg_391 <= i_44_fu_247_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_363 <= i_fu_180_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                j_reg_404 <= j_fu_271_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln167_fu_174_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    or_ln168_reg_368(7 downto 6) <= or_ln168_fu_202_p2(7 downto 6);    or_ln168_reg_368(10 downto 9) <= or_ln168_fu_202_p2(10 downto 9);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln176_fu_241_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    zext_ln177_reg_396(10 downto 8) <= zext_ln177_fu_261_p1(10 downto 8);
            end if;
        end if;
    end process;
    or_ln168_reg_368(5 downto 0) <= "100000";
    or_ln168_reg_368(8) <= '0';
    zext_ln177_reg_396(7 downto 0) <= "00000000";
    zext_ln177_reg_396(11) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln167_fu_174_p2, ap_CS_fsm_state4, ap_CS_fsm_state5, icmp_ln176_fu_241_p2, ap_CS_fsm_state6, icmp_ln177_fu_265_p2, grp_pqcrystals_dilithium_2_fu_160_ap_done, ap_CS_fsm_state3, icmp_ln172_fu_209_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln167_fu_174_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((grp_pqcrystals_dilithium_2_fu_160_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln172_fu_209_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                if (((icmp_ln176_fu_241_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((icmp_ln177_fu_265_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    add_ln173_fu_225_p2 <= std_logic_vector(unsigned(zext_ln173_fu_221_p1) + unsigned(ap_const_lv12_920));
    add_ln178_fu_281_p2 <= std_logic_vector(unsigned(zext_ln177_reg_396) + unsigned(zext_ln178_fu_277_p1));
    add_ln179_fu_344_p2 <= std_logic_vector(unsigned(ap_const_lv14_920) + unsigned(trunc_ln179_1_fu_340_p1));
    add_ln_fu_190_p5 <= (((trunc_ln168_fu_186_p1 & ap_const_lv1_0) & trunc_ln168_fu_186_p1) & ap_const_lv6_0);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state5, icmp_ln176_fu_241_p2)
    begin
        if ((((icmp_ln176_fu_241_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5, icmp_ln176_fu_241_p2)
    begin
        if (((icmp_ln176_fu_241_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_pqcrystals_dilithium_2_fu_160_ap_start <= grp_pqcrystals_dilithium_2_fu_160_ap_start_reg;
    h_vec_coeffs_address0 <= zext_ln178_1_fu_286_p1(10 - 1 downto 0);

    h_vec_coeffs_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            h_vec_coeffs_ce0 <= ap_const_logic_1;
        else 
            h_vec_coeffs_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    i_43_fu_215_p2 <= std_logic_vector(unsigned(i_2_reg_125) + unsigned(ap_const_lv7_1));
    i_44_fu_247_p2 <= std_logic_vector(unsigned(i_3_reg_136) + unsigned(ap_const_lv3_1));
    i_fu_180_p2 <= std_logic_vector(unsigned(i_1_reg_113) + unsigned(ap_const_lv3_1));
    icmp_ln167_fu_174_p2 <= "1" when (i_1_reg_113 = ap_const_lv3_4) else "0";
    icmp_ln172_fu_209_p2 <= "1" when (i_2_reg_125 = ap_const_lv7_54) else "0";
    icmp_ln176_fu_241_p2 <= "1" when (i_3_reg_136 = ap_const_lv3_4) else "0";
    icmp_ln177_fu_265_p2 <= "1" when (j_0_reg_148 = ap_const_lv9_100) else "0";
    icmp_ln178_fu_323_p2 <= "1" when (h_vec_coeffs_q0 = ap_const_lv32_0) else "0";
    j_fu_271_p2 <= std_logic_vector(unsigned(j_0_reg_148) + unsigned(ap_const_lv9_1));
    k_fu_334_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(k_4_fu_66));
    or_ln168_fu_202_p2 <= (ap_const_lv11_20 or add_ln_fu_190_p5);
    or_ln181_1_fu_310_p3 <= (ap_const_lv5_12 & or_ln181_fu_304_p2);
    or_ln181_fu_304_p2 <= (or_ln_fu_296_p3 or ap_const_lv7_20);
    or_ln_fu_296_p3 <= (ap_const_lv4_A & i_3_reg_136);
        sext_ln179_fu_350_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln179_fu_344_p2),64));


    sig_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state6, grp_pqcrystals_dilithium_2_fu_160_r_address0, ap_CS_fsm_state3, ap_CS_fsm_state7, zext_ln173_1_fu_231_p1, zext_ln181_2_fu_318_p1, sext_ln179_fu_350_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            sig_address0 <= sext_ln179_fu_350_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sig_address0 <= zext_ln181_2_fu_318_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            sig_address0 <= zext_ln173_1_fu_231_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            sig_address0 <= grp_pqcrystals_dilithium_2_fu_160_r_address0;
        else 
            sig_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    sig_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state6, grp_pqcrystals_dilithium_2_fu_160_r_ce0, ap_CS_fsm_state3, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            sig_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            sig_ce0 <= grp_pqcrystals_dilithium_2_fu_160_r_ce0;
        else 
            sig_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    sig_d0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state6, grp_pqcrystals_dilithium_2_fu_160_r_d0, ap_CS_fsm_state3, ap_CS_fsm_state7, trunc_ln181_fu_291_p1, trunc_ln179_fu_329_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            sig_d0 <= trunc_ln179_fu_329_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sig_d0 <= trunc_ln181_fu_291_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            sig_d0 <= ap_const_lv8_0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            sig_d0 <= grp_pqcrystals_dilithium_2_fu_160_r_d0;
        else 
            sig_d0 <= "XXXXXXXX";
        end if; 
    end process;


    sig_we0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state6, icmp_ln177_fu_265_p2, grp_pqcrystals_dilithium_2_fu_160_r_we0, ap_CS_fsm_state3, icmp_ln172_fu_209_p2, ap_CS_fsm_state7, icmp_ln178_fu_323_p2)
    begin
        if ((((icmp_ln177_fu_265_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((icmp_ln172_fu_209_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln178_fu_323_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7)))) then 
            sig_we0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            sig_we0 <= grp_pqcrystals_dilithium_2_fu_160_r_we0;
        else 
            sig_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_s_fu_253_p3 <= (i_3_reg_136 & ap_const_lv8_0);
    trunc_ln168_fu_186_p1 <= i_1_reg_113(2 - 1 downto 0);
    trunc_ln179_1_fu_340_p1 <= k_4_fu_66(14 - 1 downto 0);
    trunc_ln179_fu_329_p1 <= j_0_reg_148(8 - 1 downto 0);
    trunc_ln181_fu_291_p1 <= k_4_fu_66(8 - 1 downto 0);
    z_vec_coeffs_address0 <= grp_pqcrystals_dilithium_2_fu_160_a_coeffs_address0;
    z_vec_coeffs_ce0 <= grp_pqcrystals_dilithium_2_fu_160_a_coeffs_ce0;
    zext_ln173_1_fu_231_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln173_fu_225_p2),64));
    zext_ln173_fu_221_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_2_reg_125),12));
    zext_ln177_fu_261_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_253_p3),12));
    zext_ln178_1_fu_286_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln178_fu_281_p2),64));
    zext_ln178_fu_277_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_148),12));
    zext_ln181_2_fu_318_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln181_1_fu_310_p3),64));
end behav;
