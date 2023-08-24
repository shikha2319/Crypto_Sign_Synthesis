// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_392_1_VITIS_LOOP_248_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        w1_vec_coeffs_address0,
        w1_vec_coeffs_ce0,
        w1_vec_coeffs_q0,
        w0_vec_coeffs_address0,
        w0_vec_coeffs_ce0,
        w0_vec_coeffs_q0,
        h_vec_coeffs_address0,
        h_vec_coeffs_ce0,
        h_vec_coeffs_we0,
        h_vec_coeffs_d0,
        s_4_out,
        s_4_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] w1_vec_coeffs_address0;
output   w1_vec_coeffs_ce0;
input  [31:0] w1_vec_coeffs_q0;
output  [9:0] w0_vec_coeffs_address0;
output   w0_vec_coeffs_ce0;
input  [31:0] w0_vec_coeffs_q0;
output  [9:0] h_vec_coeffs_address0;
output   h_vec_coeffs_ce0;
output   h_vec_coeffs_we0;
output  [31:0] h_vec_coeffs_d0;
output  [10:0] s_4_out;
output   s_4_out_ap_vld;

reg ap_idle;
reg w1_vec_coeffs_ce0;
reg w0_vec_coeffs_ce0;
reg h_vec_coeffs_ce0;
reg h_vec_coeffs_we0;
reg s_4_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln392_fu_152_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln392_reg_386;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln248_fu_176_p2;
reg   [0:0] icmp_ln248_reg_390;
wire   [63:0] zext_ln249_3_fu_220_p1;
reg   [63:0] zext_ln249_3_reg_396;
wire    ap_block_pp0_stage0;
reg   [8:0] s_1_fu_58;
wire   [8:0] s_5_fu_335_p2;
wire    ap_loop_init;
reg   [8:0] i_fu_62;
wire   [8:0] add_ln248_fu_226_p2;
reg   [8:0] ap_sig_allocacmp_i_load;
reg   [10:0] s_fu_66;
wire   [10:0] select_ln392_3_fu_271_p3;
reg   [2:0] i_10_fu_70;
wire   [2:0] select_ln392_2_fu_190_p3;
reg   [2:0] ap_sig_allocacmp_i_10_load;
reg   [10:0] indvar_flatten146_fu_74;
wire   [10:0] add_ln392_1_fu_158_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten146_load;
wire   [10:0] s_3_fu_257_p2;
wire    ap_block_pp0_stage0_01001;
wire   [2:0] add_ln392_fu_170_p2;
wire   [1:0] trunc_ln249_fu_198_p1;
wire   [8:0] select_ln392_fu_182_p3;
wire   [9:0] tmp_s_fu_202_p3;
wire   [9:0] zext_ln249_2_fu_210_p1;
wire   [9:0] add_ln249_fu_214_p2;
wire   [10:0] s_2_cast_fu_253_p1;
wire   [0:0] icmp_ln69_2_fu_290_p2;
wire   [0:0] icmp_ln69_3_fu_296_p2;
wire   [0:0] icmp_ln69_fu_278_p2;
wire   [0:0] icmp_ln69_1_fu_284_p2;
wire   [0:0] or_ln69_fu_308_p2;
wire   [0:0] and_ln69_fu_302_p2;
wire   [0:0] or_ln69_1_fu_314_p2;
wire   [0:0] xor_ln69_fu_320_p2;
wire   [8:0] zext_ln249_1_fu_331_p1;
wire   [8:0] select_ln392_1_fu_264_p3;
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
#0 ap_done_reg = 1'b0;
end

pqcrystals_dilithium2_ref_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln392_fu_152_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_10_fu_70 <= select_ln392_2_fu_190_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_10_fu_70 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln392_fu_152_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_62 <= add_ln248_fu_226_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_62 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln392_fu_152_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten146_fu_74 <= add_ln392_1_fu_158_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten146_fu_74 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            s_1_fu_58 <= 9'd0;
        end else if (((icmp_ln392_reg_386 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            s_1_fu_58 <= s_5_fu_335_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            s_fu_66 <= 11'd0;
        end else if (((icmp_ln392_reg_386 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            s_fu_66 <= select_ln392_3_fu_271_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln392_fu_152_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln248_reg_390 <= icmp_ln248_fu_176_p2;
        zext_ln249_3_reg_396[9 : 0] <= zext_ln249_3_fu_220_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln392_reg_386 <= icmp_ln392_fu_152_p2;
    end
end

always @ (*) begin
    if (((icmp_ln392_fu_152_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_10_load = 3'd0;
    end else begin
        ap_sig_allocacmp_i_10_load = i_10_fu_70;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_62;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten146_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten146_load = indvar_flatten146_fu_74;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        h_vec_coeffs_ce0 = 1'b1;
    end else begin
        h_vec_coeffs_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln392_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        h_vec_coeffs_we0 = 1'b1;
    end else begin
        h_vec_coeffs_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln392_reg_386 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_4_out_ap_vld = 1'b1;
    end else begin
        s_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w0_vec_coeffs_ce0 = 1'b1;
    end else begin
        w0_vec_coeffs_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w1_vec_coeffs_ce0 = 1'b1;
    end else begin
        w1_vec_coeffs_ce0 = 1'b0;
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

assign add_ln248_fu_226_p2 = (select_ln392_fu_182_p3 + 9'd1);

assign add_ln249_fu_214_p2 = (tmp_s_fu_202_p3 + zext_ln249_2_fu_210_p1);

assign add_ln392_1_fu_158_p2 = (ap_sig_allocacmp_indvar_flatten146_load + 11'd1);

assign add_ln392_fu_170_p2 = (ap_sig_allocacmp_i_10_load + 3'd1);

assign and_ln69_fu_302_p2 = (icmp_ln69_3_fu_296_p2 & icmp_ln69_2_fu_290_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign h_vec_coeffs_address0 = zext_ln249_3_reg_396;

assign h_vec_coeffs_d0 = xor_ln69_fu_320_p2;

assign icmp_ln248_fu_176_p2 = ((ap_sig_allocacmp_i_load == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln392_fu_152_p2 = ((ap_sig_allocacmp_indvar_flatten146_load == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln69_1_fu_284_p2 = (($signed(w0_vec_coeffs_q0) > $signed(32'd8285185)) ? 1'b1 : 1'b0);

assign icmp_ln69_2_fu_290_p2 = ((w0_vec_coeffs_q0 == 32'd8285185) ? 1'b1 : 1'b0);

assign icmp_ln69_3_fu_296_p2 = ((w1_vec_coeffs_q0 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln69_fu_278_p2 = (($signed(w0_vec_coeffs_q0) < $signed(32'd95233)) ? 1'b1 : 1'b0);

assign or_ln69_1_fu_314_p2 = (or_ln69_fu_308_p2 | and_ln69_fu_302_p2);

assign or_ln69_fu_308_p2 = (icmp_ln69_fu_278_p2 | icmp_ln69_1_fu_284_p2);

assign s_2_cast_fu_253_p1 = s_1_fu_58;

assign s_3_fu_257_p2 = (s_2_cast_fu_253_p1 + s_fu_66);

assign s_4_out = s_3_fu_257_p2;

assign s_5_fu_335_p2 = (zext_ln249_1_fu_331_p1 + select_ln392_1_fu_264_p3);

assign select_ln392_1_fu_264_p3 = ((icmp_ln248_reg_390[0:0] == 1'b1) ? 9'd0 : s_1_fu_58);

assign select_ln392_2_fu_190_p3 = ((icmp_ln248_fu_176_p2[0:0] == 1'b1) ? add_ln392_fu_170_p2 : ap_sig_allocacmp_i_10_load);

assign select_ln392_3_fu_271_p3 = ((icmp_ln248_reg_390[0:0] == 1'b1) ? s_3_fu_257_p2 : s_fu_66);

assign select_ln392_fu_182_p3 = ((icmp_ln248_fu_176_p2[0:0] == 1'b1) ? 9'd0 : ap_sig_allocacmp_i_load);

assign tmp_s_fu_202_p3 = {{trunc_ln249_fu_198_p1}, {8'd0}};

assign trunc_ln249_fu_198_p1 = select_ln392_2_fu_190_p3[1:0];

assign w0_vec_coeffs_address0 = zext_ln249_3_fu_220_p1;

assign w1_vec_coeffs_address0 = zext_ln249_3_fu_220_p1;

assign xor_ln69_fu_320_p2 = (or_ln69_1_fu_314_p2 ^ 1'd1);

assign zext_ln249_1_fu_331_p1 = xor_ln69_fu_320_p2;

assign zext_ln249_2_fu_210_p1 = select_ln392_fu_182_p3;

assign zext_ln249_3_fu_220_p1 = add_ln249_fu_214_p2;

always @ (posedge ap_clk) begin
    zext_ln249_3_reg_396[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end

endmodule //pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_392_1_VITIS_LOOP_248_1
