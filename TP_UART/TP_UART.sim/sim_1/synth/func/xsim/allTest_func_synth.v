// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Mar 10 23:29:05 2019
// Host        : lenovo running 64-bit Manjaro Linux
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /usr/local/magnetic2/Xilinx/Vivado/Vivado/2018.2/bin/Arquitectura2018/TP_UART/TP_UART.sim/sim_1/synth/func/xsim/allTest_func_synth.v
// Design      : Main
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (data0,
    Q,
    \op_reg[1] ,
    S,
    \first_op_reg[7] );
  output [7:0]data0;
  input [6:0]Q;
  input [0:0]\op_reg[1] ;
  input [3:0]S;
  input [3:0]\first_op_reg[7] ;

  wire [6:0]Q;
  wire [3:0]S;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire [7:0]data0;
  wire [3:0]\first_op_reg[7] ;
  wire [0:0]\op_reg[1] ;
  wire [3:3]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\op_reg[1] }),
        .O(data0[3:0]),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [3],\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(data0[7:4]),
        .S(\first_op_reg[7] ));
endmodule

(* size = "8" *) 
(* NotValidForBitStream *)
module Main
   (rx,
    clk,
    reset,
    tx);
  input rx;
  input clk;
  input reset;
  output tx;

  wire \0 ;
  wire [6:0]a;
  wire [7:7]b_next;
  wire br_g_n_1;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data0;
  wire [7:0]dout;
  wire first_op;
  wire int_rx_n_1;
  wire int_rx_n_10;
  wire int_rx_n_11;
  wire int_rx_n_12;
  wire int_rx_n_13;
  wire int_rx_n_14;
  wire int_rx_n_2;
  wire int_rx_n_22;
  wire int_rx_n_23;
  wire int_rx_n_24;
  wire int_rx_n_25;
  wire int_rx_n_26;
  wire int_rx_n_27;
  wire int_rx_n_28;
  wire int_rx_n_29;
  wire int_rx_n_3;
  wire int_rx_n_30;
  wire int_rx_n_31;
  wire int_rx_n_4;
  wire int_rx_n_5;
  wire int_rx_n_6;
  wire int_rx_n_8;
  wire int_rx_n_9;
  wire int_tx_n_10;
  wire int_tx_n_18;
  wire int_tx_n_19;
  wire int_tx_n_2;
  wire int_tx_n_20;
  wire int_tx_n_21;
  wire int_tx_n_3;
  wire int_tx_n_4;
  wire int_tx_n_5;
  wire int_tx_n_6;
  wire int_tx_n_7;
  wire int_tx_n_8;
  wire int_tx_n_9;
  wire rd;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire rx_empty;
  wire rx_mod_n_0;
  wire rx_mod_n_1;
  wire rx_mod_n_10;
  wire rx_mod_n_11;
  wire rx_mod_n_12;
  wire rx_mod_n_13;
  wire rx_mod_n_14;
  wire rx_mod_n_15;
  wire rx_mod_n_16;
  wire rx_mod_n_17;
  wire rx_mod_n_7;
  wire rx_mod_n_8;
  wire rx_mod_n_9;
  wire s_tick;
  wire [6:0]salida;
  wire \salida[2]_i_5_n_0 ;
  wire \salida[3]_i_5_n_0 ;
  wire \salida[3]_i_8_n_0 ;
  wire state_reg2__165_carry__0_i_13_n_0;
  wire tx;
  wire tx_OBUF;
  wire tx_mod_n_0;
  wire tx_mod_n_2;
  wire tx_mod_n_3;
  wire tx_mod_n_4;
  wire tx_start;

  ALU alu
       (.Q(a),
        .S({int_rx_n_23,int_rx_n_24,int_rx_n_25,int_rx_n_26}),
        .data0(data0),
        .\first_op_reg[7] ({int_rx_n_27,int_rx_n_28,int_rx_n_29,int_rx_n_30}),
        .\op_reg[1] (\0 ));
  br_generator br_g
       (.\b_reg_reg[0] (br_g_n_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(rx_mod_n_0),
        .s_tick(s_tick));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  rx_interface int_rx
       (.CLK(clk_IBUF_BUFG),
        .D({rx_mod_n_7,rx_mod_n_8,rx_mod_n_9,rx_mod_n_10,rx_mod_n_11,rx_mod_n_12}),
        .E(first_op),
        .\FSM_sequential_state_reg_reg[0] (rx_mod_n_16),
        .Q({dout[7],dout[5],dout[3],dout[0]}),
        .S({int_rx_n_23,int_rx_n_24,int_rx_n_25,int_rx_n_26}),
        .\aux_reg[0]_0 (int_rx_n_3),
        .\aux_reg[0]_1 (int_rx_n_5),
        .\aux_reg[1]_0 (int_rx_n_4),
        .\aux_reg[1]_1 (int_rx_n_8),
        .\aux_reg[2]_0 (int_rx_n_9),
        .\aux_reg[3]_0 (int_rx_n_10),
        .\aux_reg[4]_0 ({int_rx_n_6,\0 }),
        .\aux_reg[4]_1 (int_rx_n_22),
        .\aux_reg[5]_0 (int_rx_n_11),
        .\aux_reg[6]_0 (int_rx_n_12),
        .\aux_reg[6]_1 (a),
        .\aux_reg[7]_0 (int_rx_n_13),
        .\b_reg_reg[0] (rx_mod_n_1),
        .\b_reg_reg[1] (rx_mod_n_14),
        .\b_reg_reg[1]_0 (rx_mod_n_17),
        .\b_reg_reg[2] (rx_mod_n_13),
        .\b_reg_reg[6] (rx_mod_n_15),
        .data0(data0),
        .out(rx_mod_n_0),
        .rd(rd),
        .reset_IBUF(reset_IBUF),
        .rx_empty(rx_empty),
        .s_tick(s_tick),
        .\second_op_reg[7]_0 (int_rx_n_31),
        .\state_reg_reg[0]_0 (int_tx_n_19),
        .\state_reg_reg[0]_1 (int_tx_n_20),
        .\state_reg_reg[0]_2 (int_tx_n_8),
        .\state_reg_reg[0]_3 (int_tx_n_21),
        .\state_reg_reg[1]_0 (int_rx_n_1),
        .\state_reg_reg[1]_1 (int_rx_n_2),
        .\state_reg_reg[1]_2 (int_tx_n_18),
        .\state_reg_reg[1]_3 (int_tx_n_9),
        .\state_reg_reg[2] (int_rx_n_14),
        .\state_reg_reg[2]_0 ({int_rx_n_27,int_rx_n_28,int_rx_n_29,int_rx_n_30}));
  tx_interface int_tx
       (.CLK(clk_IBUF_BUFG),
        .CO(int_tx_n_4),
        .D(b_next),
        .\FSM_sequential_state_reg_reg[1] (tx_mod_n_3),
        .\FSM_sequential_state_reg_reg[1]_0 (tx_mod_n_2),
        .\FSM_sequential_state_reg_reg[1]_1 (tx_mod_n_4),
        .O({int_tx_n_2,int_tx_n_3}),
        .Q(salida),
        .S(\salida[3]_i_8_n_0 ),
        .\aux_reg[3]_0 (state_reg2__165_carry__0_i_13_n_0),
        .\aux_reg[3]_1 (\salida[2]_i_5_n_0 ),
        .\aux_reg[4]_0 (\salida[3]_i_5_n_0 ),
        .\aux_reg[5]_0 (int_tx_n_19),
        .\aux_reg[6]_0 (int_tx_n_20),
        .\aux_reg[7]_0 (int_tx_n_21),
        .\div_reg[6]_0 (int_tx_n_8),
        .\div_reg[6]_1 (int_tx_n_9),
        .\op_reg[4] (int_rx_n_6),
        .\op_reg[4]_0 (int_rx_n_8),
        .\op_reg[4]_1 (int_rx_n_9),
        .\op_reg[4]_2 (int_rx_n_10),
        .\op_reg[4]_3 (int_rx_n_11),
        .\op_reg[4]_4 (int_rx_n_5),
        .\op_reg[5] (int_rx_n_22),
        .\op_reg[5]_0 (int_rx_n_12),
        .out(tx_mod_n_0),
        .rd(rd),
        .rd_aux_reg_0(int_tx_n_10),
        .reset_IBUF(reset_IBUF),
        .rx_empty(rx_empty),
        .\salida_reg[2]_0 ({int_tx_n_5,int_tx_n_6}),
        .\salida_reg[3]_0 (int_tx_n_7),
        .\salida_reg[4]_0 (int_tx_n_18),
        .\state_reg_reg[0]_0 (int_rx_n_14),
        .\state_reg_reg[1]_0 (int_rx_n_13),
        .tx_start(tx_start));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  rx_module rx_mod
       (.CLK(clk_IBUF_BUFG),
        .D({rx_mod_n_7,rx_mod_n_8,rx_mod_n_9,rx_mod_n_10,rx_mod_n_11,rx_mod_n_12}),
        .E(first_op),
        .Q({dout[7],dout[5],dout[3],dout[0]}),
        .\aux_reg[3] (rx_mod_n_14),
        .\aux_reg[6] (rx_mod_n_13),
        .\b_reg_reg[0]_0 (int_rx_n_3),
        .out(rx_mod_n_0),
        .reset_IBUF(reset_IBUF),
        .rx_IBUF(rx_IBUF),
        .s_tick(s_tick),
        .\second_op_reg[7] (rx_mod_n_1),
        .\state_reg_reg[0] (rx_mod_n_16),
        .\state_reg_reg[0]_0 (int_rx_n_31),
        .\state_reg_reg[0]_1 (int_rx_n_2),
        .\state_reg_reg[0]_2 (int_rx_n_4),
        .\state_reg_reg[1] (rx_mod_n_15),
        .\state_reg_reg[1]_0 (rx_mod_n_17),
        .\state_reg_reg[1]_1 (int_rx_n_1),
        .tick_reg(br_g_n_1));
  LUT2 #(
    .INIT(4'h6)) 
    \salida[2]_i_5 
       (.I0(int_tx_n_7),
        .I1(int_tx_n_5),
        .O(\salida[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \salida[3]_i_5 
       (.I0(int_tx_n_4),
        .I1(int_tx_n_2),
        .O(\salida[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \salida[3]_i_8 
       (.I0(int_tx_n_4),
        .I1(int_tx_n_3),
        .O(\salida[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__165_carry__0_i_13
       (.I0(int_tx_n_7),
        .I1(int_tx_n_6),
        .O(state_reg2__165_carry__0_i_13_n_0));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  tx_module tx_mod
       (.CLK(clk_IBUF_BUFG),
        .D(b_next),
        .Q(salida),
        .out(tx_mod_n_0),
        .reset_IBUF(reset_IBUF),
        .s_tick(s_tick),
        .\salida_reg[0] (tx_mod_n_2),
        .\salida_reg[3] (tx_mod_n_4),
        .\salida_reg[4] (int_tx_n_10),
        .\state_reg_reg[2] (tx_mod_n_3),
        .tx_OBUF(tx_OBUF),
        .tx_start(tx_start));
endmodule

module br_generator
   (s_tick,
    \b_reg_reg[0] ,
    clk_IBUF_BUFG,
    out);
  output s_tick;
  output \b_reg_reg[0] ;
  input clk_IBUF_BUFG;
  input [0:0]out;

  wire \b_reg_reg[0] ;
  wire [7:0]ciclos;
  wire \ciclos[1]_i_1_n_0 ;
  wire \ciclos[2]_i_1_n_0 ;
  wire \ciclos[3]_i_1_n_0 ;
  wire \ciclos[4]_i_1_n_0 ;
  wire \ciclos[5]_i_1_n_0 ;
  wire \ciclos[6]_i_1_n_0 ;
  wire \ciclos[6]_i_2_n_0 ;
  wire \ciclos[7]_i_1_n_0 ;
  wire \ciclos[7]_i_2_n_0 ;
  wire \ciclos[7]_i_3_n_0 ;
  wire [0:0]ciclos_0;
  wire clk_IBUF_BUFG;
  wire [0:0]out;
  wire s_tick;

  LUT2 #(
    .INIT(4'h8)) 
    \b_reg[7]_i_2 
       (.I0(s_tick),
        .I1(out),
        .O(\b_reg_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \ciclos[0]_i_1 
       (.I0(ciclos[0]),
        .O(ciclos_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciclos[1]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .O(\ciclos[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ciclos[2]_i_1 
       (.I0(ciclos[1]),
        .I1(ciclos[0]),
        .I2(ciclos[2]),
        .O(\ciclos[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ciclos[3]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .I2(ciclos[2]),
        .I3(ciclos[3]),
        .O(\ciclos[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ciclos[4]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .I2(ciclos[2]),
        .I3(ciclos[3]),
        .I4(ciclos[4]),
        .O(\ciclos[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ciclos[5]_i_1 
       (.I0(ciclos[2]),
        .I1(ciclos[3]),
        .I2(ciclos[4]),
        .I3(ciclos[1]),
        .I4(ciclos[0]),
        .I5(ciclos[5]),
        .O(\ciclos[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \ciclos[6]_i_1 
       (.I0(\ciclos[6]_i_2_n_0 ),
        .I1(ciclos[5]),
        .I2(ciclos[3]),
        .I3(ciclos[2]),
        .I4(ciclos[4]),
        .I5(ciclos[6]),
        .O(\ciclos[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ciclos[6]_i_2 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .O(\ciclos[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \ciclos[7]_i_1 
       (.I0(\ciclos[7]_i_3_n_0 ),
        .I1(ciclos[3]),
        .I2(ciclos[4]),
        .I3(ciclos[2]),
        .I4(ciclos[6]),
        .I5(ciclos[7]),
        .O(\ciclos[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \ciclos[7]_i_2 
       (.I0(\ciclos[7]_i_3_n_0 ),
        .I1(ciclos[6]),
        .I2(ciclos[4]),
        .I3(ciclos[3]),
        .I4(ciclos[2]),
        .I5(ciclos[7]),
        .O(\ciclos[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ciclos[7]_i_3 
       (.I0(ciclos[1]),
        .I1(ciclos[0]),
        .I2(ciclos[5]),
        .O(\ciclos[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ciclos_0),
        .Q(ciclos[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[1]_i_1_n_0 ),
        .Q(ciclos[1]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[2]_i_1_n_0 ),
        .Q(ciclos[2]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[3]_i_1_n_0 ),
        .Q(ciclos[3]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[4]_i_1_n_0 ),
        .Q(ciclos[4]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[5]_i_1_n_0 ),
        .Q(ciclos[5]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[6]_i_1_n_0 ),
        .Q(ciclos[6]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[7]_i_2_n_0 ),
        .Q(ciclos[7]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[7]_i_1_n_0 ),
        .Q(s_tick),
        .R(1'b0));
endmodule

module rx_interface
   (rx_empty,
    \state_reg_reg[1]_0 ,
    \state_reg_reg[1]_1 ,
    \aux_reg[0]_0 ,
    \aux_reg[1]_0 ,
    \aux_reg[0]_1 ,
    \aux_reg[4]_0 ,
    \aux_reg[1]_1 ,
    \aux_reg[2]_0 ,
    \aux_reg[3]_0 ,
    \aux_reg[5]_0 ,
    \aux_reg[6]_0 ,
    \aux_reg[7]_0 ,
    \state_reg_reg[2] ,
    \aux_reg[6]_1 ,
    \aux_reg[4]_1 ,
    S,
    \state_reg_reg[2]_0 ,
    \second_op_reg[7]_0 ,
    CLK,
    reset_IBUF,
    rd,
    Q,
    \b_reg_reg[1] ,
    \b_reg_reg[1]_0 ,
    \b_reg_reg[2] ,
    \state_reg_reg[1]_2 ,
    \state_reg_reg[0]_0 ,
    \state_reg_reg[0]_1 ,
    \state_reg_reg[1]_3 ,
    \state_reg_reg[0]_2 ,
    \state_reg_reg[0]_3 ,
    data0,
    \b_reg_reg[6] ,
    \FSM_sequential_state_reg_reg[0] ,
    s_tick,
    out,
    D,
    E,
    \b_reg_reg[0] );
  output rx_empty;
  output \state_reg_reg[1]_0 ;
  output \state_reg_reg[1]_1 ;
  output \aux_reg[0]_0 ;
  output \aux_reg[1]_0 ;
  output \aux_reg[0]_1 ;
  output [1:0]\aux_reg[4]_0 ;
  output \aux_reg[1]_1 ;
  output \aux_reg[2]_0 ;
  output \aux_reg[3]_0 ;
  output \aux_reg[5]_0 ;
  output \aux_reg[6]_0 ;
  output \aux_reg[7]_0 ;
  output \state_reg_reg[2] ;
  output [6:0]\aux_reg[6]_1 ;
  output \aux_reg[4]_1 ;
  output [3:0]S;
  output [3:0]\state_reg_reg[2]_0 ;
  output \second_op_reg[7]_0 ;
  input CLK;
  input reset_IBUF;
  input rd;
  input [3:0]Q;
  input \b_reg_reg[1] ;
  input \b_reg_reg[1]_0 ;
  input \b_reg_reg[2] ;
  input \state_reg_reg[1]_2 ;
  input \state_reg_reg[0]_0 ;
  input \state_reg_reg[0]_1 ;
  input \state_reg_reg[1]_3 ;
  input \state_reg_reg[0]_2 ;
  input \state_reg_reg[0]_3 ;
  input [7:0]data0;
  input \b_reg_reg[6] ;
  input \FSM_sequential_state_reg_reg[0] ;
  input s_tick;
  input [0:0]out;
  input [5:0]D;
  input [0:0]E;
  input [0:0]\b_reg_reg[0] ;

  wire CLK;
  wire [5:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg_reg[0] ;
  wire [3:0]Q;
  wire [3:0]S;
  wire [7:7]a;
  wire [5:0]aux1;
  wire \aux1[0]_i_1_n_0 ;
  wire \aux1[1]_i_1_n_0 ;
  wire \aux1[2]_i_1_n_0 ;
  wire \aux1[3]_i_1_n_0 ;
  wire \aux1[4]_i_1_n_0 ;
  wire \aux1[5]_i_1_n_0 ;
  wire \aux1[6]_i_1_n_0 ;
  wire \aux1_reg_n_0_[6] ;
  wire [5:0]aux2;
  wire \aux2[0]_i_1_n_0 ;
  wire \aux2[1]_i_1_n_0 ;
  wire \aux2[2]_i_1_n_0 ;
  wire \aux2[3]_i_1_n_0 ;
  wire \aux2[4]_i_1_n_0 ;
  wire \aux2[5]_i_1_n_0 ;
  wire aux2_0;
  wire \aux[0]_i_3_n_0 ;
  wire \aux[0]_i_4_n_0 ;
  wire \aux[0]_i_5_n_0 ;
  wire \aux[0]_i_6_n_0 ;
  wire \aux[0]_i_7_n_0 ;
  wire \aux[1]_i_4_n_0 ;
  wire \aux[1]_i_6_n_0 ;
  wire \aux[1]_i_7_n_0 ;
  wire \aux[1]_i_8_n_0 ;
  wire \aux[2]_i_10_n_0 ;
  wire \aux[2]_i_5_n_0 ;
  wire \aux[2]_i_7_n_0 ;
  wire \aux[2]_i_8_n_0 ;
  wire \aux[2]_i_9_n_0 ;
  wire \aux[3]_i_10_n_0 ;
  wire \aux[3]_i_5_n_0 ;
  wire \aux[3]_i_7_n_0 ;
  wire \aux[3]_i_8_n_0 ;
  wire \aux[3]_i_9_n_0 ;
  wire \aux[4]_i_10_n_0 ;
  wire \aux[4]_i_11_n_0 ;
  wire \aux[4]_i_5_n_0 ;
  wire \aux[4]_i_6_n_0 ;
  wire \aux[4]_i_7_n_0 ;
  wire \aux[4]_i_8_n_0 ;
  wire \aux[4]_i_9_n_0 ;
  wire \aux[5]_i_10_n_0 ;
  wire \aux[5]_i_11_n_0 ;
  wire \aux[5]_i_12_n_0 ;
  wire \aux[5]_i_13_n_0 ;
  wire \aux[5]_i_14_n_0 ;
  wire \aux[5]_i_15_n_0 ;
  wire \aux[5]_i_1__0_n_0 ;
  wire \aux[5]_i_7_n_0 ;
  wire \aux[5]_i_8_n_0 ;
  wire \aux[6]_i_5_n_0 ;
  wire \aux[6]_i_6_n_0 ;
  wire \aux[6]_i_7_n_0 ;
  wire \aux[6]_i_8_n_0 ;
  wire \aux[6]_i_9_n_0 ;
  wire \aux[7]_i_2__0_n_0 ;
  wire \aux_reg[0]_0 ;
  wire \aux_reg[0]_1 ;
  wire \aux_reg[1]_0 ;
  wire \aux_reg[1]_1 ;
  wire \aux_reg[1]_i_5_n_0 ;
  wire \aux_reg[2]_0 ;
  wire \aux_reg[2]_i_6_n_0 ;
  wire \aux_reg[3]_0 ;
  wire \aux_reg[3]_i_6_n_0 ;
  wire [1:0]\aux_reg[4]_0 ;
  wire \aux_reg[4]_1 ;
  wire \aux_reg[5]_0 ;
  wire \aux_reg[6]_0 ;
  wire [6:0]\aux_reg[6]_1 ;
  wire \aux_reg[7]_0 ;
  wire \aux_reg_n_0_[0] ;
  wire \aux_reg_n_0_[1] ;
  wire \aux_reg_n_0_[2] ;
  wire \aux_reg_n_0_[3] ;
  wire \aux_reg_n_0_[4] ;
  wire \aux_reg_n_0_[5] ;
  wire \aux_reg_n_0_[6] ;
  wire \aux_reg_n_0_[7] ;
  wire [7:0]b;
  wire [0:0]\b_reg_reg[0] ;
  wire \b_reg_reg[1] ;
  wire \b_reg_reg[1]_0 ;
  wire \b_reg_reg[2] ;
  wire \b_reg_reg[6] ;
  wire [7:0]data0;
  wire [7:1]first_op0;
  wire first_op0_carry__0_i_1_n_0;
  wire first_op0_carry__0_i_2_n_0;
  wire first_op0_carry__0_n_3;
  wire first_op0_carry__0_n_6;
  wire first_op0_carry__0_n_7;
  wire first_op0_carry_i_1_n_0;
  wire first_op0_carry_i_2_n_0;
  wire first_op0_carry_i_3_n_0;
  wire first_op0_carry_i_4_n_0;
  wire first_op0_carry_n_0;
  wire first_op0_carry_n_1;
  wire first_op0_carry_n_2;
  wire first_op0_carry_n_3;
  wire first_op0_carry_n_4;
  wire first_op0_carry_n_5;
  wire first_op0_carry_n_6;
  wire \first_op0_inferred__0/i__carry__0_n_2 ;
  wire \first_op0_inferred__0/i__carry__0_n_3 ;
  wire \first_op0_inferred__0/i__carry_n_0 ;
  wire \first_op0_inferred__0/i__carry_n_1 ;
  wire \first_op0_inferred__0/i__carry_n_2 ;
  wire \first_op0_inferred__0/i__carry_n_3 ;
  wire [7:2]first_op3;
  wire first_op3__0_carry_i_1_n_0;
  wire first_op3__0_carry_i_2_n_0;
  wire first_op3__0_carry_i_3_n_0;
  wire first_op3__0_carry_i_4_n_0;
  wire first_op3__0_carry_n_2;
  wire first_op3__0_carry_n_3;
  wire first_op3__0_carry_n_5;
  wire first_op3__0_carry_n_6;
  wire first_op3__0_carry_n_7;
  wire \first_op3_inferred__0/i__carry__0_n_3 ;
  wire \first_op3_inferred__0/i__carry_n_0 ;
  wire \first_op3_inferred__0/i__carry_n_1 ;
  wire \first_op3_inferred__0/i__carry_n_2 ;
  wire \first_op3_inferred__0/i__carry_n_3 ;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire op;
  wire \op[0]_i_1_n_0 ;
  wire \op[0]_i_2_n_0 ;
  wire \op[0]_i_3_n_0 ;
  wire \op[1]_i_1_n_0 ;
  wire \op[1]_i_2_n_0 ;
  wire \op[2]_i_1_n_0 ;
  wire \op[2]_i_2_n_0 ;
  wire \op[4]_i_1_n_0 ;
  wire \op[4]_i_2_n_0 ;
  wire \op[4]_i_3_n_0 ;
  wire \op[4]_i_4_n_0 ;
  wire \op[4]_i_5_n_0 ;
  wire \op[5]_i_2_n_0 ;
  wire \op[5]_i_3_n_0 ;
  wire \op_reg_n_0_[0] ;
  wire \op_reg_n_0_[2] ;
  wire \op_reg_n_0_[5] ;
  wire [0:0]out;
  wire rd;
  wire reset_IBUF;
  wire rx_empty;
  wire rx_empty_i_1_n_0;
  wire s_tick;
  wire [7:0]second_op0_in;
  wire \second_op_reg[7]_0 ;
  wire \state_reg[0]_i_1_n_0 ;
  wire \state_reg[1]_i_1_n_0 ;
  wire \state_reg[2]_i_6_n_0 ;
  wire \state_reg[2]_i_7_n_0 ;
  wire \state_reg[2]_i_8_n_0 ;
  wire \state_reg[2]_i_9_n_0 ;
  wire \state_reg_reg[0]_0 ;
  wire \state_reg_reg[0]_1 ;
  wire \state_reg_reg[0]_2 ;
  wire \state_reg_reg[0]_3 ;
  wire \state_reg_reg[1]_0 ;
  wire \state_reg_reg[1]_1 ;
  wire \state_reg_reg[1]_2 ;
  wire \state_reg_reg[1]_3 ;
  wire \state_reg_reg[2] ;
  wire [3:0]\state_reg_reg[2]_0 ;
  wire [0:0]NLW_first_op0_carry_O_UNCONNECTED;
  wire [3:1]NLW_first_op0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_first_op0_carry__0_O_UNCONNECTED;
  wire [0:0]\NLW_first_op0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_first_op0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_first_op0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:2]NLW_first_op3__0_carry_CO_UNCONNECTED;
  wire [3:3]NLW_first_op3__0_carry_O_UNCONNECTED;
  wire [3:1]\NLW_first_op3_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_first_op3_inferred__0/i__carry__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux1[0]_i_1 
       (.I0(\aux_reg_n_0_[0] ),
        .I1(\b_reg_reg[2] ),
        .O(\aux1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux1[1]_i_1 
       (.I0(\aux_reg_n_0_[1] ),
        .I1(\b_reg_reg[2] ),
        .O(\aux1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux1[2]_i_1 
       (.I0(\aux_reg_n_0_[2] ),
        .I1(\b_reg_reg[2] ),
        .O(\aux1[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aux1[3]_i_1 
       (.I0(\aux_reg_n_0_[3] ),
        .I1(\b_reg_reg[2] ),
        .O(\aux1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \aux1[4]_i_1 
       (.I0(\aux_reg_n_0_[4] ),
        .I1(\b_reg_reg[2] ),
        .O(\aux1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \aux1[5]_i_1 
       (.I0(\aux_reg_n_0_[5] ),
        .I1(\b_reg_reg[2] ),
        .O(\aux1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux1[6]_i_1 
       (.I0(\aux_reg_n_0_[6] ),
        .I1(\b_reg_reg[2] ),
        .O(\aux1[6]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \aux1_reg[0] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(\aux1[0]_i_1_n_0 ),
        .Q(aux1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aux1_reg[1] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(\aux1[1]_i_1_n_0 ),
        .Q(aux1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \aux1_reg[2] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(\aux1[2]_i_1_n_0 ),
        .Q(aux1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \aux1_reg[3] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(\aux1[3]_i_1_n_0 ),
        .Q(aux1[3]));
  FDPE #(
    .INIT(1'b1)) 
    \aux1_reg[4] 
       (.C(CLK),
        .CE(aux2_0),
        .D(\aux1[4]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(aux1[4]));
  FDPE #(
    .INIT(1'b1)) 
    \aux1_reg[5] 
       (.C(CLK),
        .CE(aux2_0),
        .D(\aux1[5]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(aux1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \aux1_reg[6] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(\aux1[6]_i_1_n_0 ),
        .Q(\aux1_reg_n_0_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux2[0]_i_1 
       (.I0(aux1[0]),
        .I1(\b_reg_reg[2] ),
        .O(\aux2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux2[1]_i_1 
       (.I0(aux1[1]),
        .I1(\b_reg_reg[2] ),
        .O(\aux2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux2[2]_i_1 
       (.I0(aux1[2]),
        .I1(\b_reg_reg[2] ),
        .O(\aux2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux2[3]_i_1 
       (.I0(aux1[3]),
        .I1(\b_reg_reg[2] ),
        .O(\aux2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \aux2[4]_i_1 
       (.I0(aux1[4]),
        .I1(\b_reg_reg[2] ),
        .O(\aux2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \aux2[5]_i_1 
       (.I0(aux1[5]),
        .I1(\b_reg_reg[2] ),
        .O(\aux2[5]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[0] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(\aux2[0]_i_1_n_0 ),
        .Q(aux2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[1] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(\aux2[1]_i_1_n_0 ),
        .Q(aux2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[2] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(\aux2[2]_i_1_n_0 ),
        .Q(aux2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[3] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(\aux2[3]_i_1_n_0 ),
        .Q(aux2[3]));
  FDPE #(
    .INIT(1'b1)) 
    \aux2_reg[4] 
       (.C(CLK),
        .CE(aux2_0),
        .D(\aux2[4]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(aux2[4]));
  FDPE #(
    .INIT(1'b1)) 
    \aux2_reg[5] 
       (.C(CLK),
        .CE(aux2_0),
        .D(\aux2[5]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(aux2[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \aux[0]_i_2 
       (.I0(Q[0]),
        .I1(\state_reg_reg[1]_0 ),
        .I2(\state_reg_reg[1]_1 ),
        .O(\aux_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAA8AAA8AAA8AA888)) 
    \aux[0]_i_2__0 
       (.I0(\state_reg_reg[1]_2 ),
        .I1(\aux_reg[4]_0 [1]),
        .I2(\op_reg_n_0_[5] ),
        .I3(\aux[0]_i_3_n_0 ),
        .I4(\aux[0]_i_4_n_0 ),
        .I5(\op_reg_n_0_[2] ),
        .O(\aux_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \aux[0]_i_3 
       (.I0(\aux_reg[4]_0 [0]),
        .I1(b[0]),
        .I2(\aux_reg[6]_1 [0]),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(data0[0]),
        .O(\aux[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B800B8FFFFCCFC)) 
    \aux[0]_i_4 
       (.I0(b[0]),
        .I1(\op_reg_n_0_[0] ),
        .I2(\aux_reg[6]_1 [0]),
        .I3(\aux_reg[4]_0 [0]),
        .I4(\aux[0]_i_5_n_0 ),
        .I5(\aux[0]_i_6_n_0 ),
        .O(\aux[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \aux[0]_i_5 
       (.I0(b[5]),
        .I1(b[6]),
        .I2(b[3]),
        .I3(b[7]),
        .I4(b[4]),
        .O(\aux[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4F7F)) 
    \aux[0]_i_6 
       (.I0(\aux[1]_i_8_n_0 ),
        .I1(b[0]),
        .I2(\aux_reg[4]_0 [0]),
        .I3(\aux[0]_i_7_n_0 ),
        .O(\aux[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \aux[0]_i_7 
       (.I0(\aux_reg[6]_1 [6]),
        .I1(\aux_reg[6]_1 [2]),
        .I2(b[1]),
        .I3(\aux_reg[6]_1 [4]),
        .I4(b[2]),
        .I5(\aux_reg[6]_1 [0]),
        .O(\aux[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAA8AAA8AA888)) 
    \aux[1]_i_2__0 
       (.I0(\state_reg_reg[1]_2 ),
        .I1(\aux_reg[4]_0 [1]),
        .I2(\op_reg_n_0_[5] ),
        .I3(\aux[1]_i_4_n_0 ),
        .I4(\aux_reg[1]_i_5_n_0 ),
        .I5(\op_reg_n_0_[2] ),
        .O(\aux_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux[1]_i_3__0 
       (.I0(\state_reg_reg[1]_1 ),
        .I1(\state_reg_reg[1]_0 ),
        .O(\aux_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \aux[1]_i_4 
       (.I0(\aux_reg[4]_0 [0]),
        .I1(b[1]),
        .I2(\aux_reg[6]_1 [1]),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(data0[1]),
        .O(\aux[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE222E2E2E2222222)) 
    \aux[1]_i_6 
       (.I0(\aux_reg[6]_1 [1]),
        .I1(\aux_reg[4]_0 [0]),
        .I2(\aux[0]_i_5_n_0 ),
        .I3(\aux[2]_i_9_n_0 ),
        .I4(b[0]),
        .I5(\aux[1]_i_8_n_0 ),
        .O(\aux[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \aux[1]_i_7 
       (.I0(\aux[2]_i_10_n_0 ),
        .I1(b[0]),
        .I2(\aux[1]_i_8_n_0 ),
        .I3(\aux_reg[4]_0 [0]),
        .I4(b[1]),
        .O(\aux[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \aux[1]_i_8 
       (.I0(a),
        .I1(\aux_reg[6]_1 [3]),
        .I2(b[1]),
        .I3(\aux_reg[6]_1 [5]),
        .I4(b[2]),
        .I5(\aux_reg[6]_1 [1]),
        .O(\aux[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFFC0CA0A0FC0C)) 
    \aux[2]_i_10 
       (.I0(a),
        .I1(\aux_reg[6]_1 [2]),
        .I2(b[2]),
        .I3(\aux_reg[6]_1 [6]),
        .I4(b[1]),
        .I5(\aux_reg[6]_1 [4]),
        .O(\aux[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8AAA8AAA8AAA8A88)) 
    \aux[2]_i_2 
       (.I0(\state_reg_reg[1]_2 ),
        .I1(\aux_reg[4]_0 [1]),
        .I2(\aux[2]_i_5_n_0 ),
        .I3(\op_reg_n_0_[5] ),
        .I4(\op_reg_n_0_[2] ),
        .I5(\aux_reg[2]_i_6_n_0 ),
        .O(\aux_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFC03C33F00005555)) 
    \aux[2]_i_5 
       (.I0(data0[2]),
        .I1(\aux_reg[6]_1 [2]),
        .I2(b[2]),
        .I3(\aux_reg[4]_0 [0]),
        .I4(\op_reg_n_0_[0] ),
        .I5(\op_reg_n_0_[2] ),
        .O(\aux[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE222E2E2E2222222)) 
    \aux[2]_i_7 
       (.I0(\aux_reg[6]_1 [2]),
        .I1(\aux_reg[4]_0 [0]),
        .I2(\aux[0]_i_5_n_0 ),
        .I3(\aux[3]_i_9_n_0 ),
        .I4(b[0]),
        .I5(\aux[2]_i_9_n_0 ),
        .O(\aux[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0ACAFACA)) 
    \aux[2]_i_8 
       (.I0(b[2]),
        .I1(\aux[2]_i_10_n_0 ),
        .I2(\aux_reg[4]_0 [0]),
        .I3(b[0]),
        .I4(\aux[3]_i_10_n_0 ),
        .O(\aux[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aux[2]_i_9 
       (.I0(\aux_reg[6]_1 [4]),
        .I1(b[1]),
        .I2(\aux_reg[6]_1 [6]),
        .I3(b[2]),
        .I4(\aux_reg[6]_1 [2]),
        .O(\aux[2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0C1D3F1D)) 
    \aux[3]_i_10 
       (.I0(\aux_reg[6]_1 [3]),
        .I1(b[2]),
        .I2(a),
        .I3(b[1]),
        .I4(\aux_reg[6]_1 [5]),
        .O(\aux[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAA8AAA8AA888)) 
    \aux[3]_i_2__0 
       (.I0(\state_reg_reg[1]_2 ),
        .I1(\aux_reg[4]_0 [1]),
        .I2(\op_reg_n_0_[5] ),
        .I3(\aux[3]_i_5_n_0 ),
        .I4(\aux_reg[3]_i_6_n_0 ),
        .I5(\op_reg_n_0_[2] ),
        .O(\aux_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \aux[3]_i_5 
       (.I0(\aux_reg[4]_0 [0]),
        .I1(b[3]),
        .I2(\aux_reg[6]_1 [3]),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(data0[3]),
        .O(\aux[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \aux[3]_i_7 
       (.I0(\aux[3]_i_9_n_0 ),
        .I1(b[0]),
        .I2(\aux[4]_i_11_n_0 ),
        .I3(\aux[0]_i_5_n_0 ),
        .I4(\aux_reg[4]_0 [0]),
        .I5(\aux_reg[6]_1 [3]),
        .O(\aux[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h550FCCCC)) 
    \aux[3]_i_8 
       (.I0(\aux[4]_i_10_n_0 ),
        .I1(b[3]),
        .I2(\aux[3]_i_10_n_0 ),
        .I3(b[0]),
        .I4(\aux_reg[4]_0 [0]),
        .O(\aux[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aux[3]_i_9 
       (.I0(\aux_reg[6]_1 [5]),
        .I1(b[1]),
        .I2(a),
        .I3(b[2]),
        .I4(\aux_reg[6]_1 [3]),
        .O(\aux[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h44477747)) 
    \aux[4]_i_10 
       (.I0(a),
        .I1(b[2]),
        .I2(\aux_reg[6]_1 [4]),
        .I3(b[1]),
        .I4(\aux_reg[6]_1 [6]),
        .O(\aux[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \aux[4]_i_11 
       (.I0(\aux_reg[6]_1 [6]),
        .I1(b[1]),
        .I2(\aux_reg[6]_1 [4]),
        .I3(b[2]),
        .O(\aux[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD1D1D1DD)) 
    \aux[4]_i_5 
       (.I0(\aux[4]_i_7_n_0 ),
        .I1(\op_reg_n_0_[0] ),
        .I2(\aux[4]_i_8_n_0 ),
        .I3(\aux[4]_i_9_n_0 ),
        .I4(\aux[4]_i_10_n_0 ),
        .I5(\op_reg_n_0_[2] ),
        .O(\aux[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \aux[4]_i_6 
       (.I0(\aux_reg[4]_0 [0]),
        .I1(b[4]),
        .I2(\aux_reg[6]_1 [4]),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(data0[4]),
        .O(\aux[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h35FF000035FFFFFF)) 
    \aux[4]_i_7 
       (.I0(\aux[4]_i_11_n_0 ),
        .I1(\aux[5]_i_13_n_0 ),
        .I2(b[0]),
        .I3(\aux[0]_i_5_n_0 ),
        .I4(\aux_reg[4]_0 [0]),
        .I5(\aux_reg[6]_1 [4]),
        .O(\aux[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AAAA0000AAAA)) 
    \aux[4]_i_8 
       (.I0(b[4]),
        .I1(a),
        .I2(\aux[6]_i_9_n_0 ),
        .I3(\aux_reg[6]_1 [5]),
        .I4(\aux_reg[4]_0 [0]),
        .I5(b[0]),
        .O(\aux[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \aux[4]_i_9 
       (.I0(b[0]),
        .I1(\aux_reg[4]_0 [0]),
        .O(\aux[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBAAAAFFFBFFFF)) 
    \aux[5]_i_10 
       (.I0(\aux[5]_i_12_n_0 ),
        .I1(\aux_reg[6]_1 [6]),
        .I2(b[2]),
        .I3(b[1]),
        .I4(b[0]),
        .I5(\aux[5]_i_13_n_0 ),
        .O(\aux[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000A8888AA0A8888)) 
    \aux[5]_i_11 
       (.I0(\op_reg_n_0_[0] ),
        .I1(b[5]),
        .I2(\aux[5]_i_14_n_0 ),
        .I3(b[0]),
        .I4(\aux_reg[4]_0 [0]),
        .I5(\aux[5]_i_15_n_0 ),
        .O(\aux[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \aux[5]_i_12 
       (.I0(\aux_reg[4]_0 [0]),
        .I1(b[4]),
        .I2(b[7]),
        .I3(b[3]),
        .I4(b[6]),
        .I5(b[5]),
        .O(\aux[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \aux[5]_i_13 
       (.I0(a),
        .I1(b[1]),
        .I2(\aux_reg[6]_1 [5]),
        .I3(b[2]),
        .O(\aux[5]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h5457)) 
    \aux[5]_i_14 
       (.I0(a),
        .I1(b[2]),
        .I2(b[1]),
        .I3(\aux_reg[6]_1 [5]),
        .O(\aux[5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h01FD)) 
    \aux[5]_i_15 
       (.I0(\aux_reg[6]_1 [6]),
        .I1(b[2]),
        .I2(b[1]),
        .I3(a),
        .O(\aux[5]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \aux[5]_i_1__0 
       (.I0(Q[2]),
        .I1(\state_reg_reg[1]_0 ),
        .I2(\state_reg_reg[1]_1 ),
        .O(\aux[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEFEAAAAAAAA)) 
    \aux[5]_i_4 
       (.I0(\state_reg_reg[0]_0 ),
        .I1(\aux_reg[4]_0 [1]),
        .I2(\aux[5]_i_7_n_0 ),
        .I3(\op_reg_n_0_[5] ),
        .I4(\aux[5]_i_8_n_0 ),
        .I5(\state_reg_reg[1]_2 ),
        .O(\aux_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0075)) 
    \aux[5]_i_7 
       (.I0(\aux[5]_i_10_n_0 ),
        .I1(\aux_reg[4]_0 [0]),
        .I2(\aux_reg[6]_1 [5]),
        .I3(\op_reg_n_0_[0] ),
        .I4(\aux[5]_i_11_n_0 ),
        .I5(\op_reg_n_0_[2] ),
        .O(\aux[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \aux[5]_i_8 
       (.I0(\aux_reg[4]_0 [0]),
        .I1(b[5]),
        .I2(\aux_reg[6]_1 [5]),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(data0[5]),
        .O(\aux[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFABBAAAAAAAA)) 
    \aux[6]_i_3 
       (.I0(\state_reg_reg[0]_1 ),
        .I1(\aux[6]_i_5_n_0 ),
        .I2(\aux[6]_i_6_n_0 ),
        .I3(\op_reg_n_0_[5] ),
        .I4(\aux_reg[4]_0 [1]),
        .I5(\state_reg_reg[1]_2 ),
        .O(\aux_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \aux[6]_i_5 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\aux_reg[6]_1 [6]),
        .I2(\aux_reg[4]_0 [0]),
        .I3(\aux[6]_i_7_n_0 ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\aux[6]_i_8_n_0 ),
        .O(\aux[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \aux[6]_i_6 
       (.I0(\aux_reg[4]_0 [0]),
        .I1(b[6]),
        .I2(\aux_reg[6]_1 [6]),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(data0[6]),
        .O(\aux[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000A000800000008)) 
    \aux[6]_i_7 
       (.I0(\aux[0]_i_5_n_0 ),
        .I1(\aux_reg[6]_1 [6]),
        .I2(b[2]),
        .I3(b[1]),
        .I4(b[0]),
        .I5(a),
        .O(\aux[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FC0CAAAAAAAA)) 
    \aux[6]_i_8 
       (.I0(b[6]),
        .I1(\aux_reg[6]_1 [6]),
        .I2(\aux[6]_i_9_n_0 ),
        .I3(a),
        .I4(b[0]),
        .I5(\aux_reg[4]_0 [0]),
        .O(\aux[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \aux[6]_i_9 
       (.I0(b[2]),
        .I1(b[1]),
        .O(\aux[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00220F00)) 
    \aux[7]_i_1 
       (.I0(rd),
        .I1(reset_IBUF),
        .I2(\b_reg_reg[1]_0 ),
        .I3(\state_reg_reg[1]_1 ),
        .I4(\state_reg_reg[1]_0 ),
        .O(aux2_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \aux[7]_i_2__0 
       (.I0(Q[3]),
        .I1(\state_reg_reg[1]_0 ),
        .I2(\state_reg_reg[1]_1 ),
        .O(\aux[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000FD)) 
    \aux[7]_i_7 
       (.I0(\state_reg[2]_i_8_n_0 ),
        .I1(\state_reg[2]_i_7_n_0 ),
        .I2(\state_reg[2]_i_6_n_0 ),
        .I3(\state_reg_reg[1]_3 ),
        .I4(\state_reg_reg[0]_2 ),
        .I5(\state_reg_reg[0]_3 ),
        .O(\aux_reg[7]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[0] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(D[0]),
        .Q(\aux_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[1] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(D[1]),
        .Q(\aux_reg_n_0_[1] ));
  MUXF7 \aux_reg[1]_i_5 
       (.I0(\aux[1]_i_6_n_0 ),
        .I1(\aux[1]_i_7_n_0 ),
        .O(\aux_reg[1]_i_5_n_0 ),
        .S(\op_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[2] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(D[2]),
        .Q(\aux_reg_n_0_[2] ));
  MUXF7 \aux_reg[2]_i_6 
       (.I0(\aux[2]_i_7_n_0 ),
        .I1(\aux[2]_i_8_n_0 ),
        .O(\aux_reg[2]_i_6_n_0 ),
        .S(\op_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[3] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(D[3]),
        .Q(\aux_reg_n_0_[3] ));
  MUXF7 \aux_reg[3]_i_6 
       (.I0(\aux[3]_i_7_n_0 ),
        .I1(\aux[3]_i_8_n_0 ),
        .O(\aux_reg[3]_i_6_n_0 ),
        .S(\op_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_reg[4] 
       (.C(CLK),
        .CE(aux2_0),
        .D(D[4]),
        .PRE(reset_IBUF),
        .Q(\aux_reg_n_0_[4] ));
  MUXF7 \aux_reg[4]_i_4 
       (.I0(\aux[4]_i_5_n_0 ),
        .I1(\aux[4]_i_6_n_0 ),
        .O(\aux_reg[4]_1 ),
        .S(\op_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_reg[5] 
       (.C(CLK),
        .CE(aux2_0),
        .D(\aux[5]_i_1__0_n_0 ),
        .PRE(reset_IBUF),
        .Q(\aux_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[6] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(D[5]),
        .Q(\aux_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[7] 
       (.C(CLK),
        .CE(aux2_0),
        .CLR(reset_IBUF),
        .D(\aux[7]_i_2__0_n_0 ),
        .Q(\aux_reg_n_0_[7] ));
  CARRY4 first_op0_carry
       (.CI(1'b0),
        .CO({first_op0_carry_n_0,first_op0_carry_n_1,first_op0_carry_n_2,first_op0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(first_op3[5:2]),
        .O({first_op0_carry_n_4,first_op0_carry_n_5,first_op0_carry_n_6,NLW_first_op0_carry_O_UNCONNECTED[0]}),
        .S({first_op0_carry_i_1_n_0,first_op0_carry_i_2_n_0,first_op0_carry_i_3_n_0,first_op0_carry_i_4_n_0}));
  CARRY4 first_op0_carry__0
       (.CI(first_op0_carry_n_0),
        .CO({NLW_first_op0_carry__0_CO_UNCONNECTED[3:1],first_op0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,first_op3[6]}),
        .O({NLW_first_op0_carry__0_O_UNCONNECTED[3:2],first_op0_carry__0_n_6,first_op0_carry__0_n_7}),
        .S({1'b0,1'b0,first_op0_carry__0_i_1_n_0,first_op0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    first_op0_carry__0_i_1
       (.I0(first_op3__0_carry_n_5),
        .I1(first_op3[7]),
        .O(first_op0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    first_op0_carry__0_i_2
       (.I0(first_op3[6]),
        .I1(first_op3__0_carry_n_6),
        .O(first_op0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    first_op0_carry_i_1
       (.I0(first_op3[5]),
        .I1(first_op3__0_carry_n_7),
        .O(first_op0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    first_op0_carry_i_2
       (.I0(first_op3[4]),
        .I1(aux2[2]),
        .O(first_op0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    first_op0_carry_i_3
       (.I0(first_op3[3]),
        .I1(aux2[1]),
        .O(first_op0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    first_op0_carry_i_4
       (.I0(first_op3[2]),
        .I1(aux2[0]),
        .O(first_op0_carry_i_4_n_0));
  CARRY4 \first_op0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\first_op0_inferred__0/i__carry_n_0 ,\first_op0_inferred__0/i__carry_n_1 ,\first_op0_inferred__0/i__carry_n_2 ,\first_op0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({first_op0_carry_n_5,first_op0_carry_n_6,\aux_reg_n_0_[2] ,aux1[0]}),
        .O({first_op0[4:2],\NLW_first_op0_inferred__0/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,first_op0[1]}));
  CARRY4 \first_op0_inferred__0/i__carry__0 
       (.CI(\first_op0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_first_op0_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\first_op0_inferred__0/i__carry__0_n_2 ,\first_op0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1__1_n_0,\aux_reg_n_0_[4] }),
        .O({\NLW_first_op0_inferred__0/i__carry__0_O_UNCONNECTED [3],first_op0[7:5]}),
        .S({1'b0,i__carry__0_i_2__1_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 first_op3__0_carry
       (.CI(1'b0),
        .CO({NLW_first_op3__0_carry_CO_UNCONNECTED[3:2],first_op3__0_carry_n_2,first_op3__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,first_op3__0_carry_i_1_n_0,1'b0}),
        .O({NLW_first_op3__0_carry_O_UNCONNECTED[3],first_op3__0_carry_n_5,first_op3__0_carry_n_6,first_op3__0_carry_n_7}),
        .S({1'b0,first_op3__0_carry_i_2_n_0,first_op3__0_carry_i_3_n_0,first_op3__0_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    first_op3__0_carry_i_1
       (.I0(aux2[3]),
        .I1(aux2[0]),
        .O(first_op3__0_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h99696696)) 
    first_op3__0_carry_i_2
       (.I0(aux2[2]),
        .I1(aux2[0]),
        .I2(aux2[1]),
        .I3(aux2[4]),
        .I4(aux2[5]),
        .O(first_op3__0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    first_op3__0_carry_i_3
       (.I0(aux2[0]),
        .I1(aux2[3]),
        .I2(aux2[1]),
        .I3(aux2[4]),
        .O(first_op3__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    first_op3__0_carry_i_4
       (.I0(aux2[3]),
        .I1(aux2[0]),
        .O(first_op3__0_carry_i_4_n_0));
  CARRY4 \first_op3_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\first_op3_inferred__0/i__carry_n_0 ,\first_op3_inferred__0/i__carry_n_1 ,\first_op3_inferred__0/i__carry_n_2 ,\first_op3_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({aux1[2],aux1[3:2],1'b0}),
        .O(first_op3[5:2]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,aux1[1]}));
  CARRY4 \first_op3_inferred__0/i__carry__0 
       (.CI(\first_op3_inferred__0/i__carry_n_0 ),
        .CO({\NLW_first_op3_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],\first_op3_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,aux1[3]}),
        .O({\NLW_first_op3_inferred__0/i__carry__0_O_UNCONNECTED [3:2],first_op3[7:6]}),
        .S({1'b0,1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \first_op[0]_i_1 
       (.I0(\aux_reg_n_0_[0] ),
        .I1(\state_reg_reg[1]_0 ),
        .O(second_op0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \first_op[1]_i_1 
       (.I0(\aux_reg_n_0_[1] ),
        .I1(aux1[0]),
        .I2(\state_reg_reg[1]_0 ),
        .O(second_op0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \first_op[2]_i_1 
       (.I0(first_op0[2]),
        .I1(\state_reg_reg[1]_0 ),
        .O(second_op0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \first_op[3]_i_1 
       (.I0(first_op0[3]),
        .I1(\state_reg_reg[1]_0 ),
        .O(second_op0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \first_op[4]_i_1 
       (.I0(first_op0[4]),
        .I1(\state_reg_reg[1]_0 ),
        .O(second_op0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \first_op[5]_i_1 
       (.I0(first_op0[5]),
        .I1(\state_reg_reg[1]_0 ),
        .O(second_op0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \first_op[6]_i_1 
       (.I0(first_op0[6]),
        .I1(\state_reg_reg[1]_0 ),
        .O(second_op0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \first_op[7]_i_2 
       (.I0(first_op0[7]),
        .I1(\state_reg_reg[1]_0 ),
        .O(second_op0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \first_op[7]_i_3 
       (.I0(\state_reg_reg[1]_1 ),
        .I1(reset_IBUF),
        .I2(\state_reg_reg[1]_0 ),
        .I3(rd),
        .O(\second_op_reg[7]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_IBUF),
        .D(second_op0_in[0]),
        .Q(\aux_reg[6]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_IBUF),
        .D(second_op0_in[1]),
        .Q(\aux_reg[6]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_IBUF),
        .D(second_op0_in[2]),
        .Q(\aux_reg[6]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_IBUF),
        .D(second_op0_in[3]),
        .Q(\aux_reg[6]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_IBUF),
        .D(second_op0_in[4]),
        .Q(\aux_reg[6]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_IBUF),
        .D(second_op0_in[5]),
        .Q(\aux_reg[6]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_IBUF),
        .D(second_op0_in[6]),
        .Q(\aux_reg[6]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_IBUF),
        .D(second_op0_in[7]),
        .Q(a));
  LUT3 #(
    .INIT(8'h9A)) 
    i__carry__0_i_1
       (.I0(\aux1_reg_n_0_[6] ),
        .I1(aux1[5]),
        .I2(aux1[4]),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_1__0
       (.I0(a),
        .I1(b[7]),
        .I2(\aux_reg[4]_0 [0]),
        .O(\state_reg_reg[2]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__1
       (.I0(\aux_reg_n_0_[6] ),
        .I1(first_op0_carry__0_n_7),
        .O(i__carry__0_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2
       (.I0(aux1[4]),
        .I1(aux1[5]),
        .I2(aux1[3]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2__0
       (.I0(\aux_reg[4]_0 [0]),
        .I1(b[6]),
        .I2(\aux_reg[6]_1 [6]),
        .O(\state_reg_reg[2]_0 [2]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_2__1
       (.I0(first_op0_carry__0_n_7),
        .I1(\aux_reg_n_0_[6] ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(first_op0_carry__0_n_6),
        .O(i__carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h6999)) 
    i__carry__0_i_3
       (.I0(first_op0_carry__0_n_7),
        .I1(\aux_reg_n_0_[6] ),
        .I2(\aux_reg_n_0_[5] ),
        .I3(first_op0_carry_n_4),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_3__0
       (.I0(b[5]),
        .I1(\aux_reg[4]_0 [0]),
        .I2(\aux_reg[6]_1 [5]),
        .O(\state_reg_reg[2]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4
       (.I0(\aux_reg_n_0_[4] ),
        .I1(\aux_reg_n_0_[5] ),
        .I2(first_op0_carry_n_4),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4__0
       (.I0(b[4]),
        .I1(\aux_reg[4]_0 [0]),
        .I2(\aux_reg[6]_1 [4]),
        .O(\state_reg_reg[2]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1
       (.I0(b[3]),
        .I1(\aux_reg[4]_0 [0]),
        .I2(\aux_reg[6]_1 [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__0
       (.I0(aux1[4]),
        .I1(aux1[2]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__1
       (.I0(\aux_reg_n_0_[4] ),
        .I1(first_op0_carry_n_5),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2
       (.I0(aux1[3]),
        .I1(aux1[1]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__0
       (.I0(first_op0_carry_n_6),
        .I1(\aux_reg_n_0_[3] ),
        .O(i__carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2__1
       (.I0(b[2]),
        .I1(\aux_reg[4]_0 [0]),
        .I2(\aux_reg[6]_1 [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3
       (.I0(aux1[2]),
        .I1(aux1[0]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3__0
       (.I0(aux2[0]),
        .I1(first_op3[2]),
        .I2(\aux_reg_n_0_[2] ),
        .O(i__carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3__1
       (.I0(b[1]),
        .I1(\aux_reg[4]_0 [0]),
        .I2(\aux_reg[6]_1 [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4
       (.I0(aux1[0]),
        .I1(\aux_reg_n_0_[1] ),
        .O(first_op0[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4__0
       (.I0(b[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \op[0]_i_1 
       (.I0(\state_reg_reg[1]_1 ),
        .I1(\op[0]_i_2_n_0 ),
        .I2(\op[0]_i_3_n_0 ),
        .O(\op[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBB3FBBBFFFFF3FF)) 
    \op[0]_i_2 
       (.I0(\aux_reg_n_0_[1] ),
        .I1(\op[4]_i_5_n_0 ),
        .I2(\aux_reg_n_0_[4] ),
        .I3(\aux_reg_n_0_[2] ),
        .I4(\aux_reg_n_0_[0] ),
        .I5(\aux_reg_n_0_[3] ),
        .O(\op[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000E00FFFFC000)) 
    \op[0]_i_3 
       (.I0(\aux_reg_n_0_[4] ),
        .I1(\aux_reg_n_0_[2] ),
        .I2(\aux_reg_n_0_[0] ),
        .I3(\aux_reg_n_0_[3] ),
        .I4(\aux_reg_n_0_[1] ),
        .I5(\aux_reg_n_0_[6] ),
        .O(\op[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8AAA8AAAAAA)) 
    \op[1]_i_1 
       (.I0(\state_reg_reg[1]_1 ),
        .I1(\op[1]_i_2_n_0 ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(\aux_reg_n_0_[5] ),
        .I4(\aux_reg_n_0_[1] ),
        .I5(\aux_reg_n_0_[3] ),
        .O(\op[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFF7FFFEFFF7F)) 
    \op[1]_i_2 
       (.I0(\aux_reg_n_0_[6] ),
        .I1(\aux_reg_n_0_[4] ),
        .I2(\aux_reg_n_0_[2] ),
        .I3(\aux_reg_n_0_[0] ),
        .I4(\aux_reg_n_0_[1] ),
        .I5(\aux_reg_n_0_[3] ),
        .O(\op[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA88AA8A8)) 
    \op[2]_i_1 
       (.I0(\state_reg_reg[1]_1 ),
        .I1(\op[2]_i_2_n_0 ),
        .I2(\aux_reg_n_0_[1] ),
        .I3(\aux_reg_n_0_[2] ),
        .I4(\aux_reg_n_0_[3] ),
        .I5(\aux_reg_n_0_[4] ),
        .O(\op[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FFFFF3F3FFF3FFF)) 
    \op[2]_i_2 
       (.I0(\aux_reg_n_0_[1] ),
        .I1(\aux_reg_n_0_[0] ),
        .I2(\op[4]_i_5_n_0 ),
        .I3(\aux_reg_n_0_[3] ),
        .I4(\aux_reg_n_0_[2] ),
        .I5(\aux_reg_n_0_[6] ),
        .O(\op[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA8AAA8A8)) 
    \op[4]_i_1 
       (.I0(\state_reg_reg[1]_1 ),
        .I1(\op[4]_i_2_n_0 ),
        .I2(\op[4]_i_3_n_0 ),
        .I3(\op[4]_i_4_n_0 ),
        .I4(\aux_reg_n_0_[0] ),
        .O(\op[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF909090FFFFFFFF)) 
    \op[4]_i_2 
       (.I0(\aux_reg_n_0_[6] ),
        .I1(\aux_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[3] ),
        .I3(\aux_reg_n_0_[4] ),
        .I4(\aux_reg_n_0_[1] ),
        .I5(\op[4]_i_5_n_0 ),
        .O(\op[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00030003FF07F5FF)) 
    \op[4]_i_3 
       (.I0(\aux_reg_n_0_[1] ),
        .I1(\aux_reg_n_0_[4] ),
        .I2(\aux_reg_n_0_[0] ),
        .I3(\aux_reg_n_0_[2] ),
        .I4(\aux_reg_n_0_[6] ),
        .I5(\aux_reg_n_0_[3] ),
        .O(\op[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0065)) 
    \op[4]_i_4 
       (.I0(\aux_reg_n_0_[1] ),
        .I1(\aux_reg_n_0_[2] ),
        .I2(\aux_reg_n_0_[3] ),
        .I3(\aux_reg_n_0_[4] ),
        .O(\op[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op[4]_i_5 
       (.I0(\aux_reg_n_0_[5] ),
        .I1(\aux_reg_n_0_[7] ),
        .O(\op[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0230020002000200)) 
    \op[5]_i_1 
       (.I0(rd),
        .I1(reset_IBUF),
        .I2(\state_reg_reg[1]_1 ),
        .I3(\state_reg_reg[1]_0 ),
        .I4(Q[1]),
        .I5(\b_reg_reg[1] ),
        .O(op));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAA2A)) 
    \op[5]_i_2 
       (.I0(\state_reg_reg[1]_1 ),
        .I1(\aux_reg_n_0_[3] ),
        .I2(\aux_reg_n_0_[2] ),
        .I3(\aux_reg_n_0_[4] ),
        .I4(\op[5]_i_3_n_0 ),
        .I5(\aux_reg_n_0_[0] ),
        .O(\op[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \op[5]_i_3 
       (.I0(\aux_reg_n_0_[6] ),
        .I1(\aux_reg_n_0_[1] ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(\aux_reg_n_0_[5] ),
        .O(\op[5]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[0] 
       (.C(CLK),
        .CE(op),
        .CLR(reset_IBUF),
        .D(\op[0]_i_1_n_0 ),
        .Q(\op_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[1] 
       (.C(CLK),
        .CE(op),
        .CLR(reset_IBUF),
        .D(\op[1]_i_1_n_0 ),
        .Q(\aux_reg[4]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[2] 
       (.C(CLK),
        .CE(op),
        .CLR(reset_IBUF),
        .D(\op[2]_i_1_n_0 ),
        .Q(\op_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[4] 
       (.C(CLK),
        .CE(op),
        .CLR(reset_IBUF),
        .D(\op[4]_i_1_n_0 ),
        .Q(\aux_reg[4]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[5] 
       (.C(CLK),
        .CE(op),
        .CLR(reset_IBUF),
        .D(\op[5]_i_2_n_0 ),
        .Q(\op_reg_n_0_[5] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFF70004)) 
    rx_empty_i_1
       (.I0(rd),
        .I1(\state_reg_reg[1]_0 ),
        .I2(reset_IBUF),
        .I3(\state_reg_reg[1]_1 ),
        .I4(rx_empty),
        .O(rx_empty_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rx_empty_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(rx_empty_i_1_n_0),
        .Q(rx_empty));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[0] 
       (.C(CLK),
        .CE(\b_reg_reg[0] ),
        .CLR(reset_IBUF),
        .D(second_op0_in[0]),
        .Q(b[0]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[1] 
       (.C(CLK),
        .CE(\b_reg_reg[0] ),
        .CLR(reset_IBUF),
        .D(second_op0_in[1]),
        .Q(b[1]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[2] 
       (.C(CLK),
        .CE(\b_reg_reg[0] ),
        .CLR(reset_IBUF),
        .D(second_op0_in[2]),
        .Q(b[2]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[3] 
       (.C(CLK),
        .CE(\b_reg_reg[0] ),
        .CLR(reset_IBUF),
        .D(second_op0_in[3]),
        .Q(b[3]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[4] 
       (.C(CLK),
        .CE(\b_reg_reg[0] ),
        .CLR(reset_IBUF),
        .D(second_op0_in[4]),
        .Q(b[4]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[5] 
       (.C(CLK),
        .CE(\b_reg_reg[0] ),
        .CLR(reset_IBUF),
        .D(second_op0_in[5]),
        .Q(b[5]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[6] 
       (.C(CLK),
        .CE(\b_reg_reg[0] ),
        .CLR(reset_IBUF),
        .D(second_op0_in[6]),
        .Q(b[6]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[7] 
       (.C(CLK),
        .CE(\b_reg_reg[0] ),
        .CLR(reset_IBUF),
        .D(second_op0_in[7]),
        .Q(b[7]));
  LUT6 #(
    .INIT(64'hFF00FF00FF000080)) 
    \state_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[0] ),
        .I1(s_tick),
        .I2(out),
        .I3(\state_reg_reg[1]_1 ),
        .I4(reset_IBUF),
        .I5(\state_reg_reg[1]_0 ),
        .O(\state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7500003030)) 
    \state_reg[1]_i_1 
       (.I0(rd),
        .I1(\b_reg_reg[6] ),
        .I2(\b_reg_reg[1]_0 ),
        .I3(\state_reg_reg[1]_1 ),
        .I4(reset_IBUF),
        .I5(\state_reg_reg[1]_0 ),
        .O(\state_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11101111)) 
    \state_reg[2]_i_4 
       (.I0(\state_reg_reg[0]_2 ),
        .I1(\state_reg_reg[1]_3 ),
        .I2(\state_reg[2]_i_6_n_0 ),
        .I3(\state_reg[2]_i_7_n_0 ),
        .I4(\state_reg[2]_i_8_n_0 ),
        .O(\state_reg_reg[2] ));
  LUT6 #(
    .INIT(64'h00000000FACF0ACA)) 
    \state_reg[2]_i_6 
       (.I0(\state_reg[2]_i_9_n_0 ),
        .I1(b[7]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\aux_reg[4]_0 [0]),
        .I4(a),
        .I5(\op_reg_n_0_[5] ),
        .O(\state_reg[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFEAA)) 
    \state_reg[2]_i_7 
       (.I0(\aux_reg[4]_0 [1]),
        .I1(data0[7]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[5] ),
        .I4(\op_reg_n_0_[2] ),
        .O(\state_reg[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE9170000FFFFFFFF)) 
    \state_reg[2]_i_8 
       (.I0(b[7]),
        .I1(\op_reg_n_0_[0] ),
        .I2(a),
        .I3(\aux_reg[4]_0 [0]),
        .I4(\op_reg_n_0_[5] ),
        .I5(\op_reg_n_0_[2] ),
        .O(\state_reg[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \state_reg[2]_i_9 
       (.I0(\aux[0]_i_5_n_0 ),
        .I1(b[1]),
        .I2(b[2]),
        .I3(a),
        .I4(b[0]),
        .I5(\aux_reg[4]_0 [0]),
        .O(\state_reg[2]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state_reg[0]_i_1_n_0 ),
        .Q(\state_reg_reg[1]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state_reg[1]_i_1_n_0 ),
        .Q(\state_reg_reg[1]_0 ));
endmodule

module rx_module
   (out,
    \second_op_reg[7] ,
    Q,
    E,
    D,
    \aux_reg[6] ,
    \aux_reg[3] ,
    \state_reg_reg[1] ,
    \state_reg_reg[0] ,
    \state_reg_reg[1]_0 ,
    \state_reg_reg[0]_0 ,
    \state_reg_reg[0]_1 ,
    \state_reg_reg[1]_1 ,
    reset_IBUF,
    \b_reg_reg[0]_0 ,
    \state_reg_reg[0]_2 ,
    rx_IBUF,
    s_tick,
    tick_reg,
    CLK);
  output [0:0]out;
  output [0:0]\second_op_reg[7] ;
  output [3:0]Q;
  output [0:0]E;
  output [5:0]D;
  output \aux_reg[6] ;
  output \aux_reg[3] ;
  output \state_reg_reg[1] ;
  output \state_reg_reg[0] ;
  output \state_reg_reg[1]_0 ;
  input \state_reg_reg[0]_0 ;
  input \state_reg_reg[0]_1 ;
  input \state_reg_reg[1]_1 ;
  input reset_IBUF;
  input \b_reg_reg[0]_0 ;
  input \state_reg_reg[0]_2 ;
  input rx_IBUF;
  input s_tick;
  input tick_reg;
  input CLK;

  wire CLK;
  wire [5:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_5_n_0 ;
  wire [3:0]Q;
  wire \aux[1]_i_2_n_0 ;
  wire \aux[4]_i_2_n_0 ;
  wire \aux[4]_i_3_n_0 ;
  wire \aux_reg[3] ;
  wire \aux_reg[6] ;
  wire b_next;
  wire \b_reg_reg[0]_0 ;
  wire [6:1]dout;
  wire \first_op[7]_i_4_n_0 ;
  wire n_next;
  wire [2:0]n_reg;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire reset_IBUF;
  wire rx_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_0 ;
  wire \s_reg[1]_i_1_n_0 ;
  wire \s_reg[2]_i_1_n_0 ;
  wire \s_reg[3]_i_2_n_0 ;
  wire \s_reg[3]_i_3__0_n_0 ;
  wire s_tick;
  wire [0:0]\second_op_reg[7] ;
  (* RTL_KEEP = "yes" *) wire [0:0]state_reg;
  wire \state_reg_reg[0] ;
  wire \state_reg_reg[0]_0 ;
  wire \state_reg_reg[0]_1 ;
  wire \state_reg_reg[0]_2 ;
  wire \state_reg_reg[1] ;
  wire \state_reg_reg[1]_0 ;
  wire \state_reg_reg[1]_1 ;
  wire tick_reg;

  LUT5 #(
    .INIT(32'h23FF2300)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(s_tick),
        .I1(state_reg),
        .I2(out),
        .I3(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .I4(state_reg),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4AFF4A00)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(state_reg),
        .I1(s_tick),
        .I2(out),
        .I3(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .I4(out),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4444444F)) 
    \FSM_sequential_state_reg[1]_i_2__0 
       (.I0(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I2(state_reg),
        .I3(out),
        .I4(rx_IBUF),
        .I5(\FSM_sequential_state_reg[1]_i_5_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h1555)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(state_reg),
        .I1(n_reg[2]),
        .I2(n_reg[1]),
        .I3(n_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .I4(out),
        .I5(s_tick),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \FSM_sequential_state_reg[1]_i_5 
       (.I0(out),
        .I1(state_reg),
        .I2(s_tick),
        .I3(\s_reg[3]_i_3__0_n_0 ),
        .I4(s_reg[3]),
        .O(\FSM_sequential_state_reg[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(out));
  LUT6 #(
    .INIT(64'hA82AAAAAAAAAAAAA)) 
    \aux[0]_i_1 
       (.I0(\b_reg_reg[0]_0 ),
        .I1(Q[1]),
        .I2(dout[2]),
        .I3(dout[4]),
        .I4(dout[1]),
        .I5(\aux[4]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h88A8AA8A00000000)) 
    \aux[1]_i_1__0 
       (.I0(dout[1]),
        .I1(\aux[1]_i_2_n_0 ),
        .I2(dout[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\state_reg_reg[0]_2 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFF7F7FF)) 
    \aux[1]_i_2 
       (.I0(Q[2]),
        .I1(dout[6]),
        .I2(Q[3]),
        .I3(dout[4]),
        .I4(dout[2]),
        .I5(Q[1]),
        .O(\aux[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FD0000000000)) 
    \aux[2]_i_1__0 
       (.I0(\aux[4]_i_3_n_0 ),
        .I1(dout[4]),
        .I2(\aux[4]_i_2_n_0 ),
        .I3(\state_reg_reg[0]_1 ),
        .I4(\state_reg_reg[1]_1 ),
        .I5(dout[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h0400)) 
    \aux[3]_i_1__0 
       (.I0(\aux_reg[3] ),
        .I1(\state_reg_reg[0]_1 ),
        .I2(\state_reg_reg[1]_1 ),
        .I3(Q[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \aux[3]_i_2 
       (.I0(\aux[4]_i_3_n_0 ),
        .I1(dout[1]),
        .I2(Q[0]),
        .I3(dout[4]),
        .I4(dout[2]),
        .O(\aux_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF40FF)) 
    \aux[4]_i_1__0 
       (.I0(\aux[4]_i_2_n_0 ),
        .I1(dout[2]),
        .I2(\aux[4]_i_3_n_0 ),
        .I3(\state_reg_reg[0]_1 ),
        .I4(\state_reg_reg[1]_1 ),
        .I5(dout[4]),
        .O(D[4]));
  LUT3 #(
    .INIT(8'h7C)) 
    \aux[4]_i_2 
       (.I0(dout[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\aux[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \aux[4]_i_3 
       (.I0(Q[3]),
        .I1(dout[6]),
        .I2(Q[2]),
        .O(\aux[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aux[6]_i_1__0 
       (.I0(dout[6]),
        .I1(\aux_reg[6] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h51000404FFFFFFFF)) 
    \aux[6]_i_2 
       (.I0(\aux[1]_i_2_n_0 ),
        .I1(dout[2]),
        .I2(Q[1]),
        .I3(dout[1]),
        .I4(Q[0]),
        .I5(\state_reg_reg[0]_2 ),
        .O(\aux_reg[6] ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \b_reg[7]_i_1__0 
       (.I0(tick_reg),
        .I1(s_reg[3]),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .I4(s_reg[2]),
        .I5(state_reg),
        .O(b_next));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[1]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[2]),
        .Q(dout[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(Q[1]),
        .Q(dout[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[4]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(Q[2]),
        .Q(dout[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[6]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(Q[3]),
        .Q(dout[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(rx_IBUF),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \first_op[7]_i_1 
       (.I0(\state_reg_reg[0]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(dout[2]),
        .I4(dout[4]),
        .I5(\first_op[7]_i_4_n_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'h00000080)) 
    \first_op[7]_i_4 
       (.I0(\aux[4]_i_3_n_0 ),
        .I1(\state_reg_reg[0]_1 ),
        .I2(dout[1]),
        .I3(\state_reg_reg[1]_1 ),
        .I4(reset_IBUF),
        .O(\first_op[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h38)) 
    \n_reg[0]_i_1 
       (.I0(out),
        .I1(n_next),
        .I2(n_reg[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \n_reg[1]_i_1 
       (.I0(n_reg[0]),
        .I1(out),
        .I2(n_next),
        .I3(n_reg[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \n_reg[2]_i_1 
       (.I0(out),
        .I1(n_reg[1]),
        .I2(n_reg[0]),
        .I3(n_next),
        .I4(n_reg[2]),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C00000A00000000)) 
    \n_reg[2]_i_2__0 
       (.I0(state_reg),
        .I1(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I2(\s_reg[3]_i_3__0_n_0 ),
        .I3(s_reg[3]),
        .I4(out),
        .I5(s_tick),
        .O(n_next));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(n_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(n_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(n_reg[2]));
  LUT4 #(
    .INIT(16'h02FE)) 
    \s_reg[0]_i_1 
       (.I0(rx_IBUF),
        .I1(out),
        .I2(state_reg),
        .I3(s_reg[0]),
        .O(\s_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02FEFE02)) 
    \s_reg[1]_i_1 
       (.I0(rx_IBUF),
        .I1(out),
        .I2(state_reg),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .O(\s_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FEFE02FE02FE02)) 
    \s_reg[2]_i_1 
       (.I0(rx_IBUF),
        .I1(out),
        .I2(state_reg),
        .I3(s_reg[2]),
        .I4(s_reg[0]),
        .I5(s_reg[1]),
        .O(\s_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFF0BFFF0000000F)) 
    \s_reg[3]_i_1__0 
       (.I0(\s_reg[3]_i_3__0_n_0 ),
        .I1(s_reg[3]),
        .I2(state_reg),
        .I3(out),
        .I4(rx_IBUF),
        .I5(s_tick),
        .O(s_next));
  LUT5 #(
    .INIT(32'hFE0202F2)) 
    \s_reg[3]_i_2 
       (.I0(rx_IBUF),
        .I1(state_reg),
        .I2(out),
        .I3(\s_reg[3]_i_3__0_n_0 ),
        .I4(s_reg[3]),
        .O(\s_reg[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \s_reg[3]_i_3__0 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .O(\s_reg[3]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[0]_i_1_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[1]_i_1_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[2]_i_1_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[3]_i_2_n_0 ),
        .Q(s_reg[3]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \second_op[7]_i_1 
       (.I0(\state_reg_reg[0]_0 ),
        .I1(Q[0]),
        .I2(dout[2]),
        .I3(dout[4]),
        .I4(Q[1]),
        .I5(\first_op[7]_i_4_n_0 ),
        .O(\second_op_reg[7] ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \state_reg[0]_i_2__0 
       (.I0(state_reg),
        .I1(s_reg[2]),
        .I2(s_reg[0]),
        .I3(s_reg[1]),
        .I4(s_reg[3]),
        .O(\state_reg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state_reg[1]_i_2__0 
       (.I0(dout[6]),
        .I1(Q[2]),
        .I2(dout[2]),
        .I3(\state_reg_reg[0]_1 ),
        .O(\state_reg_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \state_reg[1]_i_3__0 
       (.I0(dout[1]),
        .I1(\aux[4]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(dout[2]),
        .I5(dout[4]),
        .O(\state_reg_reg[1]_0 ));
endmodule

module tx_interface
   (rd,
    tx_start,
    O,
    CO,
    \salida_reg[2]_0 ,
    \salida_reg[3]_0 ,
    \div_reg[6]_0 ,
    \div_reg[6]_1 ,
    rd_aux_reg_0,
    Q,
    \salida_reg[4]_0 ,
    \aux_reg[5]_0 ,
    \aux_reg[6]_0 ,
    \aux_reg[7]_0 ,
    D,
    CLK,
    S,
    \aux_reg[4]_0 ,
    \aux_reg[3]_0 ,
    \aux_reg[3]_1 ,
    \state_reg_reg[1]_0 ,
    \op_reg[5] ,
    \op_reg[4] ,
    \op_reg[4]_0 ,
    \op_reg[4]_1 ,
    \op_reg[4]_2 ,
    \op_reg[4]_3 ,
    \op_reg[5]_0 ,
    \FSM_sequential_state_reg_reg[1] ,
    rx_empty,
    reset_IBUF,
    \FSM_sequential_state_reg_reg[1]_0 ,
    \FSM_sequential_state_reg_reg[1]_1 ,
    out,
    \op_reg[4]_4 ,
    \state_reg_reg[0]_0 );
  output rd;
  output tx_start;
  output [1:0]O;
  output [0:0]CO;
  output [1:0]\salida_reg[2]_0 ;
  output [0:0]\salida_reg[3]_0 ;
  output \div_reg[6]_0 ;
  output \div_reg[6]_1 ;
  output rd_aux_reg_0;
  output [6:0]Q;
  output \salida_reg[4]_0 ;
  output \aux_reg[5]_0 ;
  output \aux_reg[6]_0 ;
  output \aux_reg[7]_0 ;
  output [0:0]D;
  input CLK;
  input [0:0]S;
  input [0:0]\aux_reg[4]_0 ;
  input [0:0]\aux_reg[3]_0 ;
  input [0:0]\aux_reg[3]_1 ;
  input \state_reg_reg[1]_0 ;
  input \op_reg[5] ;
  input [0:0]\op_reg[4] ;
  input \op_reg[4]_0 ;
  input \op_reg[4]_1 ;
  input \op_reg[4]_2 ;
  input \op_reg[4]_3 ;
  input \op_reg[5]_0 ;
  input \FSM_sequential_state_reg_reg[1] ;
  input rx_empty;
  input reset_IBUF;
  input \FSM_sequential_state_reg_reg[1]_0 ;
  input \FSM_sequential_state_reg_reg[1]_1 ;
  input [0:0]out;
  input \op_reg[4]_4 ;
  input \state_reg_reg[0]_0 ;

  wire CLK;
  wire [0:0]CO;
  wire [0:0]D;
  wire \FSM_sequential_state_reg_reg[1] ;
  wire \FSM_sequential_state_reg_reg[1]_0 ;
  wire \FSM_sequential_state_reg_reg[1]_1 ;
  wire [1:0]O;
  wire [6:0]Q;
  wire [0:0]S;
  wire aux0__118_carry__0_i_1_n_0;
  wire aux0__118_carry__0_i_2_n_0;
  wire aux0__118_carry__0_i_3_n_0;
  wire aux0__118_carry__0_i_4_n_0;
  wire aux0__118_carry__0_n_0;
  wire aux0__118_carry__0_n_1;
  wire aux0__118_carry__0_n_2;
  wire aux0__118_carry__0_n_3;
  wire aux0__118_carry__0_n_4;
  wire aux0__118_carry__0_n_5;
  wire aux0__118_carry__0_n_6;
  wire aux0__118_carry__0_n_7;
  wire aux0__118_carry__1_i_1_n_0;
  wire aux0__118_carry__1_i_2_n_0;
  wire aux0__118_carry__1_i_3_n_0;
  wire aux0__118_carry__1_n_1;
  wire aux0__118_carry__1_n_2;
  wire aux0__118_carry__1_n_3;
  wire aux0__118_carry__1_n_6;
  wire aux0__118_carry__1_n_7;
  wire aux0__118_carry_i_1_n_0;
  wire aux0__118_carry_i_2_n_0;
  wire aux0__118_carry_i_3_n_0;
  wire aux0__118_carry_i_4_n_0;
  wire aux0__118_carry_i_5_n_0;
  wire aux0__118_carry_n_0;
  wire aux0__118_carry_n_1;
  wire aux0__118_carry_n_2;
  wire aux0__118_carry_n_3;
  wire aux0__118_carry_n_4;
  wire aux0__118_carry_n_5;
  wire aux0__118_carry_n_6;
  wire aux0__118_carry_n_7;
  wire aux0__161_carry__0_i_1_n_0;
  wire aux0__161_carry__0_i_2_n_0;
  wire aux0__161_carry__0_i_3_n_0;
  wire aux0__161_carry__0_i_4_n_0;
  wire aux0__161_carry__0_n_0;
  wire aux0__161_carry__0_n_1;
  wire aux0__161_carry__0_n_2;
  wire aux0__161_carry__0_n_3;
  wire aux0__161_carry__0_n_4;
  wire aux0__161_carry__0_n_5;
  wire aux0__161_carry__0_n_6;
  wire aux0__161_carry__0_n_7;
  wire aux0__161_carry__1_i_1_n_0;
  wire aux0__161_carry__1_i_2_n_0;
  wire aux0__161_carry__1_i_3_n_0;
  wire aux0__161_carry__1_n_1;
  wire aux0__161_carry__1_n_2;
  wire aux0__161_carry__1_n_3;
  wire aux0__161_carry__1_n_6;
  wire aux0__161_carry__1_n_7;
  wire aux0__161_carry_i_1_n_0;
  wire aux0__161_carry_i_2_n_0;
  wire aux0__161_carry_i_3_n_0;
  wire aux0__161_carry_i_4_n_0;
  wire aux0__161_carry_i_5_n_0;
  wire aux0__161_carry_n_0;
  wire aux0__161_carry_n_1;
  wire aux0__161_carry_n_2;
  wire aux0__161_carry_n_3;
  wire aux0__161_carry_n_4;
  wire aux0__161_carry_n_5;
  wire aux0__161_carry_n_6;
  wire aux0__161_carry_n_7;
  wire aux0__204_carry__0_i_1_n_0;
  wire aux0__204_carry__0_i_2_n_0;
  wire aux0__204_carry__0_i_3_n_0;
  wire aux0__204_carry__0_i_4_n_0;
  wire aux0__204_carry__0_n_0;
  wire aux0__204_carry__0_n_1;
  wire aux0__204_carry__0_n_2;
  wire aux0__204_carry__0_n_3;
  wire aux0__204_carry__0_n_4;
  wire aux0__204_carry__0_n_5;
  wire aux0__204_carry__0_n_6;
  wire aux0__204_carry__0_n_7;
  wire aux0__204_carry__1_i_1_n_0;
  wire aux0__204_carry__1_i_2_n_0;
  wire aux0__204_carry__1_i_3_n_0;
  wire aux0__204_carry__1_n_1;
  wire aux0__204_carry__1_n_2;
  wire aux0__204_carry__1_n_3;
  wire aux0__204_carry__1_n_6;
  wire aux0__204_carry__1_n_7;
  wire aux0__204_carry_i_1_n_0;
  wire aux0__204_carry_i_2_n_0;
  wire aux0__204_carry_i_3_n_0;
  wire aux0__204_carry_i_4_n_0;
  wire aux0__204_carry_i_5_n_0;
  wire aux0__204_carry_n_0;
  wire aux0__204_carry_n_1;
  wire aux0__204_carry_n_2;
  wire aux0__204_carry_n_3;
  wire aux0__204_carry_n_4;
  wire aux0__204_carry_n_5;
  wire aux0__204_carry_n_6;
  wire aux0__204_carry_n_7;
  wire aux0__247_carry__0_i_1_n_0;
  wire aux0__247_carry__0_i_2_n_0;
  wire aux0__247_carry__0_i_3_n_0;
  wire aux0__247_carry__0_i_4_n_0;
  wire aux0__247_carry__0_n_0;
  wire aux0__247_carry__0_n_1;
  wire aux0__247_carry__0_n_2;
  wire aux0__247_carry__0_n_3;
  wire aux0__247_carry__0_n_4;
  wire aux0__247_carry__0_n_5;
  wire aux0__247_carry__0_n_6;
  wire aux0__247_carry__0_n_7;
  wire aux0__247_carry__1_i_1_n_0;
  wire aux0__247_carry__1_i_2_n_0;
  wire aux0__247_carry__1_i_3_n_0;
  wire aux0__247_carry__1_n_1;
  wire aux0__247_carry__1_n_2;
  wire aux0__247_carry__1_n_3;
  wire aux0__247_carry__1_n_6;
  wire aux0__247_carry__1_n_7;
  wire aux0__247_carry_i_1_n_0;
  wire aux0__247_carry_i_2_n_0;
  wire aux0__247_carry_i_3_n_0;
  wire aux0__247_carry_i_4_n_0;
  wire aux0__247_carry_i_5_n_0;
  wire aux0__247_carry_n_0;
  wire aux0__247_carry_n_1;
  wire aux0__247_carry_n_2;
  wire aux0__247_carry_n_3;
  wire aux0__247_carry_n_4;
  wire aux0__247_carry_n_5;
  wire aux0__247_carry_n_6;
  wire aux0__247_carry_n_7;
  wire aux0__290_carry__0_i_1_n_0;
  wire aux0__290_carry__0_i_2_n_0;
  wire aux0__290_carry__0_i_3_n_0;
  wire aux0__290_carry__0_i_4_n_0;
  wire aux0__290_carry__0_n_0;
  wire aux0__290_carry__0_n_1;
  wire aux0__290_carry__0_n_2;
  wire aux0__290_carry__0_n_3;
  wire aux0__290_carry__0_n_5;
  wire aux0__290_carry__0_n_6;
  wire aux0__290_carry__0_n_7;
  wire aux0__290_carry__1_i_1_n_0;
  wire aux0__290_carry__1_i_2_n_0;
  wire aux0__290_carry__1_i_3_n_0;
  wire aux0__290_carry__1_n_1;
  wire aux0__290_carry__1_n_2;
  wire aux0__290_carry__1_n_3;
  wire aux0__290_carry_i_1_n_0;
  wire aux0__290_carry_i_2_n_0;
  wire aux0__290_carry_i_3_n_0;
  wire aux0__290_carry_i_4_n_0;
  wire aux0__290_carry_i_5_n_0;
  wire aux0__290_carry_n_0;
  wire aux0__290_carry_n_1;
  wire aux0__290_carry_n_2;
  wire aux0__290_carry_n_3;
  wire aux0__290_carry_n_4;
  wire aux0__290_carry_n_5;
  wire aux0__290_carry_n_6;
  wire aux0__290_carry_n_7;
  wire aux0__32_carry__0_i_1_n_0;
  wire aux0__32_carry__0_i_2_n_0;
  wire aux0__32_carry__0_i_3_n_0;
  wire aux0__32_carry__0_i_4_n_0;
  wire aux0__32_carry__0_n_0;
  wire aux0__32_carry__0_n_1;
  wire aux0__32_carry__0_n_2;
  wire aux0__32_carry__0_n_3;
  wire aux0__32_carry__0_n_4;
  wire aux0__32_carry__0_n_5;
  wire aux0__32_carry__0_n_6;
  wire aux0__32_carry__0_n_7;
  wire aux0__32_carry__1_i_1_n_0;
  wire aux0__32_carry__1_i_2_n_0;
  wire aux0__32_carry__1_i_3_n_0;
  wire aux0__32_carry__1_n_1;
  wire aux0__32_carry__1_n_2;
  wire aux0__32_carry__1_n_3;
  wire aux0__32_carry__1_n_6;
  wire aux0__32_carry__1_n_7;
  wire aux0__32_carry_i_1_n_0;
  wire aux0__32_carry_i_2_n_0;
  wire aux0__32_carry_i_3_n_0;
  wire aux0__32_carry_i_4_n_0;
  wire aux0__32_carry_n_0;
  wire aux0__32_carry_n_1;
  wire aux0__32_carry_n_2;
  wire aux0__32_carry_n_3;
  wire aux0__32_carry_n_4;
  wire aux0__32_carry_n_5;
  wire aux0__32_carry_n_6;
  wire aux0__32_carry_n_7;
  wire aux0__75_carry__0_i_1_n_0;
  wire aux0__75_carry__0_i_2_n_0;
  wire aux0__75_carry__0_i_3_n_0;
  wire aux0__75_carry__0_i_4_n_0;
  wire aux0__75_carry__0_n_0;
  wire aux0__75_carry__0_n_1;
  wire aux0__75_carry__0_n_2;
  wire aux0__75_carry__0_n_3;
  wire aux0__75_carry__0_n_4;
  wire aux0__75_carry__0_n_5;
  wire aux0__75_carry__0_n_6;
  wire aux0__75_carry__0_n_7;
  wire aux0__75_carry__1_i_1_n_0;
  wire aux0__75_carry__1_i_2_n_0;
  wire aux0__75_carry__1_i_3_n_0;
  wire aux0__75_carry__1_n_1;
  wire aux0__75_carry__1_n_2;
  wire aux0__75_carry__1_n_3;
  wire aux0__75_carry__1_n_6;
  wire aux0__75_carry__1_n_7;
  wire aux0__75_carry_i_1_n_0;
  wire aux0__75_carry_i_2_n_0;
  wire aux0__75_carry_i_3_n_0;
  wire aux0__75_carry_i_4_n_0;
  wire aux0__75_carry_i_5_n_0;
  wire aux0__75_carry_n_0;
  wire aux0__75_carry_n_1;
  wire aux0__75_carry_n_2;
  wire aux0__75_carry_n_3;
  wire aux0__75_carry_n_4;
  wire aux0__75_carry_n_5;
  wire aux0__75_carry_n_6;
  wire aux0__75_carry_n_7;
  wire aux0_carry__0_i_1_n_0;
  wire aux0_carry__0_i_2_n_0;
  wire aux0_carry__0_i_3_n_0;
  wire aux0_carry__0_i_4_n_0;
  wire aux0_carry__0_i_5_n_0;
  wire aux0_carry__0_i_6_n_0;
  wire aux0_carry__0_i_7_n_0;
  wire aux0_carry__0_i_8_n_0;
  wire aux0_carry__0_n_0;
  wire aux0_carry__0_n_1;
  wire aux0_carry__0_n_2;
  wire aux0_carry__0_n_3;
  wire aux0_carry__0_n_4;
  wire aux0_carry__0_n_5;
  wire aux0_carry__0_n_6;
  wire aux0_carry__0_n_7;
  wire aux0_carry__1_i_1_n_0;
  wire aux0_carry__1_i_2_n_0;
  wire aux0_carry__1_i_3_n_0;
  wire aux0_carry__1_i_4_n_0;
  wire aux0_carry__1_i_5_n_0;
  wire aux0_carry__1_i_6_n_0;
  wire aux0_carry__1_i_7_n_3;
  wire aux0_carry__1_n_0;
  wire aux0_carry__1_n_2;
  wire aux0_carry__1_n_3;
  wire aux0_carry__1_n_5;
  wire aux0_carry__1_n_6;
  wire aux0_carry__1_n_7;
  wire aux0_carry_i_1_n_0;
  wire aux0_carry_i_2_n_0;
  wire aux0_carry_i_3_n_0;
  wire aux0_carry_i_4_n_0;
  wire aux0_carry_i_5_n_0;
  wire aux0_carry_i_6_n_0;
  wire aux0_carry_i_7_n_0;
  wire aux0_carry_n_0;
  wire aux0_carry_n_1;
  wire aux0_carry_n_2;
  wire aux0_carry_n_3;
  wire aux0_carry_n_4;
  wire aux0_carry_n_5;
  wire aux0_carry_n_6;
  wire aux0_carry_n_7;
  wire \aux[0]_i_1__0_n_0 ;
  wire \aux[1]_i_1_n_0 ;
  wire \aux[1]_i_3_n_0 ;
  wire \aux[2]_i_1_n_0 ;
  wire \aux[2]_i_3_n_0 ;
  wire \aux[2]_i_4_n_0 ;
  wire \aux[3]_i_1_n_0 ;
  wire \aux[3]_i_3_n_0 ;
  wire \aux[3]_i_4_n_0 ;
  wire \aux[4]_i_1_n_0 ;
  wire \aux[4]_i_2__0_n_0 ;
  wire \aux[4]_i_3__0_n_0 ;
  wire \aux[5]_i_1_n_0 ;
  wire \aux[5]_i_3_n_0 ;
  wire \aux[5]_i_5_n_0 ;
  wire \aux[5]_i_9_n_0 ;
  wire \aux[6]_i_1_n_0 ;
  wire \aux[6]_i_2__0_n_0 ;
  wire \aux[7]_i_10_n_0 ;
  wire \aux[7]_i_11_n_0 ;
  wire \aux[7]_i_13_n_0 ;
  wire \aux[7]_i_1__0_n_0 ;
  wire \aux[7]_i_2_n_0 ;
  wire \aux[7]_i_3_n_0 ;
  wire \aux[7]_i_4_n_0 ;
  wire \aux[7]_i_6_n_0 ;
  wire \aux[7]_i_8_n_0 ;
  wire \aux[7]_i_9_n_0 ;
  wire [0:0]\aux_reg[3]_0 ;
  wire [0:0]\aux_reg[3]_1 ;
  wire [0:0]\aux_reg[4]_0 ;
  wire \aux_reg[5]_0 ;
  wire \aux_reg[5]_i_2_n_0 ;
  wire \aux_reg[5]_i_2_n_1 ;
  wire \aux_reg[5]_i_2_n_2 ;
  wire \aux_reg[5]_i_2_n_3 ;
  wire \aux_reg[5]_i_2_n_4 ;
  wire \aux_reg[5]_i_2_n_5 ;
  wire \aux_reg[5]_i_2_n_6 ;
  wire \aux_reg[5]_i_2_n_7 ;
  wire \aux_reg[6]_0 ;
  wire \aux_reg[7]_0 ;
  wire \aux_reg[7]_i_5_n_0 ;
  wire \aux_reg[7]_i_5_n_1 ;
  wire \aux_reg[7]_i_5_n_2 ;
  wire \aux_reg[7]_i_5_n_3 ;
  wire \aux_reg[7]_i_5_n_4 ;
  wire \aux_reg[7]_i_5_n_5 ;
  wire \aux_reg[7]_i_5_n_6 ;
  wire \aux_reg[7]_i_5_n_7 ;
  wire \aux_reg_n_0_[0] ;
  wire \aux_reg_n_0_[1] ;
  wire \aux_reg_n_0_[2] ;
  wire \aux_reg_n_0_[3] ;
  wire \aux_reg_n_0_[4] ;
  wire \aux_reg_n_0_[5] ;
  wire \aux_reg_n_0_[6] ;
  wire \aux_reg_n_0_[7] ;
  wire \div[0]_i_1_n_0 ;
  wire \div[1]_i_1_n_0 ;
  wire \div[1]_i_2_n_0 ;
  wire \div[6]_i_1_n_0 ;
  wire \div_reg[6]_0 ;
  wire \div_reg[6]_1 ;
  wire \div_reg_n_0_[0] ;
  wire \div_reg_n_0_[1] ;
  wire \div_reg_n_0_[6] ;
  wire \i[1]_i_1_n_0 ;
  wire \i[6]_i_1_n_0 ;
  wire [2:0]i_reg__0;
  wire [6:3]i_reg__1;
  wire [0:0]\op_reg[4] ;
  wire \op_reg[4]_0 ;
  wire \op_reg[4]_1 ;
  wire \op_reg[4]_2 ;
  wire \op_reg[4]_3 ;
  wire \op_reg[4]_4 ;
  wire \op_reg[5] ;
  wire \op_reg[5]_0 ;
  wire [0:0]out;
  wire [6:0]p_0_in;
  wire rd;
  wire rd_aux_i_1_n_0;
  wire rd_aux_i_2_n_0;
  wire rd_aux_reg_0;
  wire reset_IBUF;
  wire rx_empty;
  wire [7:7]salida;
  wire \salida[0]_i_1_n_0 ;
  wire \salida[1]_i_1_n_0 ;
  wire \salida[1]_i_3_n_0 ;
  wire \salida[1]_i_4_n_0 ;
  wire \salida[2]_i_1_n_0 ;
  wire \salida[2]_i_4_n_0 ;
  wire \salida[3]_i_1_n_0 ;
  wire \salida[3]_i_6_n_0 ;
  wire \salida[3]_i_7_n_0 ;
  wire \salida[3]_i_9_n_0 ;
  wire \salida[4]_i_1_n_0 ;
  wire \salida[4]_i_2_n_0 ;
  wire \salida[4]_i_3_n_0 ;
  wire \salida[5]_i_1_n_0 ;
  wire \salida[6]_i_1_n_0 ;
  wire \salida[6]_i_2_n_0 ;
  wire \salida[6]_i_4_n_0 ;
  wire \salida[7]_i_10_n_0 ;
  wire \salida[7]_i_13_n_0 ;
  wire \salida[7]_i_14_n_0 ;
  wire \salida[7]_i_15_n_0 ;
  wire \salida[7]_i_16_n_0 ;
  wire \salida[7]_i_17_n_0 ;
  wire \salida[7]_i_18_n_0 ;
  wire \salida[7]_i_19_n_0 ;
  wire \salida[7]_i_1_n_0 ;
  wire \salida[7]_i_20_n_0 ;
  wire \salida[7]_i_21_n_0 ;
  wire \salida[7]_i_22_n_0 ;
  wire \salida[7]_i_23_n_0 ;
  wire \salida[7]_i_24_n_0 ;
  wire \salida[7]_i_25_n_0 ;
  wire \salida[7]_i_26_n_0 ;
  wire \salida[7]_i_2_n_0 ;
  wire \salida[7]_i_3_n_0 ;
  wire \salida[7]_i_4_n_0 ;
  wire \salida[7]_i_8_n_0 ;
  wire [1:0]\salida_reg[2]_0 ;
  wire \salida_reg[2]_i_3_n_3 ;
  wire [0:0]\salida_reg[3]_0 ;
  wire \salida_reg[3]_i_4_n_0 ;
  wire \salida_reg[3]_i_4_n_1 ;
  wire \salida_reg[3]_i_4_n_2 ;
  wire \salida_reg[3]_i_4_n_3 ;
  wire \salida_reg[3]_i_4_n_5 ;
  wire \salida_reg[3]_i_4_n_6 ;
  wire \salida_reg[4]_0 ;
  wire \salida_reg[7]_i_11_n_0 ;
  wire \salida_reg[7]_i_11_n_1 ;
  wire \salida_reg[7]_i_11_n_2 ;
  wire \salida_reg[7]_i_11_n_3 ;
  wire \salida_reg[7]_i_11_n_4 ;
  wire \salida_reg[7]_i_11_n_5 ;
  wire \salida_reg[7]_i_11_n_6 ;
  wire \salida_reg[7]_i_12_n_0 ;
  wire \salida_reg[7]_i_12_n_1 ;
  wire \salida_reg[7]_i_12_n_2 ;
  wire \salida_reg[7]_i_12_n_3 ;
  wire \salida_reg[7]_i_12_n_4 ;
  wire \salida_reg[7]_i_12_n_5 ;
  wire \salida_reg[7]_i_12_n_6 ;
  wire \salida_reg[7]_i_6_n_3 ;
  wire \salida_reg[7]_i_7_n_0 ;
  wire \salida_reg[7]_i_7_n_1 ;
  wire \salida_reg[7]_i_7_n_2 ;
  wire \salida_reg[7]_i_7_n_3 ;
  wire \salida_reg[7]_i_7_n_5 ;
  wire \salida_reg[7]_i_7_n_6 ;
  wire \salida_reg[7]_i_9_n_0 ;
  wire \salida_reg[7]_i_9_n_1 ;
  wire \salida_reg[7]_i_9_n_2 ;
  wire \salida_reg[7]_i_9_n_3 ;
  wire \salida_reg[7]_i_9_n_4 ;
  wire \salida_reg[7]_i_9_n_5 ;
  wire \salida_reg[7]_i_9_n_6 ;
  wire \salida_reg[7]_i_9_n_7 ;
  wire state_reg2__165_carry__0_i_10_n_0;
  wire state_reg2__165_carry__0_i_11_n_0;
  wire state_reg2__165_carry__0_i_12_n_0;
  wire state_reg2__165_carry__0_i_14_n_0;
  wire state_reg2__165_carry__0_i_1_n_0;
  wire state_reg2__165_carry__0_i_1_n_1;
  wire state_reg2__165_carry__0_i_1_n_2;
  wire state_reg2__165_carry__0_i_1_n_3;
  wire state_reg2__165_carry__0_i_1_n_4;
  wire state_reg2__165_carry__0_i_1_n_5;
  wire state_reg2__165_carry__0_i_1_n_6;
  wire state_reg2__165_carry__0_i_1_n_7;
  wire state_reg2__165_carry__0_i_2_n_0;
  wire state_reg2__165_carry__0_i_3_n_0;
  wire state_reg2__165_carry__0_i_4_n_0;
  wire state_reg2__165_carry__0_i_5_n_0;
  wire state_reg2__165_carry__0_i_6_n_0;
  wire state_reg2__165_carry__0_i_6_n_1;
  wire state_reg2__165_carry__0_i_6_n_2;
  wire state_reg2__165_carry__0_i_6_n_3;
  wire state_reg2__165_carry__0_i_6_n_4;
  wire state_reg2__165_carry__0_i_6_n_5;
  wire state_reg2__165_carry__0_i_6_n_6;
  wire state_reg2__165_carry__0_i_6_n_7;
  wire state_reg2__165_carry__0_i_7_n_0;
  wire state_reg2__165_carry__0_i_8_n_0;
  wire state_reg2__165_carry__0_i_9_n_0;
  wire state_reg2__165_carry__0_n_0;
  wire state_reg2__165_carry__0_n_1;
  wire state_reg2__165_carry__0_n_2;
  wire state_reg2__165_carry__0_n_3;
  wire state_reg2__165_carry_i_10_n_0;
  wire state_reg2__165_carry_i_11_n_0;
  wire state_reg2__165_carry_i_12_n_0;
  wire state_reg2__165_carry_i_12_n_1;
  wire state_reg2__165_carry_i_12_n_2;
  wire state_reg2__165_carry_i_12_n_3;
  wire state_reg2__165_carry_i_12_n_4;
  wire state_reg2__165_carry_i_12_n_5;
  wire state_reg2__165_carry_i_12_n_6;
  wire state_reg2__165_carry_i_13_n_0;
  wire state_reg2__165_carry_i_14_n_0;
  wire state_reg2__165_carry_i_15_n_0;
  wire state_reg2__165_carry_i_16_n_0;
  wire state_reg2__165_carry_i_17_n_0;
  wire state_reg2__165_carry_i_18_n_0;
  wire state_reg2__165_carry_i_1_n_3;
  wire state_reg2__165_carry_i_2_n_0;
  wire state_reg2__165_carry_i_2_n_1;
  wire state_reg2__165_carry_i_2_n_2;
  wire state_reg2__165_carry_i_2_n_3;
  wire state_reg2__165_carry_i_2_n_4;
  wire state_reg2__165_carry_i_2_n_5;
  wire state_reg2__165_carry_i_2_n_6;
  wire state_reg2__165_carry_i_3_n_0;
  wire state_reg2__165_carry_i_4_n_0;
  wire state_reg2__165_carry_i_5_n_0;
  wire state_reg2__165_carry_i_6_n_0;
  wire state_reg2__165_carry_i_7_n_0;
  wire state_reg2__165_carry_i_8_n_0;
  wire state_reg2__165_carry_i_8_n_1;
  wire state_reg2__165_carry_i_8_n_2;
  wire state_reg2__165_carry_i_8_n_3;
  wire state_reg2__165_carry_i_8_n_4;
  wire state_reg2__165_carry_i_8_n_5;
  wire state_reg2__165_carry_i_8_n_6;
  wire state_reg2__165_carry_i_9_n_0;
  wire state_reg2__165_carry_n_0;
  wire state_reg2__165_carry_n_1;
  wire state_reg2__165_carry_n_2;
  wire state_reg2__165_carry_n_3;
  wire state_reg2__3_carry__0_i_1_n_0;
  wire state_reg2__3_carry__0_i_2_n_0;
  wire state_reg2__3_carry__0_i_3_n_0;
  wire state_reg2__3_carry__0_i_4_n_0;
  wire state_reg2__3_carry__0_i_5_n_0;
  wire state_reg2__3_carry__0_i_6_n_0;
  wire state_reg2__3_carry__0_i_7_n_0;
  wire state_reg2__3_carry__0_n_0;
  wire state_reg2__3_carry__0_n_1;
  wire state_reg2__3_carry__0_n_2;
  wire state_reg2__3_carry__0_n_3;
  wire state_reg2__3_carry__0_n_5;
  wire state_reg2__3_carry__0_n_6;
  wire state_reg2__3_carry__0_n_7;
  wire state_reg2__3_carry_i_1_n_0;
  wire state_reg2__3_carry_i_2_n_0;
  wire state_reg2__3_carry_i_3_n_0;
  wire state_reg2__3_carry_i_4_n_0;
  wire state_reg2__3_carry_i_5_n_0;
  wire state_reg2__3_carry_i_6_n_0;
  wire state_reg2__3_carry_i_7_n_0;
  wire state_reg2__3_carry_i_8_n_0;
  wire state_reg2__3_carry_n_0;
  wire state_reg2__3_carry_n_1;
  wire state_reg2__3_carry_n_2;
  wire state_reg2__3_carry_n_3;
  wire state_reg2__3_carry_n_4;
  wire state_reg2__3_carry_n_5;
  wire state_reg2__3_carry_n_6;
  wire state_reg2__3_carry_n_7;
  wire \state_reg[0]_i_1_n_0 ;
  wire \state_reg[0]_i_2_n_0 ;
  wire \state_reg[0]_i_3_n_0 ;
  wire \state_reg[0]_i_4_n_0 ;
  wire \state_reg[0]_i_5_n_0 ;
  wire \state_reg[1]_i_1_n_0 ;
  wire \state_reg[1]_i_2_n_0 ;
  wire \state_reg[1]_i_3_n_0 ;
  wire \state_reg[1]_i_4_n_0 ;
  wire \state_reg[1]_i_5_n_0 ;
  wire \state_reg[1]_i_6_n_0 ;
  wire \state_reg[1]_i_7_n_0 ;
  wire \state_reg[1]_i_8_n_0 ;
  wire \state_reg[2]_i_1_n_0 ;
  wire \state_reg[2]_i_2_n_0 ;
  wire \state_reg[2]_i_5_n_0 ;
  wire \state_reg_reg[0]_0 ;
  wire \state_reg_reg[1]_0 ;
  wire \state_reg_reg_n_0_[2] ;
  wire tx_start;
  wire tx_start_aux_i_1_n_0;
  wire tx_start_aux_i_2_n_0;
  wire zflag4_out;
  wire zflag_i_1_n_0;
  wire zflag_reg_n_0;
  wire [3:3]NLW_aux0__118_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_aux0__118_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_aux0__161_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_aux0__161_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_aux0__204_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_aux0__204_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_aux0__247_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_aux0__247_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_aux0__290_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_aux0__290_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__290_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_aux0__32_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_aux0__32_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_aux0__75_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_aux0__75_carry__1_O_UNCONNECTED;
  wire [2:2]NLW_aux0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_aux0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_aux0_carry__1_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_aux0_carry__1_i_7_O_UNCONNECTED;
  wire [3:1]\NLW_salida_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_salida_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_salida_reg[3]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_salida_reg[3]_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_salida_reg[7]_i_11_O_UNCONNECTED ;
  wire [0:0]\NLW_salida_reg[7]_i_12_O_UNCONNECTED ;
  wire [3:1]\NLW_salida_reg[7]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_salida_reg[7]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_salida_reg[7]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_salida_reg[7]_i_6_O_UNCONNECTED ;
  wire [3:0]NLW_state_reg2__165_carry_O_UNCONNECTED;
  wire [3:0]NLW_state_reg2__165_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_state_reg2__165_carry_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_state_reg2__165_carry_i_1_O_UNCONNECTED;
  wire [0:0]NLW_state_reg2__165_carry_i_12_O_UNCONNECTED;
  wire [0:0]NLW_state_reg2__165_carry_i_2_O_UNCONNECTED;
  wire [0:0]NLW_state_reg2__165_carry_i_8_O_UNCONNECTED;
  wire [3:3]NLW_state_reg2__3_carry__0_O_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__118_carry
       (.CI(1'b0),
        .CO({aux0__118_carry_n_0,aux0__118_carry_n_1,aux0__118_carry_n_2,aux0__118_carry_n_3}),
        .CYINIT(aux0__75_carry__1_n_1),
        .DI({aux0__75_carry_n_5,aux0__75_carry_n_6,aux0__75_carry_n_7,aux0__118_carry_i_1_n_0}),
        .O({aux0__118_carry_n_4,aux0__118_carry_n_5,aux0__118_carry_n_6,aux0__118_carry_n_7}),
        .S({aux0__118_carry_i_2_n_0,aux0__118_carry_i_3_n_0,aux0__118_carry_i_4_n_0,aux0__118_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__118_carry__0
       (.CI(aux0__118_carry_n_0),
        .CO({aux0__118_carry__0_n_0,aux0__118_carry__0_n_1,aux0__118_carry__0_n_2,aux0__118_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__75_carry__0_n_5,aux0__75_carry__0_n_6,aux0__75_carry__0_n_7,aux0__75_carry_n_4}),
        .O({aux0__118_carry__0_n_4,aux0__118_carry__0_n_5,aux0__118_carry__0_n_6,aux0__118_carry__0_n_7}),
        .S({aux0__118_carry__0_i_1_n_0,aux0__118_carry__0_i_2_n_0,aux0__118_carry__0_i_3_n_0,aux0__118_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry__0_i_1
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_5 ),
        .I2(aux0__75_carry__0_n_5),
        .O(aux0__118_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry__0_i_2
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_6 ),
        .I2(aux0__75_carry__0_n_6),
        .O(aux0__118_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry__0_i_3
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_7 ),
        .I2(aux0__75_carry__0_n_7),
        .O(aux0__118_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry__0_i_4
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_4 ),
        .I2(aux0__75_carry_n_4),
        .O(aux0__118_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__118_carry__1
       (.CI(aux0__118_carry__0_n_0),
        .CO({NLW_aux0__118_carry__1_CO_UNCONNECTED[3],aux0__118_carry__1_n_1,aux0__118_carry__1_n_2,aux0__118_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,aux0__75_carry__1_n_1,aux0__75_carry__1_n_7,aux0__75_carry__0_n_4}),
        .O({NLW_aux0__118_carry__1_O_UNCONNECTED[3:2],aux0__118_carry__1_n_6,aux0__118_carry__1_n_7}),
        .S({1'b0,aux0__118_carry__1_i_1_n_0,aux0__118_carry__1_i_2_n_0,aux0__118_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__118_carry__1_i_1
       (.I0(aux0__75_carry__1_n_1),
        .I1(aux0__75_carry__1_n_6),
        .O(aux0__118_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry__1_i_2
       (.I0(aux0__75_carry__1_n_1),
        .I1(aux0_carry__1_i_7_n_3),
        .I2(aux0__75_carry__1_n_7),
        .O(aux0__118_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry__1_i_3
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_4 ),
        .I2(aux0__75_carry__0_n_4),
        .O(aux0__118_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__118_carry_i_1
       (.I0(\aux_reg_n_0_[5] ),
        .O(aux0__118_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry_i_2
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_5 ),
        .I2(aux0__75_carry_n_5),
        .O(aux0__118_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry_i_3
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_6 ),
        .I2(aux0__75_carry_n_6),
        .O(aux0__118_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry_i_4
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_7 ),
        .I2(aux0__75_carry_n_7),
        .O(aux0__118_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry_i_5
       (.I0(aux0__75_carry__1_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[5] ),
        .O(aux0__118_carry_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__161_carry
       (.CI(1'b0),
        .CO({aux0__161_carry_n_0,aux0__161_carry_n_1,aux0__161_carry_n_2,aux0__161_carry_n_3}),
        .CYINIT(aux0__118_carry__1_n_1),
        .DI({aux0__118_carry_n_5,aux0__118_carry_n_6,aux0__118_carry_n_7,aux0__161_carry_i_1_n_0}),
        .O({aux0__161_carry_n_4,aux0__161_carry_n_5,aux0__161_carry_n_6,aux0__161_carry_n_7}),
        .S({aux0__161_carry_i_2_n_0,aux0__161_carry_i_3_n_0,aux0__161_carry_i_4_n_0,aux0__161_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__161_carry__0
       (.CI(aux0__161_carry_n_0),
        .CO({aux0__161_carry__0_n_0,aux0__161_carry__0_n_1,aux0__161_carry__0_n_2,aux0__161_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__118_carry__0_n_5,aux0__118_carry__0_n_6,aux0__118_carry__0_n_7,aux0__118_carry_n_4}),
        .O({aux0__161_carry__0_n_4,aux0__161_carry__0_n_5,aux0__161_carry__0_n_6,aux0__161_carry__0_n_7}),
        .S({aux0__161_carry__0_i_1_n_0,aux0__161_carry__0_i_2_n_0,aux0__161_carry__0_i_3_n_0,aux0__161_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry__0_i_1
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_5 ),
        .I2(aux0__118_carry__0_n_5),
        .O(aux0__161_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry__0_i_2
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_6 ),
        .I2(aux0__118_carry__0_n_6),
        .O(aux0__161_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry__0_i_3
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_7 ),
        .I2(aux0__118_carry__0_n_7),
        .O(aux0__161_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry__0_i_4
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_4 ),
        .I2(aux0__118_carry_n_4),
        .O(aux0__161_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__161_carry__1
       (.CI(aux0__161_carry__0_n_0),
        .CO({NLW_aux0__161_carry__1_CO_UNCONNECTED[3],aux0__161_carry__1_n_1,aux0__161_carry__1_n_2,aux0__161_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,aux0__118_carry__1_n_1,aux0__118_carry__1_n_7,aux0__118_carry__0_n_4}),
        .O({NLW_aux0__161_carry__1_O_UNCONNECTED[3:2],aux0__161_carry__1_n_6,aux0__161_carry__1_n_7}),
        .S({1'b0,aux0__161_carry__1_i_1_n_0,aux0__161_carry__1_i_2_n_0,aux0__161_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__161_carry__1_i_1
       (.I0(aux0__118_carry__1_n_1),
        .I1(aux0__118_carry__1_n_6),
        .O(aux0__161_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry__1_i_2
       (.I0(aux0__118_carry__1_n_1),
        .I1(aux0_carry__1_i_7_n_3),
        .I2(aux0__118_carry__1_n_7),
        .O(aux0__161_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry__1_i_3
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_4 ),
        .I2(aux0__118_carry__0_n_4),
        .O(aux0__161_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__161_carry_i_1
       (.I0(\aux_reg_n_0_[4] ),
        .O(aux0__161_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry_i_2
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_5 ),
        .I2(aux0__118_carry_n_5),
        .O(aux0__161_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry_i_3
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_6 ),
        .I2(aux0__118_carry_n_6),
        .O(aux0__161_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry_i_4
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_7 ),
        .I2(aux0__118_carry_n_7),
        .O(aux0__161_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry_i_5
       (.I0(aux0__118_carry__1_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[4] ),
        .O(aux0__161_carry_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__204_carry
       (.CI(1'b0),
        .CO({aux0__204_carry_n_0,aux0__204_carry_n_1,aux0__204_carry_n_2,aux0__204_carry_n_3}),
        .CYINIT(aux0__161_carry__1_n_1),
        .DI({aux0__161_carry_n_5,aux0__161_carry_n_6,aux0__161_carry_n_7,aux0__204_carry_i_1_n_0}),
        .O({aux0__204_carry_n_4,aux0__204_carry_n_5,aux0__204_carry_n_6,aux0__204_carry_n_7}),
        .S({aux0__204_carry_i_2_n_0,aux0__204_carry_i_3_n_0,aux0__204_carry_i_4_n_0,aux0__204_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__204_carry__0
       (.CI(aux0__204_carry_n_0),
        .CO({aux0__204_carry__0_n_0,aux0__204_carry__0_n_1,aux0__204_carry__0_n_2,aux0__204_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__161_carry__0_n_5,aux0__161_carry__0_n_6,aux0__161_carry__0_n_7,aux0__161_carry_n_4}),
        .O({aux0__204_carry__0_n_4,aux0__204_carry__0_n_5,aux0__204_carry__0_n_6,aux0__204_carry__0_n_7}),
        .S({aux0__204_carry__0_i_1_n_0,aux0__204_carry__0_i_2_n_0,aux0__204_carry__0_i_3_n_0,aux0__204_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry__0_i_1
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_5 ),
        .I2(aux0__161_carry__0_n_5),
        .O(aux0__204_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry__0_i_2
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_6 ),
        .I2(aux0__161_carry__0_n_6),
        .O(aux0__204_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry__0_i_3
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_7 ),
        .I2(aux0__161_carry__0_n_7),
        .O(aux0__204_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry__0_i_4
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_4 ),
        .I2(aux0__161_carry_n_4),
        .O(aux0__204_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__204_carry__1
       (.CI(aux0__204_carry__0_n_0),
        .CO({NLW_aux0__204_carry__1_CO_UNCONNECTED[3],aux0__204_carry__1_n_1,aux0__204_carry__1_n_2,aux0__204_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,aux0__161_carry__1_n_1,aux0__161_carry__1_n_7,aux0__161_carry__0_n_4}),
        .O({NLW_aux0__204_carry__1_O_UNCONNECTED[3:2],aux0__204_carry__1_n_6,aux0__204_carry__1_n_7}),
        .S({1'b0,aux0__204_carry__1_i_1_n_0,aux0__204_carry__1_i_2_n_0,aux0__204_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__204_carry__1_i_1
       (.I0(aux0__161_carry__1_n_1),
        .I1(aux0__161_carry__1_n_6),
        .O(aux0__204_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry__1_i_2
       (.I0(aux0__161_carry__1_n_1),
        .I1(aux0_carry__1_i_7_n_3),
        .I2(aux0__161_carry__1_n_7),
        .O(aux0__204_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry__1_i_3
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_4 ),
        .I2(aux0__161_carry__0_n_4),
        .O(aux0__204_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__204_carry_i_1
       (.I0(\aux_reg_n_0_[3] ),
        .O(aux0__204_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry_i_2
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_5 ),
        .I2(aux0__161_carry_n_5),
        .O(aux0__204_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry_i_3
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_6 ),
        .I2(aux0__161_carry_n_6),
        .O(aux0__204_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry_i_4
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_7 ),
        .I2(aux0__161_carry_n_7),
        .O(aux0__204_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry_i_5
       (.I0(aux0__161_carry__1_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[3] ),
        .O(aux0__204_carry_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__247_carry
       (.CI(1'b0),
        .CO({aux0__247_carry_n_0,aux0__247_carry_n_1,aux0__247_carry_n_2,aux0__247_carry_n_3}),
        .CYINIT(aux0__204_carry__1_n_1),
        .DI({aux0__204_carry_n_5,aux0__204_carry_n_6,aux0__204_carry_n_7,aux0__247_carry_i_1_n_0}),
        .O({aux0__247_carry_n_4,aux0__247_carry_n_5,aux0__247_carry_n_6,aux0__247_carry_n_7}),
        .S({aux0__247_carry_i_2_n_0,aux0__247_carry_i_3_n_0,aux0__247_carry_i_4_n_0,aux0__247_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__247_carry__0
       (.CI(aux0__247_carry_n_0),
        .CO({aux0__247_carry__0_n_0,aux0__247_carry__0_n_1,aux0__247_carry__0_n_2,aux0__247_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__204_carry__0_n_5,aux0__204_carry__0_n_6,aux0__204_carry__0_n_7,aux0__204_carry_n_4}),
        .O({aux0__247_carry__0_n_4,aux0__247_carry__0_n_5,aux0__247_carry__0_n_6,aux0__247_carry__0_n_7}),
        .S({aux0__247_carry__0_i_1_n_0,aux0__247_carry__0_i_2_n_0,aux0__247_carry__0_i_3_n_0,aux0__247_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry__0_i_1
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_5 ),
        .I2(aux0__204_carry__0_n_5),
        .O(aux0__247_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry__0_i_2
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_6 ),
        .I2(aux0__204_carry__0_n_6),
        .O(aux0__247_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry__0_i_3
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_7 ),
        .I2(aux0__204_carry__0_n_7),
        .O(aux0__247_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry__0_i_4
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_4 ),
        .I2(aux0__204_carry_n_4),
        .O(aux0__247_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__247_carry__1
       (.CI(aux0__247_carry__0_n_0),
        .CO({NLW_aux0__247_carry__1_CO_UNCONNECTED[3],aux0__247_carry__1_n_1,aux0__247_carry__1_n_2,aux0__247_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,aux0__204_carry__1_n_1,aux0__204_carry__1_n_7,aux0__204_carry__0_n_4}),
        .O({NLW_aux0__247_carry__1_O_UNCONNECTED[3:2],aux0__247_carry__1_n_6,aux0__247_carry__1_n_7}),
        .S({1'b0,aux0__247_carry__1_i_1_n_0,aux0__247_carry__1_i_2_n_0,aux0__247_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__247_carry__1_i_1
       (.I0(aux0__204_carry__1_n_1),
        .I1(aux0__204_carry__1_n_6),
        .O(aux0__247_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry__1_i_2
       (.I0(aux0__204_carry__1_n_1),
        .I1(aux0_carry__1_i_7_n_3),
        .I2(aux0__204_carry__1_n_7),
        .O(aux0__247_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry__1_i_3
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_4 ),
        .I2(aux0__204_carry__0_n_4),
        .O(aux0__247_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__247_carry_i_1
       (.I0(\aux_reg_n_0_[2] ),
        .O(aux0__247_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry_i_2
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_5 ),
        .I2(aux0__204_carry_n_5),
        .O(aux0__247_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry_i_3
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_6 ),
        .I2(aux0__204_carry_n_6),
        .O(aux0__247_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry_i_4
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_7 ),
        .I2(aux0__204_carry_n_7),
        .O(aux0__247_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry_i_5
       (.I0(aux0__204_carry__1_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[2] ),
        .O(aux0__247_carry_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__290_carry
       (.CI(1'b0),
        .CO({aux0__290_carry_n_0,aux0__290_carry_n_1,aux0__290_carry_n_2,aux0__290_carry_n_3}),
        .CYINIT(aux0__247_carry__1_n_1),
        .DI({aux0__247_carry_n_5,aux0__247_carry_n_6,aux0__247_carry_n_7,aux0__290_carry_i_1_n_0}),
        .O({aux0__290_carry_n_4,aux0__290_carry_n_5,aux0__290_carry_n_6,aux0__290_carry_n_7}),
        .S({aux0__290_carry_i_2_n_0,aux0__290_carry_i_3_n_0,aux0__290_carry_i_4_n_0,aux0__290_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__290_carry__0
       (.CI(aux0__290_carry_n_0),
        .CO({aux0__290_carry__0_n_0,aux0__290_carry__0_n_1,aux0__290_carry__0_n_2,aux0__290_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__247_carry__0_n_5,aux0__247_carry__0_n_6,aux0__247_carry__0_n_7,aux0__247_carry_n_4}),
        .O({NLW_aux0__290_carry__0_O_UNCONNECTED[3],aux0__290_carry__0_n_5,aux0__290_carry__0_n_6,aux0__290_carry__0_n_7}),
        .S({aux0__290_carry__0_i_1_n_0,aux0__290_carry__0_i_2_n_0,aux0__290_carry__0_i_3_n_0,aux0__290_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry__0_i_1
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_5 ),
        .I2(aux0__247_carry__0_n_5),
        .O(aux0__290_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry__0_i_2
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_6 ),
        .I2(aux0__247_carry__0_n_6),
        .O(aux0__290_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry__0_i_3
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_7 ),
        .I2(aux0__247_carry__0_n_7),
        .O(aux0__290_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry__0_i_4
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_4 ),
        .I2(aux0__247_carry_n_4),
        .O(aux0__290_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__290_carry__1
       (.CI(aux0__290_carry__0_n_0),
        .CO({NLW_aux0__290_carry__1_CO_UNCONNECTED[3],aux0__290_carry__1_n_1,aux0__290_carry__1_n_2,aux0__290_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,aux0__247_carry__1_n_1,aux0__247_carry__1_n_7,aux0__247_carry__0_n_4}),
        .O(NLW_aux0__290_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,aux0__290_carry__1_i_1_n_0,aux0__290_carry__1_i_2_n_0,aux0__290_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__290_carry__1_i_1
       (.I0(aux0__247_carry__1_n_1),
        .I1(aux0__247_carry__1_n_6),
        .O(aux0__290_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry__1_i_2
       (.I0(aux0__247_carry__1_n_1),
        .I1(aux0_carry__1_i_7_n_3),
        .I2(aux0__247_carry__1_n_7),
        .O(aux0__290_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry__1_i_3
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_4 ),
        .I2(aux0__247_carry__0_n_4),
        .O(aux0__290_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__290_carry_i_1
       (.I0(\aux_reg_n_0_[1] ),
        .O(aux0__290_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry_i_2
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_5 ),
        .I2(aux0__247_carry_n_5),
        .O(aux0__290_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry_i_3
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_6 ),
        .I2(aux0__247_carry_n_6),
        .O(aux0__290_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry_i_4
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_7 ),
        .I2(aux0__247_carry_n_7),
        .O(aux0__290_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry_i_5
       (.I0(aux0__247_carry__1_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[1] ),
        .O(aux0__290_carry_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__32_carry
       (.CI(1'b0),
        .CO({aux0__32_carry_n_0,aux0__32_carry_n_1,aux0__32_carry_n_2,aux0__32_carry_n_3}),
        .CYINIT(aux0_carry__1_n_0),
        .DI({aux0_carry_n_4,aux0_carry_n_5,aux0_carry_n_6,aux0_carry_n_7}),
        .O({aux0__32_carry_n_4,aux0__32_carry_n_5,aux0__32_carry_n_6,aux0__32_carry_n_7}),
        .S({aux0__32_carry_i_1_n_0,aux0__32_carry_i_2_n_0,aux0__32_carry_i_3_n_0,aux0__32_carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__32_carry__0
       (.CI(aux0__32_carry_n_0),
        .CO({aux0__32_carry__0_n_0,aux0__32_carry__0_n_1,aux0__32_carry__0_n_2,aux0__32_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({aux0_carry__0_n_4,aux0_carry__0_n_5,aux0_carry__0_n_6,aux0_carry__0_n_7}),
        .O({aux0__32_carry__0_n_4,aux0__32_carry__0_n_5,aux0__32_carry__0_n_6,aux0__32_carry__0_n_7}),
        .S({aux0__32_carry__0_i_1_n_0,aux0__32_carry__0_i_2_n_0,aux0__32_carry__0_i_3_n_0,aux0__32_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry__0_i_1
       (.I0(\aux_reg[7]_i_5_n_5 ),
        .I1(aux0_carry__1_n_0),
        .I2(aux0_carry__0_n_4),
        .O(aux0__32_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry__0_i_2
       (.I0(\aux_reg[7]_i_5_n_6 ),
        .I1(aux0_carry__1_n_0),
        .I2(aux0_carry__0_n_5),
        .O(aux0__32_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry__0_i_3
       (.I0(\aux_reg[7]_i_5_n_7 ),
        .I1(aux0_carry__1_n_0),
        .I2(aux0_carry__0_n_6),
        .O(aux0__32_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry__0_i_4
       (.I0(\aux_reg[5]_i_2_n_4 ),
        .I1(aux0_carry__1_n_0),
        .I2(aux0_carry__0_n_7),
        .O(aux0__32_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__32_carry__1
       (.CI(aux0__32_carry__0_n_0),
        .CO({NLW_aux0__32_carry__1_CO_UNCONNECTED[3],aux0__32_carry__1_n_1,aux0__32_carry__1_n_2,aux0__32_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,aux0_carry__1_n_0,aux0_carry__1_n_6,aux0_carry__1_n_7}),
        .O({NLW_aux0__32_carry__1_O_UNCONNECTED[3:2],aux0__32_carry__1_n_6,aux0__32_carry__1_n_7}),
        .S({1'b0,aux0__32_carry__1_i_1_n_0,aux0__32_carry__1_i_2_n_0,aux0__32_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__32_carry__1_i_1
       (.I0(aux0_carry__1_n_0),
        .I1(aux0_carry__1_n_5),
        .O(aux0__32_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry__1_i_2
       (.I0(aux0_carry__1_i_7_n_3),
        .I1(aux0_carry__1_n_0),
        .I2(aux0_carry__1_n_6),
        .O(aux0__32_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry__1_i_3
       (.I0(\aux_reg[7]_i_5_n_4 ),
        .I1(aux0_carry__1_n_0),
        .I2(aux0_carry__1_n_7),
        .O(aux0__32_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry_i_1
       (.I0(\aux_reg[5]_i_2_n_5 ),
        .I1(aux0_carry__1_n_0),
        .I2(aux0_carry_n_4),
        .O(aux0__32_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry_i_2
       (.I0(\aux_reg[5]_i_2_n_6 ),
        .I1(aux0_carry__1_n_0),
        .I2(aux0_carry_n_5),
        .O(aux0__32_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry_i_3
       (.I0(\aux_reg[5]_i_2_n_7 ),
        .I1(aux0_carry__1_n_0),
        .I2(aux0_carry_n_6),
        .O(aux0__32_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry_i_4
       (.I0(\div_reg_n_0_[0] ),
        .I1(aux0_carry__1_n_0),
        .I2(aux0_carry_n_7),
        .O(aux0__32_carry_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__75_carry
       (.CI(1'b0),
        .CO({aux0__75_carry_n_0,aux0__75_carry_n_1,aux0__75_carry_n_2,aux0__75_carry_n_3}),
        .CYINIT(aux0__32_carry__1_n_1),
        .DI({aux0__32_carry_n_5,aux0__32_carry_n_6,aux0__32_carry_n_7,aux0__75_carry_i_1_n_0}),
        .O({aux0__75_carry_n_4,aux0__75_carry_n_5,aux0__75_carry_n_6,aux0__75_carry_n_7}),
        .S({aux0__75_carry_i_2_n_0,aux0__75_carry_i_3_n_0,aux0__75_carry_i_4_n_0,aux0__75_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__75_carry__0
       (.CI(aux0__75_carry_n_0),
        .CO({aux0__75_carry__0_n_0,aux0__75_carry__0_n_1,aux0__75_carry__0_n_2,aux0__75_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__32_carry__0_n_5,aux0__32_carry__0_n_6,aux0__32_carry__0_n_7,aux0__32_carry_n_4}),
        .O({aux0__75_carry__0_n_4,aux0__75_carry__0_n_5,aux0__75_carry__0_n_6,aux0__75_carry__0_n_7}),
        .S({aux0__75_carry__0_i_1_n_0,aux0__75_carry__0_i_2_n_0,aux0__75_carry__0_i_3_n_0,aux0__75_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry__0_i_1
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_5 ),
        .I2(aux0__32_carry__0_n_5),
        .O(aux0__75_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry__0_i_2
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_6 ),
        .I2(aux0__32_carry__0_n_6),
        .O(aux0__75_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry__0_i_3
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_7 ),
        .I2(aux0__32_carry__0_n_7),
        .O(aux0__75_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry__0_i_4
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_4 ),
        .I2(aux0__32_carry_n_4),
        .O(aux0__75_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0__75_carry__1
       (.CI(aux0__75_carry__0_n_0),
        .CO({NLW_aux0__75_carry__1_CO_UNCONNECTED[3],aux0__75_carry__1_n_1,aux0__75_carry__1_n_2,aux0__75_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,aux0__32_carry__1_n_1,aux0__32_carry__1_n_7,aux0__32_carry__0_n_4}),
        .O({NLW_aux0__75_carry__1_O_UNCONNECTED[3:2],aux0__75_carry__1_n_6,aux0__75_carry__1_n_7}),
        .S({1'b0,aux0__75_carry__1_i_1_n_0,aux0__75_carry__1_i_2_n_0,aux0__75_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__75_carry__1_i_1
       (.I0(aux0__32_carry__1_n_1),
        .I1(aux0__32_carry__1_n_6),
        .O(aux0__75_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry__1_i_2
       (.I0(aux0__32_carry__1_n_1),
        .I1(aux0_carry__1_i_7_n_3),
        .I2(aux0__32_carry__1_n_7),
        .O(aux0__75_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry__1_i_3
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[7]_i_5_n_4 ),
        .I2(aux0__32_carry__0_n_4),
        .O(aux0__75_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__75_carry_i_1
       (.I0(\aux_reg_n_0_[6] ),
        .O(aux0__75_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry_i_2
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_5 ),
        .I2(aux0__32_carry_n_5),
        .O(aux0__75_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry_i_3
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_6 ),
        .I2(aux0__32_carry_n_6),
        .O(aux0__75_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry_i_4
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[5]_i_2_n_7 ),
        .I2(aux0__32_carry_n_7),
        .O(aux0__75_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry_i_5
       (.I0(aux0__32_carry__1_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[6] ),
        .O(aux0__75_carry_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0_carry
       (.CI(1'b0),
        .CO({aux0_carry_n_0,aux0_carry_n_1,aux0_carry_n_2,aux0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({aux0_carry_i_1_n_0,aux0_carry_i_2_n_0,aux0_carry_i_3_n_0,1'b1}),
        .O({aux0_carry_n_4,aux0_carry_n_5,aux0_carry_n_6,aux0_carry_n_7}),
        .S({aux0_carry_i_4_n_0,aux0_carry_i_5_n_0,aux0_carry_i_6_n_0,aux0_carry_i_7_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0_carry__0
       (.CI(aux0_carry_n_0),
        .CO({aux0_carry__0_n_0,aux0_carry__0_n_1,aux0_carry__0_n_2,aux0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({aux0_carry__0_i_1_n_0,aux0_carry__0_i_2_n_0,aux0_carry__0_i_3_n_0,aux0_carry__0_i_4_n_0}),
        .O({aux0_carry__0_n_4,aux0_carry__0_n_5,aux0_carry__0_n_6,aux0_carry__0_n_7}),
        .S({aux0_carry__0_i_5_n_0,aux0_carry__0_i_6_n_0,aux0_carry__0_i_7_n_0,aux0_carry__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_1
       (.I0(\aux_reg[7]_i_5_n_6 ),
        .O(aux0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_2
       (.I0(\aux_reg[7]_i_5_n_7 ),
        .O(aux0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_3
       (.I0(\aux_reg[5]_i_2_n_4 ),
        .O(aux0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_4
       (.I0(\aux_reg[5]_i_2_n_5 ),
        .O(aux0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_5
       (.I0(\aux_reg[7]_i_5_n_6 ),
        .O(aux0_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_6
       (.I0(\aux_reg[7]_i_5_n_7 ),
        .O(aux0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_7
       (.I0(\aux_reg[5]_i_2_n_4 ),
        .O(aux0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_8
       (.I0(\aux_reg[5]_i_2_n_5 ),
        .O(aux0_carry__0_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux0_carry__1
       (.CI(aux0_carry__0_n_0),
        .CO({aux0_carry__1_n_0,NLW_aux0_carry__1_CO_UNCONNECTED[2],aux0_carry__1_n_2,aux0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,aux0_carry__1_i_1_n_0,aux0_carry__1_i_2_n_0,aux0_carry__1_i_3_n_0}),
        .O({NLW_aux0_carry__1_O_UNCONNECTED[3],aux0_carry__1_n_5,aux0_carry__1_n_6,aux0_carry__1_n_7}),
        .S({1'b1,aux0_carry__1_i_4_n_0,aux0_carry__1_i_5_n_0,aux0_carry__1_i_6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__1_i_1
       (.I0(aux0_carry__1_i_7_n_3),
        .O(aux0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__1_i_2
       (.I0(\aux_reg[7]_i_5_n_4 ),
        .O(aux0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__1_i_3
       (.I0(\aux_reg[7]_i_5_n_5 ),
        .O(aux0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__1_i_4
       (.I0(aux0_carry__1_i_7_n_3),
        .O(aux0_carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__1_i_5
       (.I0(\aux_reg[7]_i_5_n_4 ),
        .O(aux0_carry__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__1_i_6
       (.I0(\aux_reg[7]_i_5_n_5 ),
        .O(aux0_carry__1_i_6_n_0));
  CARRY4 aux0_carry__1_i_7
       (.CI(\aux_reg[7]_i_5_n_0 ),
        .CO({NLW_aux0_carry__1_i_7_CO_UNCONNECTED[3:1],aux0_carry__1_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_aux0_carry__1_i_7_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry_i_1
       (.I0(\aux_reg[5]_i_2_n_6 ),
        .O(aux0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry_i_2
       (.I0(\aux_reg[5]_i_2_n_7 ),
        .O(aux0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry_i_3
       (.I0(\div_reg_n_0_[0] ),
        .O(aux0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry_i_4
       (.I0(\aux_reg[5]_i_2_n_6 ),
        .O(aux0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry_i_5
       (.I0(\aux_reg[5]_i_2_n_7 ),
        .O(aux0_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry_i_6
       (.I0(\div_reg_n_0_[0] ),
        .O(aux0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry_i_7
       (.I0(\aux_reg_n_0_[7] ),
        .O(aux0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'hEEEAEAEA)) 
    \aux[0]_i_1__0 
       (.I0(\op_reg[4]_4 ),
        .I1(\aux_reg_n_0_[0] ),
        .I2(\aux[7]_i_6_n_0 ),
        .I3(\div_reg[6]_0 ),
        .I4(\state_reg_reg_n_0_[2] ),
        .O(\aux[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFEEEEEEEEEEE)) 
    \aux[1]_i_1 
       (.I0(\op_reg[4]_0 ),
        .I1(\aux[1]_i_3_n_0 ),
        .I2(\div_reg[6]_0 ),
        .I3(\aux_reg_n_0_[1] ),
        .I4(\aux_reg_n_0_[0] ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(\aux[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A20)) 
    \aux[1]_i_3 
       (.I0(\aux[7]_i_6_n_0 ),
        .I1(aux0__290_carry__1_n_1),
        .I2(\div_reg_n_0_[0] ),
        .I3(aux0__290_carry_n_7),
        .O(\aux[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEAAAAA)) 
    \aux[2]_i_1 
       (.I0(\op_reg[4]_1 ),
        .I1(\div_reg[6]_0 ),
        .I2(\aux_reg_n_0_[2] ),
        .I3(\aux[2]_i_3_n_0 ),
        .I4(\state_reg_reg_n_0_[2] ),
        .I5(\aux[2]_i_4_n_0 ),
        .O(\aux[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \aux[2]_i_3 
       (.I0(\aux_reg_n_0_[1] ),
        .I1(\aux_reg_n_0_[0] ),
        .O(\aux[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8888AAA02222000)) 
    \aux[2]_i_4 
       (.I0(\aux[7]_i_6_n_0 ),
        .I1(aux0__290_carry__1_n_1),
        .I2(\div_reg_n_0_[0] ),
        .I3(aux0__290_carry_n_7),
        .I4(\aux_reg[5]_i_2_n_7 ),
        .I5(aux0__290_carry_n_6),
        .O(\aux[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAEEAAAA)) 
    \aux[3]_i_1 
       (.I0(\op_reg[4]_2 ),
        .I1(\aux[3]_i_3_n_0 ),
        .I2(aux0__290_carry_n_5),
        .I3(aux0__290_carry__1_n_1),
        .I4(\aux[7]_i_6_n_0 ),
        .I5(\aux[3]_i_4_n_0 ),
        .O(\aux[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \aux[3]_i_3 
       (.I0(\aux_reg[5]_i_2_n_7 ),
        .I1(aux0__290_carry_n_6),
        .I2(aux0__290_carry_n_7),
        .I3(\div_reg_n_0_[0] ),
        .I4(aux0__290_carry_n_5),
        .I5(\aux_reg[5]_i_2_n_6 ),
        .O(\aux[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2222222800000000)) 
    \aux[3]_i_4 
       (.I0(\div_reg[6]_0 ),
        .I1(\aux_reg_n_0_[3] ),
        .I2(\aux_reg_n_0_[1] ),
        .I3(\aux_reg_n_0_[0] ),
        .I4(\aux_reg_n_0_[2] ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(\aux[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEBFAEBFAEBFAEAE)) 
    \aux[4]_i_1 
       (.I0(\aux[4]_i_2__0_n_0 ),
        .I1(\div_reg[6]_0 ),
        .I2(\aux[4]_i_3__0_n_0 ),
        .I3(\div_reg[6]_1 ),
        .I4(\op_reg[5] ),
        .I5(\op_reg[4] ),
        .O(\aux[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA88A0220)) 
    \aux[4]_i_2__0 
       (.I0(\aux[7]_i_6_n_0 ),
        .I1(aux0__290_carry__1_n_1),
        .I2(\aux[7]_i_10_n_0 ),
        .I3(\aux_reg[5]_i_2_n_5 ),
        .I4(aux0__290_carry_n_4),
        .O(\aux[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD55555557)) 
    \aux[4]_i_3__0 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\aux_reg_n_0_[3] ),
        .I2(\aux_reg_n_0_[1] ),
        .I3(\aux_reg_n_0_[0] ),
        .I4(\aux_reg_n_0_[2] ),
        .I5(\aux_reg_n_0_[4] ),
        .O(\aux[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF82A0A082)) 
    \aux[5]_i_1 
       (.I0(\aux[7]_i_6_n_0 ),
        .I1(aux0__290_carry__1_n_1),
        .I2(aux0__290_carry__0_n_7),
        .I3(\aux_reg[5]_i_2_n_4 ),
        .I4(\aux[5]_i_3_n_0 ),
        .I5(\op_reg[4]_3 ),
        .O(\aux[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \aux[5]_i_3 
       (.I0(\aux[7]_i_10_n_0 ),
        .I1(aux0__290_carry_n_4),
        .I2(\aux_reg[5]_i_2_n_5 ),
        .O(\aux[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \aux[5]_i_5 
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div_reg_n_0_[0] ),
        .O(\aux[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \aux[5]_i_6 
       (.I0(\div_reg[6]_0 ),
        .I1(\aux_reg_n_0_[5] ),
        .I2(\aux[5]_i_9_n_0 ),
        .I3(\state_reg_reg_n_0_[2] ),
        .O(\aux_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \aux[5]_i_9 
       (.I0(\aux_reg_n_0_[4] ),
        .I1(\aux_reg_n_0_[2] ),
        .I2(\aux_reg_n_0_[0] ),
        .I3(\aux_reg_n_0_[1] ),
        .I4(\aux_reg_n_0_[3] ),
        .O(\aux[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA08282A0)) 
    \aux[6]_i_1 
       (.I0(\aux[7]_i_6_n_0 ),
        .I1(aux0__290_carry__1_n_1),
        .I2(aux0__290_carry__0_n_6),
        .I3(\aux[6]_i_2__0_n_0 ),
        .I4(\aux_reg[7]_i_5_n_7 ),
        .I5(\op_reg[5]_0 ),
        .O(\aux[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \aux[6]_i_2__0 
       (.I0(\aux_reg[5]_i_2_n_4 ),
        .I1(aux0__290_carry__0_n_7),
        .I2(\aux[7]_i_10_n_0 ),
        .I3(aux0__290_carry_n_4),
        .I4(\aux_reg[5]_i_2_n_5 ),
        .O(\aux[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \aux[6]_i_4 
       (.I0(\div_reg[6]_0 ),
        .I1(\aux_reg_n_0_[6] ),
        .I2(\aux[7]_i_13_n_0 ),
        .I3(\state_reg_reg_n_0_[2] ),
        .O(\aux_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hEEE8E888E888E888)) 
    \aux[7]_i_10 
       (.I0(aux0__290_carry_n_5),
        .I1(\aux_reg[5]_i_2_n_6 ),
        .I2(aux0__290_carry_n_6),
        .I3(\aux_reg[5]_i_2_n_7 ),
        .I4(aux0__290_carry_n_7),
        .I5(\div_reg_n_0_[0] ),
        .O(\aux[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \aux[7]_i_11 
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div_reg_n_0_[1] ),
        .O(\aux[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h08080880)) 
    \aux[7]_i_12 
       (.I0(\div_reg[6]_0 ),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(\aux[7]_i_13_n_0 ),
        .I4(\aux_reg_n_0_[6] ),
        .O(\aux_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \aux[7]_i_13 
       (.I0(\aux_reg_n_0_[5] ),
        .I1(\aux_reg_n_0_[3] ),
        .I2(\aux_reg_n_0_[1] ),
        .I3(\aux_reg_n_0_[0] ),
        .I4(\aux_reg_n_0_[2] ),
        .I5(\aux_reg_n_0_[4] ),
        .O(\aux[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \aux[7]_i_1__0 
       (.I0(reset_IBUF),
        .I1(\aux[7]_i_3_n_0 ),
        .O(\aux[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEB140000)) 
    \aux[7]_i_2 
       (.I0(aux0__290_carry__1_n_1),
        .I1(\aux[7]_i_4_n_0 ),
        .I2(\aux_reg[7]_i_5_n_6 ),
        .I3(aux0__290_carry__0_n_5),
        .I4(\aux[7]_i_6_n_0 ),
        .I5(\state_reg_reg[1]_0 ),
        .O(\aux[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDF3CDFFFDC3CD)) 
    \aux[7]_i_3 
       (.I0(rx_empty),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(\div_reg[6]_1 ),
        .I3(\div_reg[6]_0 ),
        .I4(\FSM_sequential_state_reg_reg[1] ),
        .I5(rd_aux_reg_0),
        .O(\aux[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBBABAAA)) 
    \aux[7]_i_4 
       (.I0(\aux[7]_i_8_n_0 ),
        .I1(\aux[7]_i_9_n_0 ),
        .I2(\aux[7]_i_10_n_0 ),
        .I3(aux0__290_carry_n_4),
        .I4(\aux_reg[5]_i_2_n_5 ),
        .O(\aux[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h0000AAA8)) 
    \aux[7]_i_6 
       (.I0(\div_reg[6]_1 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\div_reg_n_0_[1] ),
        .I3(\div_reg_n_0_[0] ),
        .I4(\div_reg[6]_0 ),
        .O(\aux[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \aux[7]_i_8 
       (.I0(\aux_reg[5]_i_2_n_4 ),
        .I1(aux0__290_carry__0_n_7),
        .I2(\aux_reg[7]_i_5_n_7 ),
        .I3(aux0__290_carry__0_n_6),
        .O(\aux[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \aux[7]_i_9 
       (.I0(aux0__290_carry__0_n_7),
        .I1(\aux_reg[5]_i_2_n_4 ),
        .I2(aux0__290_carry__0_n_6),
        .I3(\aux_reg[7]_i_5_n_7 ),
        .O(\aux[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[0] 
       (.C(CLK),
        .CE(\aux[7]_i_1__0_n_0 ),
        .D(\aux[0]_i_1__0_n_0 ),
        .Q(\aux_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[1] 
       (.C(CLK),
        .CE(\aux[7]_i_1__0_n_0 ),
        .D(\aux[1]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[2] 
       (.C(CLK),
        .CE(\aux[7]_i_1__0_n_0 ),
        .D(\aux[2]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[3] 
       (.C(CLK),
        .CE(\aux[7]_i_1__0_n_0 ),
        .D(\aux[3]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[4] 
       (.C(CLK),
        .CE(\aux[7]_i_1__0_n_0 ),
        .D(\aux[4]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[5] 
       (.C(CLK),
        .CE(\aux[7]_i_1__0_n_0 ),
        .D(\aux[5]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[5] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \aux_reg[5]_i_2 
       (.CI(1'b0),
        .CO({\aux_reg[5]_i_2_n_0 ,\aux_reg[5]_i_2_n_1 ,\aux_reg[5]_i_2_n_2 ,\aux_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\div_reg_n_0_[1] ,\div_reg_n_0_[6] ,1'b0}),
        .O({\aux_reg[5]_i_2_n_4 ,\aux_reg[5]_i_2_n_5 ,\aux_reg[5]_i_2_n_6 ,\aux_reg[5]_i_2_n_7 }),
        .S({\div_reg_n_0_[6] ,1'b0,\aux[5]_i_5_n_0 ,\div_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[6] 
       (.C(CLK),
        .CE(\aux[7]_i_1__0_n_0 ),
        .D(\aux[6]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[7] 
       (.C(CLK),
        .CE(\aux[7]_i_1__0_n_0 ),
        .D(\aux[7]_i_2_n_0 ),
        .Q(\aux_reg_n_0_[7] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \aux_reg[7]_i_5 
       (.CI(\aux_reg[5]_i_2_n_0 ),
        .CO({\aux_reg[7]_i_5_n_0 ,\aux_reg[7]_i_5_n_1 ,\aux_reg[7]_i_5_n_2 ,\aux_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\div_reg_n_0_[6] ,\div_reg_n_0_[6] }),
        .O({\aux_reg[7]_i_5_n_4 ,\aux_reg[7]_i_5_n_5 ,\aux_reg[7]_i_5_n_6 ,\aux_reg[7]_i_5_n_7 }),
        .S({\div_reg_n_0_[6] ,\div_reg_n_0_[6] ,\div_reg_n_0_[6] ,\aux[7]_i_11_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[7]_i_2__0 
       (.I0(salida),
        .I1(out),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFF8BFF00008800)) 
    \div[0]_i_1 
       (.I0(\div_reg_n_0_[1] ),
        .I1(\div_reg[6]_0 ),
        .I2(rx_empty),
        .I3(\div[1]_i_2_n_0 ),
        .I4(reset_IBUF),
        .I5(\div_reg_n_0_[0] ),
        .O(\div[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8BFF00008800)) 
    \div[1]_i_1 
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div_reg[6]_0 ),
        .I2(rx_empty),
        .I3(\div[1]_i_2_n_0 ),
        .I4(reset_IBUF),
        .I5(\div_reg_n_0_[1] ),
        .O(\div[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \div[1]_i_2 
       (.I0(\div_reg[6]_1 ),
        .I1(\state_reg_reg_n_0_[2] ),
        .O(\div[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF500000004)) 
    \div[6]_i_1 
       (.I0(\div_reg[6]_0 ),
        .I1(rx_empty),
        .I2(\div_reg[6]_1 ),
        .I3(\state_reg_reg_n_0_[2] ),
        .I4(reset_IBUF),
        .I5(\div_reg_n_0_[6] ),
        .O(\div[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div[0]_i_1_n_0 ),
        .Q(\div_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div[1]_i_1_n_0 ),
        .Q(\div_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div[6]_i_1_n_0 ),
        .Q(\div_reg_n_0_[6] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_1 
       (.I0(i_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i[1]_i_1 
       (.I0(i_reg__0[1]),
        .I1(i_reg__0[0]),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i[2]_i_1 
       (.I0(i_reg__0[2]),
        .I1(i_reg__0[0]),
        .I2(i_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i[3]_i_1 
       (.I0(i_reg__1[3]),
        .I1(i_reg__0[2]),
        .I2(i_reg__0[1]),
        .I3(i_reg__0[0]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i[4]_i_1 
       (.I0(i_reg__1[4]),
        .I1(i_reg__0[0]),
        .I2(i_reg__0[1]),
        .I3(i_reg__0[2]),
        .I4(i_reg__1[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i[5]_i_1 
       (.I0(i_reg__1[5]),
        .I1(i_reg__1[3]),
        .I2(i_reg__0[2]),
        .I3(i_reg__0[1]),
        .I4(i_reg__0[0]),
        .I5(i_reg__1[4]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'h0004)) 
    \i[6]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1] ),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(\div_reg[6]_0 ),
        .I3(\div_reg[6]_1 ),
        .O(\i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i[6]_i_2 
       (.I0(i_reg__1[6]),
        .I1(i_reg__1[4]),
        .I2(\salida[4]_i_2_n_0 ),
        .I3(i_reg__0[2]),
        .I4(i_reg__1[3]),
        .I5(i_reg__1[5]),
        .O(p_0_in[6]));
  FDPE #(
    .INIT(1'b1)) 
    \i_reg[0] 
       (.C(CLK),
        .CE(\i[6]_i_1_n_0 ),
        .D(p_0_in[0]),
        .PRE(reset_IBUF),
        .Q(i_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(CLK),
        .CE(\i[6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\i[1]_i_1_n_0 ),
        .Q(i_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(CLK),
        .CE(\i[6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[2]),
        .Q(i_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(CLK),
        .CE(\i[6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[3]),
        .Q(i_reg__1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(CLK),
        .CE(\i[6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[4]),
        .Q(i_reg__1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(CLK),
        .CE(\i[6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[5]),
        .Q(i_reg__1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(CLK),
        .CE(\i[6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[6]),
        .Q(i_reg__1[6]));
  LUT6 #(
    .INIT(64'hFFF755DD00000088)) 
    rd_aux_i_1
       (.I0(rd_aux_i_2_n_0),
        .I1(\div_reg[6]_1 ),
        .I2(rd_aux_reg_0),
        .I3(\FSM_sequential_state_reg_reg[1] ),
        .I4(\div_reg[6]_0 ),
        .I5(rd),
        .O(rd_aux_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000EFEE)) 
    rd_aux_i_2
       (.I0(\salida[7]_i_3_n_0 ),
        .I1(\div_reg[6]_0 ),
        .I2(\div_reg[6]_1 ),
        .I3(rx_empty),
        .I4(\state_reg_reg_n_0_[2] ),
        .I5(reset_IBUF),
        .O(rd_aux_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_aux_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rd_aux_i_1_n_0),
        .Q(rd),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hC8CCC8C0)) 
    \salida[0]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(\div_reg[6]_0 ),
        .I2(\state_reg_reg_n_0_[2] ),
        .I3(\div_reg[6]_1 ),
        .I4(state_reg2__165_carry__0_n_0),
        .O(\salida[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6000)) 
    \salida[1]_i_1 
       (.I0(rd_aux_reg_0),
        .I1(\FSM_sequential_state_reg_reg[1] ),
        .I2(\div_reg[6]_0 ),
        .I3(\div_reg[6]_1 ),
        .I4(\salida[1]_i_3_n_0 ),
        .O(\salida[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \salida[1]_i_2 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(\salida[1]_i_4_n_0 ),
        .O(rd_aux_reg_0));
  LUT6 #(
    .INIT(64'hFFFF888F88888888)) 
    \salida[1]_i_3 
       (.I0(\div[1]_i_2_n_0 ),
        .I1(state_reg2__165_carry_i_1_n_3),
        .I2(i_reg__0[0]),
        .I3(i_reg__0[1]),
        .I4(\salida[6]_i_4_n_0 ),
        .I5(\salida_reg[4]_0 ),
        .O(\salida[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \salida[1]_i_4 
       (.I0(Q[6]),
        .I1(salida),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\salida[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0F0E0C0)) 
    \salida[2]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(\div_reg[6]_0 ),
        .I3(\div_reg[6]_1 ),
        .I4(\salida_reg[2]_i_3_n_3 ),
        .I5(\salida[2]_i_4_n_0 ),
        .O(\salida[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \salida[2]_i_4 
       (.I0(\salida[6]_i_4_n_0 ),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(i_reg__0[1]),
        .I3(i_reg__0[0]),
        .O(\salida[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD5D5DDDDD5D5DD00)) 
    \salida[3]_i_1 
       (.I0(\state_reg[2]_i_2_n_0 ),
        .I1(\div_reg[6]_0 ),
        .I2(\FSM_sequential_state_reg_reg[1]_1 ),
        .I3(\salida_reg[3]_0 ),
        .I4(\div_reg[6]_1 ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(\salida[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[3]_i_6 
       (.I0(CO),
        .I1(\div_reg_n_0_[6] ),
        .I2(\salida_reg[7]_i_7_n_5 ),
        .O(\salida[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[3]_i_7 
       (.I0(CO),
        .I1(\div_reg_n_0_[6] ),
        .I2(\salida_reg[7]_i_7_n_6 ),
        .O(\salida[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[3]_i_9 
       (.I0(CO),
        .I1(\div_reg_n_0_[1] ),
        .I2(\salida_reg[7]_i_11_n_4 ),
        .O(\salida[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4FF44444444)) 
    \salida[4]_i_1 
       (.I0(CO),
        .I1(\div[1]_i_2_n_0 ),
        .I2(i_reg__0[2]),
        .I3(\salida[4]_i_2_n_0 ),
        .I4(\salida[4]_i_3_n_0 ),
        .I5(\salida_reg[4]_0 ),
        .O(\salida[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \salida[4]_i_2 
       (.I0(i_reg__0[1]),
        .I1(i_reg__0[0]),
        .O(\salida[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \salida[4]_i_3 
       (.I0(i_reg__1[4]),
        .I1(i_reg__1[3]),
        .I2(i_reg__1[6]),
        .I3(i_reg__1[5]),
        .O(\salida[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F5F530000030)) 
    \salida[5]_i_1 
       (.I0(\salida[6]_i_2_n_0 ),
        .I1(\div_reg[6]_1 ),
        .I2(\div_reg[6]_0 ),
        .I3(CO),
        .I4(\salida_reg[7]_i_6_n_3 ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(\salida[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8FF888888888)) 
    \salida[6]_i_1 
       (.I0(\salida[6]_i_2_n_0 ),
        .I1(\salida_reg[4]_0 ),
        .I2(state_reg2__3_carry__0_n_0),
        .I3(CO),
        .I4(\salida_reg[7]_i_6_n_3 ),
        .I5(\div[1]_i_2_n_0 ),
        .O(\salida[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \salida[6]_i_2 
       (.I0(i_reg__0[0]),
        .I1(i_reg__0[1]),
        .I2(\salida[6]_i_4_n_0 ),
        .O(\salida[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \salida[6]_i_3 
       (.I0(\div_reg[6]_1 ),
        .I1(\div_reg[6]_0 ),
        .O(\salida_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \salida[6]_i_4 
       (.I0(i_reg__0[2]),
        .I1(i_reg__1[5]),
        .I2(i_reg__1[6]),
        .I3(i_reg__1[3]),
        .I4(i_reg__1[4]),
        .O(\salida[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h11331130)) 
    \salida[7]_i_1 
       (.I0(\div_reg[6]_1 ),
        .I1(reset_IBUF),
        .I2(\salida[7]_i_3_n_0 ),
        .I3(\state_reg_reg_n_0_[2] ),
        .I4(\div_reg[6]_0 ),
        .O(\salida[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \salida[7]_i_10 
       (.I0(state_reg2__3_carry__0_n_0),
        .I1(state_reg2__3_carry__0_n_5),
        .O(\salida[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[7]_i_13 
       (.I0(\salida_reg[7]_i_6_n_3 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\salida_reg[7]_i_9_n_5 ),
        .O(\salida[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[7]_i_14 
       (.I0(\salida_reg[7]_i_6_n_3 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\salida_reg[7]_i_9_n_6 ),
        .O(\salida[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \salida[7]_i_15 
       (.I0(\salida_reg[7]_i_6_n_3 ),
        .I1(\salida_reg[7]_i_9_n_7 ),
        .O(\salida[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[7]_i_16 
       (.I0(\salida_reg[7]_i_6_n_3 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\salida_reg[7]_i_12_n_4 ),
        .O(\salida[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[7]_i_17 
       (.I0(\div_reg_n_0_[6] ),
        .I1(state_reg2__3_carry__0_n_0),
        .I2(state_reg2__3_carry__0_n_6),
        .O(\salida[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[7]_i_18 
       (.I0(\div_reg_n_0_[6] ),
        .I1(state_reg2__3_carry__0_n_0),
        .I2(state_reg2__3_carry__0_n_7),
        .O(\salida[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \salida[7]_i_19 
       (.I0(state_reg2__3_carry__0_n_0),
        .I1(state_reg2__3_carry_n_4),
        .O(\salida[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0004444444400000)) 
    \salida[7]_i_2 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\salida[7]_i_4_n_0 ),
        .I2(CO),
        .I3(\salida_reg[7]_i_6_n_3 ),
        .I4(state_reg2__3_carry__0_n_0),
        .I5(state_reg2__3_carry_i_1_n_0),
        .O(\salida[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[7]_i_20 
       (.I0(\div_reg_n_0_[1] ),
        .I1(state_reg2__3_carry__0_n_0),
        .I2(state_reg2__3_carry_n_5),
        .O(\salida[7]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[7]_i_21 
       (.I0(\salida_reg[7]_i_6_n_3 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\salida_reg[7]_i_12_n_5 ),
        .O(\salida[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[7]_i_22 
       (.I0(\salida_reg[7]_i_6_n_3 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\salida_reg[7]_i_12_n_6 ),
        .O(\salida[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[7]_i_23 
       (.I0(\salida_reg[7]_i_6_n_3 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[4] ),
        .O(\salida[7]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[7]_i_24 
       (.I0(\div_reg_n_0_[6] ),
        .I1(state_reg2__3_carry__0_n_0),
        .I2(state_reg2__3_carry_n_6),
        .O(\salida[7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[7]_i_25 
       (.I0(\div_reg_n_0_[1] ),
        .I1(state_reg2__3_carry__0_n_0),
        .I2(state_reg2__3_carry_n_7),
        .O(\salida[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \salida[7]_i_26 
       (.I0(state_reg2__3_carry__0_n_0),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[5] ),
        .O(\salida[7]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \salida[7]_i_3 
       (.I0(\div_reg_n_0_[0] ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\div_reg_n_0_[6] ),
        .I3(\FSM_sequential_state_reg_reg[1] ),
        .I4(\div_reg[6]_1 ),
        .O(\salida[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \salida[7]_i_4 
       (.I0(\div_reg[6]_0 ),
        .I1(\div_reg[6]_1 ),
        .O(\salida[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \salida[7]_i_8 
       (.I0(\salida_reg[7]_i_6_n_3 ),
        .I1(\salida_reg[7]_i_9_n_4 ),
        .O(\salida[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[0] 
       (.C(CLK),
        .CE(\salida[7]_i_1_n_0 ),
        .D(\salida[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[1] 
       (.C(CLK),
        .CE(\salida[7]_i_1_n_0 ),
        .D(\salida[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[2] 
       (.C(CLK),
        .CE(\salida[7]_i_1_n_0 ),
        .D(\salida[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \salida_reg[2]_i_3 
       (.CI(state_reg2__165_carry__0_i_6_n_0),
        .CO({\NLW_salida_reg[2]_i_3_CO_UNCONNECTED [3:1],\salida_reg[2]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\salida_reg[3]_0 }),
        .O(\NLW_salida_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\aux_reg[3]_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[3] 
       (.C(CLK),
        .CE(\salida[7]_i_1_n_0 ),
        .D(\salida[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \salida_reg[3]_i_3 
       (.CI(\salida_reg[3]_i_4_n_0 ),
        .CO({\NLW_salida_reg[3]_i_3_CO_UNCONNECTED [3:1],\salida_reg[3]_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,CO}),
        .O(\NLW_salida_reg[3]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\aux_reg[4]_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \salida_reg[3]_i_4 
       (.CI(state_reg2__165_carry_i_12_n_0),
        .CO({\salida_reg[3]_i_4_n_0 ,\salida_reg[3]_i_4_n_1 ,\salida_reg[3]_i_4_n_2 ,\salida_reg[3]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\salida_reg[7]_i_7_n_5 ,\salida_reg[7]_i_7_n_6 ,CO,\salida_reg[7]_i_11_n_4 }),
        .O({\salida_reg[2]_0 [1],\salida_reg[3]_i_4_n_5 ,\salida_reg[3]_i_4_n_6 ,\salida_reg[2]_0 [0]}),
        .S({\salida[3]_i_6_n_0 ,\salida[3]_i_7_n_0 ,S,\salida[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[4] 
       (.C(CLK),
        .CE(\salida[7]_i_1_n_0 ),
        .D(\salida[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[5] 
       (.C(CLK),
        .CE(\salida[7]_i_1_n_0 ),
        .D(\salida[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[6] 
       (.C(CLK),
        .CE(\salida[7]_i_1_n_0 ),
        .D(\salida[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[7] 
       (.C(CLK),
        .CE(\salida[7]_i_1_n_0 ),
        .D(\salida[7]_i_2_n_0 ),
        .Q(salida),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \salida_reg[7]_i_11 
       (.CI(1'b0),
        .CO({\salida_reg[7]_i_11_n_0 ,\salida_reg[7]_i_11_n_1 ,\salida_reg[7]_i_11_n_2 ,\salida_reg[7]_i_11_n_3 }),
        .CYINIT(\salida_reg[7]_i_6_n_3 ),
        .DI({\salida_reg[7]_i_12_n_5 ,\salida_reg[7]_i_12_n_6 ,\aux_reg_n_0_[4] ,1'b0}),
        .O({\salida_reg[7]_i_11_n_4 ,\salida_reg[7]_i_11_n_5 ,\salida_reg[7]_i_11_n_6 ,\NLW_salida_reg[7]_i_11_O_UNCONNECTED [0]}),
        .S({\salida[7]_i_21_n_0 ,\salida[7]_i_22_n_0 ,\salida[7]_i_23_n_0 ,1'b1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \salida_reg[7]_i_12 
       (.CI(1'b0),
        .CO({\salida_reg[7]_i_12_n_0 ,\salida_reg[7]_i_12_n_1 ,\salida_reg[7]_i_12_n_2 ,\salida_reg[7]_i_12_n_3 }),
        .CYINIT(state_reg2__3_carry__0_n_0),
        .DI({state_reg2__3_carry_n_6,state_reg2__3_carry_n_7,\aux_reg_n_0_[5] ,1'b0}),
        .O({\salida_reg[7]_i_12_n_4 ,\salida_reg[7]_i_12_n_5 ,\salida_reg[7]_i_12_n_6 ,\NLW_salida_reg[7]_i_12_O_UNCONNECTED [0]}),
        .S({\salida[7]_i_24_n_0 ,\salida[7]_i_25_n_0 ,\salida[7]_i_26_n_0 ,1'b1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \salida_reg[7]_i_5 
       (.CI(\salida_reg[7]_i_7_n_0 ),
        .CO({\NLW_salida_reg[7]_i_5_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\salida_reg[7]_i_6_n_3 }),
        .O(\NLW_salida_reg[7]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\salida[7]_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \salida_reg[7]_i_6 
       (.CI(\salida_reg[7]_i_9_n_0 ),
        .CO({\NLW_salida_reg[7]_i_6_CO_UNCONNECTED [3:1],\salida_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,state_reg2__3_carry__0_n_0}),
        .O(\NLW_salida_reg[7]_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\salida[7]_i_10_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \salida_reg[7]_i_7 
       (.CI(\salida_reg[7]_i_11_n_0 ),
        .CO({\salida_reg[7]_i_7_n_0 ,\salida_reg[7]_i_7_n_1 ,\salida_reg[7]_i_7_n_2 ,\salida_reg[7]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\salida_reg[7]_i_9_n_5 ,\salida_reg[7]_i_9_n_6 ,\salida_reg[7]_i_6_n_3 ,\salida_reg[7]_i_12_n_4 }),
        .O({O[1],\salida_reg[7]_i_7_n_5 ,\salida_reg[7]_i_7_n_6 ,O[0]}),
        .S({\salida[7]_i_13_n_0 ,\salida[7]_i_14_n_0 ,\salida[7]_i_15_n_0 ,\salida[7]_i_16_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \salida_reg[7]_i_9 
       (.CI(\salida_reg[7]_i_12_n_0 ),
        .CO({\salida_reg[7]_i_9_n_0 ,\salida_reg[7]_i_9_n_1 ,\salida_reg[7]_i_9_n_2 ,\salida_reg[7]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({state_reg2__3_carry__0_n_6,state_reg2__3_carry__0_n_7,state_reg2__3_carry__0_n_0,state_reg2__3_carry_n_5}),
        .O({\salida_reg[7]_i_9_n_4 ,\salida_reg[7]_i_9_n_5 ,\salida_reg[7]_i_9_n_6 ,\salida_reg[7]_i_9_n_7 }),
        .S({\salida[7]_i_17_n_0 ,\salida[7]_i_18_n_0 ,\salida[7]_i_19_n_0 ,\salida[7]_i_20_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__165_carry
       (.CI(1'b0),
        .CO({state_reg2__165_carry_n_0,state_reg2__165_carry_n_1,state_reg2__165_carry_n_2,state_reg2__165_carry_n_3}),
        .CYINIT(state_reg2__165_carry_i_1_n_3),
        .DI({state_reg2__165_carry_i_2_n_4,state_reg2__165_carry_i_2_n_5,state_reg2__165_carry_i_2_n_6,\aux_reg_n_0_[0] }),
        .O(NLW_state_reg2__165_carry_O_UNCONNECTED[3:0]),
        .S({state_reg2__165_carry_i_3_n_0,state_reg2__165_carry_i_4_n_0,state_reg2__165_carry_i_5_n_0,state_reg2__165_carry_i_6_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__165_carry__0
       (.CI(state_reg2__165_carry_n_0),
        .CO({state_reg2__165_carry__0_n_0,state_reg2__165_carry__0_n_1,state_reg2__165_carry__0_n_2,state_reg2__165_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2__165_carry_i_1_n_3,state_reg2__165_carry__0_i_1_n_5,state_reg2__165_carry__0_i_1_n_6,state_reg2__165_carry_i_1_n_3}),
        .O(NLW_state_reg2__165_carry__0_O_UNCONNECTED[3:0]),
        .S({state_reg2__165_carry__0_i_2_n_0,state_reg2__165_carry__0_i_3_n_0,state_reg2__165_carry__0_i_4_n_0,state_reg2__165_carry__0_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__165_carry__0_i_1
       (.CI(state_reg2__165_carry_i_2_n_0),
        .CO({state_reg2__165_carry__0_i_1_n_0,state_reg2__165_carry__0_i_1_n_1,state_reg2__165_carry__0_i_1_n_2,state_reg2__165_carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2__165_carry__0_i_6_n_5,state_reg2__165_carry__0_i_6_n_6,\salida_reg[2]_i_3_n_3 ,state_reg2__165_carry_i_8_n_4}),
        .O({state_reg2__165_carry__0_i_1_n_4,state_reg2__165_carry__0_i_1_n_5,state_reg2__165_carry__0_i_1_n_6,state_reg2__165_carry__0_i_1_n_7}),
        .S({state_reg2__165_carry__0_i_7_n_0,state_reg2__165_carry__0_i_8_n_0,state_reg2__165_carry__0_i_9_n_0,state_reg2__165_carry__0_i_10_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry__0_i_10
       (.I0(\salida_reg[2]_i_3_n_3 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__165_carry_i_8_n_4),
        .O(state_reg2__165_carry__0_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry__0_i_11
       (.I0(\salida_reg[3]_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\salida_reg[3]_i_4_n_5 ),
        .O(state_reg2__165_carry__0_i_11_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry__0_i_12
       (.I0(\salida_reg[3]_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\salida_reg[3]_i_4_n_6 ),
        .O(state_reg2__165_carry__0_i_12_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry__0_i_14
       (.I0(\salida_reg[3]_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__165_carry_i_12_n_4),
        .O(state_reg2__165_carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__165_carry__0_i_2
       (.I0(state_reg2__165_carry_i_1_n_3),
        .I1(state_reg2__165_carry__0_i_1_n_4),
        .O(state_reg2__165_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry__0_i_3
       (.I0(state_reg2__165_carry_i_1_n_3),
        .I1(\div_reg_n_0_[6] ),
        .I2(state_reg2__165_carry__0_i_1_n_5),
        .O(state_reg2__165_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry__0_i_4
       (.I0(state_reg2__165_carry_i_1_n_3),
        .I1(\div_reg_n_0_[6] ),
        .I2(state_reg2__165_carry__0_i_1_n_6),
        .O(state_reg2__165_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__165_carry__0_i_5
       (.I0(state_reg2__165_carry_i_1_n_3),
        .I1(state_reg2__165_carry__0_i_1_n_7),
        .O(state_reg2__165_carry__0_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__165_carry__0_i_6
       (.CI(state_reg2__165_carry_i_8_n_0),
        .CO({state_reg2__165_carry__0_i_6_n_0,state_reg2__165_carry__0_i_6_n_1,state_reg2__165_carry__0_i_6_n_2,state_reg2__165_carry__0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({\salida_reg[3]_i_4_n_5 ,\salida_reg[3]_i_4_n_6 ,\salida_reg[3]_0 ,state_reg2__165_carry_i_12_n_4}),
        .O({state_reg2__165_carry__0_i_6_n_4,state_reg2__165_carry__0_i_6_n_5,state_reg2__165_carry__0_i_6_n_6,state_reg2__165_carry__0_i_6_n_7}),
        .S({state_reg2__165_carry__0_i_11_n_0,state_reg2__165_carry__0_i_12_n_0,\aux_reg[3]_0 ,state_reg2__165_carry__0_i_14_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry__0_i_7
       (.I0(\salida_reg[2]_i_3_n_3 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(state_reg2__165_carry__0_i_6_n_5),
        .O(state_reg2__165_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry__0_i_8
       (.I0(\salida_reg[2]_i_3_n_3 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(state_reg2__165_carry__0_i_6_n_6),
        .O(state_reg2__165_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__165_carry__0_i_9
       (.I0(\salida_reg[2]_i_3_n_3 ),
        .I1(state_reg2__165_carry__0_i_6_n_7),
        .O(state_reg2__165_carry__0_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__165_carry_i_1
       (.CI(state_reg2__165_carry__0_i_1_n_0),
        .CO({NLW_state_reg2__165_carry_i_1_CO_UNCONNECTED[3:1],state_reg2__165_carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\salida_reg[2]_i_3_n_3 }),
        .O(NLW_state_reg2__165_carry_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,state_reg2__165_carry_i_7_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_10
       (.I0(\salida_reg[2]_i_3_n_3 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__165_carry_i_8_n_6),
        .O(state_reg2__165_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_11
       (.I0(\salida_reg[2]_i_3_n_3 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[1] ),
        .O(state_reg2__165_carry_i_11_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__165_carry_i_12
       (.CI(1'b0),
        .CO({state_reg2__165_carry_i_12_n_0,state_reg2__165_carry_i_12_n_1,state_reg2__165_carry_i_12_n_2,state_reg2__165_carry_i_12_n_3}),
        .CYINIT(CO),
        .DI({\salida_reg[7]_i_11_n_5 ,\salida_reg[7]_i_11_n_6 ,\aux_reg_n_0_[3] ,1'b0}),
        .O({state_reg2__165_carry_i_12_n_4,state_reg2__165_carry_i_12_n_5,state_reg2__165_carry_i_12_n_6,NLW_state_reg2__165_carry_i_12_O_UNCONNECTED[0]}),
        .S({state_reg2__165_carry_i_16_n_0,state_reg2__165_carry_i_17_n_0,state_reg2__165_carry_i_18_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_13
       (.I0(\salida_reg[3]_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(state_reg2__165_carry_i_12_n_5),
        .O(state_reg2__165_carry_i_13_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_14
       (.I0(\salida_reg[3]_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__165_carry_i_12_n_6),
        .O(state_reg2__165_carry_i_14_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_15
       (.I0(\salida_reg[3]_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[2] ),
        .O(state_reg2__165_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_16
       (.I0(CO),
        .I1(\div_reg_n_0_[6] ),
        .I2(\salida_reg[7]_i_11_n_5 ),
        .O(state_reg2__165_carry_i_16_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_17
       (.I0(CO),
        .I1(\div_reg_n_0_[1] ),
        .I2(\salida_reg[7]_i_11_n_6 ),
        .O(state_reg2__165_carry_i_17_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_18
       (.I0(CO),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[3] ),
        .O(state_reg2__165_carry_i_18_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__165_carry_i_2
       (.CI(1'b0),
        .CO({state_reg2__165_carry_i_2_n_0,state_reg2__165_carry_i_2_n_1,state_reg2__165_carry_i_2_n_2,state_reg2__165_carry_i_2_n_3}),
        .CYINIT(\salida_reg[2]_i_3_n_3 ),
        .DI({state_reg2__165_carry_i_8_n_5,state_reg2__165_carry_i_8_n_6,\aux_reg_n_0_[1] ,1'b0}),
        .O({state_reg2__165_carry_i_2_n_4,state_reg2__165_carry_i_2_n_5,state_reg2__165_carry_i_2_n_6,NLW_state_reg2__165_carry_i_2_O_UNCONNECTED[0]}),
        .S({state_reg2__165_carry_i_9_n_0,state_reg2__165_carry_i_10_n_0,state_reg2__165_carry_i_11_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_3
       (.I0(state_reg2__165_carry_i_1_n_3),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__165_carry_i_2_n_4),
        .O(state_reg2__165_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_4
       (.I0(state_reg2__165_carry_i_1_n_3),
        .I1(\div_reg_n_0_[6] ),
        .I2(state_reg2__165_carry_i_2_n_5),
        .O(state_reg2__165_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_5
       (.I0(state_reg2__165_carry_i_1_n_3),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__165_carry_i_2_n_6),
        .O(state_reg2__165_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_6
       (.I0(state_reg2__165_carry_i_1_n_3),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[0] ),
        .O(state_reg2__165_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__165_carry_i_7
       (.I0(\salida_reg[2]_i_3_n_3 ),
        .I1(state_reg2__165_carry__0_i_6_n_4),
        .O(state_reg2__165_carry_i_7_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__165_carry_i_8
       (.CI(1'b0),
        .CO({state_reg2__165_carry_i_8_n_0,state_reg2__165_carry_i_8_n_1,state_reg2__165_carry_i_8_n_2,state_reg2__165_carry_i_8_n_3}),
        .CYINIT(\salida_reg[3]_0 ),
        .DI({state_reg2__165_carry_i_12_n_5,state_reg2__165_carry_i_12_n_6,\aux_reg_n_0_[2] ,1'b0}),
        .O({state_reg2__165_carry_i_8_n_4,state_reg2__165_carry_i_8_n_5,state_reg2__165_carry_i_8_n_6,NLW_state_reg2__165_carry_i_8_O_UNCONNECTED[0]}),
        .S({state_reg2__165_carry_i_13_n_0,state_reg2__165_carry_i_14_n_0,state_reg2__165_carry_i_15_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__165_carry_i_9
       (.I0(\salida_reg[2]_i_3_n_3 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(state_reg2__165_carry_i_8_n_5),
        .O(state_reg2__165_carry_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__3_carry
       (.CI(1'b0),
        .CO({state_reg2__3_carry_n_0,state_reg2__3_carry_n_1,state_reg2__3_carry_n_2,state_reg2__3_carry_n_3}),
        .CYINIT(state_reg2__3_carry_i_1_n_0),
        .DI({state_reg2__3_carry_i_2_n_0,state_reg2__3_carry_i_3_n_0,state_reg2__3_carry_i_4_n_0,\aux_reg_n_0_[6] }),
        .O({state_reg2__3_carry_n_4,state_reg2__3_carry_n_5,state_reg2__3_carry_n_6,state_reg2__3_carry_n_7}),
        .S({state_reg2__3_carry_i_5_n_0,state_reg2__3_carry_i_6_n_0,state_reg2__3_carry_i_7_n_0,state_reg2__3_carry_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__3_carry__0
       (.CI(state_reg2__3_carry_n_0),
        .CO({state_reg2__3_carry__0_n_0,state_reg2__3_carry__0_n_1,state_reg2__3_carry__0_n_2,state_reg2__3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2__3_carry__0_i_1_n_0,state_reg2__3_carry__0_i_2_n_0,state_reg2__3_carry__0_i_3_n_0,state_reg2__3_carry__0_i_4_n_0}),
        .O({NLW_state_reg2__3_carry__0_O_UNCONNECTED[3],state_reg2__3_carry__0_n_5,state_reg2__3_carry__0_n_6,state_reg2__3_carry__0_n_7}),
        .S({state_reg2__3_carry__0_i_5_n_0,1'b1,state_reg2__3_carry__0_i_6_n_0,state_reg2__3_carry__0_i_7_n_0}));
  LUT4 #(
    .INIT(16'h000D)) 
    state_reg2__3_carry__0_i_1
       (.I0(\div_reg_n_0_[0] ),
        .I1(\aux_reg_n_0_[7] ),
        .I2(\div_reg_n_0_[1] ),
        .I3(\div_reg_n_0_[6] ),
        .O(state_reg2__3_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hBABB)) 
    state_reg2__3_carry__0_i_2
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(\div_reg_n_0_[0] ),
        .O(state_reg2__3_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hBABB)) 
    state_reg2__3_carry__0_i_3
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(\div_reg_n_0_[0] ),
        .O(state_reg2__3_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h000D)) 
    state_reg2__3_carry__0_i_4
       (.I0(\div_reg_n_0_[0] ),
        .I1(\aux_reg_n_0_[7] ),
        .I2(\div_reg_n_0_[1] ),
        .I3(\div_reg_n_0_[6] ),
        .O(state_reg2__3_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2__3_carry__0_i_5
       (.I0(\div_reg_n_0_[6] ),
        .O(state_reg2__3_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2__3_carry__0_i_6
       (.I0(\div_reg_n_0_[6] ),
        .O(state_reg2__3_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2__3_carry__0_i_7
       (.I0(\div_reg_n_0_[1] ),
        .O(state_reg2__3_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h000D)) 
    state_reg2__3_carry_i_1
       (.I0(\div_reg_n_0_[0] ),
        .I1(\aux_reg_n_0_[7] ),
        .I2(\div_reg_n_0_[1] ),
        .I3(\div_reg_n_0_[6] ),
        .O(state_reg2__3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hDCDD)) 
    state_reg2__3_carry_i_2
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(\div_reg_n_0_[0] ),
        .O(state_reg2__3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hBABB)) 
    state_reg2__3_carry_i_3
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(\div_reg_n_0_[0] ),
        .O(state_reg2__3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hDCDD)) 
    state_reg2__3_carry_i_4
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(\div_reg_n_0_[0] ),
        .O(state_reg2__3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hEF55)) 
    state_reg2__3_carry_i_5
       (.I0(\div_reg_n_0_[1] ),
        .I1(\aux_reg_n_0_[7] ),
        .I2(\div_reg_n_0_[0] ),
        .I3(\div_reg_n_0_[6] ),
        .O(state_reg2__3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h59F7)) 
    state_reg2__3_carry_i_6
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(\div_reg_n_0_[1] ),
        .O(state_reg2__3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hB54B)) 
    state_reg2__3_carry_i_7
       (.I0(\div_reg_n_0_[1] ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(\div_reg_n_0_[0] ),
        .O(state_reg2__3_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h5558AAA7)) 
    state_reg2__3_carry_i_8
       (.I0(\div_reg_n_0_[0] ),
        .I1(\aux_reg_n_0_[7] ),
        .I2(\div_reg_n_0_[1] ),
        .I3(\div_reg_n_0_[6] ),
        .I4(\aux_reg_n_0_[6] ),
        .O(state_reg2__3_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEFE0000)) 
    \state_reg[0]_i_1 
       (.I0(\state_reg[0]_i_2_n_0 ),
        .I1(\state_reg[0]_i_3_n_0 ),
        .I2(\state_reg[0]_i_4_n_0 ),
        .I3(\state_reg[1]_i_5_n_0 ),
        .I4(\state_reg[2]_i_5_n_0 ),
        .I5(\div_reg[6]_0 ),
        .O(\state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h44044004)) 
    \state_reg[0]_i_2 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\div_reg[6]_1 ),
        .I2(\FSM_sequential_state_reg_reg[1] ),
        .I3(\div_reg[6]_0 ),
        .I4(rd_aux_reg_0),
        .O(\state_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h888F)) 
    \state_reg[0]_i_3 
       (.I0(\div_reg[6]_0 ),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(\state_reg[0]_i_5_n_0 ),
        .I3(\FSM_sequential_state_reg_reg[1] ),
        .O(\state_reg[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \state_reg[0]_i_4 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\div_reg[6]_1 ),
        .I2(rx_empty),
        .I3(\div_reg[6]_0 ),
        .O(\state_reg[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h57575775)) 
    \state_reg[0]_i_5 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\salida[4]_i_3_n_0 ),
        .I2(i_reg__0[2]),
        .I3(i_reg__0[1]),
        .I4(i_reg__0[0]),
        .O(\state_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \state_reg[1]_i_1 
       (.I0(\state_reg[1]_i_2_n_0 ),
        .I1(\state_reg[1]_i_3_n_0 ),
        .I2(\state_reg[1]_i_4_n_0 ),
        .I3(\state_reg[1]_i_5_n_0 ),
        .I4(\state_reg[2]_i_5_n_0 ),
        .I5(\div_reg[6]_1 ),
        .O(\state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C040C000C040C04)) 
    \state_reg[1]_i_2 
       (.I0(\state_reg[1]_i_6_n_0 ),
        .I1(\div_reg[6]_1 ),
        .I2(\state_reg_reg_n_0_[2] ),
        .I3(\FSM_sequential_state_reg_reg[1] ),
        .I4(rd_aux_reg_0),
        .I5(\div_reg[6]_0 ),
        .O(\state_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state_reg[1]_i_3 
       (.I0(\state_reg[1]_i_7_n_0 ),
        .I1(\div_reg[6]_0 ),
        .O(\state_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \state_reg[1]_i_4 
       (.I0(\div_reg[6]_1 ),
        .I1(\div_reg[6]_0 ),
        .I2(\state_reg_reg_n_0_[2] ),
        .O(\state_reg[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \state_reg[1]_i_5 
       (.I0(state_reg2__3_carry_i_1_n_0),
        .I1(\state_reg[1]_i_8_n_0 ),
        .I2(state_reg2__3_carry__0_n_0),
        .I3(CO),
        .I4(\salida_reg[7]_i_6_n_3 ),
        .O(\state_reg[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \state_reg[1]_i_6 
       (.I0(\div_reg[6]_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\div_reg_n_0_[1] ),
        .I3(\div_reg_n_0_[6] ),
        .O(\state_reg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555540100000000)) 
    \state_reg[1]_i_7 
       (.I0(\FSM_sequential_state_reg_reg[1] ),
        .I1(i_reg__0[0]),
        .I2(i_reg__0[1]),
        .I3(i_reg__0[2]),
        .I4(\salida[4]_i_3_n_0 ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(\state_reg[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state_reg[1]_i_8 
       (.I0(zflag_reg_n_0),
        .I1(\salida_reg[2]_i_3_n_3 ),
        .I2(state_reg2__165_carry_i_1_n_3),
        .I3(state_reg2__165_carry__0_n_0),
        .I4(\salida_reg[3]_0 ),
        .O(\state_reg[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFFFFE0000000)) 
    \state_reg[2]_i_1 
       (.I0(\state_reg[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[1] ),
        .I2(rx_empty),
        .I3(\state_reg_reg[0]_0 ),
        .I4(\state_reg[2]_i_5_n_0 ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(\state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001EFFFFFFFF)) 
    \state_reg[2]_i_2 
       (.I0(i_reg__0[0]),
        .I1(i_reg__0[1]),
        .I2(i_reg__0[2]),
        .I3(\salida[4]_i_3_n_0 ),
        .I4(\div_reg[6]_0 ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(\state_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \state_reg[2]_i_5 
       (.I0(reset_IBUF),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(\div_reg[6]_1 ),
        .O(\state_reg[2]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state_reg[0]_i_1_n_0 ),
        .Q(\div_reg[6]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state_reg[1]_i_1_n_0 ),
        .Q(\div_reg[6]_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_reg[2]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\state_reg_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFFEAFF0000EA00)) 
    tx_start_aux_i_1
       (.I0(\FSM_sequential_state_reg_reg[1] ),
        .I1(tx_start_aux_i_2_n_0),
        .I2(rd_aux_reg_0),
        .I3(\state_reg[2]_i_5_n_0 ),
        .I4(\div[1]_i_2_n_0 ),
        .I5(tx_start),
        .O(tx_start_aux_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    tx_start_aux_i_2
       (.I0(\div_reg[6]_1 ),
        .I1(\div_reg[6]_0 ),
        .O(tx_start_aux_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_start_aux_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_start_aux_i_1_n_0),
        .Q(tx_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5554FFFF55540000)) 
    zflag_i_1
       (.I0(\div_reg[6]_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\div_reg_n_0_[1] ),
        .I3(\div_reg_n_0_[6] ),
        .I4(zflag4_out),
        .I5(zflag_reg_n_0),
        .O(zflag_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000010001000100)) 
    zflag_i_2
       (.I0(\FSM_sequential_state_reg_reg[1] ),
        .I1(reset_IBUF),
        .I2(\state_reg_reg_n_0_[2] ),
        .I3(\div_reg[6]_1 ),
        .I4(rd_aux_reg_0),
        .I5(\div_reg[6]_0 ),
        .O(zflag4_out));
  FDRE #(
    .INIT(1'b0)) 
    zflag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(zflag_i_1_n_0),
        .Q(zflag_reg_n_0),
        .R(1'b0));
endmodule

module tx_module
   (out,
    tx_OBUF,
    \salida_reg[0] ,
    \state_reg_reg[2] ,
    \salida_reg[3] ,
    CLK,
    reset_IBUF,
    \salida_reg[4] ,
    tx_start,
    s_tick,
    D,
    Q);
  output [0:0]out;
  output tx_OBUF;
  output \salida_reg[0] ;
  output \state_reg_reg[2] ;
  output \salida_reg[3] ;
  input CLK;
  input reset_IBUF;
  input \salida_reg[4] ;
  input tx_start;
  input s_tick;
  input [0:0]D;
  input [6:0]Q;

  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3__0_n_0 ;
  wire [6:0]Q;
  wire [6:0]b_next;
  wire b_next_0;
  wire [0:0]b_reg;
  wire \b_reg[7]_i_3_n_0 ;
  wire \b_reg_reg_n_0_[1] ;
  wire \b_reg_reg_n_0_[2] ;
  wire \b_reg_reg_n_0_[3] ;
  wire \b_reg_reg_n_0_[4] ;
  wire \b_reg_reg_n_0_[5] ;
  wire \b_reg_reg_n_0_[6] ;
  wire \b_reg_reg_n_0_[7] ;
  wire n_next;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire \n_reg_reg_n_0_[0] ;
  wire \n_reg_reg_n_0_[1] ;
  wire \n_reg_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire reset_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1__0_n_0 ;
  wire \s_reg[1]_i_1__0_n_0 ;
  wire \s_reg[2]_i_1__0_n_0 ;
  wire \s_reg[3]_i_2__0_n_0 ;
  wire \s_reg[3]_i_3_n_0 ;
  wire s_tick;
  wire \salida_reg[0] ;
  wire \salida_reg[3] ;
  wire \salida_reg[4] ;
  (* RTL_KEEP = "yes" *) wire [0:0]state_reg;
  wire \state_reg_reg[2] ;
  wire tx_OBUF;
  wire tx_next;
  wire tx_start;

  LUT5 #(
    .INIT(32'h0BFF0B00)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(s_tick),
        .I1(out),
        .I2(state_reg),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I4(state_reg),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h58FF5800)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(out),
        .I1(s_tick),
        .I2(state_reg),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I4(out),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0E000E003F330C00)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .I1(state_reg),
        .I2(\b_reg[7]_i_3_n_0 ),
        .I3(s_tick),
        .I4(tx_start),
        .I5(out),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[1]_i_3__0 
       (.I0(\n_reg_reg_n_0_[0] ),
        .I1(\n_reg_reg_n_0_[1] ),
        .I2(\n_reg_reg_n_0_[2] ),
        .O(\FSM_sequential_state_reg[1]_i_3__0_n_0 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[0]_i_1__0_n_0 ),
        .Q(state_reg));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_0 ),
        .Q(out));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[0]_i_1 
       (.I0(\b_reg_reg_n_0_[1] ),
        .I1(out),
        .I2(Q[0]),
        .O(b_next[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[1]_i_1 
       (.I0(\b_reg_reg_n_0_[2] ),
        .I1(out),
        .I2(Q[1]),
        .O(b_next[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[2]_i_1 
       (.I0(\b_reg_reg_n_0_[3] ),
        .I1(out),
        .I2(Q[2]),
        .O(b_next[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[3]_i_1 
       (.I0(\b_reg_reg_n_0_[4] ),
        .I1(out),
        .I2(Q[3]),
        .O(b_next[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[4]_i_1 
       (.I0(\b_reg_reg_n_0_[5] ),
        .I1(out),
        .I2(Q[4]),
        .O(b_next[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[5]_i_1 
       (.I0(\b_reg_reg_n_0_[6] ),
        .I1(out),
        .I2(Q[5]),
        .O(b_next[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[6]_i_1 
       (.I0(\b_reg_reg_n_0_[7] ),
        .I1(out),
        .I2(Q[6]),
        .O(b_next[6]));
  LUT5 #(
    .INIT(32'h040F0400)) 
    \b_reg[7]_i_1 
       (.I0(\b_reg[7]_i_3_n_0 ),
        .I1(s_tick),
        .I2(state_reg),
        .I3(out),
        .I4(tx_start),
        .O(b_next_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \b_reg[7]_i_3 
       (.I0(s_reg[2]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .I3(s_reg[3]),
        .O(\b_reg[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[0]),
        .Q(b_reg));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[1]),
        .Q(\b_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[2]),
        .Q(\b_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[3]),
        .Q(\b_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[4]),
        .Q(\b_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[5]),
        .Q(\b_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[6]),
        .Q(\b_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(D),
        .Q(\b_reg_reg_n_0_[7] ));
  LUT3 #(
    .INIT(8'h38)) 
    \n_reg[0]_i_1 
       (.I0(out),
        .I1(n_next),
        .I2(\n_reg_reg_n_0_[0] ),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \n_reg[1]_i_1 
       (.I0(\n_reg_reg_n_0_[0] ),
        .I1(out),
        .I2(n_next),
        .I3(\n_reg_reg_n_0_[1] ),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \n_reg[2]_i_1 
       (.I0(out),
        .I1(\n_reg_reg_n_0_[1] ),
        .I2(\n_reg_reg_n_0_[0] ),
        .I3(n_next),
        .I4(\n_reg_reg_n_0_[2] ),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004048)) 
    \n_reg[2]_i_2 
       (.I0(out),
        .I1(s_tick),
        .I2(state_reg),
        .I3(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .I4(\b_reg[7]_i_3_n_0 ),
        .O(n_next));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(\n_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(\n_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(\n_reg_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'h54)) 
    \s_reg[0]_i_1__0 
       (.I0(s_reg[0]),
        .I1(out),
        .I2(state_reg),
        .O(\s_reg[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h6660)) 
    \s_reg[1]_i_1__0 
       (.I0(s_reg[0]),
        .I1(s_reg[1]),
        .I2(out),
        .I3(state_reg),
        .O(\s_reg[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0EEEE000)) 
    \s_reg[2]_i_1__0 
       (.I0(out),
        .I1(state_reg),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .I4(s_reg[2]),
        .O(\s_reg[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hF0E400E4)) 
    \s_reg[3]_i_1 
       (.I0(state_reg),
        .I1(tx_start),
        .I2(s_tick),
        .I3(out),
        .I4(\s_reg[3]_i_3_n_0 ),
        .O(s_next));
  LUT6 #(
    .INIT(64'h0EEEEEEEE0000000)) 
    \s_reg[3]_i_2__0 
       (.I0(out),
        .I1(state_reg),
        .I2(s_reg[0]),
        .I3(s_reg[1]),
        .I4(s_reg[2]),
        .I5(s_reg[3]),
        .O(\s_reg[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \s_reg[3]_i_3 
       (.I0(s_reg[3]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[2]),
        .I4(state_reg),
        .O(\s_reg[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[0]_i_1__0_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[1]_i_1__0_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[2]_i_1__0_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[3]_i_2__0_n_0 ),
        .Q(s_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \salida[2]_i_2 
       (.I0(\state_reg_reg[2] ),
        .I1(\salida_reg[4] ),
        .O(\salida_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \salida[3]_i_2 
       (.I0(\state_reg_reg[2] ),
        .I1(\salida_reg[4] ),
        .O(\salida_reg[3] ));
  LUT3 #(
    .INIT(8'hBF)) 
    \state_reg[2]_i_3 
       (.I0(\s_reg[3]_i_3_n_0 ),
        .I1(out),
        .I2(s_tick),
        .O(\state_reg_reg[2] ));
  LUT3 #(
    .INIT(8'hCB)) 
    tx_reg_i_1
       (.I0(b_reg),
        .I1(out),
        .I2(state_reg),
        .O(tx_next));
  FDPE #(
    .INIT(1'b1)) 
    tx_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_next),
        .PRE(reset_IBUF),
        .Q(tx_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
