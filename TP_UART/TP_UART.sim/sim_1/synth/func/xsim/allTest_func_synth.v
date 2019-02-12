// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Mon Feb 11 20:02:39 2019
// Host        : sieber running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/sieber/Arquitecura/Arquitectura2018/TP_UART/TP_UART.sim/sim_1/synth/func/xsim/allTest_func_synth.v
// Design      : Main
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (O,
    \aux_reg[7] ,
    Q,
    \op_reg[1] ,
    S,
    \first_op_reg[7] );
  output [3:0]O;
  output [3:0]\aux_reg[7] ;
  input [6:0]Q;
  input [0:0]\op_reg[1] ;
  input [3:0]S;
  input [3:0]\first_op_reg[7] ;

  wire [3:0]O;
  wire [6:0]Q;
  wire [3:0]S;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire [3:0]\aux_reg[7] ;
  wire [3:0]\first_op_reg[7] ;
  wire [0:0]\op_reg[1] ;
  wire [3:3]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\op_reg[1] }),
        .O(O),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [3],\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(\aux_reg[7] ),
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
  wire alu_n_0;
  wire alu_n_1;
  wire alu_n_2;
  wire alu_n_3;
  wire alu_n_4;
  wire alu_n_5;
  wire alu_n_6;
  wire alu_n_7;
  wire [7:7]b_next;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:5]dout;
  wire first_op;
  wire int_rx_n_1;
  wire int_rx_n_12;
  wire int_rx_n_13;
  wire int_rx_n_14;
  wire int_rx_n_15;
  wire int_rx_n_16;
  wire int_rx_n_17;
  wire int_rx_n_18;
  wire int_rx_n_19;
  wire int_rx_n_2;
  wire int_rx_n_20;
  wire int_rx_n_21;
  wire int_rx_n_22;
  wire int_rx_n_23;
  wire int_rx_n_24;
  wire int_rx_n_25;
  wire int_rx_n_26;
  wire int_rx_n_27;
  wire int_rx_n_3;
  wire int_tx_n_12;
  wire int_tx_n_3;
  wire op;
  wire [6:0]p_1_in;
  wire rd_aux;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire rx_empty;
  wire rx_mod_n_0;
  wire rx_mod_n_12;
  wire rx_mod_n_13;
  wire rx_mod_n_14;
  wire rx_mod_n_16;
  wire rx_mod_n_9;
  wire s_tick;
  wire [6:0]salida;
  wire second_op;
  wire [1:1]state_reg;
  wire tx;
  wire tx_OBUF;
  wire tx_mod_n_0;
  wire tx_mod_n_2;
  wire tx_start;

  ALU alu
       (.O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .Q(a),
        .S({int_rx_n_18,int_rx_n_19,int_rx_n_20,int_rx_n_21}),
        .\aux_reg[7] ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .\first_op_reg[7] ({int_rx_n_22,int_rx_n_23,int_rx_n_24,int_rx_n_25}),
        .\op_reg[1] (\0 ));
  br_generator br_g
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .s_tick(s_tick));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  rx_interface int_rx
       (.D(int_rx_n_1),
        .E(rx_mod_n_13),
        .\FSM_sequential_state_reg_reg[1] (rx_mod_n_16),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .Q({int_rx_n_3,\0 }),
        .S({int_rx_n_18,int_rx_n_19,int_rx_n_20,int_rx_n_21}),
        .\aux_reg[1]_0 (int_rx_n_13),
        .\aux_reg[2]_0 (int_rx_n_15),
        .\aux_reg[3]_0 (int_rx_n_16),
        .\aux_reg[4]_0 (int_rx_n_17),
        .\aux_reg[5]_0 (int_rx_n_14),
        .\aux_reg[5]_1 ({int_rx_n_22,int_rx_n_23,int_rx_n_24,int_rx_n_25}),
        .\aux_reg[6]_0 (a),
        .\aux_reg[6]_1 (int_rx_n_12),
        .\aux_reg[7]_0 (int_rx_n_2),
        .\b_reg_reg[1] (rx_mod_n_14),
        .\b_reg_reg[6] (rx_mod_n_12),
        .\b_reg_reg[6]_0 ({p_1_in[6],p_1_in[4:0]}),
        .\b_reg_reg[7] (rx_mod_n_9),
        .\b_reg_reg[7]_0 ({dout[7],dout[5]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\first_op_reg[6]_0 ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .out(rx_mod_n_0),
        .rd_aux(rd_aux),
        .reset_IBUF(reset_IBUF),
        .rx_empty(rx_empty),
        .state_reg(state_reg),
        .\state_reg_reg[0]_0 (int_tx_n_12),
        .\state_reg_reg[0]_1 (first_op),
        .\state_reg_reg[0]_2 (op),
        .\state_reg_reg[1]_0 (int_rx_n_26),
        .\state_reg_reg[1]_1 (int_rx_n_27),
        .\state_reg_reg[1]_2 (int_tx_n_3),
        .\state_reg_reg[1]_3 (second_op));
  tx_interface int_tx
       (.D(b_next),
        .\FSM_sequential_state_reg_reg[0] (tx_mod_n_2),
        .Q(int_rx_n_3),
        .\aux_reg[0]_0 (int_tx_n_12),
        .\aux_reg[3]_0 (int_tx_n_3),
        .\b_reg_reg[6] (salida),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\op_reg[0] (int_rx_n_16),
        .\op_reg[2] (int_rx_n_15),
        .\op_reg[2]_0 (int_rx_n_13),
        .\op_reg[4] (int_rx_n_12),
        .\op_reg[4]_0 (int_rx_n_14),
        .\op_reg[5] (int_rx_n_2),
        .\op_reg[5]_0 (int_rx_n_17),
        .\op_reg[5]_1 (int_rx_n_1),
        .out(tx_mod_n_0),
        .rd_aux(rd_aux),
        .reset_IBUF(reset_IBUF),
        .rx_empty(rx_empty),
        .\state_reg_reg[1]_0 (state_reg),
        .tx_start(tx_start));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  rx_module rx_mod
       (.E(rx_mod_n_13),
        .Q({dout[7],dout[5]}),
        .\aux_reg[4] (rx_mod_n_9),
        .\aux_reg[6] ({p_1_in[6],p_1_in[4:0]}),
        .\aux_reg[6]_0 (rx_mod_n_14),
        .\b_reg_reg[0]_0 (rx_mod_n_16),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\first_op_reg[7] (first_op),
        .\op_reg[5] (op),
        .out(rx_mod_n_0),
        .reset_IBUF(reset_IBUF),
        .rx_IBUF(rx_IBUF),
        .s_tick(s_tick),
        .\second_op_reg[7] (second_op),
        .\state_reg_reg[0] (int_rx_n_27),
        .\state_reg_reg[1] (rx_mod_n_12),
        .\state_reg_reg[1]_0 (int_rx_n_26));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  tx_module tx_mod
       (.D(b_next),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(tx_mod_n_0),
        .reset_IBUF(reset_IBUF),
        .s_tick(s_tick),
        .\salida_reg[6] (salida),
        .tx_OBUF(tx_OBUF),
        .tx_start(tx_start),
        .tx_start_aux_reg(tx_mod_n_2));
endmodule

module br_generator
   (s_tick,
    clk_IBUF_BUFG);
  output s_tick;
  input clk_IBUF_BUFG;

  wire [7:0]ciclos;
  wire \ciclos[2]_i_1_n_0 ;
  wire \ciclos[6]_i_2_n_0 ;
  wire \ciclos[7]_i_1_n_0 ;
  wire \ciclos[7]_i_3_n_0 ;
  wire [0:0]ciclos_0;
  wire clk_IBUF_BUFG;
  wire [7:1]data0;
  wire s_tick;

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
        .O(data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ciclos[4]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .I2(ciclos[2]),
        .I3(ciclos[3]),
        .I4(ciclos[4]),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ciclos[5]_i_1 
       (.I0(ciclos[2]),
        .I1(ciclos[3]),
        .I2(ciclos[4]),
        .I3(ciclos[1]),
        .I4(ciclos[0]),
        .I5(ciclos[5]),
        .O(data0[5]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \ciclos[6]_i_1 
       (.I0(\ciclos[6]_i_2_n_0 ),
        .I1(ciclos[5]),
        .I2(ciclos[3]),
        .I3(ciclos[2]),
        .I4(ciclos[4]),
        .I5(ciclos[6]),
        .O(data0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
        .O(data0[7]));
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
        .D(data0[1]),
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
        .D(data0[3]),
        .Q(ciclos[3]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(ciclos[4]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(ciclos[5]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(ciclos[6]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
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
    D,
    \aux_reg[7]_0 ,
    Q,
    \aux_reg[6]_0 ,
    \aux_reg[6]_1 ,
    \aux_reg[1]_0 ,
    \aux_reg[5]_0 ,
    \aux_reg[2]_0 ,
    \aux_reg[3]_0 ,
    \aux_reg[4]_0 ,
    S,
    \aux_reg[5]_1 ,
    \state_reg_reg[1]_0 ,
    \state_reg_reg[1]_1 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    \b_reg_reg[1] ,
    \state_reg_reg[0]_0 ,
    \first_op_reg[6]_0 ,
    O,
    \state_reg_reg[1]_2 ,
    state_reg,
    rd_aux,
    \b_reg_reg[6] ,
    \b_reg_reg[7] ,
    \FSM_sequential_state_reg_reg[1] ,
    out,
    E,
    \b_reg_reg[7]_0 ,
    \b_reg_reg[6]_0 ,
    \state_reg_reg[0]_1 ,
    \state_reg_reg[1]_3 ,
    \state_reg_reg[0]_2 );
  output rx_empty;
  output [0:0]D;
  output \aux_reg[7]_0 ;
  output [1:0]Q;
  output [6:0]\aux_reg[6]_0 ;
  output \aux_reg[6]_1 ;
  output \aux_reg[1]_0 ;
  output \aux_reg[5]_0 ;
  output \aux_reg[2]_0 ;
  output \aux_reg[3]_0 ;
  output \aux_reg[4]_0 ;
  output [3:0]S;
  output [3:0]\aux_reg[5]_1 ;
  output \state_reg_reg[1]_0 ;
  output \state_reg_reg[1]_1 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input \b_reg_reg[1] ;
  input \state_reg_reg[0]_0 ;
  input [3:0]\first_op_reg[6]_0 ;
  input [3:0]O;
  input \state_reg_reg[1]_2 ;
  input [0:0]state_reg;
  input rd_aux;
  input \b_reg_reg[6] ;
  input \b_reg_reg[7] ;
  input \FSM_sequential_state_reg_reg[1] ;
  input [0:0]out;
  input [0:0]E;
  input [1:0]\b_reg_reg[7]_0 ;
  input [5:0]\b_reg_reg[6]_0 ;
  input [0:0]\state_reg_reg[0]_1 ;
  input [0:0]\state_reg_reg[1]_3 ;
  input [0:0]\state_reg_reg[0]_2 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg_reg[1] ;
  wire [3:0]O;
  wire [1:0]Q;
  wire [3:0]S;
  wire [7:7]a;
  wire [7:0]aux;
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
  wire \aux[0]_i_2_n_0 ;
  wire \aux[0]_i_3_n_0 ;
  wire \aux[0]_i_4_n_0 ;
  wire \aux[0]_i_6_n_0 ;
  wire \aux[0]_i_7_n_0 ;
  wire \aux[0]_i_8_n_0 ;
  wire \aux[0]_i_9_n_0 ;
  wire \aux[1]_i_4_n_0 ;
  wire \aux[1]_i_5_n_0 ;
  wire \aux[1]_i_6_n_0 ;
  wire \aux[1]_i_7_n_0 ;
  wire \aux[1]_i_8_n_0 ;
  wire \aux[2]_i_4_n_0 ;
  wire \aux[2]_i_5_n_0 ;
  wire \aux[2]_i_6_n_0 ;
  wire \aux[2]_i_7_n_0 ;
  wire \aux[3]_i_10_n_0 ;
  wire \aux[3]_i_4_n_0 ;
  wire \aux[3]_i_5_n_0 ;
  wire \aux[3]_i_6_n_0 ;
  wire \aux[3]_i_8_n_0 ;
  wire \aux[3]_i_9_n_0 ;
  wire \aux[4]_i_10_n_0 ;
  wire \aux[4]_i_11_n_0 ;
  wire \aux[4]_i_12_n_0 ;
  wire \aux[4]_i_6_n_0 ;
  wire \aux[4]_i_7_n_0 ;
  wire \aux[4]_i_9_n_0 ;
  wire \aux[5]_i_10_n_0 ;
  wire \aux[5]_i_11_n_0 ;
  wire \aux[5]_i_12_n_0 ;
  wire \aux[5]_i_13_n_0 ;
  wire \aux[5]_i_5_n_0 ;
  wire \aux[5]_i_6_n_0 ;
  wire \aux[6]_i_10_n_0 ;
  wire \aux[6]_i_11_n_0 ;
  wire \aux[6]_i_5_n_0 ;
  wire \aux[6]_i_6_n_0 ;
  wire \aux[6]_i_9_n_0 ;
  wire \aux[7]_i_5_n_0 ;
  wire \aux[7]_i_6_n_0 ;
  wire \aux[7]_i_9_n_0 ;
  wire \aux_reg[1]_0 ;
  wire \aux_reg[1]_i_3_n_0 ;
  wire \aux_reg[2]_0 ;
  wire \aux_reg[3]_0 ;
  wire \aux_reg[4]_0 ;
  wire \aux_reg[5]_0 ;
  wire [3:0]\aux_reg[5]_1 ;
  wire [6:0]\aux_reg[6]_0 ;
  wire \aux_reg[6]_1 ;
  wire \aux_reg[7]_0 ;
  wire [7:0]b;
  wire \b_reg_reg[1] ;
  wire \b_reg_reg[6] ;
  wire [5:0]\b_reg_reg[6]_0 ;
  wire \b_reg_reg[7] ;
  wire [1:0]\b_reg_reg[7]_0 ;
  wire clk_IBUF_BUFG;
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
  wire [3:0]\first_op_reg[6]_0 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
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
  wire \op[5]_i_2_n_0 ;
  wire \op[5]_i_4_n_0 ;
  wire \op[5]_i_5_n_0 ;
  wire \op_reg_n_0_[0] ;
  wire \op_reg_n_0_[2] ;
  wire \op_reg_n_0_[5] ;
  wire [0:0]out;
  wire rd_aux;
  wire reset_IBUF;
  wire rx_empty;
  wire rx_empty_i_1_n_0;
  wire [0:0]state_reg;
  wire \state_reg[0]_i_1_n_0 ;
  wire \state_reg[1]_i_1_n_0 ;
  wire \state_reg_reg[0]_0 ;
  wire [0:0]\state_reg_reg[0]_1 ;
  wire [0:0]\state_reg_reg[0]_2 ;
  wire \state_reg_reg[1]_0 ;
  wire \state_reg_reg[1]_1 ;
  wire \state_reg_reg[1]_2 ;
  wire [0:0]\state_reg_reg[1]_3 ;
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

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux1[0]_i_1 
       (.I0(aux[0]),
        .I1(\b_reg_reg[1] ),
        .O(\aux1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux1[1]_i_1 
       (.I0(aux[1]),
        .I1(\b_reg_reg[1] ),
        .O(\aux1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux1[2]_i_1 
       (.I0(aux[2]),
        .I1(\b_reg_reg[1] ),
        .O(\aux1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux1[3]_i_1 
       (.I0(aux[3]),
        .I1(\b_reg_reg[1] ),
        .O(\aux1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \aux1[4]_i_1 
       (.I0(aux[4]),
        .I1(\b_reg_reg[1] ),
        .O(\aux1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \aux1[5]_i_1 
       (.I0(aux[5]),
        .I1(\b_reg_reg[1] ),
        .O(\aux1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux1[6]_i_1 
       (.I0(aux[6]),
        .I1(\b_reg_reg[1] ),
        .O(\aux1[6]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \aux1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\aux1[0]_i_1_n_0 ),
        .Q(aux1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aux1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\aux1[1]_i_1_n_0 ),
        .Q(aux1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \aux1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\aux1[2]_i_1_n_0 ),
        .Q(aux1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \aux1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\aux1[3]_i_1_n_0 ),
        .Q(aux1[3]));
  FDPE #(
    .INIT(1'b1)) 
    \aux1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\aux1[4]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(aux1[4]));
  FDPE #(
    .INIT(1'b1)) 
    \aux1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\aux1[5]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(aux1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \aux1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\aux1[6]_i_1_n_0 ),
        .Q(\aux1_reg_n_0_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux2[0]_i_1 
       (.I0(aux1[0]),
        .I1(\b_reg_reg[1] ),
        .O(\aux2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux2[1]_i_1 
       (.I0(aux1[1]),
        .I1(\b_reg_reg[1] ),
        .O(\aux2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux2[2]_i_1 
       (.I0(aux1[2]),
        .I1(\b_reg_reg[1] ),
        .O(\aux2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux2[3]_i_1 
       (.I0(aux1[3]),
        .I1(\b_reg_reg[1] ),
        .O(\aux2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \aux2[4]_i_1 
       (.I0(aux1[4]),
        .I1(\b_reg_reg[1] ),
        .O(\aux2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \aux2[5]_i_1 
       (.I0(aux1[5]),
        .I1(\b_reg_reg[1] ),
        .O(\aux2[5]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\aux2[0]_i_1_n_0 ),
        .Q(aux2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\aux2[1]_i_1_n_0 ),
        .Q(aux2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\aux2[2]_i_1_n_0 ),
        .Q(aux2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\aux2[3]_i_1_n_0 ),
        .Q(aux2[3]));
  FDPE #(
    .INIT(1'b1)) 
    \aux2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\aux2[4]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(aux2[4]));
  FDPE #(
    .INIT(1'b1)) 
    \aux2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\aux2[5]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(aux2[5]));
  LUT6 #(
    .INIT(64'h00000000EFEFEFEE)) 
    \aux[0]_i_1__0 
       (.I0(\aux[0]_i_2_n_0 ),
        .I1(\aux[0]_i_3_n_0 ),
        .I2(\op_reg_n_0_[5] ),
        .I3(\aux[0]_i_4_n_0 ),
        .I4(\op_reg_n_0_[2] ),
        .I5(\state_reg_reg[0]_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'h0808088008808000)) 
    \aux[0]_i_2 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[5] ),
        .I2(Q[0]),
        .I3(b[0]),
        .I4(\aux_reg[6]_0 [0]),
        .I5(\op_reg_n_0_[0] ),
        .O(\aux[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEEE)) 
    \aux[0]_i_3 
       (.I0(Q[1]),
        .I1(state_reg),
        .I2(\op_reg_n_0_[0] ),
        .I3(O[0]),
        .I4(\op_reg_n_0_[5] ),
        .I5(\op_reg_n_0_[2] ),
        .O(\aux[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B8CCFC00B8FFFF)) 
    \aux[0]_i_4 
       (.I0(b[0]),
        .I1(\op_reg_n_0_[0] ),
        .I2(\aux_reg[6]_0 [0]),
        .I3(Q[0]),
        .I4(\aux[0]_i_6_n_0 ),
        .I5(\aux[0]_i_7_n_0 ),
        .O(\aux[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hACFF)) 
    \aux[0]_i_6 
       (.I0(\aux[0]_i_8_n_0 ),
        .I1(\aux[0]_i_9_n_0 ),
        .I2(b[0]),
        .I3(Q[0]),
        .O(\aux[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \aux[0]_i_7 
       (.I0(b[5]),
        .I1(b[6]),
        .I2(b[4]),
        .I3(b[3]),
        .I4(b[7]),
        .O(\aux[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \aux[0]_i_8 
       (.I0(a),
        .I1(\aux_reg[6]_0 [3]),
        .I2(b[1]),
        .I3(\aux_reg[6]_0 [5]),
        .I4(b[2]),
        .I5(\aux_reg[6]_0 [1]),
        .O(\aux[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \aux[0]_i_9 
       (.I0(\aux_reg[6]_0 [6]),
        .I1(\aux_reg[6]_0 [2]),
        .I2(b[1]),
        .I3(\aux_reg[6]_0 [4]),
        .I4(\aux_reg[6]_0 [0]),
        .I5(b[2]),
        .O(\aux[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFF0DD)) 
    \aux[1]_i_2 
       (.I0(\aux_reg[1]_i_3_n_0 ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\aux[1]_i_4_n_0 ),
        .I3(\op_reg_n_0_[5] ),
        .I4(Q[1]),
        .O(\aux_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \aux[1]_i_4 
       (.I0(Q[0]),
        .I1(\aux_reg[6]_0 [1]),
        .I2(b[1]),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(O[1]),
        .O(\aux[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC5F5F5F5C5F5C5C5)) 
    \aux[1]_i_5 
       (.I0(\aux_reg[6]_0 [1]),
        .I1(\aux[0]_i_7_n_0 ),
        .I2(Q[0]),
        .I3(\aux[1]_i_7_n_0 ),
        .I4(b[0]),
        .I5(\aux[0]_i_8_n_0 ),
        .O(\aux[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \aux[1]_i_6 
       (.I0(\aux[1]_i_8_n_0 ),
        .I1(b[0]),
        .I2(\aux[0]_i_8_n_0 ),
        .I3(Q[0]),
        .I4(b[1]),
        .O(\aux[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h3300B8B8)) 
    \aux[1]_i_7 
       (.I0(\aux_reg[6]_0 [4]),
        .I1(b[1]),
        .I2(\aux_reg[6]_0 [2]),
        .I3(\aux_reg[6]_0 [6]),
        .I4(b[2]),
        .O(\aux[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h50305F30503F5F3F)) 
    \aux[1]_i_8 
       (.I0(a),
        .I1(\aux_reg[6]_0 [4]),
        .I2(b[1]),
        .I3(b[2]),
        .I4(\aux_reg[6]_0 [6]),
        .I5(\aux_reg[6]_0 [2]),
        .O(\aux[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF0202)) 
    \aux[2]_i_2 
       (.I0(\aux[2]_i_4_n_0 ),
        .I1(\aux[2]_i_5_n_0 ),
        .I2(\op_reg_n_0_[2] ),
        .I3(\aux[2]_i_6_n_0 ),
        .I4(\op_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(\aux_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFABAFFBF)) 
    \aux[2]_i_4 
       (.I0(\op_reg_n_0_[0] ),
        .I1(\aux[2]_i_7_n_0 ),
        .I2(Q[0]),
        .I3(\aux[0]_i_7_n_0 ),
        .I4(\aux_reg[6]_0 [2]),
        .O(\aux[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF800FF00F0000000)) 
    \aux[2]_i_5 
       (.I0(a),
        .I1(b[1]),
        .I2(\aux[2]_i_7_n_0 ),
        .I3(\op_reg_n_0_[0] ),
        .I4(Q[0]),
        .I5(b[2]),
        .O(\aux[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \aux[2]_i_6 
       (.I0(Q[0]),
        .I1(b[2]),
        .I2(\aux_reg[6]_0 [2]),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(O[2]),
        .O(\aux[2]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \aux[2]_i_7 
       (.I0(\aux[3]_i_10_n_0 ),
        .I1(b[0]),
        .I2(\aux[1]_i_7_n_0 ),
        .O(\aux[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0A0ACFC0)) 
    \aux[3]_i_10 
       (.I0(\aux_reg[6]_0 [5]),
        .I1(a),
        .I2(b[2]),
        .I3(\aux_reg[6]_0 [3]),
        .I4(b[1]),
        .O(\aux[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F4F444)) 
    \aux[3]_i_2 
       (.I0(\aux[3]_i_4_n_0 ),
        .I1(\aux[3]_i_5_n_0 ),
        .I2(\aux[3]_i_6_n_0 ),
        .I3(O[3]),
        .I4(\op_reg_n_0_[0] ),
        .I5(\state_reg_reg[1]_2 ),
        .O(\aux_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0101015151510151)) 
    \aux[3]_i_4 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\aux[3]_i_8_n_0 ),
        .I2(\op_reg_n_0_[0] ),
        .I3(b[3]),
        .I4(Q[0]),
        .I5(\aux[3]_i_9_n_0 ),
        .O(\aux[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5F7D7DD555555555)) 
    \aux[3]_i_5 
       (.I0(\op_reg_n_0_[5] ),
        .I1(\op_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(\aux_reg[6]_0 [3]),
        .I4(b[3]),
        .I5(\op_reg_n_0_[2] ),
        .O(\aux[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aux[3]_i_6 
       (.I0(\op_reg_n_0_[5] ),
        .I1(\op_reg_n_0_[2] ),
        .O(\aux[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \aux[3]_i_8 
       (.I0(\aux[3]_i_10_n_0 ),
        .I1(b[0]),
        .I2(\aux[4]_i_11_n_0 ),
        .I3(\aux[0]_i_7_n_0 ),
        .I4(Q[0]),
        .I5(\aux_reg[6]_0 [3]),
        .O(\aux[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8B8B8FCB8B8B8)) 
    \aux[3]_i_9 
       (.I0(\aux[4]_i_11_n_0 ),
        .I1(b[0]),
        .I2(\aux[3]_i_10_n_0 ),
        .I3(a),
        .I4(b[2]),
        .I5(b[1]),
        .O(\aux[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFEF0F2FFFE00020)) 
    \aux[4]_i_10 
       (.I0(\aux_reg[6]_0 [5]),
        .I1(b[1]),
        .I2(b[0]),
        .I3(b[2]),
        .I4(a),
        .I5(\aux[4]_i_11_n_0 ),
        .O(\aux[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \aux[4]_i_11 
       (.I0(\aux_reg[6]_0 [6]),
        .I1(b[1]),
        .I2(\aux_reg[6]_0 [4]),
        .I3(b[2]),
        .O(\aux[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h3022)) 
    \aux[4]_i_12 
       (.I0(\aux_reg[6]_0 [5]),
        .I1(b[2]),
        .I2(a),
        .I3(b[1]),
        .O(\aux[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \aux[4]_i_6 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\aux[4]_i_9_n_0 ),
        .I2(\op_reg_n_0_[0] ),
        .I3(b[4]),
        .I4(Q[0]),
        .I5(\aux[4]_i_10_n_0 ),
        .O(\aux[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \aux[4]_i_7 
       (.I0(Q[0]),
        .I1(\aux_reg[6]_0 [4]),
        .I2(b[4]),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\first_op_reg[6]_0 [0]),
        .O(\aux[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \aux[4]_i_9 
       (.I0(\aux[4]_i_11_n_0 ),
        .I1(b[0]),
        .I2(\aux[4]_i_12_n_0 ),
        .I3(\aux[0]_i_7_n_0 ),
        .I4(Q[0]),
        .I5(\aux_reg[6]_0 [4]),
        .O(\aux[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEAEEFFFFFBFF)) 
    \aux[5]_i_10 
       (.I0(\aux[6]_i_11_n_0 ),
        .I1(b[0]),
        .I2(b[2]),
        .I3(\aux_reg[6]_0 [6]),
        .I4(b[1]),
        .I5(\aux[4]_i_12_n_0 ),
        .O(\aux[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0300CF0047004700)) 
    \aux[5]_i_11 
       (.I0(\aux[5]_i_12_n_0 ),
        .I1(Q[0]),
        .I2(b[5]),
        .I3(\op_reg_n_0_[0] ),
        .I4(\aux[5]_i_13_n_0 ),
        .I5(b[0]),
        .O(\aux[5]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hAAB8)) 
    \aux[5]_i_12 
       (.I0(a),
        .I1(b[2]),
        .I2(\aux_reg[6]_0 [5]),
        .I3(b[1]),
        .O(\aux[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \aux[5]_i_13 
       (.I0(\aux_reg[6]_0 [6]),
        .I1(a),
        .I2(b[2]),
        .I3(b[1]),
        .O(\aux[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000022222)) 
    \aux[5]_i_2 
       (.I0(\aux[5]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\first_op_reg[6]_0 [1]),
        .I4(\aux[3]_i_6_n_0 ),
        .I5(\aux[5]_i_6_n_0 ),
        .O(\aux_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4500)) 
    \aux[5]_i_5 
       (.I0(\op_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\aux_reg[6]_0 [5]),
        .I3(\aux[5]_i_10_n_0 ),
        .I4(\aux[5]_i_11_n_0 ),
        .I5(\op_reg_n_0_[5] ),
        .O(\aux[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0228A880AAAAAAAA)) 
    \aux[5]_i_6 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\aux_reg[6]_0 [5]),
        .I2(b[5]),
        .I3(\op_reg_n_0_[0] ),
        .I4(Q[0]),
        .I5(\op_reg_n_0_[5] ),
        .O(\aux[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005040004)) 
    \aux[6]_i_10 
       (.I0(b[2]),
        .I1(\aux_reg[6]_0 [6]),
        .I2(b[1]),
        .I3(b[0]),
        .I4(a),
        .I5(\aux[6]_i_11_n_0 ),
        .O(\aux[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \aux[6]_i_11 
       (.I0(b[7]),
        .I1(b[3]),
        .I2(b[4]),
        .I3(b[6]),
        .I4(b[5]),
        .I5(Q[0]),
        .O(\aux[6]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00015501)) 
    \aux[6]_i_2__0 
       (.I0(Q[1]),
        .I1(\aux[6]_i_5_n_0 ),
        .I2(\op_reg_n_0_[2] ),
        .I3(\op_reg_n_0_[5] ),
        .I4(\aux[6]_i_6_n_0 ),
        .O(\aux_reg[6]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0CFC0)) 
    \aux[6]_i_5 
       (.I0(\aux[6]_i_9_n_0 ),
        .I1(b[6]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\aux[6]_i_10_n_0 ),
        .I4(Q[0]),
        .I5(\aux_reg[6]_0 [6]),
        .O(\aux[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \aux[6]_i_6 
       (.I0(Q[0]),
        .I1(\aux_reg[6]_0 [6]),
        .I2(b[6]),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\first_op_reg[6]_0 [2]),
        .O(\aux[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF0F0F0E4)) 
    \aux[6]_i_9 
       (.I0(b[0]),
        .I1(\aux_reg[6]_0 [6]),
        .I2(a),
        .I3(b[2]),
        .I4(b[1]),
        .O(\aux[6]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h003A)) 
    \aux[7]_i_3 
       (.I0(\aux[7]_i_5_n_0 ),
        .I1(\aux[7]_i_6_n_0 ),
        .I2(\op_reg_n_0_[5] ),
        .I3(Q[1]),
        .O(\aux_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0101015151510151)) 
    \aux[7]_i_5 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\aux[7]_i_9_n_0 ),
        .I2(\op_reg_n_0_[0] ),
        .I3(b[7]),
        .I4(Q[0]),
        .I5(a),
        .O(\aux[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \aux[7]_i_6 
       (.I0(Q[0]),
        .I1(b[7]),
        .I2(a),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\first_op_reg[6]_0 [3]),
        .O(\aux[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5500550055005700)) 
    \aux[7]_i_9 
       (.I0(Q[0]),
        .I1(b[0]),
        .I2(b[2]),
        .I3(a),
        .I4(b[1]),
        .I5(\aux[0]_i_7_n_0 ),
        .O(\aux[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\b_reg_reg[6]_0 [0]),
        .Q(aux[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\b_reg_reg[6]_0 [1]),
        .Q(aux[1]));
  MUXF7 \aux_reg[1]_i_3 
       (.I0(\aux[1]_i_5_n_0 ),
        .I1(\aux[1]_i_6_n_0 ),
        .O(\aux_reg[1]_i_3_n_0 ),
        .S(\op_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\b_reg_reg[6]_0 [2]),
        .Q(aux[2]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\b_reg_reg[6]_0 [3]),
        .Q(aux[3]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\b_reg_reg[6]_0 [4]),
        .PRE(reset_IBUF),
        .Q(aux[4]));
  MUXF7 \aux_reg[4]_i_4 
       (.I0(\aux[4]_i_6_n_0 ),
        .I1(\aux[4]_i_7_n_0 ),
        .O(\aux_reg[4]_0 ),
        .S(\op_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\b_reg_reg[7]_0 [0]),
        .PRE(reset_IBUF),
        .Q(aux[5]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\b_reg_reg[6]_0 [5]),
        .Q(aux[6]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\b_reg_reg[7]_0 [1]),
        .Q(aux[7]));
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
        .DI({i__carry_i_1_n_0,first_op0_carry_n_6,aux[2],aux1[0]}),
        .O({first_op0[4:2],\NLW_first_op0_inferred__0/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_2__1_n_0,i__carry_i_3__0_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  CARRY4 \first_op0_inferred__0/i__carry__0 
       (.CI(\first_op0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_first_op0_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\first_op0_inferred__0/i__carry__0_n_2 ,\first_op0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1_n_0,aux[4]}),
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
        .I2(aux2[4]),
        .I3(aux2[1]),
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
        .S({i__carry_i_1__1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,aux1[1]}));
  CARRY4 \first_op3_inferred__0/i__carry__0 
       (.CI(\first_op3_inferred__0/i__carry_n_0 ),
        .CO({\NLW_first_op3_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],\first_op3_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,aux1[3]}),
        .O({\NLW_first_op3_inferred__0/i__carry__0_O_UNCONNECTED [3:2],first_op3[7:6]}),
        .S({1'b0,1'b0,i__carry__0_i_1__0_n_0,i__carry__0_i_2_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \first_op[1]_i_1 
       (.I0(aux1[0]),
        .I1(aux[1]),
        .O(first_op0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_1 ),
        .CLR(reset_IBUF),
        .D(aux[0]),
        .Q(\aux_reg[6]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_1 ),
        .CLR(reset_IBUF),
        .D(first_op0[1]),
        .Q(\aux_reg[6]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_1 ),
        .CLR(reset_IBUF),
        .D(first_op0[2]),
        .Q(\aux_reg[6]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_1 ),
        .CLR(reset_IBUF),
        .D(first_op0[3]),
        .Q(\aux_reg[6]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_1 ),
        .CLR(reset_IBUF),
        .D(first_op0[4]),
        .Q(\aux_reg[6]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_1 ),
        .CLR(reset_IBUF),
        .D(first_op0[5]),
        .Q(\aux_reg[6]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_1 ),
        .CLR(reset_IBUF),
        .D(first_op0[6]),
        .Q(\aux_reg[6]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \first_op_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_1 ),
        .CLR(reset_IBUF),
        .D(first_op0[7]),
        .Q(a));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(first_op0_carry__0_n_7),
        .I1(aux[6]),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    i__carry__0_i_1__0
       (.I0(\aux1_reg_n_0_[6] ),
        .I1(aux1[5]),
        .I2(aux1[4]),
        .O(i__carry__0_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_1__1
       (.I0(a),
        .I1(Q[0]),
        .I2(b[7]),
        .O(\aux_reg[5]_1 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2
       (.I0(aux1[5]),
        .I1(aux1[4]),
        .I2(aux1[3]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2__0
       (.I0(b[6]),
        .I1(Q[0]),
        .I2(\aux_reg[6]_0 [6]),
        .O(\aux_reg[5]_1 [2]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_2__1
       (.I0(first_op0_carry__0_n_7),
        .I1(aux[6]),
        .I2(first_op0_carry__0_n_6),
        .I3(aux[7]),
        .O(i__carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h6999)) 
    i__carry__0_i_3
       (.I0(aux[6]),
        .I1(first_op0_carry__0_n_7),
        .I2(first_op0_carry_n_4),
        .I3(aux[5]),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_3__0
       (.I0(b[5]),
        .I1(Q[0]),
        .I2(\aux_reg[6]_0 [5]),
        .O(\aux_reg[5]_1 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4
       (.I0(aux[4]),
        .I1(first_op0_carry_n_4),
        .I2(aux[5]),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4__0
       (.I0(b[4]),
        .I1(Q[0]),
        .I2(\aux_reg[6]_0 [4]),
        .O(\aux_reg[5]_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(aux[4]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1__0
       (.I0(b[3]),
        .I1(Q[0]),
        .I2(\aux_reg[6]_0 [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__1
       (.I0(aux1[4]),
        .I1(aux1[2]),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2
       (.I0(aux1[3]),
        .I1(aux1[1]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2__0
       (.I0(b[2]),
        .I1(Q[0]),
        .I2(\aux_reg[6]_0 [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__1
       (.I0(aux[4]),
        .I1(first_op0_carry_n_5),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3
       (.I0(aux1[2]),
        .I1(aux1[0]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__0
       (.I0(first_op0_carry_n_6),
        .I1(aux[3]),
        .O(i__carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3__1
       (.I0(b[1]),
        .I1(Q[0]),
        .I2(\aux_reg[6]_0 [1]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_4
       (.I0(aux2[0]),
        .I1(first_op3[2]),
        .I2(aux[2]),
        .O(i__carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4__0
       (.I0(b[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_5
       (.I0(aux1[0]),
        .I1(aux[1]),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEBBEEEEFFBF)) 
    \op[0]_i_1 
       (.I0(\op[0]_i_2_n_0 ),
        .I1(aux[6]),
        .I2(aux[4]),
        .I3(aux[0]),
        .I4(aux[1]),
        .I5(aux[2]),
        .O(\op[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFEFCFFEEEFFCF)) 
    \op[0]_i_2 
       (.I0(aux[4]),
        .I1(\op[0]_i_3_n_0 ),
        .I2(aux[3]),
        .I3(aux[1]),
        .I4(aux[2]),
        .I5(aux[0]),
        .O(\op[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDDDF)) 
    \op[0]_i_3 
       (.I0(aux[5]),
        .I1(aux[7]),
        .I2(aux[3]),
        .I3(aux[1]),
        .O(\op[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFBD)) 
    \op[1]_i_1 
       (.I0(aux[1]),
        .I1(aux[6]),
        .I2(aux[4]),
        .I3(\op[1]_i_2_n_0 ),
        .O(\op[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDBBFFFFF)) 
    \op[1]_i_2 
       (.I0(aux[0]),
        .I1(aux[2]),
        .I2(aux[3]),
        .I3(aux[1]),
        .I4(aux[5]),
        .I5(aux[7]),
        .O(\op[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEEFEFEFEFEFEF)) 
    \op[2]_i_1 
       (.I0(aux[7]),
        .I1(\op[2]_i_2_n_0 ),
        .I2(aux[0]),
        .I3(aux[1]),
        .I4(aux[6]),
        .I5(aux[2]),
        .O(\op[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFCFFDFFFFFFFF)) 
    \op[2]_i_2 
       (.I0(aux[6]),
        .I1(aux[4]),
        .I2(aux[3]),
        .I3(aux[2]),
        .I4(aux[1]),
        .I5(aux[5]),
        .O(\op[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \op[4]_i_1 
       (.I0(aux[7]),
        .I1(\op[4]_i_2_n_0 ),
        .I2(\op[4]_i_3_n_0 ),
        .O(\op[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hD575D7D7)) 
    \op[4]_i_2 
       (.I0(aux[5]),
        .I1(aux[1]),
        .I2(aux[0]),
        .I3(aux[2]),
        .I4(aux[3]),
        .O(\op[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFB9FFB9FF6F656F)) 
    \op[4]_i_3 
       (.I0(aux[6]),
        .I1(aux[3]),
        .I2(aux[2]),
        .I3(aux[4]),
        .I4(aux[1]),
        .I5(aux[0]),
        .O(\op[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBD)) 
    \op[5]_i_2 
       (.I0(aux[0]),
        .I1(aux[2]),
        .I2(aux[3]),
        .I3(aux[4]),
        .I4(\op[5]_i_4_n_0 ),
        .I5(\op[5]_i_5_n_0 ),
        .O(\op[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \op[5]_i_4 
       (.I0(aux[7]),
        .I1(aux[5]),
        .O(\op[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \op[5]_i_5 
       (.I0(aux[1]),
        .I1(aux[6]),
        .O(\op[5]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_2 ),
        .CLR(reset_IBUF),
        .D(\op[0]_i_1_n_0 ),
        .Q(\op_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_2 ),
        .CLR(reset_IBUF),
        .D(\op[1]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_2 ),
        .CLR(reset_IBUF),
        .D(\op[2]_i_1_n_0 ),
        .Q(\op_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_2 ),
        .CLR(reset_IBUF),
        .D(\op[4]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[0]_2 ),
        .CLR(reset_IBUF),
        .D(\op[5]_i_2_n_0 ),
        .Q(\op_reg_n_0_[5] ));
  LUT4 #(
    .INIT(16'hF704)) 
    rx_empty_i_1
       (.I0(rd_aux),
        .I1(\state_reg_reg[1]_0 ),
        .I2(\state_reg_reg[1]_1 ),
        .I3(rx_empty),
        .O(rx_empty_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rx_empty_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(rx_empty_i_1_n_0),
        .Q(rx_empty));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[1]_3 ),
        .CLR(reset_IBUF),
        .D(aux[0]),
        .Q(b[0]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[1]_3 ),
        .CLR(reset_IBUF),
        .D(first_op0[1]),
        .Q(b[1]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[1]_3 ),
        .CLR(reset_IBUF),
        .D(first_op0[2]),
        .Q(b[2]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[1]_3 ),
        .CLR(reset_IBUF),
        .D(first_op0[3]),
        .Q(b[3]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[1]_3 ),
        .CLR(reset_IBUF),
        .D(first_op0[4]),
        .Q(b[4]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[1]_3 ),
        .CLR(reset_IBUF),
        .D(first_op0[5]),
        .Q(b[5]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[1]_3 ),
        .CLR(reset_IBUF),
        .D(first_op0[6]),
        .Q(b[6]));
  FDCE #(
    .INIT(1'b0)) 
    \second_op_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg_reg[1]_3 ),
        .CLR(reset_IBUF),
        .D(first_op0[7]),
        .Q(b[7]));
  LUT5 #(
    .INIT(32'hFF00F008)) 
    \state_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1] ),
        .I1(out),
        .I2(reset_IBUF),
        .I3(\state_reg_reg[1]_1 ),
        .I4(\state_reg_reg[1]_0 ),
        .O(\state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF5500300000)) 
    \state_reg[1]_i_1 
       (.I0(rd_aux),
        .I1(\b_reg_reg[6] ),
        .I2(\b_reg_reg[7] ),
        .I3(reset_IBUF),
        .I4(\state_reg_reg[1]_1 ),
        .I5(\state_reg_reg[1]_0 ),
        .O(\state_reg[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state_reg[0]_i_1_n_0 ),
        .Q(\state_reg_reg[1]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state_reg[1]_i_1_n_0 ),
        .Q(\state_reg_reg[1]_0 ));
endmodule

module rx_module
   (out,
    \aux_reg[6] ,
    Q,
    \aux_reg[4] ,
    \first_op_reg[7] ,
    \second_op_reg[7] ,
    \state_reg_reg[1] ,
    E,
    \aux_reg[6]_0 ,
    \op_reg[5] ,
    \b_reg_reg[0]_0 ,
    \state_reg_reg[0] ,
    reset_IBUF,
    \state_reg_reg[1]_0 ,
    rx_IBUF,
    s_tick,
    clk_IBUF_BUFG);
  output [0:0]out;
  output [5:0]\aux_reg[6] ;
  output [1:0]Q;
  output \aux_reg[4] ;
  output [0:0]\first_op_reg[7] ;
  output [0:0]\second_op_reg[7] ;
  output \state_reg_reg[1] ;
  output [0:0]E;
  output \aux_reg[6]_0 ;
  output [0:0]\op_reg[5] ;
  output \b_reg_reg[0]_0 ;
  input \state_reg_reg[0] ;
  input reset_IBUF;
  input \state_reg_reg[1]_0 ;
  input rx_IBUF;
  input s_tick;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire [1:0]Q;
  wire \aux[7]_i_2_n_0 ;
  wire \aux_reg[4] ;
  wire [5:0]\aux_reg[6] ;
  wire \aux_reg[6]_0 ;
  wire b_next;
  wire \b_reg_reg[0]_0 ;
  wire clk_IBUF_BUFG;
  wire [6:0]dout;
  wire \first_op[7]_i_2_n_0 ;
  wire [0:0]\first_op_reg[7] ;
  wire [2:0]n_reg;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire \n_reg[2]_i_2__0_n_0 ;
  wire \op[5]_i_3_n_0 ;
  wire [0:0]\op_reg[5] ;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire reset_IBUF;
  wire rx_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_0 ;
  wire \s_reg[1]_i_1_n_0 ;
  wire \s_reg[2]_i_1__0_n_0 ;
  wire \s_reg[3]_i_2__0_n_0 ;
  wire \s_reg[3]_i_3_n_0 ;
  wire s_tick;
  wire \second_op[7]_i_2_n_0 ;
  wire \second_op[7]_i_3_n_0 ;
  wire [0:0]\second_op_reg[7] ;
  (* RTL_KEEP = "yes" *) wire [1:1]state_reg;
  wire \state_reg_reg[0] ;
  wire \state_reg_reg[1] ;
  wire \state_reg_reg[1]_0 ;

  LUT5 #(
    .INIT(32'h31FF3100)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg),
        .I1(out),
        .I2(s_tick),
        .I3(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .I4(out),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h38FF3800)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(s_tick),
        .I1(state_reg),
        .I2(out),
        .I3(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .I4(state_reg),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC8C8C8CF)) 
    \FSM_sequential_state_reg[1]_i_2__0 
       (.I0(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I1(\b_reg_reg[0]_0 ),
        .I2(out),
        .I3(state_reg),
        .I4(rx_IBUF),
        .I5(\n_reg[2]_i_2__0_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(out));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg));
  LUT6 #(
    .INIT(64'hFF7FF7FF00000000)) 
    \aux[0]_i_1 
       (.I0(dout[1]),
        .I1(\aux_reg[4] ),
        .I2(dout[3]),
        .I3(dout[4]),
        .I4(dout[2]),
        .I5(dout[0]),
        .O(\aux_reg[6] [0]));
  LUT6 #(
    .INIT(64'hAA2AA2AAAAAAAA2A)) 
    \aux[1]_i_1 
       (.I0(dout[1]),
        .I1(\aux_reg[4] ),
        .I2(dout[2]),
        .I3(dout[4]),
        .I4(dout[3]),
        .I5(dout[0]),
        .O(\aux_reg[6] [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA28AAAAAA)) 
    \aux[2]_i_1 
       (.I0(dout[2]),
        .I1(dout[3]),
        .I2(dout[0]),
        .I3(\aux_reg[4] ),
        .I4(dout[1]),
        .I5(dout[4]),
        .O(\aux_reg[6] [2]));
  LUT6 #(
    .INIT(64'hAA2AAAAAAAAAAAAA)) 
    \aux[3]_i_1 
       (.I0(dout[3]),
        .I1(dout[1]),
        .I2(dout[0]),
        .I3(dout[4]),
        .I4(dout[2]),
        .I5(\aux_reg[4] ),
        .O(\aux_reg[6] [3]));
  LUT6 #(
    .INIT(64'hEBAAAAAAAAAAAAAA)) 
    \aux[4]_i_1 
       (.I0(dout[4]),
        .I1(dout[3]),
        .I2(dout[0]),
        .I3(\aux_reg[4] ),
        .I4(dout[1]),
        .I5(dout[2]),
        .O(\aux_reg[6] [4]));
  LUT2 #(
    .INIT(4'h2)) 
    \aux[6]_i_1 
       (.I0(dout[6]),
        .I1(\aux_reg[6]_0 ),
        .O(\aux_reg[6] [5]));
  LUT6 #(
    .INIT(64'h0080080000000080)) 
    \aux[6]_i_2 
       (.I0(dout[1]),
        .I1(\aux_reg[4] ),
        .I2(dout[2]),
        .I3(dout[4]),
        .I4(dout[3]),
        .I5(dout[0]),
        .O(\aux_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \aux[7]_i_1 
       (.I0(\aux[7]_i_2_n_0 ),
        .I1(dout[0]),
        .I2(dout[1]),
        .I3(\state_reg_reg[0] ),
        .I4(\state_reg_reg[1]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    \aux[7]_i_2 
       (.I0(dout[6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(dout[3]),
        .I4(dout[2]),
        .I5(dout[4]),
        .O(\aux[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[7]_i_1__0 
       (.I0(\b_reg_reg[0]_0 ),
        .I1(out),
        .O(b_next));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \b_reg[7]_i_2 
       (.I0(state_reg),
        .I1(s_tick),
        .I2(s_reg[3]),
        .I3(s_reg[2]),
        .I4(s_reg[1]),
        .I5(s_reg[0]),
        .O(\b_reg_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[1]),
        .Q(dout[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[2]),
        .Q(dout[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[3]),
        .Q(dout[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[4]),
        .Q(dout[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(Q[0]),
        .Q(dout[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[6]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(Q[1]),
        .Q(dout[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(rx_IBUF),
        .Q(Q[1]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \first_op[7]_i_1 
       (.I0(\aux_reg[4] ),
        .I1(\state_reg_reg[0] ),
        .I2(\first_op[7]_i_2_n_0 ),
        .I3(dout[4]),
        .I4(dout[3]),
        .I5(dout[0]),
        .O(\first_op_reg[7] ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \first_op[7]_i_2 
       (.I0(reset_IBUF),
        .I1(\state_reg_reg[1]_0 ),
        .I2(dout[2]),
        .I3(dout[1]),
        .O(\first_op[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333B3CC000080CC)) 
    \n_reg[0]_i_1 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .I3(b_next),
        .I4(\n_reg[2]_i_2__0_n_0 ),
        .I5(state_reg),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6666E6AA000080AA)) 
    \n_reg[1]_i_1 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .I3(b_next),
        .I4(\n_reg[2]_i_2__0_n_0 ),
        .I5(state_reg),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7878F8F0000080F0)) 
    \n_reg[2]_i_1 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .I3(b_next),
        .I4(\n_reg[2]_i_2__0_n_0 ),
        .I5(state_reg),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \n_reg[2]_i_2__0 
       (.I0(\s_reg[3]_i_3_n_0 ),
        .I1(s_reg[3]),
        .I2(s_tick),
        .I3(out),
        .I4(state_reg),
        .O(\n_reg[2]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(n_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(n_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(n_reg[2]));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \op[5]_i_1 
       (.I0(\aux_reg[4] ),
        .I1(\state_reg_reg[0] ),
        .I2(\op[5]_i_3_n_0 ),
        .I3(reset_IBUF),
        .I4(dout[2]),
        .I5(\state_reg_reg[1]_0 ),
        .O(\op_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \op[5]_i_3 
       (.I0(dout[3]),
        .I1(dout[0]),
        .I2(dout[4]),
        .I3(dout[1]),
        .O(\op[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h02FE)) 
    \s_reg[0]_i_1 
       (.I0(rx_IBUF),
        .I1(state_reg),
        .I2(out),
        .I3(s_reg[0]),
        .O(\s_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02FEFE02)) 
    \s_reg[1]_i_1 
       (.I0(rx_IBUF),
        .I1(state_reg),
        .I2(out),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .O(\s_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FEFE02FE02FE02)) 
    \s_reg[2]_i_1__0 
       (.I0(rx_IBUF),
        .I1(state_reg),
        .I2(out),
        .I3(s_reg[2]),
        .I4(s_reg[1]),
        .I5(s_reg[0]),
        .O(\s_reg[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFF0DFFF0000000F)) 
    \s_reg[3]_i_1__0 
       (.I0(s_reg[3]),
        .I1(\s_reg[3]_i_3_n_0 ),
        .I2(out),
        .I3(state_reg),
        .I4(rx_IBUF),
        .I5(s_tick),
        .O(s_next));
  LUT5 #(
    .INIT(32'h989F9890)) 
    \s_reg[3]_i_2__0 
       (.I0(\s_reg[3]_i_3_n_0 ),
        .I1(s_reg[3]),
        .I2(state_reg),
        .I3(out),
        .I4(rx_IBUF),
        .O(\s_reg[3]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \s_reg[3]_i_3 
       (.I0(s_reg[2]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .O(\s_reg[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[0]_i_1_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[1]_i_1_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[2]_i_1__0_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[3]_i_2__0_n_0 ),
        .Q(s_reg[3]));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \second_op[7]_i_1 
       (.I0(\second_op[7]_i_2_n_0 ),
        .I1(reset_IBUF),
        .I2(\state_reg_reg[1]_0 ),
        .I3(dout[1]),
        .I4(dout[0]),
        .I5(\second_op[7]_i_3_n_0 ),
        .O(\second_op_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \second_op[7]_i_2 
       (.I0(\state_reg_reg[0] ),
        .I1(dout[6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\second_op[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \second_op[7]_i_3 
       (.I0(dout[2]),
        .I1(dout[4]),
        .I2(dout[3]),
        .O(\second_op[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \state_reg[1]_i_2 
       (.I0(dout[6]),
        .I1(dout[1]),
        .I2(dout[3]),
        .I3(dout[0]),
        .I4(dout[2]),
        .I5(dout[4]),
        .O(\state_reg_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state_reg[1]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(dout[6]),
        .O(\aux_reg[4] ));
endmodule

module tx_interface
   (tx_start,
    rd_aux,
    \state_reg_reg[1]_0 ,
    \aux_reg[3]_0 ,
    D,
    \b_reg_reg[6] ,
    \aux_reg[0]_0 ,
    \FSM_sequential_state_reg_reg[0] ,
    clk_IBUF_BUFG,
    rx_empty,
    reset_IBUF,
    \op_reg[4] ,
    \op_reg[5] ,
    \op_reg[4]_0 ,
    \op_reg[0] ,
    Q,
    \op_reg[5]_0 ,
    \op_reg[2] ,
    \op_reg[2]_0 ,
    out,
    \op_reg[5]_1 );
  output tx_start;
  output rd_aux;
  output [0:0]\state_reg_reg[1]_0 ;
  output \aux_reg[3]_0 ;
  output [0:0]D;
  output [6:0]\b_reg_reg[6] ;
  output \aux_reg[0]_0 ;
  input \FSM_sequential_state_reg_reg[0] ;
  input clk_IBUF_BUFG;
  input rx_empty;
  input reset_IBUF;
  input \op_reg[4] ;
  input \op_reg[5] ;
  input \op_reg[4]_0 ;
  input \op_reg[0] ;
  input [0:0]Q;
  input \op_reg[5]_0 ;
  input \op_reg[2] ;
  input \op_reg[2]_0 ;
  input [0:0]out;
  input [0:0]\op_reg[5]_1 ;

  wire [0:0]D;
  wire \FSM_sequential_state_reg_reg[0] ;
  wire [0:0]Q;
  wire aux;
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
  wire \aux[1]_i_1__0_n_0 ;
  wire \aux[2]_i_1__0_n_0 ;
  wire \aux[2]_i_3_n_0 ;
  wire \aux[3]_i_1__0_n_0 ;
  wire \aux[3]_i_3_n_0 ;
  wire \aux[4]_i_2_n_0 ;
  wire \aux[4]_i_3_n_0 ;
  wire \aux[4]_i_5_n_0 ;
  wire \aux[4]_i_8_n_0 ;
  wire \aux[5]_i_1_n_0 ;
  wire \aux[5]_i_4_n_0 ;
  wire \aux[5]_i_7_n_0 ;
  wire \aux[5]_i_8_n_0 ;
  wire \aux[5]_i_9_n_0 ;
  wire \aux[6]_i_1__0_n_0 ;
  wire \aux[6]_i_4_n_0 ;
  wire \aux[6]_i_7_n_0 ;
  wire \aux[6]_i_8_n_0 ;
  wire \aux[7]_i_1__0_n_0 ;
  wire \aux[7]_i_2__0_n_0 ;
  wire \aux[7]_i_4_n_0 ;
  wire \aux[7]_i_7_n_0 ;
  wire \aux[7]_i_8_n_0 ;
  wire \aux_reg[0]_0 ;
  wire \aux_reg[3]_0 ;
  wire \aux_reg[5]_i_3_n_0 ;
  wire \aux_reg[5]_i_3_n_1 ;
  wire \aux_reg[5]_i_3_n_2 ;
  wire \aux_reg[5]_i_3_n_3 ;
  wire \aux_reg[5]_i_3_n_4 ;
  wire \aux_reg[5]_i_3_n_5 ;
  wire \aux_reg[5]_i_3_n_6 ;
  wire \aux_reg[5]_i_3_n_7 ;
  wire \aux_reg[6]_i_3_n_0 ;
  wire \aux_reg[6]_i_3_n_1 ;
  wire \aux_reg[6]_i_3_n_2 ;
  wire \aux_reg[6]_i_3_n_3 ;
  wire \aux_reg[6]_i_3_n_4 ;
  wire \aux_reg[6]_i_3_n_5 ;
  wire \aux_reg[6]_i_3_n_6 ;
  wire \aux_reg[6]_i_3_n_7 ;
  wire \aux_reg_n_0_[0] ;
  wire \aux_reg_n_0_[1] ;
  wire \aux_reg_n_0_[2] ;
  wire \aux_reg_n_0_[3] ;
  wire \aux_reg_n_0_[4] ;
  wire \aux_reg_n_0_[5] ;
  wire \aux_reg_n_0_[6] ;
  wire \aux_reg_n_0_[7] ;
  wire [6:0]\b_reg_reg[6] ;
  wire clk_IBUF_BUFG;
  wire [7:0]dig;
  wire \dig[1]_i_2_n_0 ;
  wire \dig[2]_i_3_n_0 ;
  wire \dig[2]_i_4_n_0 ;
  wire \dig[2]_i_5_n_0 ;
  wire \dig[2]_i_6_n_0 ;
  wire \dig[2]_i_7_n_0 ;
  wire \dig[3]_i_10_n_0 ;
  wire \dig[3]_i_11_n_0 ;
  wire \dig[3]_i_3_n_0 ;
  wire \dig[3]_i_5_n_0 ;
  wire \dig[3]_i_6_n_0 ;
  wire \dig[3]_i_7_n_0 ;
  wire \dig[3]_i_8_n_0 ;
  wire \dig[3]_i_9_n_0 ;
  wire \dig[4]_i_10_n_0 ;
  wire \dig[4]_i_11_n_0 ;
  wire \dig[4]_i_3_n_0 ;
  wire \dig[4]_i_5_n_0 ;
  wire \dig[4]_i_6_n_0 ;
  wire \dig[4]_i_7_n_0 ;
  wire \dig[4]_i_8_n_0 ;
  wire \dig[4]_i_9_n_0 ;
  wire \dig[5]_i_10_n_0 ;
  wire \dig[5]_i_11_n_0 ;
  wire \dig[5]_i_3_n_0 ;
  wire \dig[5]_i_5_n_0 ;
  wire \dig[5]_i_6_n_0 ;
  wire \dig[5]_i_7_n_0 ;
  wire \dig[5]_i_8_n_0 ;
  wire \dig[5]_i_9_n_0 ;
  wire \dig[7]_i_1_n_0 ;
  wire \dig[7]_i_3_n_0 ;
  wire \dig[7]_i_4_n_0 ;
  wire dig_0;
  wire \dig_reg[1]_i_1_n_3 ;
  wire \dig_reg[2]_i_1_n_3 ;
  wire \dig_reg[2]_i_2_n_0 ;
  wire \dig_reg[2]_i_2_n_1 ;
  wire \dig_reg[2]_i_2_n_2 ;
  wire \dig_reg[2]_i_2_n_3 ;
  wire \dig_reg[2]_i_2_n_4 ;
  wire \dig_reg[2]_i_2_n_5 ;
  wire \dig_reg[2]_i_2_n_6 ;
  wire \dig_reg[2]_i_2_n_7 ;
  wire \dig_reg[3]_i_1_n_3 ;
  wire \dig_reg[3]_i_2_n_0 ;
  wire \dig_reg[3]_i_2_n_1 ;
  wire \dig_reg[3]_i_2_n_2 ;
  wire \dig_reg[3]_i_2_n_3 ;
  wire \dig_reg[3]_i_2_n_4 ;
  wire \dig_reg[3]_i_2_n_5 ;
  wire \dig_reg[3]_i_2_n_6 ;
  wire \dig_reg[3]_i_2_n_7 ;
  wire \dig_reg[3]_i_4_n_0 ;
  wire \dig_reg[3]_i_4_n_1 ;
  wire \dig_reg[3]_i_4_n_2 ;
  wire \dig_reg[3]_i_4_n_3 ;
  wire \dig_reg[3]_i_4_n_4 ;
  wire \dig_reg[3]_i_4_n_5 ;
  wire \dig_reg[3]_i_4_n_6 ;
  wire \dig_reg[4]_i_1_n_3 ;
  wire \dig_reg[4]_i_2_n_0 ;
  wire \dig_reg[4]_i_2_n_1 ;
  wire \dig_reg[4]_i_2_n_2 ;
  wire \dig_reg[4]_i_2_n_3 ;
  wire \dig_reg[4]_i_2_n_4 ;
  wire \dig_reg[4]_i_2_n_5 ;
  wire \dig_reg[4]_i_2_n_6 ;
  wire \dig_reg[4]_i_2_n_7 ;
  wire \dig_reg[4]_i_4_n_0 ;
  wire \dig_reg[4]_i_4_n_1 ;
  wire \dig_reg[4]_i_4_n_2 ;
  wire \dig_reg[4]_i_4_n_3 ;
  wire \dig_reg[4]_i_4_n_4 ;
  wire \dig_reg[4]_i_4_n_5 ;
  wire \dig_reg[4]_i_4_n_6 ;
  wire \dig_reg[5]_i_1_n_3 ;
  wire \dig_reg[5]_i_2_n_0 ;
  wire \dig_reg[5]_i_2_n_1 ;
  wire \dig_reg[5]_i_2_n_2 ;
  wire \dig_reg[5]_i_2_n_3 ;
  wire \dig_reg[5]_i_2_n_4 ;
  wire \dig_reg[5]_i_2_n_5 ;
  wire \dig_reg[5]_i_2_n_6 ;
  wire \dig_reg[5]_i_2_n_7 ;
  wire \dig_reg[5]_i_4_n_0 ;
  wire \dig_reg[5]_i_4_n_1 ;
  wire \dig_reg[5]_i_4_n_2 ;
  wire \dig_reg[5]_i_4_n_3 ;
  wire \dig_reg[5]_i_4_n_4 ;
  wire \dig_reg[5]_i_4_n_5 ;
  wire \dig_reg[5]_i_4_n_6 ;
  wire \div[0]_i_1_n_0 ;
  wire \div[0]_i_2_n_0 ;
  wire \div[1]_i_1_n_0 ;
  wire \div[1]_i_2_n_0 ;
  wire \div[2]_i_1_n_0 ;
  wire \div[3]_i_1_n_0 ;
  wire \div[4]_i_1_n_0 ;
  wire \div[5]_i_1_n_0 ;
  wire \div[5]_i_2_n_0 ;
  wire \div_reg_n_0_[0] ;
  wire \div_reg_n_0_[1] ;
  wire \div_reg_n_0_[2] ;
  wire \div_reg_n_0_[3] ;
  wire \div_reg_n_0_[4] ;
  wire \div_reg_n_0_[5] ;
  wire \op_reg[0] ;
  wire \op_reg[2] ;
  wire \op_reg[2]_0 ;
  wire \op_reg[4] ;
  wire \op_reg[4]_0 ;
  wire \op_reg[5] ;
  wire \op_reg[5]_0 ;
  wire [0:0]\op_reg[5]_1 ;
  wire [0:0]out;
  wire rd_aux;
  wire rd_aux_i_1_n_0;
  wire reset_IBUF;
  wire rx_empty;
  wire [7:7]salida;
  wire \salida[1]_i_1_n_0 ;
  wire \salida[4]_i_1_n_0 ;
  wire \salida[6]_i_2_n_0 ;
  wire \salida[7]_i_1_n_0 ;
  wire [0:0]state_reg;
  wire state_reg2__179_carry__0_i_1_n_0;
  wire state_reg2__179_carry__0_i_1_n_1;
  wire state_reg2__179_carry__0_i_1_n_2;
  wire state_reg2__179_carry__0_i_1_n_3;
  wire state_reg2__179_carry__0_i_1_n_4;
  wire state_reg2__179_carry__0_i_1_n_5;
  wire state_reg2__179_carry__0_i_1_n_6;
  wire state_reg2__179_carry__0_i_1_n_7;
  wire state_reg2__179_carry__0_i_2_n_0;
  wire state_reg2__179_carry__0_i_3_n_0;
  wire state_reg2__179_carry__0_i_4_n_0;
  wire state_reg2__179_carry__0_i_5_n_0;
  wire state_reg2__179_carry__0_i_6_n_0;
  wire state_reg2__179_carry__0_i_7_n_0;
  wire state_reg2__179_carry__0_i_8_n_0;
  wire state_reg2__179_carry__0_i_9_n_0;
  wire state_reg2__179_carry__0_n_0;
  wire state_reg2__179_carry__0_n_1;
  wire state_reg2__179_carry__0_n_2;
  wire state_reg2__179_carry__0_n_3;
  wire state_reg2__179_carry_i_10_n_0;
  wire state_reg2__179_carry_i_11_n_0;
  wire state_reg2__179_carry_i_12_n_0;
  wire state_reg2__179_carry_i_1_n_0;
  wire state_reg2__179_carry_i_1_n_1;
  wire state_reg2__179_carry_i_1_n_2;
  wire state_reg2__179_carry_i_1_n_3;
  wire state_reg2__179_carry_i_1_n_4;
  wire state_reg2__179_carry_i_1_n_5;
  wire state_reg2__179_carry_i_1_n_6;
  wire state_reg2__179_carry_i_2_n_0;
  wire state_reg2__179_carry_i_3_n_0;
  wire state_reg2__179_carry_i_4_n_0;
  wire state_reg2__179_carry_i_5_n_0;
  wire state_reg2__179_carry_i_6_n_0;
  wire state_reg2__179_carry_i_6_n_1;
  wire state_reg2__179_carry_i_6_n_2;
  wire state_reg2__179_carry_i_6_n_3;
  wire state_reg2__179_carry_i_6_n_4;
  wire state_reg2__179_carry_i_6_n_5;
  wire state_reg2__179_carry_i_6_n_6;
  wire state_reg2__179_carry_i_7_n_0;
  wire state_reg2__179_carry_i_8_n_0;
  wire state_reg2__179_carry_i_9_n_0;
  wire state_reg2__179_carry_n_0;
  wire state_reg2__179_carry_n_1;
  wire state_reg2__179_carry_n_2;
  wire state_reg2__179_carry_n_3;
  wire state_reg2__5_carry__0_i_1_n_0;
  wire state_reg2__5_carry__0_i_2_n_0;
  wire state_reg2__5_carry__0_i_3_n_0;
  wire state_reg2__5_carry__0_i_4_n_0;
  wire state_reg2__5_carry__0_i_5_n_0;
  wire state_reg2__5_carry__0_i_6_n_0;
  wire state_reg2__5_carry__0_i_7_n_0;
  wire state_reg2__5_carry__0_i_8_n_0;
  wire state_reg2__5_carry__0_n_0;
  wire state_reg2__5_carry__0_n_1;
  wire state_reg2__5_carry__0_n_2;
  wire state_reg2__5_carry__0_n_3;
  wire state_reg2__5_carry__0_n_5;
  wire state_reg2__5_carry__0_n_6;
  wire state_reg2__5_carry__0_n_7;
  wire state_reg2__5_carry_i_1_n_0;
  wire state_reg2__5_carry_i_2_n_0;
  wire state_reg2__5_carry_i_3_n_0;
  wire state_reg2__5_carry_i_4_n_0;
  wire state_reg2__5_carry_i_5_n_0;
  wire state_reg2__5_carry_i_6_n_0;
  wire state_reg2__5_carry_i_7_n_0;
  wire state_reg2__5_carry_n_0;
  wire state_reg2__5_carry_n_1;
  wire state_reg2__5_carry_n_2;
  wire state_reg2__5_carry_n_3;
  wire state_reg2__5_carry_n_4;
  wire state_reg2__5_carry_n_5;
  wire state_reg2__5_carry_n_6;
  wire state_reg2__5_carry_n_7;
  wire \state_reg[0]_i_1_n_0 ;
  wire \state_reg[0]_i_2_n_0 ;
  wire \state_reg[1]_i_1_n_0 ;
  wire \state_reg[1]_i_2__0_n_0 ;
  wire \state_reg[1]_i_3__0_n_0 ;
  wire [0:0]\state_reg_reg[1]_0 ;
  wire tx_start;
  wire tx_start_aux4_out;
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
  wire [3:1]\NLW_dig_reg[1]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_dig_reg[2]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_dig_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[3]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_dig_reg[3]_i_4_O_UNCONNECTED ;
  wire [3:1]\NLW_dig_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[4]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_dig_reg[4]_i_4_O_UNCONNECTED ;
  wire [3:1]\NLW_dig_reg[5]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[5]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_dig_reg[5]_i_4_O_UNCONNECTED ;
  wire [3:0]NLW_state_reg2__179_carry_O_UNCONNECTED;
  wire [3:0]NLW_state_reg2__179_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_state_reg2__179_carry_i_1_O_UNCONNECTED;
  wire [0:0]NLW_state_reg2__179_carry_i_6_O_UNCONNECTED;
  wire [3:3]NLW_state_reg2__5_carry__0_O_UNCONNECTED;

  CARRY4 aux0__118_carry
       (.CI(1'b0),
        .CO({aux0__118_carry_n_0,aux0__118_carry_n_1,aux0__118_carry_n_2,aux0__118_carry_n_3}),
        .CYINIT(aux0__75_carry__1_n_1),
        .DI({aux0__75_carry_n_5,aux0__75_carry_n_6,aux0__75_carry_n_7,aux0__118_carry_i_1_n_0}),
        .O({aux0__118_carry_n_4,aux0__118_carry_n_5,aux0__118_carry_n_6,aux0__118_carry_n_7}),
        .S({aux0__118_carry_i_2_n_0,aux0__118_carry_i_3_n_0,aux0__118_carry_i_4_n_0,aux0__118_carry_i_5_n_0}));
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
        .I1(\aux_reg[6]_i_3_n_5 ),
        .I2(aux0__75_carry__0_n_5),
        .O(aux0__118_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry__0_i_2
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[6]_i_3_n_6 ),
        .I2(aux0__75_carry__0_n_6),
        .O(aux0__118_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry__0_i_3
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[6]_i_3_n_7 ),
        .I2(aux0__75_carry__0_n_7),
        .O(aux0__118_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry__0_i_4
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_4 ),
        .I2(aux0__75_carry_n_4),
        .O(aux0__118_carry__0_i_4_n_0));
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
        .I1(\aux_reg[6]_i_3_n_4 ),
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
        .I1(\aux_reg[5]_i_3_n_5 ),
        .I2(aux0__75_carry_n_5),
        .O(aux0__118_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry_i_3
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_6 ),
        .I2(aux0__75_carry_n_6),
        .O(aux0__118_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry_i_4
       (.I0(aux0__75_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_7 ),
        .I2(aux0__75_carry_n_7),
        .O(aux0__118_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__118_carry_i_5
       (.I0(aux0__75_carry__1_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[5] ),
        .O(aux0__118_carry_i_5_n_0));
  CARRY4 aux0__161_carry
       (.CI(1'b0),
        .CO({aux0__161_carry_n_0,aux0__161_carry_n_1,aux0__161_carry_n_2,aux0__161_carry_n_3}),
        .CYINIT(aux0__118_carry__1_n_1),
        .DI({aux0__118_carry_n_5,aux0__118_carry_n_6,aux0__118_carry_n_7,aux0__161_carry_i_1_n_0}),
        .O({aux0__161_carry_n_4,aux0__161_carry_n_5,aux0__161_carry_n_6,aux0__161_carry_n_7}),
        .S({aux0__161_carry_i_2_n_0,aux0__161_carry_i_3_n_0,aux0__161_carry_i_4_n_0,aux0__161_carry_i_5_n_0}));
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
        .I1(\aux_reg[6]_i_3_n_5 ),
        .I2(aux0__118_carry__0_n_5),
        .O(aux0__161_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry__0_i_2
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[6]_i_3_n_6 ),
        .I2(aux0__118_carry__0_n_6),
        .O(aux0__161_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry__0_i_3
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[6]_i_3_n_7 ),
        .I2(aux0__118_carry__0_n_7),
        .O(aux0__161_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry__0_i_4
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_4 ),
        .I2(aux0__118_carry_n_4),
        .O(aux0__161_carry__0_i_4_n_0));
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
        .I1(\aux_reg[6]_i_3_n_4 ),
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
        .I1(\aux_reg[5]_i_3_n_5 ),
        .I2(aux0__118_carry_n_5),
        .O(aux0__161_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry_i_3
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_6 ),
        .I2(aux0__118_carry_n_6),
        .O(aux0__161_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry_i_4
       (.I0(aux0__118_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_7 ),
        .I2(aux0__118_carry_n_7),
        .O(aux0__161_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__161_carry_i_5
       (.I0(aux0__118_carry__1_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[4] ),
        .O(aux0__161_carry_i_5_n_0));
  CARRY4 aux0__204_carry
       (.CI(1'b0),
        .CO({aux0__204_carry_n_0,aux0__204_carry_n_1,aux0__204_carry_n_2,aux0__204_carry_n_3}),
        .CYINIT(aux0__161_carry__1_n_1),
        .DI({aux0__161_carry_n_5,aux0__161_carry_n_6,aux0__161_carry_n_7,aux0__204_carry_i_1_n_0}),
        .O({aux0__204_carry_n_4,aux0__204_carry_n_5,aux0__204_carry_n_6,aux0__204_carry_n_7}),
        .S({aux0__204_carry_i_2_n_0,aux0__204_carry_i_3_n_0,aux0__204_carry_i_4_n_0,aux0__204_carry_i_5_n_0}));
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
        .I1(\aux_reg[6]_i_3_n_5 ),
        .I2(aux0__161_carry__0_n_5),
        .O(aux0__204_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry__0_i_2
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[6]_i_3_n_6 ),
        .I2(aux0__161_carry__0_n_6),
        .O(aux0__204_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry__0_i_3
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[6]_i_3_n_7 ),
        .I2(aux0__161_carry__0_n_7),
        .O(aux0__204_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry__0_i_4
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_4 ),
        .I2(aux0__161_carry_n_4),
        .O(aux0__204_carry__0_i_4_n_0));
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
        .I1(\aux_reg[6]_i_3_n_4 ),
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
        .I1(\aux_reg[5]_i_3_n_5 ),
        .I2(aux0__161_carry_n_5),
        .O(aux0__204_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry_i_3
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_6 ),
        .I2(aux0__161_carry_n_6),
        .O(aux0__204_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry_i_4
       (.I0(aux0__161_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_7 ),
        .I2(aux0__161_carry_n_7),
        .O(aux0__204_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__204_carry_i_5
       (.I0(aux0__161_carry__1_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[3] ),
        .O(aux0__204_carry_i_5_n_0));
  CARRY4 aux0__247_carry
       (.CI(1'b0),
        .CO({aux0__247_carry_n_0,aux0__247_carry_n_1,aux0__247_carry_n_2,aux0__247_carry_n_3}),
        .CYINIT(aux0__204_carry__1_n_1),
        .DI({aux0__204_carry_n_5,aux0__204_carry_n_6,aux0__204_carry_n_7,aux0__247_carry_i_1_n_0}),
        .O({aux0__247_carry_n_4,aux0__247_carry_n_5,aux0__247_carry_n_6,aux0__247_carry_n_7}),
        .S({aux0__247_carry_i_2_n_0,aux0__247_carry_i_3_n_0,aux0__247_carry_i_4_n_0,aux0__247_carry_i_5_n_0}));
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
        .I1(\aux_reg[6]_i_3_n_5 ),
        .I2(aux0__204_carry__0_n_5),
        .O(aux0__247_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry__0_i_2
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[6]_i_3_n_6 ),
        .I2(aux0__204_carry__0_n_6),
        .O(aux0__247_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry__0_i_3
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[6]_i_3_n_7 ),
        .I2(aux0__204_carry__0_n_7),
        .O(aux0__247_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry__0_i_4
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_4 ),
        .I2(aux0__204_carry_n_4),
        .O(aux0__247_carry__0_i_4_n_0));
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
        .I1(\aux_reg[6]_i_3_n_4 ),
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
        .I1(\aux_reg[5]_i_3_n_5 ),
        .I2(aux0__204_carry_n_5),
        .O(aux0__247_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry_i_3
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_6 ),
        .I2(aux0__204_carry_n_6),
        .O(aux0__247_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry_i_4
       (.I0(aux0__204_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_7 ),
        .I2(aux0__204_carry_n_7),
        .O(aux0__247_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__247_carry_i_5
       (.I0(aux0__204_carry__1_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[2] ),
        .O(aux0__247_carry_i_5_n_0));
  CARRY4 aux0__290_carry
       (.CI(1'b0),
        .CO({aux0__290_carry_n_0,aux0__290_carry_n_1,aux0__290_carry_n_2,aux0__290_carry_n_3}),
        .CYINIT(aux0__247_carry__1_n_1),
        .DI({aux0__247_carry_n_5,aux0__247_carry_n_6,aux0__247_carry_n_7,aux0__290_carry_i_1_n_0}),
        .O({aux0__290_carry_n_4,aux0__290_carry_n_5,aux0__290_carry_n_6,aux0__290_carry_n_7}),
        .S({aux0__290_carry_i_2_n_0,aux0__290_carry_i_3_n_0,aux0__290_carry_i_4_n_0,aux0__290_carry_i_5_n_0}));
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
        .I1(\aux_reg[6]_i_3_n_5 ),
        .I2(aux0__247_carry__0_n_5),
        .O(aux0__290_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry__0_i_2
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[6]_i_3_n_6 ),
        .I2(aux0__247_carry__0_n_6),
        .O(aux0__290_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry__0_i_3
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[6]_i_3_n_7 ),
        .I2(aux0__247_carry__0_n_7),
        .O(aux0__290_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry__0_i_4
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_4 ),
        .I2(aux0__247_carry_n_4),
        .O(aux0__290_carry__0_i_4_n_0));
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
        .I1(\aux_reg[6]_i_3_n_4 ),
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
        .I1(\aux_reg[5]_i_3_n_5 ),
        .I2(aux0__247_carry_n_5),
        .O(aux0__290_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry_i_3
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_6 ),
        .I2(aux0__247_carry_n_6),
        .O(aux0__290_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry_i_4
       (.I0(aux0__247_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_7 ),
        .I2(aux0__247_carry_n_7),
        .O(aux0__290_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__290_carry_i_5
       (.I0(aux0__247_carry__1_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[1] ),
        .O(aux0__290_carry_i_5_n_0));
  CARRY4 aux0__32_carry
       (.CI(1'b0),
        .CO({aux0__32_carry_n_0,aux0__32_carry_n_1,aux0__32_carry_n_2,aux0__32_carry_n_3}),
        .CYINIT(aux0_carry__1_n_0),
        .DI({aux0_carry_n_4,aux0_carry_n_5,aux0_carry_n_6,aux0_carry_n_7}),
        .O({aux0__32_carry_n_4,aux0__32_carry_n_5,aux0__32_carry_n_6,aux0__32_carry_n_7}),
        .S({aux0__32_carry_i_1_n_0,aux0__32_carry_i_2_n_0,aux0__32_carry_i_3_n_0,aux0__32_carry_i_4_n_0}));
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
       (.I0(aux0_carry__1_n_0),
        .I1(\aux_reg[6]_i_3_n_5 ),
        .I2(aux0_carry__0_n_4),
        .O(aux0__32_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry__0_i_2
       (.I0(aux0_carry__1_n_0),
        .I1(\aux_reg[6]_i_3_n_6 ),
        .I2(aux0_carry__0_n_5),
        .O(aux0__32_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry__0_i_3
       (.I0(aux0_carry__1_n_0),
        .I1(\aux_reg[6]_i_3_n_7 ),
        .I2(aux0_carry__0_n_6),
        .O(aux0__32_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry__0_i_4
       (.I0(aux0_carry__1_n_0),
        .I1(\aux_reg[5]_i_3_n_4 ),
        .I2(aux0_carry__0_n_7),
        .O(aux0__32_carry__0_i_4_n_0));
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
       (.I0(aux0_carry__1_n_0),
        .I1(aux0_carry__1_i_7_n_3),
        .I2(aux0_carry__1_n_6),
        .O(aux0__32_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry__1_i_3
       (.I0(aux0_carry__1_n_0),
        .I1(\aux_reg[6]_i_3_n_4 ),
        .I2(aux0_carry__1_n_7),
        .O(aux0__32_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry_i_1
       (.I0(aux0_carry__1_n_0),
        .I1(\aux_reg[5]_i_3_n_5 ),
        .I2(aux0_carry_n_4),
        .O(aux0__32_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry_i_2
       (.I0(aux0_carry__1_n_0),
        .I1(\aux_reg[5]_i_3_n_6 ),
        .I2(aux0_carry_n_5),
        .O(aux0__32_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry_i_3
       (.I0(aux0_carry__1_n_0),
        .I1(\aux_reg[5]_i_3_n_7 ),
        .I2(aux0_carry_n_6),
        .O(aux0__32_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_carry_i_4
       (.I0(aux0_carry__1_n_0),
        .I1(\div_reg_n_0_[0] ),
        .I2(aux0_carry_n_7),
        .O(aux0__32_carry_i_4_n_0));
  CARRY4 aux0__75_carry
       (.CI(1'b0),
        .CO({aux0__75_carry_n_0,aux0__75_carry_n_1,aux0__75_carry_n_2,aux0__75_carry_n_3}),
        .CYINIT(aux0__32_carry__1_n_1),
        .DI({aux0__32_carry_n_5,aux0__32_carry_n_6,aux0__32_carry_n_7,aux0__75_carry_i_1_n_0}),
        .O({aux0__75_carry_n_4,aux0__75_carry_n_5,aux0__75_carry_n_6,aux0__75_carry_n_7}),
        .S({aux0__75_carry_i_2_n_0,aux0__75_carry_i_3_n_0,aux0__75_carry_i_4_n_0,aux0__75_carry_i_5_n_0}));
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
        .I1(\aux_reg[6]_i_3_n_5 ),
        .I2(aux0__32_carry__0_n_5),
        .O(aux0__75_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry__0_i_2
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[6]_i_3_n_6 ),
        .I2(aux0__32_carry__0_n_6),
        .O(aux0__75_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry__0_i_3
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[6]_i_3_n_7 ),
        .I2(aux0__32_carry__0_n_7),
        .O(aux0__75_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry__0_i_4
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_4 ),
        .I2(aux0__32_carry_n_4),
        .O(aux0__75_carry__0_i_4_n_0));
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
        .I1(\aux_reg[6]_i_3_n_4 ),
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
        .I1(\aux_reg[5]_i_3_n_5 ),
        .I2(aux0__32_carry_n_5),
        .O(aux0__75_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry_i_3
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_6 ),
        .I2(aux0__32_carry_n_6),
        .O(aux0__75_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry_i_4
       (.I0(aux0__32_carry__1_n_1),
        .I1(\aux_reg[5]_i_3_n_7 ),
        .I2(aux0__32_carry_n_7),
        .O(aux0__75_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_carry_i_5
       (.I0(aux0__32_carry__1_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[6] ),
        .O(aux0__75_carry_i_5_n_0));
  CARRY4 aux0_carry
       (.CI(1'b0),
        .CO({aux0_carry_n_0,aux0_carry_n_1,aux0_carry_n_2,aux0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({aux0_carry_i_1_n_0,aux0_carry_i_2_n_0,aux0_carry_i_3_n_0,1'b1}),
        .O({aux0_carry_n_4,aux0_carry_n_5,aux0_carry_n_6,aux0_carry_n_7}),
        .S({aux0_carry_i_4_n_0,aux0_carry_i_5_n_0,aux0_carry_i_6_n_0,aux0_carry_i_7_n_0}));
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
       (.I0(\aux_reg[6]_i_3_n_6 ),
        .O(aux0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_2
       (.I0(\aux_reg[6]_i_3_n_7 ),
        .O(aux0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_3
       (.I0(\aux_reg[5]_i_3_n_4 ),
        .O(aux0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_4
       (.I0(\aux_reg[5]_i_3_n_5 ),
        .O(aux0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_5
       (.I0(\aux_reg[6]_i_3_n_6 ),
        .O(aux0_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_6
       (.I0(\aux_reg[6]_i_3_n_7 ),
        .O(aux0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_7
       (.I0(\aux_reg[5]_i_3_n_4 ),
        .O(aux0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__0_i_8
       (.I0(\aux_reg[5]_i_3_n_5 ),
        .O(aux0_carry__0_i_8_n_0));
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
       (.I0(\aux_reg[6]_i_3_n_4 ),
        .O(aux0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__1_i_3
       (.I0(\aux_reg[6]_i_3_n_5 ),
        .O(aux0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__1_i_4
       (.I0(aux0_carry__1_i_7_n_3),
        .O(aux0_carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__1_i_5
       (.I0(\aux_reg[6]_i_3_n_4 ),
        .O(aux0_carry__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry__1_i_6
       (.I0(\aux_reg[6]_i_3_n_5 ),
        .O(aux0_carry__1_i_6_n_0));
  CARRY4 aux0_carry__1_i_7
       (.CI(\aux_reg[6]_i_3_n_0 ),
        .CO({NLW_aux0_carry__1_i_7_CO_UNCONNECTED[3:1],aux0_carry__1_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_aux0_carry__1_i_7_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry_i_1
       (.I0(\aux_reg[5]_i_3_n_6 ),
        .O(aux0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry_i_2
       (.I0(\aux_reg[5]_i_3_n_7 ),
        .O(aux0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry_i_3
       (.I0(\div_reg_n_0_[0] ),
        .O(aux0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry_i_4
       (.I0(\aux_reg[5]_i_3_n_6 ),
        .O(aux0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_carry_i_5
       (.I0(\aux_reg[5]_i_3_n_7 ),
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
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \aux[0]_i_5 
       (.I0(state_reg),
        .I1(\aux_reg_n_0_[0] ),
        .I2(\state_reg_reg[1]_0 ),
        .O(\aux_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E22EE2)) 
    \aux[1]_i_1__0 
       (.I0(\op_reg[2]_0 ),
        .I1(\state_reg_reg[1]_0 ),
        .I2(aux0__290_carry_n_7),
        .I3(\div_reg_n_0_[0] ),
        .I4(aux0__290_carry__1_n_1),
        .I5(state_reg),
        .O(\aux[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hD11DD1D1D1D1D11D)) 
    \aux[2]_i_1__0 
       (.I0(\op_reg[2] ),
        .I1(\state_reg_reg[1]_0 ),
        .I2(aux0__290_carry_n_6),
        .I3(aux0__290_carry__1_n_1),
        .I4(\aux_reg[5]_i_3_n_7 ),
        .I5(\aux[2]_i_3_n_0 ),
        .O(\aux[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \aux[2]_i_3 
       (.I0(\div_reg_n_0_[0] ),
        .I1(aux0__290_carry_n_7),
        .O(\aux[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA0A2A2A)) 
    \aux[3]_i_1__0 
       (.I0(\op_reg[0] ),
        .I1(\aux[3]_i_3_n_0 ),
        .I2(\state_reg_reg[1]_0 ),
        .I3(aux0__290_carry_n_5),
        .I4(aux0__290_carry__1_n_1),
        .I5(state_reg),
        .O(\aux[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h556A6AAAAA959555)) 
    \aux[3]_i_3 
       (.I0(aux0__290_carry_n_5),
        .I1(\div_reg_n_0_[0] ),
        .I2(aux0__290_carry_n_7),
        .I3(aux0__290_carry_n_6),
        .I4(\aux_reg[5]_i_3_n_7 ),
        .I5(\aux_reg[5]_i_3_n_6 ),
        .O(\aux[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \aux[3]_i_7 
       (.I0(\state_reg_reg[1]_0 ),
        .I1(Q),
        .O(\aux_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000000F30A0A)) 
    \aux[4]_i_1__0 
       (.I0(rx_empty),
        .I1(\aux[4]_i_3_n_0 ),
        .I2(state_reg),
        .I3(\FSM_sequential_state_reg_reg[0] ),
        .I4(\state_reg_reg[1]_0 ),
        .I5(reset_IBUF),
        .O(aux));
  LUT6 #(
    .INIT(64'h000000000EFEFE0E)) 
    \aux[4]_i_2 
       (.I0(Q),
        .I1(\op_reg[5]_0 ),
        .I2(\state_reg_reg[1]_0 ),
        .I3(aux0__290_carry_n_4),
        .I4(\aux[4]_i_5_n_0 ),
        .I5(state_reg),
        .O(\aux[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \aux[4]_i_3 
       (.I0(\div_reg_n_0_[0] ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\div_reg_n_0_[4] ),
        .I3(\div_reg_n_0_[3] ),
        .I4(\div_reg_n_0_[1] ),
        .I5(\div_reg_n_0_[2] ),
        .O(\aux[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \aux[4]_i_5 
       (.I0(\aux_reg[5]_i_3_n_5 ),
        .I1(\aux[4]_i_8_n_0 ),
        .I2(aux0__290_carry__1_n_1),
        .O(\aux[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1117177717771777)) 
    \aux[4]_i_8 
       (.I0(aux0__290_carry_n_5),
        .I1(\aux_reg[5]_i_3_n_6 ),
        .I2(aux0__290_carry_n_6),
        .I3(\aux_reg[5]_i_3_n_7 ),
        .I4(aux0__290_carry_n_7),
        .I5(\div_reg_n_0_[0] ),
        .O(\aux[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD11DD1D1D1D1D11D)) 
    \aux[5]_i_1 
       (.I0(\op_reg[4]_0 ),
        .I1(\state_reg_reg[1]_0 ),
        .I2(aux0__290_carry__0_n_7),
        .I3(aux0__290_carry__1_n_1),
        .I4(\aux_reg[5]_i_3_n_4 ),
        .I5(\aux[5]_i_4_n_0 ),
        .O(\aux[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h71)) 
    \aux[5]_i_4 
       (.I0(\aux_reg[5]_i_3_n_5 ),
        .I1(aux0__290_carry_n_4),
        .I2(\aux[4]_i_8_n_0 ),
        .O(\aux[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \aux[5]_i_7 
       (.I0(\div_reg_n_0_[4] ),
        .I1(\div_reg_n_0_[2] ),
        .O(\aux[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \aux[5]_i_8 
       (.I0(\div_reg_n_0_[3] ),
        .I1(\div_reg_n_0_[1] ),
        .O(\aux[5]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \aux[5]_i_9 
       (.I0(\div_reg_n_0_[2] ),
        .I1(\div_reg_n_0_[0] ),
        .O(\aux[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hD11DD1D1D1D1D11D)) 
    \aux[6]_i_1__0 
       (.I0(\op_reg[4] ),
        .I1(\state_reg_reg[1]_0 ),
        .I2(aux0__290_carry__0_n_6),
        .I3(aux0__290_carry__1_n_1),
        .I4(\aux_reg[6]_i_3_n_7 ),
        .I5(\aux[6]_i_4_n_0 ),
        .O(\aux[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h007171FF)) 
    \aux[6]_i_4 
       (.I0(\aux_reg[5]_i_3_n_5 ),
        .I1(aux0__290_carry_n_4),
        .I2(\aux[4]_i_8_n_0 ),
        .I3(\aux_reg[5]_i_3_n_4 ),
        .I4(aux0__290_carry__0_n_7),
        .O(\aux[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \aux[6]_i_7 
       (.I0(\div_reg_n_0_[5] ),
        .I1(\div_reg_n_0_[4] ),
        .O(\aux[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \aux[6]_i_8 
       (.I0(\div_reg_n_0_[5] ),
        .I1(\div_reg_n_0_[3] ),
        .O(\aux[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \aux[7]_i_1__0 
       (.I0(state_reg),
        .I1(\FSM_sequential_state_reg_reg[0] ),
        .I2(\state_reg_reg[1]_0 ),
        .I3(reset_IBUF),
        .O(\aux[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hDD111DD1)) 
    \aux[7]_i_2__0 
       (.I0(\op_reg[5] ),
        .I1(\state_reg_reg[1]_0 ),
        .I2(\aux[7]_i_4_n_0 ),
        .I3(aux0__290_carry__0_n_5),
        .I4(aux0__290_carry__1_n_1),
        .O(\aux[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6565666566656666)) 
    \aux[7]_i_4 
       (.I0(\aux_reg[6]_i_3_n_6 ),
        .I1(\aux[7]_i_7_n_0 ),
        .I2(\aux[7]_i_8_n_0 ),
        .I3(\aux[4]_i_8_n_0 ),
        .I4(aux0__290_carry_n_4),
        .I5(\aux_reg[5]_i_3_n_5 ),
        .O(\aux[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \aux[7]_i_7 
       (.I0(\aux_reg[5]_i_3_n_4 ),
        .I1(aux0__290_carry__0_n_7),
        .I2(\aux_reg[6]_i_3_n_7 ),
        .I3(aux0__290_carry__0_n_6),
        .O(\aux[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \aux[7]_i_8 
       (.I0(aux0__290_carry__0_n_7),
        .I1(\aux_reg[5]_i_3_n_4 ),
        .I2(aux0__290_carry__0_n_6),
        .I3(\aux_reg[6]_i_3_n_7 ),
        .O(\aux[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(aux),
        .D(\op_reg[5]_1 ),
        .Q(\aux_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(aux),
        .D(\aux[1]_i_1__0_n_0 ),
        .Q(\aux_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(aux),
        .D(\aux[2]_i_1__0_n_0 ),
        .Q(\aux_reg_n_0_[2] ),
        .R(\aux[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(aux),
        .D(\aux[3]_i_1__0_n_0 ),
        .Q(\aux_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(aux),
        .D(\aux[4]_i_2_n_0 ),
        .Q(\aux_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(aux),
        .D(\aux[5]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[5] ),
        .R(\aux[7]_i_1__0_n_0 ));
  CARRY4 \aux_reg[5]_i_3 
       (.CI(1'b0),
        .CO({\aux_reg[5]_i_3_n_0 ,\aux_reg[5]_i_3_n_1 ,\aux_reg[5]_i_3_n_2 ,\aux_reg[5]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_reg_n_0_[4] ,\div_reg_n_0_[3] ,\div_reg_n_0_[2] ,1'b0}),
        .O({\aux_reg[5]_i_3_n_4 ,\aux_reg[5]_i_3_n_5 ,\aux_reg[5]_i_3_n_6 ,\aux_reg[5]_i_3_n_7 }),
        .S({\aux[5]_i_7_n_0 ,\aux[5]_i_8_n_0 ,\aux[5]_i_9_n_0 ,\div_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(aux),
        .D(\aux[6]_i_1__0_n_0 ),
        .Q(\aux_reg_n_0_[6] ),
        .R(\aux[7]_i_1__0_n_0 ));
  CARRY4 \aux_reg[6]_i_3 
       (.CI(\aux_reg[5]_i_3_n_0 ),
        .CO({\aux_reg[6]_i_3_n_0 ,\aux_reg[6]_i_3_n_1 ,\aux_reg[6]_i_3_n_2 ,\aux_reg[6]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\div_reg_n_0_[5] ,\div_reg_n_0_[5] }),
        .O({\aux_reg[6]_i_3_n_4 ,\aux_reg[6]_i_3_n_5 ,\aux_reg[6]_i_3_n_6 ,\aux_reg[6]_i_3_n_7 }),
        .S({\div_reg_n_0_[5] ,\div_reg_n_0_[5] ,\aux[6]_i_7_n_0 ,\aux[6]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(aux),
        .D(\aux[7]_i_2__0_n_0 ),
        .Q(\aux_reg_n_0_[7] ),
        .R(\aux[7]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[7]_i_2__0 
       (.I0(salida),
        .I1(out),
        .O(D));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_2 
       (.I0(\dig_reg[2]_i_1_n_3 ),
        .I1(\dig_reg[2]_i_2_n_4 ),
        .O(\dig[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_3 
       (.I0(\dig_reg[3]_i_1_n_3 ),
        .I1(\dig_reg[3]_i_2_n_4 ),
        .O(\dig[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[2]_i_4 
       (.I0(\dig_reg[3]_i_1_n_3 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\dig_reg[3]_i_2_n_5 ),
        .O(\dig[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[2]_i_5 
       (.I0(\dig_reg[3]_i_1_n_3 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\dig_reg[3]_i_2_n_6 ),
        .O(\dig[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[2]_i_6 
       (.I0(\dig_reg[3]_i_1_n_3 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\dig_reg[3]_i_2_n_7 ),
        .O(\dig[2]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[2]_i_7 
       (.I0(\dig_reg[3]_i_1_n_3 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\dig_reg[3]_i_4_n_4 ),
        .O(\dig[2]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[3]_i_10 
       (.I0(\dig_reg[4]_i_1_n_3 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\dig_reg[4]_i_4_n_6 ),
        .O(\dig[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[3]_i_11 
       (.I0(\dig_reg[4]_i_1_n_3 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[3] ),
        .O(\dig[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[3]_i_3 
       (.I0(\dig_reg[4]_i_1_n_3 ),
        .I1(\dig_reg[4]_i_2_n_4 ),
        .O(\dig[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[3]_i_5 
       (.I0(\dig_reg[4]_i_1_n_3 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\dig_reg[4]_i_2_n_5 ),
        .O(\dig[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[3]_i_6 
       (.I0(\dig_reg[4]_i_1_n_3 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\dig_reg[4]_i_2_n_6 ),
        .O(\dig[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[3]_i_7 
       (.I0(\dig_reg[4]_i_1_n_3 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\dig_reg[4]_i_2_n_7 ),
        .O(\dig[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[3]_i_8 
       (.I0(\dig_reg[4]_i_1_n_3 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\dig_reg[4]_i_4_n_4 ),
        .O(\dig[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[3]_i_9 
       (.I0(\dig_reg[4]_i_1_n_3 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\dig_reg[4]_i_4_n_5 ),
        .O(\dig[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[4]_i_10 
       (.I0(\dig_reg[5]_i_1_n_3 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\dig_reg[5]_i_4_n_6 ),
        .O(\dig[4]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[4]_i_11 
       (.I0(\dig_reg[5]_i_1_n_3 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[4] ),
        .O(\dig[4]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[4]_i_3 
       (.I0(\dig_reg[5]_i_1_n_3 ),
        .I1(\dig_reg[5]_i_2_n_4 ),
        .O(\dig[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[4]_i_5 
       (.I0(\dig_reg[5]_i_1_n_3 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\dig_reg[5]_i_2_n_5 ),
        .O(\dig[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[4]_i_6 
       (.I0(\dig_reg[5]_i_1_n_3 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\dig_reg[5]_i_2_n_6 ),
        .O(\dig[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[4]_i_7 
       (.I0(\dig_reg[5]_i_1_n_3 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\dig_reg[5]_i_2_n_7 ),
        .O(\dig[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[4]_i_8 
       (.I0(\dig_reg[5]_i_1_n_3 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\dig_reg[5]_i_4_n_4 ),
        .O(\dig[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[4]_i_9 
       (.I0(\dig_reg[5]_i_1_n_3 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\dig_reg[5]_i_4_n_5 ),
        .O(\dig[4]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[5]_i_10 
       (.I0(state_reg2__5_carry__0_n_0),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__5_carry_n_7),
        .O(\dig[5]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[5]_i_11 
       (.I0(state_reg2__5_carry__0_n_0),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[5] ),
        .O(\dig[5]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[5]_i_3 
       (.I0(state_reg2__5_carry__0_n_0),
        .I1(state_reg2__5_carry__0_n_5),
        .O(\dig[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[5]_i_5 
       (.I0(state_reg2__5_carry__0_n_0),
        .I1(\div_reg_n_0_[5] ),
        .I2(state_reg2__5_carry__0_n_6),
        .O(\dig[5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[5]_i_6 
       (.I0(state_reg2__5_carry__0_n_0),
        .I1(\div_reg_n_0_[5] ),
        .I2(state_reg2__5_carry__0_n_7),
        .O(\dig[5]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[5]_i_7 
       (.I0(state_reg2__5_carry__0_n_0),
        .I1(\div_reg_n_0_[4] ),
        .I2(state_reg2__5_carry_n_4),
        .O(\dig[5]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[5]_i_8 
       (.I0(state_reg2__5_carry__0_n_0),
        .I1(\div_reg_n_0_[3] ),
        .I2(state_reg2__5_carry_n_5),
        .O(\dig[5]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[5]_i_9 
       (.I0(state_reg2__5_carry__0_n_0),
        .I1(\div_reg_n_0_[2] ),
        .I2(state_reg2__5_carry_n_6),
        .O(\dig[5]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \dig[7]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[0] ),
        .I1(\state_reg_reg[1]_0 ),
        .I2(state_reg),
        .I3(reset_IBUF),
        .O(\dig[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0070)) 
    \dig[7]_i_2 
       (.I0(\FSM_sequential_state_reg_reg[0] ),
        .I1(\state_reg_reg[1]_0 ),
        .I2(state_reg),
        .I3(reset_IBUF),
        .O(dig_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \dig[7]_i_3 
       (.I0(\div_reg_n_0_[3] ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\div_reg_n_0_[5] ),
        .I3(\dig[7]_i_4_n_0 ),
        .O(\dig[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \dig[7]_i_4 
       (.I0(\div_reg_n_0_[2] ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(\div_reg_n_0_[0] ),
        .O(\dig[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(dig_0),
        .D(state_reg2__179_carry__0_n_0),
        .Q(dig[0]),
        .R(\dig[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(dig_0),
        .D(\dig_reg[1]_i_1_n_3 ),
        .Q(dig[1]),
        .R(\dig[7]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \dig_reg[1]_i_1 
       (.CI(state_reg2__179_carry__0_i_1_n_0),
        .CO({\NLW_dig_reg[1]_i_1_CO_UNCONNECTED [3:1],\dig_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dig_reg[2]_i_1_n_3 }),
        .O(\NLW_dig_reg[1]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dig[1]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(dig_0),
        .D(\dig_reg[2]_i_1_n_3 ),
        .Q(dig[2]),
        .R(\dig[7]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \dig_reg[2]_i_1 
       (.CI(\dig_reg[2]_i_2_n_0 ),
        .CO({\NLW_dig_reg[2]_i_1_CO_UNCONNECTED [3:1],\dig_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dig_reg[3]_i_1_n_3 }),
        .O(\NLW_dig_reg[2]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dig[2]_i_3_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \dig_reg[2]_i_2 
       (.CI(state_reg2__179_carry_i_6_n_0),
        .CO({\dig_reg[2]_i_2_n_0 ,\dig_reg[2]_i_2_n_1 ,\dig_reg[2]_i_2_n_2 ,\dig_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\dig_reg[3]_i_2_n_5 ,\dig_reg[3]_i_2_n_6 ,\dig_reg[3]_i_2_n_7 ,\dig_reg[3]_i_4_n_4 }),
        .O({\dig_reg[2]_i_2_n_4 ,\dig_reg[2]_i_2_n_5 ,\dig_reg[2]_i_2_n_6 ,\dig_reg[2]_i_2_n_7 }),
        .S({\dig[2]_i_4_n_0 ,\dig[2]_i_5_n_0 ,\dig[2]_i_6_n_0 ,\dig[2]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(dig_0),
        .D(\dig_reg[3]_i_1_n_3 ),
        .Q(dig[3]),
        .R(\dig[7]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \dig_reg[3]_i_1 
       (.CI(\dig_reg[3]_i_2_n_0 ),
        .CO({\NLW_dig_reg[3]_i_1_CO_UNCONNECTED [3:1],\dig_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dig_reg[4]_i_1_n_3 }),
        .O(\NLW_dig_reg[3]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dig[3]_i_3_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \dig_reg[3]_i_2 
       (.CI(\dig_reg[3]_i_4_n_0 ),
        .CO({\dig_reg[3]_i_2_n_0 ,\dig_reg[3]_i_2_n_1 ,\dig_reg[3]_i_2_n_2 ,\dig_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\dig_reg[4]_i_2_n_5 ,\dig_reg[4]_i_2_n_6 ,\dig_reg[4]_i_2_n_7 ,\dig_reg[4]_i_4_n_4 }),
        .O({\dig_reg[3]_i_2_n_4 ,\dig_reg[3]_i_2_n_5 ,\dig_reg[3]_i_2_n_6 ,\dig_reg[3]_i_2_n_7 }),
        .S({\dig[3]_i_5_n_0 ,\dig[3]_i_6_n_0 ,\dig[3]_i_7_n_0 ,\dig[3]_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \dig_reg[3]_i_4 
       (.CI(1'b0),
        .CO({\dig_reg[3]_i_4_n_0 ,\dig_reg[3]_i_4_n_1 ,\dig_reg[3]_i_4_n_2 ,\dig_reg[3]_i_4_n_3 }),
        .CYINIT(\dig_reg[4]_i_1_n_3 ),
        .DI({\dig_reg[4]_i_4_n_5 ,\dig_reg[4]_i_4_n_6 ,\aux_reg_n_0_[3] ,1'b0}),
        .O({\dig_reg[3]_i_4_n_4 ,\dig_reg[3]_i_4_n_5 ,\dig_reg[3]_i_4_n_6 ,\NLW_dig_reg[3]_i_4_O_UNCONNECTED [0]}),
        .S({\dig[3]_i_9_n_0 ,\dig[3]_i_10_n_0 ,\dig[3]_i_11_n_0 ,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(dig_0),
        .D(\dig_reg[4]_i_1_n_3 ),
        .Q(dig[4]),
        .R(\dig[7]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \dig_reg[4]_i_1 
       (.CI(\dig_reg[4]_i_2_n_0 ),
        .CO({\NLW_dig_reg[4]_i_1_CO_UNCONNECTED [3:1],\dig_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dig_reg[5]_i_1_n_3 }),
        .O(\NLW_dig_reg[4]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dig[4]_i_3_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \dig_reg[4]_i_2 
       (.CI(\dig_reg[4]_i_4_n_0 ),
        .CO({\dig_reg[4]_i_2_n_0 ,\dig_reg[4]_i_2_n_1 ,\dig_reg[4]_i_2_n_2 ,\dig_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\dig_reg[5]_i_2_n_5 ,\dig_reg[5]_i_2_n_6 ,\dig_reg[5]_i_2_n_7 ,\dig_reg[5]_i_4_n_4 }),
        .O({\dig_reg[4]_i_2_n_4 ,\dig_reg[4]_i_2_n_5 ,\dig_reg[4]_i_2_n_6 ,\dig_reg[4]_i_2_n_7 }),
        .S({\dig[4]_i_5_n_0 ,\dig[4]_i_6_n_0 ,\dig[4]_i_7_n_0 ,\dig[4]_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \dig_reg[4]_i_4 
       (.CI(1'b0),
        .CO({\dig_reg[4]_i_4_n_0 ,\dig_reg[4]_i_4_n_1 ,\dig_reg[4]_i_4_n_2 ,\dig_reg[4]_i_4_n_3 }),
        .CYINIT(\dig_reg[5]_i_1_n_3 ),
        .DI({\dig_reg[5]_i_4_n_5 ,\dig_reg[5]_i_4_n_6 ,\aux_reg_n_0_[4] ,1'b0}),
        .O({\dig_reg[4]_i_4_n_4 ,\dig_reg[4]_i_4_n_5 ,\dig_reg[4]_i_4_n_6 ,\NLW_dig_reg[4]_i_4_O_UNCONNECTED [0]}),
        .S({\dig[4]_i_9_n_0 ,\dig[4]_i_10_n_0 ,\dig[4]_i_11_n_0 ,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(dig_0),
        .D(\dig_reg[5]_i_1_n_3 ),
        .Q(dig[5]),
        .R(\dig[7]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \dig_reg[5]_i_1 
       (.CI(\dig_reg[5]_i_2_n_0 ),
        .CO({\NLW_dig_reg[5]_i_1_CO_UNCONNECTED [3:1],\dig_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,state_reg2__5_carry__0_n_0}),
        .O(\NLW_dig_reg[5]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dig[5]_i_3_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \dig_reg[5]_i_2 
       (.CI(\dig_reg[5]_i_4_n_0 ),
        .CO({\dig_reg[5]_i_2_n_0 ,\dig_reg[5]_i_2_n_1 ,\dig_reg[5]_i_2_n_2 ,\dig_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({state_reg2__5_carry__0_n_6,state_reg2__5_carry__0_n_7,state_reg2__5_carry_n_4,state_reg2__5_carry_n_5}),
        .O({\dig_reg[5]_i_2_n_4 ,\dig_reg[5]_i_2_n_5 ,\dig_reg[5]_i_2_n_6 ,\dig_reg[5]_i_2_n_7 }),
        .S({\dig[5]_i_5_n_0 ,\dig[5]_i_6_n_0 ,\dig[5]_i_7_n_0 ,\dig[5]_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \dig_reg[5]_i_4 
       (.CI(1'b0),
        .CO({\dig_reg[5]_i_4_n_0 ,\dig_reg[5]_i_4_n_1 ,\dig_reg[5]_i_4_n_2 ,\dig_reg[5]_i_4_n_3 }),
        .CYINIT(state_reg2__5_carry__0_n_0),
        .DI({state_reg2__5_carry_n_6,state_reg2__5_carry_n_7,\aux_reg_n_0_[5] ,1'b0}),
        .O({\dig_reg[5]_i_4_n_4 ,\dig_reg[5]_i_4_n_5 ,\dig_reg[5]_i_4_n_6 ,\NLW_dig_reg[5]_i_4_O_UNCONNECTED [0]}),
        .S({\dig[5]_i_9_n_0 ,\dig[5]_i_10_n_0 ,\dig[5]_i_11_n_0 ,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(dig_0),
        .D(state_reg2__5_carry__0_n_0),
        .Q(dig[6]),
        .R(\dig[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(dig_0),
        .D(\dig[7]_i_3_n_0 ),
        .Q(dig[7]),
        .R(\dig[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0070)) 
    \div[0]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[0] ),
        .I1(\state_reg_reg[1]_0 ),
        .I2(state_reg),
        .I3(\div[0]_i_2_n_0 ),
        .O(\div[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4414141144545415)) 
    \div[0]_i_2 
       (.I0(\state_reg_reg[1]_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\div_reg_n_0_[2] ),
        .I3(\div_reg_n_0_[4] ),
        .I4(\div_reg_n_0_[5] ),
        .I5(\div_reg_n_0_[1] ),
        .O(\div[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AA02880)) 
    \div[1]_i_1 
       (.I0(\div[1]_i_2_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\div_reg_n_0_[5] ),
        .I3(\div_reg_n_0_[4] ),
        .I4(\div_reg_n_0_[2] ),
        .I5(\state_reg_reg[1]_0 ),
        .O(\div[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \div[1]_i_2 
       (.I0(state_reg),
        .I1(\state_reg_reg[1]_0 ),
        .I2(\FSM_sequential_state_reg_reg[0] ),
        .O(\div[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h77777777F3333333)) 
    \div[2]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[0] ),
        .I1(state_reg),
        .I2(\div_reg_n_0_[5] ),
        .I3(\div_reg_n_0_[4] ),
        .I4(\div_reg_n_0_[3] ),
        .I5(\state_reg_reg[1]_0 ),
        .O(\div[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h44C0)) 
    \div[3]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[0] ),
        .I1(state_reg),
        .I2(\div_reg_n_0_[5] ),
        .I3(\state_reg_reg[1]_0 ),
        .O(\div[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \div[4]_i_1 
       (.I0(\state_reg_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg_reg[0] ),
        .O(\div[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h05045504)) 
    \div[5]_i_1 
       (.I0(reset_IBUF),
        .I1(rx_empty),
        .I2(\state_reg_reg[1]_0 ),
        .I3(state_reg),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .O(\div[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2F)) 
    \div[5]_i_2 
       (.I0(\state_reg_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg_reg[0] ),
        .I2(state_reg),
        .O(\div[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[5]_i_1_n_0 ),
        .D(\div[0]_i_1_n_0 ),
        .Q(\div_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[5]_i_1_n_0 ),
        .D(\div[1]_i_1_n_0 ),
        .Q(\div_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[5]_i_1_n_0 ),
        .D(\div[2]_i_1_n_0 ),
        .Q(\div_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[5]_i_1_n_0 ),
        .D(\div[3]_i_1_n_0 ),
        .Q(\div_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[5]_i_1_n_0 ),
        .D(\div[4]_i_1_n_0 ),
        .Q(\div_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[5]_i_1_n_0 ),
        .D(\div[5]_i_2_n_0 ),
        .Q(\div_reg_n_0_[5] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFBFBFFFF00000400)) 
    rd_aux_i_1
       (.I0(\FSM_sequential_state_reg_reg[0] ),
        .I1(\state_reg_reg[1]_0 ),
        .I2(reset_IBUF),
        .I3(\aux[4]_i_3_n_0 ),
        .I4(state_reg),
        .I5(rd_aux),
        .O(rd_aux_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_aux_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(rd_aux_i_1_n_0),
        .Q(rd_aux),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \salida[1]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[0] ),
        .I1(state_reg),
        .I2(dig[1]),
        .O(\salida[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \salida[4]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[0] ),
        .I1(state_reg),
        .I2(dig[4]),
        .O(\salida[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \salida[6]_i_1 
       (.I0(\state_reg_reg[1]_0 ),
        .I1(reset_IBUF),
        .O(tx_start_aux4_out));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \salida[6]_i_2 
       (.I0(\FSM_sequential_state_reg_reg[0] ),
        .I1(state_reg),
        .I2(dig[6]),
        .O(\salida[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \salida[7]_i_1 
       (.I0(state_reg),
        .I1(reset_IBUF),
        .I2(\state_reg_reg[1]_0 ),
        .O(\salida[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_start_aux4_out),
        .D(dig[0]),
        .Q(\b_reg_reg[6] [0]),
        .R(\salida[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_start_aux4_out),
        .D(\salida[1]_i_1_n_0 ),
        .Q(\b_reg_reg[6] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_start_aux4_out),
        .D(dig[2]),
        .Q(\b_reg_reg[6] [2]),
        .R(\salida[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_start_aux4_out),
        .D(dig[3]),
        .Q(\b_reg_reg[6] [3]),
        .R(\salida[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_start_aux4_out),
        .D(\salida[4]_i_1_n_0 ),
        .Q(\b_reg_reg[6] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_start_aux4_out),
        .D(dig[5]),
        .Q(\b_reg_reg[6] [5]),
        .R(\salida[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_start_aux4_out),
        .D(\salida[6]_i_2_n_0 ),
        .Q(\b_reg_reg[6] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \salida_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_start_aux4_out),
        .D(dig[7]),
        .Q(salida),
        .R(\salida[7]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__179_carry
       (.CI(1'b0),
        .CO({state_reg2__179_carry_n_0,state_reg2__179_carry_n_1,state_reg2__179_carry_n_2,state_reg2__179_carry_n_3}),
        .CYINIT(\dig_reg[1]_i_1_n_3 ),
        .DI({state_reg2__179_carry_i_1_n_4,state_reg2__179_carry_i_1_n_5,state_reg2__179_carry_i_1_n_6,\aux_reg_n_0_[0] }),
        .O(NLW_state_reg2__179_carry_O_UNCONNECTED[3:0]),
        .S({state_reg2__179_carry_i_2_n_0,state_reg2__179_carry_i_3_n_0,state_reg2__179_carry_i_4_n_0,state_reg2__179_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__179_carry__0
       (.CI(state_reg2__179_carry_n_0),
        .CO({state_reg2__179_carry__0_n_0,state_reg2__179_carry__0_n_1,state_reg2__179_carry__0_n_2,state_reg2__179_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\dig_reg[1]_i_1_n_3 ,state_reg2__179_carry__0_i_1_n_5,state_reg2__179_carry__0_i_1_n_6,state_reg2__179_carry__0_i_1_n_7}),
        .O(NLW_state_reg2__179_carry__0_O_UNCONNECTED[3:0]),
        .S({state_reg2__179_carry__0_i_2_n_0,state_reg2__179_carry__0_i_3_n_0,state_reg2__179_carry__0_i_4_n_0,state_reg2__179_carry__0_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__179_carry__0_i_1
       (.CI(state_reg2__179_carry_i_1_n_0),
        .CO({state_reg2__179_carry__0_i_1_n_0,state_reg2__179_carry__0_i_1_n_1,state_reg2__179_carry__0_i_1_n_2,state_reg2__179_carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({\dig_reg[2]_i_2_n_5 ,\dig_reg[2]_i_2_n_6 ,\dig_reg[2]_i_2_n_7 ,state_reg2__179_carry_i_6_n_4}),
        .O({state_reg2__179_carry__0_i_1_n_4,state_reg2__179_carry__0_i_1_n_5,state_reg2__179_carry__0_i_1_n_6,state_reg2__179_carry__0_i_1_n_7}),
        .S({state_reg2__179_carry__0_i_6_n_0,state_reg2__179_carry__0_i_7_n_0,state_reg2__179_carry__0_i_8_n_0,state_reg2__179_carry__0_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__179_carry__0_i_2
       (.I0(\dig_reg[1]_i_1_n_3 ),
        .I1(state_reg2__179_carry__0_i_1_n_4),
        .O(state_reg2__179_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry__0_i_3
       (.I0(\dig_reg[1]_i_1_n_3 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(state_reg2__179_carry__0_i_1_n_5),
        .O(state_reg2__179_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry__0_i_4
       (.I0(\dig_reg[1]_i_1_n_3 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(state_reg2__179_carry__0_i_1_n_6),
        .O(state_reg2__179_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry__0_i_5
       (.I0(\dig_reg[1]_i_1_n_3 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(state_reg2__179_carry__0_i_1_n_7),
        .O(state_reg2__179_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry__0_i_6
       (.I0(\dig_reg[2]_i_1_n_3 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\dig_reg[2]_i_2_n_5 ),
        .O(state_reg2__179_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry__0_i_7
       (.I0(\dig_reg[2]_i_1_n_3 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\dig_reg[2]_i_2_n_6 ),
        .O(state_reg2__179_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry__0_i_8
       (.I0(\dig_reg[2]_i_1_n_3 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\dig_reg[2]_i_2_n_7 ),
        .O(state_reg2__179_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry__0_i_9
       (.I0(\dig_reg[2]_i_1_n_3 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(state_reg2__179_carry_i_6_n_4),
        .O(state_reg2__179_carry__0_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__179_carry_i_1
       (.CI(1'b0),
        .CO({state_reg2__179_carry_i_1_n_0,state_reg2__179_carry_i_1_n_1,state_reg2__179_carry_i_1_n_2,state_reg2__179_carry_i_1_n_3}),
        .CYINIT(\dig_reg[2]_i_1_n_3 ),
        .DI({state_reg2__179_carry_i_6_n_5,state_reg2__179_carry_i_6_n_6,\aux_reg_n_0_[1] ,1'b0}),
        .O({state_reg2__179_carry_i_1_n_4,state_reg2__179_carry_i_1_n_5,state_reg2__179_carry_i_1_n_6,NLW_state_reg2__179_carry_i_1_O_UNCONNECTED[0]}),
        .S({state_reg2__179_carry_i_7_n_0,state_reg2__179_carry_i_8_n_0,state_reg2__179_carry_i_9_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry_i_10
       (.I0(\dig_reg[3]_i_1_n_3 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\dig_reg[3]_i_4_n_5 ),
        .O(state_reg2__179_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry_i_11
       (.I0(\dig_reg[3]_i_1_n_3 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\dig_reg[3]_i_4_n_6 ),
        .O(state_reg2__179_carry_i_11_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry_i_12
       (.I0(\dig_reg[3]_i_1_n_3 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[2] ),
        .O(state_reg2__179_carry_i_12_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry_i_2
       (.I0(\dig_reg[1]_i_1_n_3 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(state_reg2__179_carry_i_1_n_4),
        .O(state_reg2__179_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry_i_3
       (.I0(\dig_reg[1]_i_1_n_3 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(state_reg2__179_carry_i_1_n_5),
        .O(state_reg2__179_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry_i_4
       (.I0(\dig_reg[1]_i_1_n_3 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__179_carry_i_1_n_6),
        .O(state_reg2__179_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry_i_5
       (.I0(\dig_reg[1]_i_1_n_3 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[0] ),
        .O(state_reg2__179_carry_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__179_carry_i_6
       (.CI(1'b0),
        .CO({state_reg2__179_carry_i_6_n_0,state_reg2__179_carry_i_6_n_1,state_reg2__179_carry_i_6_n_2,state_reg2__179_carry_i_6_n_3}),
        .CYINIT(\dig_reg[3]_i_1_n_3 ),
        .DI({\dig_reg[3]_i_4_n_5 ,\dig_reg[3]_i_4_n_6 ,\aux_reg_n_0_[2] ,1'b0}),
        .O({state_reg2__179_carry_i_6_n_4,state_reg2__179_carry_i_6_n_5,state_reg2__179_carry_i_6_n_6,NLW_state_reg2__179_carry_i_6_O_UNCONNECTED[0]}),
        .S({state_reg2__179_carry_i_10_n_0,state_reg2__179_carry_i_11_n_0,state_reg2__179_carry_i_12_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry_i_7
       (.I0(\dig_reg[2]_i_1_n_3 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(state_reg2__179_carry_i_6_n_5),
        .O(state_reg2__179_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry_i_8
       (.I0(\dig_reg[2]_i_1_n_3 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__179_carry_i_6_n_6),
        .O(state_reg2__179_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__179_carry_i_9
       (.I0(\dig_reg[2]_i_1_n_3 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[1] ),
        .O(state_reg2__179_carry_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__5_carry
       (.CI(1'b0),
        .CO({state_reg2__5_carry_n_0,state_reg2__5_carry_n_1,state_reg2__5_carry_n_2,state_reg2__5_carry_n_3}),
        .CYINIT(\dig[7]_i_3_n_0 ),
        .DI({state_reg2__5_carry_i_1_n_0,state_reg2__5_carry_i_2_n_0,state_reg2__5_carry_i_3_n_0,\aux_reg_n_0_[6] }),
        .O({state_reg2__5_carry_n_4,state_reg2__5_carry_n_5,state_reg2__5_carry_n_6,state_reg2__5_carry_n_7}),
        .S({state_reg2__5_carry_i_4_n_0,state_reg2__5_carry_i_5_n_0,state_reg2__5_carry_i_6_n_0,state_reg2__5_carry_i_7_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg2__5_carry__0
       (.CI(state_reg2__5_carry_n_0),
        .CO({state_reg2__5_carry__0_n_0,state_reg2__5_carry__0_n_1,state_reg2__5_carry__0_n_2,state_reg2__5_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2__5_carry__0_i_1_n_0,state_reg2__5_carry__0_i_2_n_0,state_reg2__5_carry__0_i_3_n_0,state_reg2__5_carry__0_i_4_n_0}),
        .O({NLW_state_reg2__5_carry__0_O_UNCONNECTED[3],state_reg2__5_carry__0_n_5,state_reg2__5_carry__0_n_6,state_reg2__5_carry__0_n_7}),
        .S({state_reg2__5_carry__0_i_5_n_0,state_reg2__5_carry__0_i_6_n_0,state_reg2__5_carry__0_i_7_n_0,state_reg2__5_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h0001)) 
    state_reg2__5_carry__0_i_1
       (.I0(\div_reg_n_0_[3] ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\div_reg_n_0_[5] ),
        .I3(\dig[7]_i_4_n_0 ),
        .O(state_reg2__5_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__5_carry__0_i_2
       (.I0(\div_reg_n_0_[5] ),
        .I1(\dig[7]_i_3_n_0 ),
        .O(state_reg2__5_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__5_carry__0_i_3
       (.I0(\div_reg_n_0_[5] ),
        .I1(\dig[7]_i_3_n_0 ),
        .O(state_reg2__5_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__5_carry__0_i_4
       (.I0(\div_reg_n_0_[4] ),
        .I1(\dig[7]_i_3_n_0 ),
        .O(state_reg2__5_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    state_reg2__5_carry__0_i_5
       (.I0(\dig[7]_i_3_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .O(state_reg2__5_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    state_reg2__5_carry__0_i_6
       (.I0(\div_reg_n_0_[4] ),
        .I1(\dig[7]_i_4_n_0 ),
        .I2(\div_reg_n_0_[3] ),
        .I3(\div_reg_n_0_[5] ),
        .O(state_reg2__5_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hA957)) 
    state_reg2__5_carry__0_i_7
       (.I0(\div_reg_n_0_[5] ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\dig[7]_i_4_n_0 ),
        .I3(\div_reg_n_0_[4] ),
        .O(state_reg2__5_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'hA55B)) 
    state_reg2__5_carry__0_i_8
       (.I0(\div_reg_n_0_[4] ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\dig[7]_i_4_n_0 ),
        .I3(\div_reg_n_0_[3] ),
        .O(state_reg2__5_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__5_carry_i_1
       (.I0(\div_reg_n_0_[3] ),
        .I1(\dig[7]_i_3_n_0 ),
        .O(state_reg2__5_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__5_carry_i_2
       (.I0(\div_reg_n_0_[2] ),
        .I1(\dig[7]_i_3_n_0 ),
        .O(state_reg2__5_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__5_carry_i_3
       (.I0(\div_reg_n_0_[1] ),
        .I1(\dig[7]_i_3_n_0 ),
        .O(state_reg2__5_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6966696996999696)) 
    state_reg2__5_carry_i_4
       (.I0(\dig[7]_i_3_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\div_reg_n_0_[1] ),
        .I3(\aux_reg_n_0_[7] ),
        .I4(\div_reg_n_0_[0] ),
        .I5(\div_reg_n_0_[2] ),
        .O(state_reg2__5_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h99696696)) 
    state_reg2__5_carry_i_5
       (.I0(\dig[7]_i_3_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\div_reg_n_0_[0] ),
        .I3(\aux_reg_n_0_[7] ),
        .I4(\div_reg_n_0_[1] ),
        .O(state_reg2__5_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    state_reg2__5_carry_i_6
       (.I0(\dig[7]_i_3_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\aux_reg_n_0_[7] ),
        .I3(\div_reg_n_0_[0] ),
        .O(state_reg2__5_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__5_carry_i_7
       (.I0(\dig[7]_i_3_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[6] ),
        .O(state_reg2__5_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFA8880000AAAA)) 
    \state_reg[0]_i_1 
       (.I0(\state_reg[0]_i_2_n_0 ),
        .I1(\state_reg[1]_i_2__0_n_0 ),
        .I2(\state_reg_reg[1]_0 ),
        .I3(\FSM_sequential_state_reg_reg[0] ),
        .I4(reset_IBUF),
        .I5(state_reg),
        .O(\state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFF11F0)) 
    \state_reg[0]_i_2 
       (.I0(\aux[4]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[0] ),
        .I2(rx_empty),
        .I3(\state_reg_reg[1]_0 ),
        .I4(state_reg),
        .O(\state_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF700044)) 
    \state_reg[1]_i_1 
       (.I0(\state_reg[1]_i_2__0_n_0 ),
        .I1(state_reg),
        .I2(\FSM_sequential_state_reg_reg[0] ),
        .I3(reset_IBUF),
        .I4(\state_reg_reg[1]_0 ),
        .O(\state_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \state_reg[1]_i_2__0 
       (.I0(\state_reg[1]_i_3__0_n_0 ),
        .I1(\dig_reg[2]_i_1_n_3 ),
        .I2(\dig_reg[3]_i_1_n_3 ),
        .I3(\state_reg_reg[1]_0 ),
        .I4(\dig[7]_i_3_n_0 ),
        .O(\state_reg[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_reg[1]_i_3__0 
       (.I0(zflag_reg_n_0),
        .I1(\dig_reg[5]_i_1_n_3 ),
        .I2(state_reg2__5_carry__0_n_0),
        .I3(\dig_reg[4]_i_1_n_3 ),
        .I4(\dig_reg[1]_i_1_n_3 ),
        .I5(state_reg2__179_carry__0_n_0),
        .O(\state_reg[1]_i_3__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_reg[0]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(state_reg));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_reg[1]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\state_reg_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    tx_start_aux_reg
       (.C(clk_IBUF_BUFG),
        .CE(tx_start_aux4_out),
        .D(\FSM_sequential_state_reg_reg[0] ),
        .Q(tx_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF1FF00000100)) 
    zflag_i_1
       (.I0(state_reg),
        .I1(\aux[4]_i_3_n_0 ),
        .I2(reset_IBUF),
        .I3(\state_reg_reg[1]_0 ),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(zflag_reg_n_0),
        .O(zflag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    zflag_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(zflag_i_1_n_0),
        .Q(zflag_reg_n_0),
        .R(1'b0));
endmodule

module tx_module
   (out,
    tx_OBUF,
    tx_start_aux_reg,
    clk_IBUF_BUFG,
    reset_IBUF,
    tx_start,
    s_tick,
    D,
    \salida_reg[6] );
  output [0:0]out;
  output tx_OBUF;
  output tx_start_aux_reg;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input tx_start;
  input s_tick;
  input [0:0]D;
  input [6:0]\salida_reg[6] ;

  wire [0:0]D;
  wire \FSM_sequential_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3__0_n_0 ;
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
  wire clk_IBUF_BUFG;
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
  wire \s_reg[2]_i_1_n_0 ;
  wire \s_reg[3]_i_2_n_0 ;
  wire s_tick;
  wire [6:0]\salida_reg[6] ;
  (* RTL_KEEP = "yes" *) wire [0:0]state_reg;
  wire tx_OBUF;
  wire tx_next;
  wire tx_start;
  wire tx_start_aux_reg;

  LUT5 #(
    .INIT(32'h31FF3100)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(out),
        .I1(state_reg),
        .I2(s_tick),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I4(state_reg),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h62FF6200)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(state_reg),
        .I1(out),
        .I2(s_tick),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I4(out),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0C080C080CFF0C00)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .I1(s_tick),
        .I2(\b_reg[7]_i_3_n_0 ),
        .I3(state_reg),
        .I4(tx_start),
        .I5(out),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[1]_i_3__0 
       (.I0(\n_reg_reg_n_0_[1] ),
        .I1(\n_reg_reg_n_0_[0] ),
        .I2(\n_reg_reg_n_0_[2] ),
        .O(\FSM_sequential_state_reg[1]_i_3__0_n_0 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[0]_i_1__0_n_0 ),
        .Q(state_reg));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_0 ),
        .Q(out));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[0]_i_1 
       (.I0(\b_reg_reg_n_0_[1] ),
        .I1(out),
        .I2(\salida_reg[6] [0]),
        .O(b_next[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[1]_i_1 
       (.I0(\b_reg_reg_n_0_[2] ),
        .I1(out),
        .I2(\salida_reg[6] [1]),
        .O(b_next[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[2]_i_1 
       (.I0(\b_reg_reg_n_0_[3] ),
        .I1(out),
        .I2(\salida_reg[6] [2]),
        .O(b_next[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[3]_i_1 
       (.I0(\b_reg_reg_n_0_[4] ),
        .I1(out),
        .I2(\salida_reg[6] [3]),
        .O(b_next[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[4]_i_1 
       (.I0(\b_reg_reg_n_0_[5] ),
        .I1(out),
        .I2(\salida_reg[6] [4]),
        .O(b_next[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[5]_i_1 
       (.I0(\b_reg_reg_n_0_[6] ),
        .I1(out),
        .I2(\salida_reg[6] [5]),
        .O(b_next[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[6]_i_1 
       (.I0(\b_reg_reg_n_0_[7] ),
        .I1(out),
        .I2(\salida_reg[6] [6]),
        .O(b_next[6]));
  LUT5 #(
    .INIT(32'h000030AA)) 
    \b_reg[7]_i_1 
       (.I0(tx_start),
        .I1(\b_reg[7]_i_3_n_0 ),
        .I2(s_tick),
        .I3(out),
        .I4(state_reg),
        .O(b_next_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \b_reg[7]_i_3 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .O(\b_reg[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[0]),
        .Q(b_reg));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[1]),
        .Q(\b_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[2]),
        .Q(\b_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[3]),
        .Q(\b_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[4]),
        .Q(\b_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[5]),
        .Q(\b_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[6]),
        .Q(\b_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
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
        .I1(\n_reg_reg_n_0_[0] ),
        .I2(\n_reg_reg_n_0_[1] ),
        .I3(n_next),
        .I4(\n_reg_reg_n_0_[2] ),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00103000)) 
    \n_reg[2]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .I1(\b_reg[7]_i_3_n_0 ),
        .I2(s_tick),
        .I3(state_reg),
        .I4(out),
        .O(n_next));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(\n_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(\n_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(\n_reg_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'h54)) 
    \s_reg[0]_i_1__0 
       (.I0(s_reg[0]),
        .I1(state_reg),
        .I2(out),
        .O(\s_reg[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h6660)) 
    \s_reg[1]_i_1__0 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(state_reg),
        .I3(out),
        .O(\s_reg[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78787800)) 
    \s_reg[2]_i_1 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(s_reg[2]),
        .I3(out),
        .I4(state_reg),
        .O(\s_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE023E02)) 
    \s_reg[3]_i_1 
       (.I0(tx_start),
        .I1(state_reg),
        .I2(out),
        .I3(s_tick),
        .I4(\b_reg[7]_i_3_n_0 ),
        .O(s_next));
  LUT6 #(
    .INIT(64'h7F807F807F800000)) 
    \s_reg[3]_i_2 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .I4(out),
        .I5(state_reg),
        .O(\s_reg[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[0]_i_1__0_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[1]_i_1__0_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[2]_i_1_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[3]_i_2_n_0 ),
        .Q(s_reg[3]));
  LUT3 #(
    .INIT(8'hE5)) 
    tx_reg_i_1
       (.I0(state_reg),
        .I1(b_reg),
        .I2(out),
        .O(tx_next));
  FDPE #(
    .INIT(1'b1)) 
    tx_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_next),
        .PRE(reset_IBUF),
        .Q(tx_OBUF));
  LUT4 #(
    .INIT(16'hDFFF)) 
    tx_start_aux_i_1
       (.I0(state_reg),
        .I1(\b_reg[7]_i_3_n_0 ),
        .I2(s_tick),
        .I3(out),
        .O(tx_start_aux_reg));
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
