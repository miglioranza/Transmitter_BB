// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Sep 23 16:31:15 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_MUX_0_2_sim_netlist.v
// Design      : Design_2_MUX_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Design_2_MUX_0_2,MUX,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "MUX,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (I_out,
    Q_out,
    data_out_valid,
    dpd_I_OUT,
    dpd_Q_OUT,
    dpd_valid,
    select_signal,
    mux_I,
    mux_Q,
    mux_valid);
  input [11:0]I_out;
  input [11:0]Q_out;
  input data_out_valid;
  input [11:0]dpd_I_OUT;
  input [11:0]dpd_Q_OUT;
  input dpd_valid;
  input select_signal;
  output [11:0]mux_I;
  output [11:0]mux_Q;
  output mux_valid;

  wire [11:0]I_out;
  wire [11:0]Q_out;
  wire data_out_valid;
  wire [11:0]dpd_I_OUT;
  wire [11:0]dpd_Q_OUT;
  wire dpd_valid;
  wire [11:0]mux_I;
  wire [11:0]mux_Q;
  wire mux_valid;
  wire select_signal;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX U0
       (.I_out(I_out),
        .Q_out(Q_out),
        .dpd_I_OUT(dpd_I_OUT),
        .dpd_Q_OUT(dpd_Q_OUT),
        .mux_I(mux_I),
        .mux_Q(mux_Q),
        .select_signal(select_signal));
  LUT3 #(
    .INIT(8'hB8)) 
    mux_valid_INST_0
       (.I0(data_out_valid),
        .I1(select_signal),
        .I2(dpd_valid),
        .O(mux_valid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX
   (mux_I,
    mux_Q,
    I_out,
    dpd_I_OUT,
    select_signal,
    Q_out,
    dpd_Q_OUT);
  output [11:0]mux_I;
  output [11:0]mux_Q;
  input [11:0]I_out;
  input [11:0]dpd_I_OUT;
  input select_signal;
  input [11:0]Q_out;
  input [11:0]dpd_Q_OUT;

  wire [11:0]I_out;
  wire [11:0]Q_out;
  wire [11:0]dpd_I_OUT;
  wire [11:0]dpd_Q_OUT;
  wire [11:0]mux_I;
  wire [11:0]mux_Q;
  wire select_signal;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_I[0]_INST_0 
       (.I0(I_out[0]),
        .I1(dpd_I_OUT[0]),
        .I2(select_signal),
        .O(mux_I[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_I[10]_INST_0 
       (.I0(I_out[10]),
        .I1(dpd_I_OUT[10]),
        .I2(select_signal),
        .O(mux_I[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_I[11]_INST_0 
       (.I0(I_out[11]),
        .I1(dpd_I_OUT[11]),
        .I2(select_signal),
        .O(mux_I[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_I[1]_INST_0 
       (.I0(I_out[1]),
        .I1(dpd_I_OUT[1]),
        .I2(select_signal),
        .O(mux_I[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_I[2]_INST_0 
       (.I0(I_out[2]),
        .I1(dpd_I_OUT[2]),
        .I2(select_signal),
        .O(mux_I[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_I[3]_INST_0 
       (.I0(I_out[3]),
        .I1(dpd_I_OUT[3]),
        .I2(select_signal),
        .O(mux_I[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_I[4]_INST_0 
       (.I0(I_out[4]),
        .I1(dpd_I_OUT[4]),
        .I2(select_signal),
        .O(mux_I[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_I[5]_INST_0 
       (.I0(I_out[5]),
        .I1(dpd_I_OUT[5]),
        .I2(select_signal),
        .O(mux_I[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_I[6]_INST_0 
       (.I0(I_out[6]),
        .I1(dpd_I_OUT[6]),
        .I2(select_signal),
        .O(mux_I[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_I[7]_INST_0 
       (.I0(I_out[7]),
        .I1(dpd_I_OUT[7]),
        .I2(select_signal),
        .O(mux_I[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_I[8]_INST_0 
       (.I0(I_out[8]),
        .I1(dpd_I_OUT[8]),
        .I2(select_signal),
        .O(mux_I[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_I[9]_INST_0 
       (.I0(I_out[9]),
        .I1(dpd_I_OUT[9]),
        .I2(select_signal),
        .O(mux_I[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_Q[0]_INST_0 
       (.I0(Q_out[0]),
        .I1(dpd_Q_OUT[0]),
        .I2(select_signal),
        .O(mux_Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_Q[10]_INST_0 
       (.I0(Q_out[10]),
        .I1(dpd_Q_OUT[10]),
        .I2(select_signal),
        .O(mux_Q[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_Q[11]_INST_0 
       (.I0(Q_out[11]),
        .I1(dpd_Q_OUT[11]),
        .I2(select_signal),
        .O(mux_Q[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_Q[1]_INST_0 
       (.I0(Q_out[1]),
        .I1(dpd_Q_OUT[1]),
        .I2(select_signal),
        .O(mux_Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_Q[2]_INST_0 
       (.I0(Q_out[2]),
        .I1(dpd_Q_OUT[2]),
        .I2(select_signal),
        .O(mux_Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_Q[3]_INST_0 
       (.I0(Q_out[3]),
        .I1(dpd_Q_OUT[3]),
        .I2(select_signal),
        .O(mux_Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_Q[4]_INST_0 
       (.I0(Q_out[4]),
        .I1(dpd_Q_OUT[4]),
        .I2(select_signal),
        .O(mux_Q[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_Q[5]_INST_0 
       (.I0(Q_out[5]),
        .I1(dpd_Q_OUT[5]),
        .I2(select_signal),
        .O(mux_Q[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_Q[6]_INST_0 
       (.I0(Q_out[6]),
        .I1(dpd_Q_OUT[6]),
        .I2(select_signal),
        .O(mux_Q[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_Q[7]_INST_0 
       (.I0(Q_out[7]),
        .I1(dpd_Q_OUT[7]),
        .I2(select_signal),
        .O(mux_Q[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_Q[8]_INST_0 
       (.I0(Q_out[8]),
        .I1(dpd_Q_OUT[8]),
        .I2(select_signal),
        .O(mux_Q[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \mux_Q[9]_INST_0 
       (.I0(Q_out[9]),
        .I1(dpd_Q_OUT[9]),
        .I2(select_signal),
        .O(mux_Q[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
