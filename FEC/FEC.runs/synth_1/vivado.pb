
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:072default:default2
3055.0862default:default2
2.0162default:default2
49702default:default2
1060522default:defaultZ17-722h px� 
�
Command: %s
1870*	planAhead2�
qread_checkpoint -auto_incremental -incremental /home/miglioranza/FEC/FEC.srcs/utils_1/imports/synth_1/Encoder.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2V
B/home/miglioranza/FEC/FEC.srcs/utils_1/imports/synth_1/Encoder.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
z
Command: %s
53*	vivadotcl2I
5synth_design -top Encoder -part xczu28dr-ffvg1517-2-e2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xczu28dr2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xczu28dr2default:defaultZ17-349h px� 
�
�The version limit for your license is '%s' and has expired for new software. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for new releases.
719*common2
2024.012default:defaultZ17-1540h px� 
\
Loading part %s157*device2)
xczu28dr-ffvg1517-2-e2default:defaultZ21-403h px� 
�
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
b
#Helper process launched with PID %s4824*oasys2
36536042default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 3462.516 ; gain = 229.688 ; free physical = 3721 ; free virtual = 104809
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
Encoder2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
552default:default8@Z8-638h px� 
�
qCase expression and choice expression width mismatch, Case expression is %s wide and choice expression is %s wide4365*oasys2
52default:default2
42default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
1742default:default8@Z8-6044h px� 
�
qCase expression and choice expression width mismatch, Case expression is %s wide and choice expression is %s wide4365*oasys2
52default:default2
42default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
1822default:default8@Z8-6044h px� 
�
qCase expression and choice expression width mismatch, Case expression is %s wide and choice expression is %s wide4365*oasys2
52default:default2
42default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
1902default:default8@Z8-6044h px� 
�
qCase expression and choice expression width mismatch, Case expression is %s wide and choice expression is %s wide4365*oasys2
52default:default2
42default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
1982default:default8@Z8-6044h px� 
�
qCase expression and choice expression width mismatch, Case expression is %s wide and choice expression is %s wide4365*oasys2
52default:default2
42default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
2062default:default8@Z8-6044h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
reset2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
1252default:default8@Z8-614h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	LDPC_core2default:default2N
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
342default:default2+
LDPC_encoder_1x16_inst02default:default2
	LDPC_core2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
2562default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	LDPC_core2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
532default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
sd_fec_02default:default2p
\/home/miglioranza/FEC/FEC.runs/synth_1/.Xil/Vivado-3653203-uxsrv005/realtime/sd_fec_0_stub.v2default:default2
62default:default2 
ldcp_encoder2default:default2
sd_fec_02default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1002default:default8@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
sd_fec_02default:default2
 2default:default2r
\/home/miglioranza/FEC/FEC.runs/synth_1/.Xil/Vivado-3653203-uxsrv005/realtime/sd_fec_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sd_fec_02default:default2
 2default:default2
12default:default2
12default:default2r
\/home/miglioranza/FEC/FEC.runs/synth_1/.Xil/Vivado-3653203-uxsrv005/realtime/sd_fec_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2!
data_in_ready2default:default2
	LDPC_core2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
412default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2!
data_out_last2default:default2
	LDPC_core2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
452default:default8@Z8-3848h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	LDPC_core2default:default2
22default:default2
12default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
532default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	LDPC_core2default:default2N
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
342default:default2+
LDPC_encoder_1x16_inst12default:default2
	LDPC_core2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
2742default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	LDPC_core2default:default2N
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
342default:default2+
LDPC_encoder_1x16_inst22default:default2
	LDPC_core2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
2932default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	LDPC_core2default:default2N
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
342default:default2+
LDPC_encoder_1x16_inst32default:default2
	LDPC_core2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
3112default:default8@Z8-3491h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2%
block_counter_reg2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
1332default:default8@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2!
data_out_last2default:default2
Encoder2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
482default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
bg_core02default:default2
Encoder2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
862default:default8@Z8-3848h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Encoder2default:default2
32default:default2
12default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
552default:default8@Z8-256h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
data_in_ready2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
data_out_last2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
data_out_last2default:default2
Encoder2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2'
data_in_ready_cores2default:default2
Encoder2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_out_ready2default:default2
Encoder2default:defaultZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 3505.453 ; gain = 272.625 ; free physical = 2767 ; free virtual = 103856
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 3523.266 ; gain = 290.438 ; free physical = 2761 ; free virtual = 103851
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 3523.266 ; gain = 290.438 ; free physical = 2761 ; free virtual = 103851
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
3523.2662default:default2
0.0002default:default2
30562default:default2
1041462default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst0/ldcp_encoder	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst0/ldcp_encoder	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst1/ldcp_encoder	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst1/ldcp_encoder	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst2/ldcp_encoder	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst2/ldcp_encoder	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst3/ldcp_encoder	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst3/ldcp_encoder	2default:default8Z20-847h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3693.1092default:default2
0.0002default:default2
36102default:default2
1046992default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.012default:default2
00:00:00.022default:default2
3693.1092default:default2
0.0002default:default2
36102default:default2
1046992default:defaultZ17-722h px� 
�
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 3693.109 ; gain = 460.281 ; free physical = 3675 ; free virtual = 104766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
P
%s
*synth28
$Loading part: xczu28dr-ffvg1517-2-e
2default:defaulth p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 3693.109 ; gain = 460.281 ; free physical = 3675 ; free virtual = 104766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 3693.109 ; gain = 460.281 ; free physical = 3668 ; free virtual = 104763
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2!
enc_state_reg2default:default2
Encoder2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_          starting_state |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_        encoding_process |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_     code_rate_selection |                               10 |                               11
2default:defaulth p
x
� 
�
%s
*synth2s
_         padding_process |                               11 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
enc_state_reg2default:default2

sequential2default:default2
Encoder2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:13 . Memory (MB): peak = 3693.109 ; gain = 460.281 ; free physical = 3661 ; free virtual = 104758
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 11    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 15    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2o
[Part Resources:
DSPs: 4272 (col length:192)
BRAMs: 2160 (col length: RAMB18 192 RAMB36 96)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
data_out_last2default:default2
Encoder2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2'
data_in_ready_cores2default:default2
Encoder2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_out_ready2default:default2
Encoder2default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 3693.109 ; gain = 460.281 ; free physical = 3646 ; free virtual = 104748
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:25 . Memory (MB): peak = 3949.816 ; gain = 716.988 ; free physical = 3140 ; free virtual = 104268
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:25 . Memory (MB): peak = 3949.816 ; gain = 716.988 ; free physical = 3140 ; free virtual = 104268
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:20 ; elapsed = 00:00:25 . Memory (MB): peak = 3978.863 ; gain = 746.035 ; free physical = 3138 ; free virtual = 104267
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_awaddr[17]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_awaddr[16]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_awaddr[15]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_awaddr[14]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_awaddr[13]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_awaddr[12]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_awaddr[11]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_awaddr[10]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_awaddr[9]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_awaddr[8]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_awaddr[7]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_awaddr[6]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_awaddr[5]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_awaddr[4]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_awaddr[3]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_awaddr[2]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_awaddr[1]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_awaddr[0]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2!
s_axi_awvalid2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[31]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[30]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[29]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[28]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[27]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[26]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[25]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[24]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[23]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[22]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[21]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[20]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[19]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[18]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[17]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[16]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[15]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[14]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[13]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[12]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[11]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_wdata[10]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2"
s_axi_wdata[9]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2"
s_axi_wdata[8]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2"
s_axi_wdata[7]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2"
s_axi_wdata[6]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2"
s_axi_wdata[5]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2"
s_axi_wdata[4]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2"
s_axi_wdata[3]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2"
s_axi_wdata[2]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2"
s_axi_wdata[1]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2"
s_axi_wdata[0]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2 
s_axi_wvalid2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2 
s_axi_bready2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_araddr[17]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_araddr[16]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_araddr[15]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_araddr[14]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_araddr[13]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_araddr[12]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_araddr[11]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2$
s_axi_araddr[10]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_araddr[9]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_araddr[8]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_araddr[7]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_araddr[6]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_araddr[5]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_araddr[4]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_araddr[3]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_araddr[2]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_araddr[1]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2#
s_axi_araddr[0]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2!
s_axi_arvalid2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst0/ldcp_encoder 2default:default2 
s_axi_rready2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2$
s_axi_awaddr[17]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2$
s_axi_awaddr[16]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2$
s_axi_awaddr[15]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2$
s_axi_awaddr[14]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2$
s_axi_awaddr[13]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2$
s_axi_awaddr[12]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2$
s_axi_awaddr[11]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2$
s_axi_awaddr[10]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_awaddr[9]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_awaddr[8]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_awaddr[7]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_awaddr[6]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_awaddr[5]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_awaddr[4]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_awaddr[3]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_awaddr[2]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_awaddr[1]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_awaddr[0]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2!
s_axi_awvalid2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_wdata[31]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_wdata[30]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_wdata[29]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_wdata[28]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_wdata[27]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_wdata[26]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_wdata[25]2default:defaultZ8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2:
&\LDPC_encoder_1x16_inst1/ldcp_encoder 2default:default2#
s_axi_wdata[24]2default:defaultZ8-4442h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-44422default:default2
1002default:defaultZ17-14h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:22 ; elapsed = 00:00:28 . Memory (MB): peak = 3978.863 ; gain = 746.035 ; free physical = 3138 ; free virtual = 104266
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:22 ; elapsed = 00:00:28 . Memory (MB): peak = 3978.863 ; gain = 746.035 ; free physical = 3138 ; free virtual = 104266
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[31]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[31]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[31]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[31]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[31]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[31]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[31]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[31]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[30]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[30]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[30]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[30]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[30]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[30]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[30]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[30]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[29]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[29]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[29]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[29]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[29]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[29]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[29]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[29]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[28]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[28]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[28]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[28]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[28]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[28]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[28]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[28]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[27]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[27]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[27]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[27]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[27]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[27]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[27]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[27]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[26]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[26]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[26]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[26]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[26]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[26]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[26]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[26]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[25]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[25]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[25]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[25]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[25]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[25]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[25]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[25]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[24]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[24]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[24]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[24]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[24]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[24]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[24]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[24]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[23]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[23]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[23]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[23]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[23]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[23]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[23]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[23]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[22]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[22]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[22]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[22]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[22]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[22]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[22]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[22]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[21]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[21]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[21]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[21]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[21]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[21]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[21]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[21]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[20]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[20]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[20]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[20]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[20]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[20]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[20]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[20]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[19]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[19]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[19]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[19]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[19]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[19]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[19]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[19]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[18]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[18]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[18]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[18]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[18]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[18]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[18]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[18]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[17]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[17]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[17]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[17]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[17]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[17]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[17]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[17]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[16]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[16]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[16]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[16]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[16]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[16]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[16]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[16]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[15]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[15]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[15]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[15]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[15]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[15]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[15]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[15]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[14]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[14]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[14]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[14]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[14]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[14]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[14]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[14]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[13]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[13]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[13]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[13]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[13]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[13]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[13]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[13]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[12]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[12]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[12]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[12]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[12]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[12]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[12]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[12]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[11]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[11]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[11]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[11]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[11]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[11]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[11]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[11]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[10]2default:default2
1st2default:default2@
,LDPC_encoder_1x16_inst2/tmp_32bits_reg[10]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[10]2default:default2
2nd2default:default2@
,LDPC_encoder_1x16_inst0/tmp_32bits_reg[10]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[10]2default:default2
3rd2default:default2@
,LDPC_encoder_1x16_inst1/tmp_32bits_reg[10]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
data_out_OBUF[10]2default:default2
4th2default:default2@
,LDPC_encoder_1x16_inst3/tmp_32bits_reg[10]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
data_out_OBUF[9]2default:default2
1st2default:default2?
+LDPC_encoder_1x16_inst2/tmp_32bits_reg[9]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
data_out_OBUF[9]2default:default2
2nd2default:default2?
+LDPC_encoder_1x16_inst0/tmp_32bits_reg[9]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
data_out_OBUF[9]2default:default2
3rd2default:default2?
+LDPC_encoder_1x16_inst1/tmp_32bits_reg[9]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
data_out_OBUF[9]2default:default2
4th2default:default2?
+LDPC_encoder_1x16_inst3/tmp_32bits_reg[9]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
data_out_OBUF[8]2default:default2
1st2default:default2?
+LDPC_encoder_1x16_inst2/tmp_32bits_reg[8]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
data_out_OBUF[8]2default:default2
2nd2default:default2?
+LDPC_encoder_1x16_inst0/tmp_32bits_reg[8]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
data_out_OBUF[8]2default:default2
3rd2default:default2?
+LDPC_encoder_1x16_inst1/tmp_32bits_reg[8]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
data_out_OBUF[8]2default:default2
4th2default:default2?
+LDPC_encoder_1x16_inst3/tmp_32bits_reg[8]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
data_out_OBUF[7]2default:default2
1st2default:default2?
+LDPC_encoder_1x16_inst2/tmp_32bits_reg[7]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
data_out_OBUF[7]2default:default2
2nd2default:default2?
+LDPC_encoder_1x16_inst0/tmp_32bits_reg[7]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
data_out_OBUF[7]2default:default2
3rd2default:default2?
+LDPC_encoder_1x16_inst1/tmp_32bits_reg[7]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
data_out_OBUF[7]2default:default2
4th2default:default2?
+LDPC_encoder_1x16_inst3/tmp_32bits_reg[7]/Q2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1422default:default8@Z8-6859h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-68592default:default2
1002default:defaultZ17-14h px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|       32|Failed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 3978.863 ; gain = 746.035 ; free physical = 3138 ; free virtual = 104267
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 3978.863 ; gain = 746.035 ; free physical = 3138 ; free virtual = 104266
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 3978.863 ; gain = 746.035 ; free physical = 3138 ; free virtual = 104267
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 3978.863 ; gain = 746.035 ; free physical = 3138 ; free virtual = 104267
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |sd_fec_0      |         4|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |sd_fec   |     1|
2default:defaulth px� 
F
%s*synth2.
|2     |sd_fec_0 |     3|
2default:defaulth px� 
F
%s*synth2.
|5     |BUFG     |     1|
2default:defaulth px� 
F
%s*synth2.
|6     |LUT2     |     4|
2default:defaulth px� 
F
%s*synth2.
|7     |LUT3     |     8|
2default:defaulth px� 
F
%s*synth2.
|8     |LUT4     |     9|
2default:defaulth px� 
F
%s*synth2.
|9     |LUT5     |    15|
2default:defaulth px� 
F
%s*synth2.
|10    |LUT6     |    14|
2default:defaulth px� 
F
%s*synth2.
|11    |FDCE     |    20|
2default:defaulth px� 
F
%s*synth2.
|12    |FDRE     |   159|
2default:defaulth px� 
F
%s*synth2.
|13    |FDSE     |    16|
2default:defaulth px� 
F
%s*synth2.
|14    |IBUF     |    43|
2default:defaulth px� 
F
%s*synth2.
|15    |OBUF     |    34|
2default:defaulth px� 
F
%s*synth2.
|16    |OBUFT    |     1|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 3978.863 ; gain = 746.035 ; free physical = 3138 ; free virtual = 104266
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
t
%s
*synth2\
HSynthesis finished with 0 errors, 420 critical warnings and 4 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:21 ; elapsed = 00:00:26 . Memory (MB): peak = 3978.863 ; gain = 576.191 ; free physical = 3176 ; free virtual = 104305
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 3978.871 ; gain = 746.035 ; free physical = 3178 ; free virtual = 104307
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3989.8322default:default2
0.0002default:default2
32702default:default2
1043992default:defaultZ17-722h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
442default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
4072.5702default:default2
0.0002default:default2
31862default:default2
1043152default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
y  A total of 44 instances were transformed.
  BUFG => BUFGCE: 1 instance 
  IBUF => IBUF (IBUFCTRL, INBUF): 43 instances
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
9eff81c52default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
352default:default2
222default:default2
2002default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:362default:default2
00:00:442default:default2
4072.5702default:default2
997.4772default:default2
33282default:default2
1044572default:defaultZ17-722h px� 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2F
2/home/miglioranza/FEC/FEC.runs/synth_1/Encoder.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2x
dExecuting : report_utilization -file Encoder_utilization_synth.rpt -pb Encoder_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Sep 10 11:35:32 20242default:defaultZ17-206h px� 


End Record