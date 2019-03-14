// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Mon Feb 11 16:34:45 2019
// Host        : sieber running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/sieber/Arquitecura/Arquitectura2018/TP_ALU/TP_ALU.sim/sim_1/synth/func/xsim/Main_func_synth.v
// Design      : Main
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (leds_OBUF,
    Q,
    \op_reg[5] ,
    \b_reg[7] ,
    \op_reg[0] ,
    \op_reg[0]_0 ,
    \op_reg[0]_1 ,
    \b_reg[0] ,
    \op_reg[0]_2 ,
    \b_reg[5] ,
    \b_reg[6] ,
    \op_reg[2] );
  output [7:0]leds_OBUF;
  input [7:0]Q;
  input [5:0]\op_reg[5] ;
  input [7:0]\b_reg[7] ;
  input \op_reg[0] ;
  input \op_reg[0]_0 ;
  input \op_reg[0]_1 ;
  input \b_reg[0] ;
  input \op_reg[0]_2 ;
  input \b_reg[5] ;
  input \b_reg[6] ;
  input \op_reg[2] ;

  wire [7:0]Q;
  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire \b_reg[0] ;
  wire \b_reg[5] ;
  wire \b_reg[6] ;
  wire [7:0]\b_reg[7] ;
  wire [7:0]data0;
  wire [7:0]leds_OBUF;
  wire \leds_OBUF[0]_inst_i_2_n_0 ;
  wire \leds_OBUF[1]_inst_i_2_n_0 ;
  wire \leds_OBUF[2]_inst_i_2_n_0 ;
  wire \leds_OBUF[3]_inst_i_2_n_0 ;
  wire \leds_OBUF[4]_inst_i_2_n_0 ;
  wire \leds_OBUF[5]_inst_i_2_n_0 ;
  wire \leds_OBUF[6]_inst_i_2_n_0 ;
  wire \leds_OBUF[7]_inst_i_2_n_0 ;
  wire \op_reg[0] ;
  wire \op_reg[0]_0 ;
  wire \op_reg[0]_1 ;
  wire \op_reg[0]_2 ;
  wire \op_reg[2] ;
  wire [5:0]\op_reg[5] ;
  wire [3:3]NLW__carry__0_CO_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\op_reg[5] [1]}),
        .O(data0[3:0]),
        .S({_carry_i_1_n_0,_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({NLW__carry__0_CO_UNCONNECTED[3],_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(data0[7:4]),
        .S({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_1
       (.I0(\b_reg[7] [7]),
        .I1(\op_reg[5] [1]),
        .I2(Q[7]),
        .O(_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_2
       (.I0(\b_reg[7] [6]),
        .I1(\op_reg[5] [1]),
        .I2(Q[6]),
        .O(_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_3
       (.I0(\b_reg[7] [5]),
        .I1(\op_reg[5] [1]),
        .I2(Q[5]),
        .O(_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_4
       (.I0(\b_reg[7] [4]),
        .I1(\op_reg[5] [1]),
        .I2(Q[4]),
        .O(_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_1
       (.I0(\b_reg[7] [3]),
        .I1(\op_reg[5] [1]),
        .I2(Q[3]),
        .O(_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_2
       (.I0(\b_reg[7] [2]),
        .I1(\op_reg[5] [1]),
        .I2(Q[2]),
        .O(_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_3
       (.I0(\b_reg[7] [1]),
        .I1(\op_reg[5] [1]),
        .I2(Q[1]),
        .O(_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    _carry_i_4
       (.I0(\b_reg[7] [0]),
        .O(_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFEFEA)) 
    \leds_OBUF[0]_inst_i_1 
       (.I0(\op_reg[5] [4]),
        .I1(\leds_OBUF[0]_inst_i_2_n_0 ),
        .I2(\op_reg[5] [5]),
        .I3(\op_reg[5] [2]),
        .I4(\b_reg[0] ),
        .I5(\op_reg[5] [3]),
        .O(leds_OBUF[0]));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \leds_OBUF[0]_inst_i_2 
       (.I0(\op_reg[5] [1]),
        .I1(Q[0]),
        .I2(\b_reg[7] [0]),
        .I3(\op_reg[5] [2]),
        .I4(\op_reg[5] [0]),
        .I5(data0[0]),
        .O(\leds_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFEFEA)) 
    \leds_OBUF[1]_inst_i_1 
       (.I0(\op_reg[5] [4]),
        .I1(\leds_OBUF[1]_inst_i_2_n_0 ),
        .I2(\op_reg[5] [5]),
        .I3(\op_reg[5] [2]),
        .I4(\op_reg[0]_1 ),
        .I5(\op_reg[5] [3]),
        .O(leds_OBUF[1]));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \leds_OBUF[1]_inst_i_2 
       (.I0(\op_reg[5] [1]),
        .I1(Q[1]),
        .I2(\b_reg[7] [1]),
        .I3(\op_reg[5] [2]),
        .I4(\op_reg[5] [0]),
        .I5(data0[1]),
        .O(\leds_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFEFEA)) 
    \leds_OBUF[2]_inst_i_1 
       (.I0(\op_reg[5] [4]),
        .I1(\leds_OBUF[2]_inst_i_2_n_0 ),
        .I2(\op_reg[5] [5]),
        .I3(\op_reg[5] [2]),
        .I4(\op_reg[0]_0 ),
        .I5(\op_reg[5] [3]),
        .O(leds_OBUF[2]));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \leds_OBUF[2]_inst_i_2 
       (.I0(\op_reg[5] [1]),
        .I1(Q[2]),
        .I2(\b_reg[7] [2]),
        .I3(\op_reg[5] [2]),
        .I4(\op_reg[5] [0]),
        .I5(data0[2]),
        .O(\leds_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFEFEA)) 
    \leds_OBUF[3]_inst_i_1 
       (.I0(\op_reg[5] [4]),
        .I1(\leds_OBUF[3]_inst_i_2_n_0 ),
        .I2(\op_reg[5] [5]),
        .I3(\op_reg[5] [2]),
        .I4(\op_reg[0] ),
        .I5(\op_reg[5] [3]),
        .O(leds_OBUF[3]));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \leds_OBUF[3]_inst_i_2 
       (.I0(\op_reg[5] [1]),
        .I1(Q[3]),
        .I2(\b_reg[7] [3]),
        .I3(\op_reg[5] [2]),
        .I4(\op_reg[5] [0]),
        .I5(data0[3]),
        .O(\leds_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFEFEA)) 
    \leds_OBUF[4]_inst_i_1 
       (.I0(\op_reg[5] [4]),
        .I1(\leds_OBUF[4]_inst_i_2_n_0 ),
        .I2(\op_reg[5] [5]),
        .I3(\op_reg[5] [2]),
        .I4(\op_reg[0]_2 ),
        .I5(\op_reg[5] [3]),
        .O(leds_OBUF[4]));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \leds_OBUF[4]_inst_i_2 
       (.I0(\op_reg[5] [1]),
        .I1(Q[4]),
        .I2(\b_reg[7] [4]),
        .I3(\op_reg[5] [2]),
        .I4(\op_reg[5] [0]),
        .I5(data0[4]),
        .O(\leds_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFEFEA)) 
    \leds_OBUF[5]_inst_i_1 
       (.I0(\op_reg[5] [4]),
        .I1(\leds_OBUF[5]_inst_i_2_n_0 ),
        .I2(\op_reg[5] [5]),
        .I3(\op_reg[5] [2]),
        .I4(\b_reg[5] ),
        .I5(\op_reg[5] [3]),
        .O(leds_OBUF[5]));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \leds_OBUF[5]_inst_i_2 
       (.I0(\op_reg[5] [1]),
        .I1(Q[5]),
        .I2(\b_reg[7] [5]),
        .I3(\op_reg[5] [2]),
        .I4(\op_reg[5] [0]),
        .I5(data0[5]),
        .O(\leds_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFEFEA)) 
    \leds_OBUF[6]_inst_i_1 
       (.I0(\op_reg[5] [4]),
        .I1(\leds_OBUF[6]_inst_i_2_n_0 ),
        .I2(\op_reg[5] [5]),
        .I3(\op_reg[5] [2]),
        .I4(\b_reg[6] ),
        .I5(\op_reg[5] [3]),
        .O(leds_OBUF[6]));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \leds_OBUF[6]_inst_i_2 
       (.I0(\op_reg[5] [1]),
        .I1(Q[6]),
        .I2(\b_reg[7] [6]),
        .I3(\op_reg[5] [2]),
        .I4(\op_reg[5] [0]),
        .I5(data0[6]),
        .O(\leds_OBUF[6]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFEA)) 
    \leds_OBUF[7]_inst_i_1 
       (.I0(\op_reg[5] [4]),
        .I1(\leds_OBUF[7]_inst_i_2_n_0 ),
        .I2(\op_reg[5] [5]),
        .I3(\op_reg[2] ),
        .I4(\op_reg[5] [3]),
        .O(leds_OBUF[7]));
  LUT6 #(
    .INIT(64'h56FF68FF56FF6800)) 
    \leds_OBUF[7]_inst_i_2 
       (.I0(\op_reg[5] [1]),
        .I1(Q[7]),
        .I2(\b_reg[7] [7]),
        .I3(\op_reg[5] [2]),
        .I4(\op_reg[5] [0]),
        .I5(data0[7]),
        .O(\leds_OBUF[7]_inst_i_2_n_0 ));
endmodule

(* size = "8" *) 
(* NotValidForBitStream *)
module Main
   (valor,
    b1,
    b2,
    b3,
    clk,
    leds);
  input [7:0]valor;
  input b1;
  input b2;
  input b3;
  input clk;
  output [7:0]leds;

  wire \0 ;
  wire [7:0]a;
  wire [7:0]b;
  wire b1;
  wire b1_IBUF;
  wire b2;
  wire b2_IBUF;
  wire b3;
  wire b3_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [6:5]data4;
  wire [6:5]data5;
  wire [7:0]leds;
  wire [7:0]leds_OBUF;
  wire \leds_OBUF[0]_inst_i_3_n_0 ;
  wire \leds_OBUF[0]_inst_i_4_n_0 ;
  wire \leds_OBUF[0]_inst_i_5_n_0 ;
  wire \leds_OBUF[0]_inst_i_6_n_0 ;
  wire \leds_OBUF[1]_inst_i_3_n_0 ;
  wire \leds_OBUF[1]_inst_i_4_n_0 ;
  wire \leds_OBUF[1]_inst_i_5_n_0 ;
  wire \leds_OBUF[1]_inst_i_6_n_0 ;
  wire \leds_OBUF[2]_inst_i_3_n_0 ;
  wire \leds_OBUF[2]_inst_i_4_n_0 ;
  wire \leds_OBUF[2]_inst_i_5_n_0 ;
  wire \leds_OBUF[2]_inst_i_6_n_0 ;
  wire \leds_OBUF[2]_inst_i_7_n_0 ;
  wire \leds_OBUF[3]_inst_i_3_n_0 ;
  wire \leds_OBUF[3]_inst_i_4_n_0 ;
  wire \leds_OBUF[3]_inst_i_5_n_0 ;
  wire \leds_OBUF[3]_inst_i_6_n_0 ;
  wire \leds_OBUF[3]_inst_i_7_n_0 ;
  wire \leds_OBUF[4]_inst_i_3_n_0 ;
  wire \leds_OBUF[4]_inst_i_4_n_0 ;
  wire \leds_OBUF[4]_inst_i_5_n_0 ;
  wire \leds_OBUF[4]_inst_i_6_n_0 ;
  wire \leds_OBUF[4]_inst_i_7_n_0 ;
  wire \leds_OBUF[4]_inst_i_8_n_0 ;
  wire \leds_OBUF[5]_inst_i_3_n_0 ;
  wire \leds_OBUF[5]_inst_i_6_n_0 ;
  wire \leds_OBUF[6]_inst_i_3_n_0 ;
  wire \leds_OBUF[7]_inst_i_3_n_0 ;
  wire \leds_OBUF[7]_inst_i_4_n_0 ;
  wire \op_reg_n_0_[0] ;
  wire \op_reg_n_0_[2] ;
  wire \op_reg_n_0_[3] ;
  wire \op_reg_n_0_[4] ;
  wire \op_reg_n_0_[5] ;
  wire [7:0]valor;
  wire [7:0]valor_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \a_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b1_IBUF),
        .D(valor_IBUF[0]),
        .Q(a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b1_IBUF),
        .D(valor_IBUF[1]),
        .Q(a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b1_IBUF),
        .D(valor_IBUF[2]),
        .Q(a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b1_IBUF),
        .D(valor_IBUF[3]),
        .Q(a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b1_IBUF),
        .D(valor_IBUF[4]),
        .Q(a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b1_IBUF),
        .D(valor_IBUF[5]),
        .Q(a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b1_IBUF),
        .D(valor_IBUF[6]),
        .Q(a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b1_IBUF),
        .D(valor_IBUF[7]),
        .Q(a[7]),
        .R(1'b0));
  ALU alu
       (.Q(a),
        .\b_reg[0] (\leds_OBUF[0]_inst_i_3_n_0 ),
        .\b_reg[5] (\leds_OBUF[5]_inst_i_3_n_0 ),
        .\b_reg[6] (\leds_OBUF[6]_inst_i_3_n_0 ),
        .\b_reg[7] (b),
        .leds_OBUF(leds_OBUF),
        .\op_reg[0] (\leds_OBUF[3]_inst_i_3_n_0 ),
        .\op_reg[0]_0 (\leds_OBUF[2]_inst_i_3_n_0 ),
        .\op_reg[0]_1 (\leds_OBUF[1]_inst_i_3_n_0 ),
        .\op_reg[0]_2 (\leds_OBUF[4]_inst_i_3_n_0 ),
        .\op_reg[2] (\leds_OBUF[7]_inst_i_3_n_0 ),
        .\op_reg[5] ({\op_reg_n_0_[5] ,\op_reg_n_0_[4] ,\op_reg_n_0_[3] ,\op_reg_n_0_[2] ,\0 ,\op_reg_n_0_[0] }));
  IBUF b1_IBUF_inst
       (.I(b1),
        .O(b1_IBUF));
  IBUF b2_IBUF_inst
       (.I(b2),
        .O(b2_IBUF));
  IBUF b3_IBUF_inst
       (.I(b3),
        .O(b3_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b2_IBUF),
        .D(valor_IBUF[0]),
        .Q(b[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b2_IBUF),
        .D(valor_IBUF[1]),
        .Q(b[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b2_IBUF),
        .D(valor_IBUF[2]),
        .Q(b[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b2_IBUF),
        .D(valor_IBUF[3]),
        .Q(b[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b2_IBUF),
        .D(valor_IBUF[4]),
        .Q(b[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b2_IBUF),
        .D(valor_IBUF[5]),
        .Q(b[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b2_IBUF),
        .D(valor_IBUF[6]),
        .Q(b[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b2_IBUF),
        .D(valor_IBUF[7]),
        .Q(b[7]),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \leds_OBUF[0]_inst 
       (.I(leds_OBUF[0]),
        .O(leds[0]));
  LUT6 #(
    .INIT(64'hFC00BBBBFC008888)) 
    \leds_OBUF[0]_inst_i_3 
       (.I0(b[0]),
        .I1(\op_reg_n_0_[0] ),
        .I2(\leds_OBUF[0]_inst_i_4_n_0 ),
        .I3(\leds_OBUF[0]_inst_i_5_n_0 ),
        .I4(\0 ),
        .I5(a[0]),
        .O(\leds_OBUF[0]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \leds_OBUF[0]_inst_i_4 
       (.I0(b[7]),
        .I1(b[4]),
        .I2(b[3]),
        .I3(b[6]),
        .I4(b[5]),
        .O(\leds_OBUF[0]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[0]_inst_i_5 
       (.I0(\leds_OBUF[1]_inst_i_6_n_0 ),
        .I1(b[0]),
        .I2(\leds_OBUF[0]_inst_i_6_n_0 ),
        .O(\leds_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[0]_inst_i_6 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(b[1]),
        .I3(a[4]),
        .I4(b[2]),
        .I5(a[0]),
        .O(\leds_OBUF[0]_inst_i_6_n_0 ));
  OBUF \leds_OBUF[1]_inst 
       (.I(leds_OBUF[1]),
        .O(leds[1]));
  MUXF7 \leds_OBUF[1]_inst_i_3 
       (.I0(\leds_OBUF[1]_inst_i_4_n_0 ),
        .I1(\leds_OBUF[1]_inst_i_5_n_0 ),
        .O(\leds_OBUF[1]_inst_i_3_n_0 ),
        .S(\op_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \leds_OBUF[1]_inst_i_4 
       (.I0(\leds_OBUF[0]_inst_i_4_n_0 ),
        .I1(\leds_OBUF[1]_inst_i_6_n_0 ),
        .I2(b[0]),
        .I3(\leds_OBUF[2]_inst_i_6_n_0 ),
        .I4(\0 ),
        .I5(a[1]),
        .O(\leds_OBUF[1]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \leds_OBUF[1]_inst_i_5 
       (.I0(\leds_OBUF[2]_inst_i_7_n_0 ),
        .I1(b[0]),
        .I2(\leds_OBUF[1]_inst_i_6_n_0 ),
        .I3(\0 ),
        .I4(b[1]),
        .O(\leds_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[1]_inst_i_6 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(b[1]),
        .I3(a[5]),
        .I4(b[2]),
        .I5(a[1]),
        .O(\leds_OBUF[1]_inst_i_6_n_0 ));
  OBUF \leds_OBUF[2]_inst 
       (.I(leds_OBUF[2]),
        .O(leds[2]));
  MUXF7 \leds_OBUF[2]_inst_i_3 
       (.I0(\leds_OBUF[2]_inst_i_4_n_0 ),
        .I1(\leds_OBUF[2]_inst_i_5_n_0 ),
        .O(\leds_OBUF[2]_inst_i_3_n_0 ),
        .S(\op_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \leds_OBUF[2]_inst_i_4 
       (.I0(\leds_OBUF[0]_inst_i_4_n_0 ),
        .I1(\leds_OBUF[2]_inst_i_6_n_0 ),
        .I2(b[0]),
        .I3(\leds_OBUF[3]_inst_i_6_n_0 ),
        .I4(\0 ),
        .I5(a[2]),
        .O(\leds_OBUF[2]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \leds_OBUF[2]_inst_i_5 
       (.I0(\leds_OBUF[3]_inst_i_7_n_0 ),
        .I1(b[0]),
        .I2(\leds_OBUF[2]_inst_i_7_n_0 ),
        .I3(\0 ),
        .I4(b[2]),
        .O(\leds_OBUF[2]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \leds_OBUF[2]_inst_i_6 
       (.I0(a[4]),
        .I1(b[1]),
        .I2(a[6]),
        .I3(b[2]),
        .I4(a[2]),
        .O(\leds_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[2]_inst_i_7 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(b[1]),
        .I3(a[6]),
        .I4(b[2]),
        .I5(a[2]),
        .O(\leds_OBUF[2]_inst_i_7_n_0 ));
  OBUF \leds_OBUF[3]_inst 
       (.I(leds_OBUF[3]),
        .O(leds[3]));
  MUXF7 \leds_OBUF[3]_inst_i_3 
       (.I0(\leds_OBUF[3]_inst_i_4_n_0 ),
        .I1(\leds_OBUF[3]_inst_i_5_n_0 ),
        .O(\leds_OBUF[3]_inst_i_3_n_0 ),
        .S(\op_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \leds_OBUF[3]_inst_i_4 
       (.I0(\leds_OBUF[0]_inst_i_4_n_0 ),
        .I1(\leds_OBUF[3]_inst_i_6_n_0 ),
        .I2(b[0]),
        .I3(\leds_OBUF[4]_inst_i_6_n_0 ),
        .I4(\0 ),
        .I5(a[3]),
        .O(\leds_OBUF[3]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \leds_OBUF[3]_inst_i_5 
       (.I0(\leds_OBUF[4]_inst_i_8_n_0 ),
        .I1(b[0]),
        .I2(\leds_OBUF[3]_inst_i_7_n_0 ),
        .I3(\0 ),
        .I4(b[3]),
        .O(\leds_OBUF[3]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \leds_OBUF[3]_inst_i_6 
       (.I0(a[5]),
        .I1(b[1]),
        .I2(a[7]),
        .I3(b[2]),
        .I4(a[3]),
        .O(\leds_OBUF[3]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \leds_OBUF[3]_inst_i_7 
       (.I0(a[5]),
        .I1(b[1]),
        .I2(a[7]),
        .I3(b[2]),
        .I4(a[3]),
        .O(\leds_OBUF[3]_inst_i_7_n_0 ));
  OBUF \leds_OBUF[4]_inst 
       (.I(leds_OBUF[4]),
        .O(leds[4]));
  MUXF7 \leds_OBUF[4]_inst_i_3 
       (.I0(\leds_OBUF[4]_inst_i_4_n_0 ),
        .I1(\leds_OBUF[4]_inst_i_5_n_0 ),
        .O(\leds_OBUF[4]_inst_i_3_n_0 ),
        .S(\op_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \leds_OBUF[4]_inst_i_4 
       (.I0(\leds_OBUF[0]_inst_i_4_n_0 ),
        .I1(\leds_OBUF[4]_inst_i_6_n_0 ),
        .I2(b[0]),
        .I3(\leds_OBUF[5]_inst_i_6_n_0 ),
        .I4(\0 ),
        .I5(a[4]),
        .O(\leds_OBUF[4]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \leds_OBUF[4]_inst_i_5 
       (.I0(\leds_OBUF[4]_inst_i_7_n_0 ),
        .I1(b[0]),
        .I2(\leds_OBUF[4]_inst_i_8_n_0 ),
        .I3(\0 ),
        .I4(b[4]),
        .O(\leds_OBUF[4]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \leds_OBUF[4]_inst_i_6 
       (.I0(a[6]),
        .I1(b[1]),
        .I2(a[4]),
        .I3(b[2]),
        .O(\leds_OBUF[4]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \leds_OBUF[4]_inst_i_7 
       (.I0(b[1]),
        .I1(a[7]),
        .I2(b[2]),
        .I3(a[5]),
        .O(\leds_OBUF[4]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \leds_OBUF[4]_inst_i_8 
       (.I0(a[6]),
        .I1(b[1]),
        .I2(a[7]),
        .I3(b[2]),
        .I4(a[4]),
        .O(\leds_OBUF[4]_inst_i_8_n_0 ));
  OBUF \leds_OBUF[5]_inst 
       (.I(leds_OBUF[5]),
        .O(leds[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[5]_inst_i_3 
       (.I0(data4[5]),
        .I1(b[5]),
        .I2(\op_reg_n_0_[0] ),
        .I3(data5[5]),
        .I4(\0 ),
        .I5(a[5]),
        .O(\leds_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \leds_OBUF[5]_inst_i_4 
       (.I0(a[6]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(a[7]),
        .I4(b[2]),
        .I5(a[5]),
        .O(data4[5]));
  LUT6 #(
    .INIT(64'h0808080808A80808)) 
    \leds_OBUF[5]_inst_i_5 
       (.I0(\leds_OBUF[0]_inst_i_4_n_0 ),
        .I1(\leds_OBUF[5]_inst_i_6_n_0 ),
        .I2(b[0]),
        .I3(b[1]),
        .I4(a[6]),
        .I5(b[2]),
        .O(data5[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \leds_OBUF[5]_inst_i_6 
       (.I0(a[7]),
        .I1(b[1]),
        .I2(a[5]),
        .I3(b[2]),
        .O(\leds_OBUF[5]_inst_i_6_n_0 ));
  OBUF \leds_OBUF[6]_inst 
       (.I(leds_OBUF[6]),
        .O(leds[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[6]_inst_i_3 
       (.I0(data4[6]),
        .I1(b[6]),
        .I2(\op_reg_n_0_[0] ),
        .I3(data5[6]),
        .I4(\0 ),
        .I5(a[6]),
        .O(\leds_OBUF[6]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \leds_OBUF[6]_inst_i_4 
       (.I0(b[0]),
        .I1(b[1]),
        .I2(a[7]),
        .I3(b[2]),
        .I4(a[6]),
        .O(data4[6]));
  LUT6 #(
    .INIT(64'h0022002000000020)) 
    \leds_OBUF[6]_inst_i_5 
       (.I0(\leds_OBUF[0]_inst_i_4_n_0 ),
        .I1(b[1]),
        .I2(a[6]),
        .I3(b[2]),
        .I4(b[0]),
        .I5(a[7]),
        .O(data5[6]));
  OBUF \leds_OBUF[7]_inst 
       (.I(leds_OBUF[7]),
        .O(leds[7]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \leds_OBUF[7]_inst_i_3 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\leds_OBUF[7]_inst_i_4_n_0 ),
        .I2(\op_reg_n_0_[0] ),
        .I3(b[7]),
        .I4(\0 ),
        .I5(a[7]),
        .O(\leds_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00000000)) 
    \leds_OBUF[7]_inst_i_4 
       (.I0(\leds_OBUF[0]_inst_i_4_n_0 ),
        .I1(b[0]),
        .I2(b[2]),
        .I3(b[1]),
        .I4(\0 ),
        .I5(a[7]),
        .O(\leds_OBUF[7]_inst_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b3_IBUF),
        .D(valor_IBUF[0]),
        .Q(\op_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b3_IBUF),
        .D(valor_IBUF[1]),
        .Q(\0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b3_IBUF),
        .D(valor_IBUF[2]),
        .Q(\op_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b3_IBUF),
        .D(valor_IBUF[3]),
        .Q(\op_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b3_IBUF),
        .D(valor_IBUF[4]),
        .Q(\op_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b3_IBUF),
        .D(valor_IBUF[5]),
        .Q(\op_reg_n_0_[5] ),
        .R(1'b0));
  IBUF \valor_IBUF[0]_inst 
       (.I(valor[0]),
        .O(valor_IBUF[0]));
  IBUF \valor_IBUF[1]_inst 
       (.I(valor[1]),
        .O(valor_IBUF[1]));
  IBUF \valor_IBUF[2]_inst 
       (.I(valor[2]),
        .O(valor_IBUF[2]));
  IBUF \valor_IBUF[3]_inst 
       (.I(valor[3]),
        .O(valor_IBUF[3]));
  IBUF \valor_IBUF[4]_inst 
       (.I(valor[4]),
        .O(valor_IBUF[4]));
  IBUF \valor_IBUF[5]_inst 
       (.I(valor[5]),
        .O(valor_IBUF[5]));
  IBUF \valor_IBUF[6]_inst 
       (.I(valor[6]),
        .O(valor_IBUF[6]));
  IBUF \valor_IBUF[7]_inst 
       (.I(valor[7]),
        .O(valor_IBUF[7]));
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
