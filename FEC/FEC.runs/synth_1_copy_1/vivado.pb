
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:062default:default2
3066.7662default:default2
2.0162default:default2
431672default:default2
1126462default:defaultZ17-722h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
y
 Loaded user IP repository '%s'.
1135*coregen22
/home/miglioranza/FEC/FEC.srcs2default:defaultZ19-1700h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen2E
1/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip2default:defaultZ19-2313h px� 
�
jDuplicate IP found for '%s'. The one found in IP location '%s' will take precedence over the same IP in %s1161*coregen2-
user.org:user:Encoder:1.02default:default2@
,/home/miglioranza/FEC/FEC.srcs/sources_1/new2default:default2n
Zlocations: 
   /home/miglioranza/FEC/FEC.srcs
   /home/miglioranza/FEC/FEC.srcs/sources_1
2default:defaultZ19-1663h px� 
�
Command: %s
1870*	planAhead2�
qread_checkpoint -auto_incremental -incremental /home/miglioranza/FEC/FEC.srcs/utils_1/imports/synth_1/Encoder.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2V
B/home/miglioranza/FEC/FEC.srcs/utils_1/imports/synth_1/Encoder.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
�
Command: %s
53*	vivadotcl2�
psynth_design -top Encoder -part xczu28dr-ffvg1517-2-e -directive AreaOptimized_high -control_set_opt_threshold 12default:defaultZ4-113h px� 
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
24903402default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 3478.258 ; gain = 229.688 ; free physical = 41848 ; free virtual = 111328
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
Encoder2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
552default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
Wifi_Input_FSM2default:default2S
?/home/miglioranza/FEC/FEC.srcs/sources_1/new/Wifi_Input_FSM.vhd2default:default2
352default:default2
	FSM_Input2default:default2"
Wifi_Input_FSM2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
2702default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2"
Wifi_Input_FSM2default:default2U
?/home/miglioranza/FEC/FEC.srcs/sources_1/new/Wifi_Input_FSM.vhd2default:default2
612default:default8@Z8-638h px� 
�
default block is never used226*oasys2U
?/home/miglioranza/FEC/FEC.srcs/sources_1/new/Wifi_Input_FSM.vhd2default:default2
832default:default8@Z8-226h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2%
block_counter_reg2default:default2U
?/home/miglioranza/FEC/FEC.srcs/sources_1/new/Wifi_Input_FSM.vhd2default:default2
1492default:default8@Z8-6014h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
Wifi_Input_FSM2default:default2
12default:default2
12default:default2U
?/home/miglioranza/FEC/FEC.srcs/sources_1/new/Wifi_Input_FSM.vhd2default:default2
612default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
Data_input_FIFO2default:default2T
@/home/miglioranza/FEC/FEC.srcs/sources_1/new/Data_input_FIFO.vhd2default:default2
352default:default2

input_fifo2default:default2#
Data_input_FIFO2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
2942default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2#
Data_input_FIFO2default:default2V
@/home/miglioranza/FEC/FEC.srcs/sources_1/new/Data_input_FIFO.vhd2default:default2
522default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
fifo_generator_02default:default2
k/home/miglioranza/FEC/FEC.runs/synth_1_copy_1/.Xil/Vivado-2490260-uxsrv005/realtime/fifo_generator_0_stub.v2default:default2
62default:default2
	axis_fifo2default:default2$
fifo_generator_02default:default2V
@/home/miglioranza/FEC/FEC.srcs/sources_1/new/Data_input_FIFO.vhd2default:default2
802default:default8@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2$
fifo_generator_02default:default2
 2default:default2�
k/home/miglioranza/FEC/FEC.runs/synth_1_copy_1/.Xil/Vivado-2490260-uxsrv005/realtime/fifo_generator_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
fifo_generator_02default:default2
 2default:default2
22default:default2
12default:default2�
k/home/miglioranza/FEC/FEC.runs/synth_1_copy_1/.Xil/Vivado-2490260-uxsrv005/realtime/fifo_generator_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
default block is never used226*oasys2V
@/home/miglioranza/FEC/FEC.srcs/sources_1/new/Data_input_FIFO.vhd2default:default2
1002default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
Data_input_FIFO2default:default2
32default:default2
12default:default2V
@/home/miglioranza/FEC/FEC.srcs/sources_1/new/Data_input_FIFO.vhd2default:default2
522default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
FSM_Output_control2default:default2W
C/home/miglioranza/FEC/FEC.srcs/sources_1/new/FSM_Output_control.vhd2default:default2
362default:default2+
FSM_Output_control_inst2default:default2&
FSM_Output_control2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
3112default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2&
FSM_Output_control2default:default2Y
C/home/miglioranza/FEC/FEC.srcs/sources_1/new/FSM_Output_control.vhd2default:default2
542default:default8@Z8-638h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
counter_reg2default:default2Y
C/home/miglioranza/FEC/FEC.srcs/sources_1/new/FSM_Output_control.vhd2default:default2
1142default:default8@Z8-6014h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2&
FSM_Output_control2default:default2
42default:default2
12default:default2Y
C/home/miglioranza/FEC/FEC.srcs/sources_1/new/FSM_Output_control.vhd2default:default2
542default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	LDPC_core2default:default2N
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
352default:default2+
LDPC_encoder_1x16_inst02default:default2
	LDPC_core2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
3292default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	LDPC_core2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
602default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
sd_fec_02default:default2w
c/home/miglioranza/FEC/FEC.runs/synth_1_copy_1/.Xil/Vivado-2490260-uxsrv005/realtime/sd_fec_0_stub.v2default:default2
62default:default2 
ldpc_encoder2default:default2
sd_fec_02default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1182default:default8@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
sd_fec_02default:default2
 2default:default2y
c/home/miglioranza/FEC/FEC.runs/synth_1_copy_1/.Xil/Vivado-2490260-uxsrv005/realtime/sd_fec_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sd_fec_02default:default2
 2default:default2
52default:default2
12default:default2y
c/home/miglioranza/FEC/FEC.runs/synth_1_copy_1/.Xil/Vivado-2490260-uxsrv005/realtime/sd_fec_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	din_valid2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1672default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
din_last2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1672default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2"
data_out_valid2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1672default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2&
data_out_last_core2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1672default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2!
data_out_core2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1672default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

last_value2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1672default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	din_valid2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1862default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2&
data_out_last_core2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1862default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2!
data_out_core2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1862default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2"
data_out_valid2default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
1862default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	LDPC_core2default:default2
62default:default2
12default:default2P
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
602default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	LDPC_core2default:default2N
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
352default:default2+
LDPC_encoder_1x16_inst12default:default2
	LDPC_core2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
3532default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	LDPC_core2default:default2N
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
352default:default2+
LDPC_encoder_1x16_inst22default:default2
	LDPC_core2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
3772default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	LDPC_core2default:default2N
:/home/miglioranza/FEC/FEC.srcs/sources_1/new/LDPC_core.vhd2default:default2
352default:default2+
LDPC_encoder_1x16_inst32default:default2
	LDPC_core2default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
4012default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Encoder2default:default2
72default:default2
12default:default2N
8/home/miglioranza/FEC/FEC.srcs/sources_1/new/Encoder.vhd2default:default2
552default:default8@Z8-256h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2'
axis_data_count[12]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2'
axis_data_count[11]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2'
axis_data_count[10]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
axis_data_count[9]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
axis_data_count[8]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
axis_data_count[7]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
axis_data_count[6]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
axis_data_count[5]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
axis_data_count[4]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
axis_data_count[3]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
axis_data_count[2]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
axis_data_count[1]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
axis_data_count[0]2default:default2
	LDPC_core2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2(
sel_FEC_code_rate[1]2default:default2&
FSM_Output_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2(
sel_FEC_code_rate[0]2default:default2&
FSM_Output_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2$
o_fsm_ready_fifo2default:default2&
FSM_Output_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2(
o_fsm_block_count[7]2default:default2&
FSM_Output_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2(
o_fsm_block_count[6]2default:default2&
FSM_Output_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2(
o_fsm_block_count[5]2default:default2&
FSM_Output_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2(
o_fsm_block_count[4]2default:default2&
FSM_Output_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2(
o_fsm_block_count[3]2default:default2&
FSM_Output_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2(
o_fsm_block_count[2]2default:default2&
FSM_Output_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2(
o_fsm_block_count[1]2default:default2&
FSM_Output_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2(
o_fsm_block_count[0]2default:default2&
FSM_Output_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
din_ready_ifsm2enc2default:default2
Encoder2default:defaultZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 3522.164 ; gain = 273.594 ; free physical = 40884 ; free virtual = 110363
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 3539.977 ; gain = 291.406 ; free physical = 40877 ; free virtual = 110357
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 3539.977 ; gain = 291.406 ; free physical = 40877 ; free virtual = 110357
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
00:00:00.012default:default2
3539.9772default:default2
0.0002default:default2
408692default:default2
1103492default:defaultZ17-722h px� 
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
$LDPC_encoder_1x16_inst0/ldpc_encoder	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst0/ldpc_encoder	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst1/ldpc_encoder	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst1/ldpc_encoder	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst2/ldpc_encoder	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst2/ldpc_encoder	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst3/ldpc_encoder	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2j
T/home/miglioranza/FEC/FEC.gen/sources_1/ip/sd_fec_0/sd_fec_0/sd_fec_0_in_context.xdc2default:default2:
$LDPC_encoder_1x16_inst3/ldpc_encoder	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
l/home/miglioranza/FEC/FEC.gen/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0_in_context.xdc2default:default2*
input_fifo/axis_fifo	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
l/home/miglioranza/FEC/FEC.gen/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0_in_context.xdc2default:default2*
input_fifo/axis_fifo	2default:default8Z20-847h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3706.8202default:default2
0.0002default:default2
417132default:default2
1111932default:defaultZ17-722h px� 
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
00:00:00.012default:default2
3706.8202default:default2
0.0002default:default2
417132default:default2
1111932default:defaultZ17-722h px� 
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
�Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 3706.820 ; gain = 458.250 ; free physical = 41800 ; free virtual = 111281
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 3706.820 ; gain = 458.250 ; free physical = 41800 ; free virtual = 111281
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 3706.820 ; gain = 458.250 ; free physical = 41800 ; free virtual = 111281
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 3706.820 ; gain = 458.250 ; free physical = 41796 ; free virtual = 111276
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
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
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
,	   6 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    8 Bit        Muxes := 1     
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
,	   4 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
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
,	   2 Input    1 Bit        Muxes := 14    
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
9Port %s in module %s is either unconnected or has no load4866*oasys2&
din_ready_ifsm2enc2default:default2
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
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 3706.820 ; gain = 458.250 ; free physical = 41773 ; free virtual = 111257
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 3971.566 ; gain = 722.996 ; free physical = 41293 ; free virtual = 110778
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
�Finished Timing Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 3971.566 ; gain = 722.996 ; free physical = 41293 ; free virtual = 110777
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
�Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 4000.613 ; gain = 752.043 ; free physical = 41289 ; free virtual = 110774
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 4000.613 ; gain = 752.043 ; free physical = 41290 ; free virtual = 110774
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 4000.613 ; gain = 752.043 ; free physical = 41290 ; free virtual = 110774
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 4000.613 ; gain = 752.043 ; free physical = 41290 ; free virtual = 110774
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 4000.613 ; gain = 752.043 ; free physical = 41290 ; free virtual = 110774
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 4000.613 ; gain = 752.043 ; free physical = 41290 ; free virtual = 110774
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 4000.613 ; gain = 752.043 ; free physical = 41290 ; free virtual = 110774
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
R
%s
*synth2:
&+------+-----------------+----------+
2default:defaulth p
x
� 
R
%s
*synth2:
&|      |BlackBox name    |Instances |
2default:defaulth p
x
� 
R
%s
*synth2:
&+------+-----------------+----------+
2default:defaulth p
x
� 
R
%s
*synth2:
&|1     |sd_fec_0         |         4|
2default:defaulth p
x
� 
R
%s
*synth2:
&|2     |fifo_generator_0 |         1|
2default:defaulth p
x
� 
R
%s
*synth2:
&+------+-----------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px� 
L
%s*synth24
 |      |Cell           |Count |
2default:defaulth px� 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px� 
L
%s*synth24
 |1     |fifo_generator |     1|
2default:defaulth px� 
L
%s*synth24
 |2     |sd_fec         |     1|
2default:defaulth px� 
L
%s*synth24
 |3     |sd_fec_0       |     3|
2default:defaulth px� 
L
%s*synth24
 |6     |BUFG           |     1|
2default:defaulth px� 
L
%s*synth24
 |7     |CARRY8         |    28|
2default:defaulth px� 
L
%s*synth24
 |8     |LUT1           |    21|
2default:defaulth px� 
L
%s*synth24
 |9     |LUT2           |    23|
2default:defaulth px� 
L
%s*synth24
 |10    |LUT3           |   162|
2default:defaulth px� 
L
%s*synth24
 |11    |LUT4           |    57|
2default:defaulth px� 
L
%s*synth24
 |12    |LUT5           |    58|
2default:defaulth px� 
L
%s*synth24
 |13    |LUT6           |    57|
2default:defaulth px� 
L
%s*synth24
 |14    |FDCE           |    88|
2default:defaulth px� 
L
%s*synth24
 |15    |FDRE           |    45|
2default:defaulth px� 
L
%s*synth24
 |16    |FDSE           |    16|
2default:defaulth px� 
L
%s*synth24
 |17    |IBUF           |    40|
2default:defaulth px� 
L
%s*synth24
 |18    |OBUF           |    39|
2default:defaulth px� 
L
%s*synth24
 +------+---------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 4000.613 ; gain = 752.043 ; free physical = 41290 ; free virtual = 110774
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:24 ; elapsed = 00:00:28 . Memory (MB): peak = 4000.613 ; gain = 585.199 ; free physical = 41330 ; free virtual = 110815
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:26 ; elapsed = 00:00:30 . Memory (MB): peak = 4000.621 ; gain = 752.043 ; free physical = 41330 ; free virtual = 110815
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
4011.5822default:default2
0.0002default:default2
414272default:default2
1109122default:defaultZ17-722h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
692default:defaultZ29-17h px� 
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
4094.3522default:default2
0.0002default:default2
413462default:default2
1108302default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
y  A total of 41 instances were transformed.
  BUFG => BUFGCE: 1 instance 
  IBUF => IBUF (IBUFCTRL, INBUF): 40 instances
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
a4fe1b2d2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
472default:default2
422default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:392default:default2
00:00:402default:default2
4094.3522default:default2
1001.4382default:default2
414872default:default2
1109722default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2M
9/home/miglioranza/FEC/FEC.runs/synth_1_copy_1/Encoder.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2x
dExecuting : report_utilization -file Encoder_utilization_synth.rpt -pb Encoder_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Feb  6 10:58:13 20252default:defaultZ17-206h px� 


End Record