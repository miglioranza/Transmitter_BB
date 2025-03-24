// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed Mar  5 15:48:47 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_design_1_0_0_sim_netlist.v
// Design      : design_1_design_1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_design_1_0_0,design_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "IPI" *) 
(* x_core_info = "design_1,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    data_in_0,
    data_in_valid_0,
    data_out_ready,
    data_out_ready_0,
    data_out_valid,
    i_out,
    mod_type,
    mod_type_0,
    q_out,
    reset);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, PHASE 0.0, ASSOCIATED_RESET reset, FREQ_TOLERANCE_HZ 0, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  input [31:0]data_in_0;
  input data_in_valid_0;
  output data_out_ready;
  output data_out_ready_0;
  output data_out_valid;
  output [11:0]i_out;
  input [2:0]mod_type;
  input [2:0]mod_type_0;
  output [11:0]q_out;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;

  wire \<const0> ;

  assign data_out_ready = \<const0> ;
  assign data_out_ready_0 = \<const0> ;
  assign data_out_valid = \<const0> ;
  assign i_out[11] = \<const0> ;
  assign i_out[10] = \<const0> ;
  assign i_out[9] = \<const0> ;
  assign i_out[8] = \<const0> ;
  assign i_out[7] = \<const0> ;
  assign i_out[6] = \<const0> ;
  assign i_out[5] = \<const0> ;
  assign i_out[4] = \<const0> ;
  assign i_out[3] = \<const0> ;
  assign i_out[2] = \<const0> ;
  assign i_out[1] = \<const0> ;
  assign i_out[0] = \<const0> ;
  assign q_out[11] = \<const0> ;
  assign q_out[10] = \<const0> ;
  assign q_out[9] = \<const0> ;
  assign q_out[8] = \<const0> ;
  assign q_out[7] = \<const0> ;
  assign q_out[6] = \<const0> ;
  assign q_out[5] = \<const0> ;
  assign q_out[4] = \<const0> ;
  assign q_out[3] = \<const0> ;
  assign q_out[2] = \<const0> ;
  assign q_out[1] = \<const0> ;
  assign q_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
