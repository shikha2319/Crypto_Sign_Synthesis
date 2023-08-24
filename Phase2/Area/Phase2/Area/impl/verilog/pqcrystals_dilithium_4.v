// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pqcrystals_dilithium_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        v_vec_coeffs_address0,
        v_vec_coeffs_ce0,
        v_vec_coeffs_we0,
        v_vec_coeffs_d0,
        v_vec_coeffs_q0
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v_vec_coeffs_address0;
output   v_vec_coeffs_ce0;
output   v_vec_coeffs_we0;
output  [31:0] v_vec_coeffs_d0;
input  [31:0] v_vec_coeffs_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] v_vec_coeffs_address0;
reg v_vec_coeffs_ce0;
reg v_vec_coeffs_we0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] i_fu_77_p2;
reg   [2:0] i_reg_151;
wire    ap_CS_fsm_state2;
wire   [11:0] zext_ln28_fu_91_p1;
reg   [11:0] zext_ln28_reg_156;
wire   [0:0] icmp_ln187_fu_71_p2;
wire   [8:0] i_6_fu_101_p2;
reg   [8:0] i_6_reg_164;
wire    ap_CS_fsm_state3;
reg   [9:0] v_vec_coeffs_addr_reg_169;
wire   [0:0] icmp_ln32_fu_95_p2;
reg   [31:0] v_vec_coeffs_load_reg_174;
wire    ap_CS_fsm_state4;
reg  signed [8:0] trunc_ln_reg_179;
reg   [2:0] i_0_reg_49;
reg   [8:0] i_0_i_reg_60;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln33_1_fu_116_p1;
wire  signed [31:0] grp_fu_140_p3;
wire   [10:0] tmp_fu_83_p3;
wire   [11:0] zext_ln33_fu_107_p1;
wire   [11:0] add_ln33_fu_111_p2;
wire   [31:0] add_ln36_fu_121_p2;
wire  signed [23:0] grp_fu_140_p1;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

pqcrystals_dilithlbW #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 24 ),
    .din2_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
pqcrystals_dilithlbW_U56(
    .din0(trunc_ln_reg_179),
    .din1(grp_fu_140_p1),
    .din2(v_vec_coeffs_load_reg_174),
    .dout(grp_fu_140_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_i_reg_60 <= i_6_reg_164;
    end else if (((icmp_ln187_fu_71_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i_reg_60 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_95_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_49 <= i_reg_151;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_49 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_6_reg_164 <= i_6_fu_101_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_151 <= i_fu_77_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        trunc_ln_reg_179 <= {{add_ln36_fu_121_p2[31:23]}};
        v_vec_coeffs_load_reg_174 <= v_vec_coeffs_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_95_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v_vec_coeffs_addr_reg_169 <= zext_ln33_1_fu_116_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln187_fu_71_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        zext_ln28_reg_156[10 : 8] <= zext_ln28_fu_91_p1[10 : 8];
    end
end

always @ (*) begin
    if ((((icmp_ln187_fu_71_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_71_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v_vec_coeffs_address0 = v_vec_coeffs_addr_reg_169;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v_vec_coeffs_address0 = zext_ln33_1_fu_116_p1;
    end else begin
        v_vec_coeffs_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        v_vec_coeffs_ce0 = 1'b1;
    end else begin
        v_vec_coeffs_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v_vec_coeffs_we0 = 1'b1;
    end else begin
        v_vec_coeffs_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln187_fu_71_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_95_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln33_fu_111_p2 = (zext_ln28_reg_156 + zext_ln33_fu_107_p1);

assign add_ln36_fu_121_p2 = (v_vec_coeffs_q0 + 32'd4194304);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign grp_fu_140_p1 = 32'd4286586879;

assign i_6_fu_101_p2 = (i_0_i_reg_60 + 9'd1);

assign i_fu_77_p2 = (i_0_reg_49 + 3'd1);

assign icmp_ln187_fu_71_p2 = ((i_0_reg_49 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln32_fu_95_p2 = ((i_0_i_reg_60 == 9'd256) ? 1'b1 : 1'b0);

assign tmp_fu_83_p3 = {{i_0_reg_49}, {8'd0}};

assign v_vec_coeffs_d0 = grp_fu_140_p3;

assign zext_ln28_fu_91_p1 = tmp_fu_83_p3;

assign zext_ln33_1_fu_116_p1 = add_ln33_fu_111_p2;

assign zext_ln33_fu_107_p1 = i_0_i_reg_60;

always @ (posedge ap_clk) begin
    zext_ln28_reg_156[7:0] <= 8'b00000000;
    zext_ln28_reg_156[11] <= 1'b0;
end

endmodule //pqcrystals_dilithium_4
