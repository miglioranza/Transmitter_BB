
�
Command: %s
53*	vivadotcl2U
Asynth_design -top Parallel_FIR_filter -part xczu28dr-ffvg1517-2-e2default:defaultZ4-113h px� 
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
�The version limit for your license is '%s' and has expired for new software. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for any updates or new releases.
719*common2
2024.012default:defaultZ17-1540h px� 
�
%s*synth2�
�Starting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 1714.828 ; gain = 143.691 ; free physical = 21772 ; free virtual = 98282
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2'
Parallel_FIR_filter2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
532default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter FILTER_TAPS bound to: 60 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter INPUT_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter COEFF_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
j_reg2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1052default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sum_reg_reg2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
972default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
i_reg2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1142default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
test_reg_reg2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1252default:default8@Z8-6014h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
Parallel_FIR_filter2default:default2
12default:default2
12default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
532default:default8@Z8-256h px� 
�
+design %s has port %s driven by constant %s3447*oasys2'
Parallel_FIR_filter2default:default2 
data_o_valid2default:default2
12default:defaultZ8-3917h px� 
�
%s*synth2�
�Finished Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:07 . Memory (MB): peak = 1767.590 ; gain = 196.453 ; free physical = 21788 ; free virtual = 98299
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
�Finished Constraint Validation : Time (s): cpu = 00:00:04 ; elapsed = 00:00:08 . Memory (MB): peak = 1773.520 ; gain = 202.383 ; free physical = 21788 ; free virtual = 98300
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
\
Loading part %s157*device2)
xczu28dr-ffvg1517-2-e2default:defaultZ21-403h px� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:04 ; elapsed = 00:00:08 . Memory (MB): peak = 1792.434 ; gain = 221.297 ; free physical = 21787 ; free virtual = 98299
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:09 . Memory (MB): peak = 1792.441 ; gain = 221.305 ; free physical = 21760 ; free virtual = 98272
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
Z
%s
*synth2B
.	  59 Input     32 Bit       Adders := 1     
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
.	               32 Bit    Registers := 60    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 118   
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
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 58    
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
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
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
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
H
%s
*synth20
Module Parallel_FIR_filter 
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
Z
%s
*synth2B
.	  59 Input     32 Bit       Adders := 1     
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
.	               32 Bit    Registers := 60    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 118   
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
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 58    
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
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
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
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[0][15:0]2default:default2*
shift_reg_reg[0][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[1][15:0]2default:default2*
shift_reg_reg[1][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[2][15:0]2default:default2*
shift_reg_reg[2][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[3][15:0]2default:default2*
shift_reg_reg[3][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[4][15:0]2default:default2*
shift_reg_reg[4][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[5][15:0]2default:default2*
shift_reg_reg[5][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[6][15:0]2default:default2*
shift_reg_reg[6][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[7][15:0]2default:default2*
shift_reg_reg[7][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[8][15:0]2default:default2*
shift_reg_reg[8][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[9][15:0]2default:default2*
shift_reg_reg[9][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[10][15:0]2default:default2+
shift_reg_reg[10][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[11][15:0]2default:default2+
shift_reg_reg[11][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[12][15:0]2default:default2+
shift_reg_reg[12][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[13][15:0]2default:default2+
shift_reg_reg[13][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[14][15:0]2default:default2+
shift_reg_reg[14][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[15][15:0]2default:default2+
shift_reg_reg[15][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[16][15:0]2default:default2+
shift_reg_reg[16][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[17][15:0]2default:default2+
shift_reg_reg[17][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[18][15:0]2default:default2+
shift_reg_reg[18][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[19][15:0]2default:default2+
shift_reg_reg[19][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[20][15:0]2default:default2+
shift_reg_reg[20][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[21][15:0]2default:default2+
shift_reg_reg[21][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[22][15:0]2default:default2+
shift_reg_reg[22][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[23][15:0]2default:default2+
shift_reg_reg[23][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[24][15:0]2default:default2+
shift_reg_reg[24][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[25][15:0]2default:default2+
shift_reg_reg[25][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[26][15:0]2default:default2+
shift_reg_reg[26][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[27][15:0]2default:default2+
shift_reg_reg[27][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[28][15:0]2default:default2+
shift_reg_reg[28][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[29][15:0]2default:default2+
shift_reg_reg[29][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[30][15:0]2default:default2+
shift_reg_reg[30][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[31][15:0]2default:default2+
shift_reg_reg[31][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[32][15:0]2default:default2+
shift_reg_reg[32][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[33][15:0]2default:default2+
shift_reg_reg[33][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[34][15:0]2default:default2+
shift_reg_reg[34][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[35][15:0]2default:default2+
shift_reg_reg[35][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[36][15:0]2default:default2+
shift_reg_reg[36][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[37][15:0]2default:default2+
shift_reg_reg[37][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[38][15:0]2default:default2+
shift_reg_reg[38][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[39][15:0]2default:default2+
shift_reg_reg[39][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[40][15:0]2default:default2+
shift_reg_reg[40][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[41][15:0]2default:default2+
shift_reg_reg[41][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[42][15:0]2default:default2+
shift_reg_reg[42][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[43][15:0]2default:default2+
shift_reg_reg[43][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[44][15:0]2default:default2+
shift_reg_reg[44][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[45][15:0]2default:default2+
shift_reg_reg[45][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[46][15:0]2default:default2+
shift_reg_reg[46][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[47][15:0]2default:default2+
shift_reg_reg[47][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[48][15:0]2default:default2+
shift_reg_reg[48][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[49][15:0]2default:default2+
shift_reg_reg[49][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[50][15:0]2default:default2+
shift_reg_reg[50][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[51][15:0]2default:default2+
shift_reg_reg[51][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[52][15:0]2default:default2+
shift_reg_reg[52][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[53][15:0]2default:default2+
shift_reg_reg[53][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[54][15:0]2default:default2+
shift_reg_reg[54][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[55][15:0]2default:default2+
shift_reg_reg[55][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[56][15:0]2default:default2+
shift_reg_reg[56][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[57][15:0]2default:default2+
shift_reg_reg[57][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[0][15:0]2default:default2*
shift_reg_reg[0][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[1][15:0]2default:default2*
shift_reg_reg[1][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[2][15:0]2default:default2*
shift_reg_reg[2][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[3][15:0]2default:default2*
shift_reg_reg[3][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[4][15:0]2default:default2*
shift_reg_reg[4][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[5][15:0]2default:default2*
shift_reg_reg[5][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[6][15:0]2default:default2*
shift_reg_reg[6][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[7][15:0]2default:default2*
shift_reg_reg[7][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[8][15:0]2default:default2*
shift_reg_reg[8][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2*
shift_reg_reg[9][15:0]2default:default2*
shift_reg_reg[9][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[10][15:0]2default:default2+
shift_reg_reg[10][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[11][15:0]2default:default2+
shift_reg_reg[11][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[12][15:0]2default:default2+
shift_reg_reg[12][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[13][15:0]2default:default2+
shift_reg_reg[13][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[14][15:0]2default:default2+
shift_reg_reg[14][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[15][15:0]2default:default2+
shift_reg_reg[15][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[16][15:0]2default:default2+
shift_reg_reg[16][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[17][15:0]2default:default2+
shift_reg_reg[17][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[18][15:0]2default:default2+
shift_reg_reg[18][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[19][15:0]2default:default2+
shift_reg_reg[19][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[20][15:0]2default:default2+
shift_reg_reg[20][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[21][15:0]2default:default2+
shift_reg_reg[21][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[22][15:0]2default:default2+
shift_reg_reg[22][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[23][15:0]2default:default2+
shift_reg_reg[23][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[24][15:0]2default:default2+
shift_reg_reg[24][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[25][15:0]2default:default2+
shift_reg_reg[25][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[26][15:0]2default:default2+
shift_reg_reg[26][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[27][15:0]2default:default2+
shift_reg_reg[27][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[28][15:0]2default:default2+
shift_reg_reg[28][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[29][15:0]2default:default2+
shift_reg_reg[29][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[30][15:0]2default:default2+
shift_reg_reg[30][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[31][15:0]2default:default2+
shift_reg_reg[31][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[32][15:0]2default:default2+
shift_reg_reg[32][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[33][15:0]2default:default2+
shift_reg_reg[33][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[34][15:0]2default:default2+
shift_reg_reg[34][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[35][15:0]2default:default2+
shift_reg_reg[35][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[36][15:0]2default:default2+
shift_reg_reg[36][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[37][15:0]2default:default2+
shift_reg_reg[37][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[38][15:0]2default:default2+
shift_reg_reg[38][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[39][15:0]2default:default2+
shift_reg_reg[39][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[40][15:0]2default:default2+
shift_reg_reg[40][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2+
shift_reg_reg[41][15:0]2default:default2+
shift_reg_reg[41][15:0]2default:default2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
1032default:default8@Z8-4471h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-44712default:default2
1002default:defaultZ17-14h px� 
z
%s
*synth2b
NDSP Report: Generating DSP mul_reg_reg[0]0, operation Mode is: A2*(B:0xffff).
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[0] is absorbed into DSP mul_reg_reg[0]0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: operator mul_reg_reg[0]0 is absorbed into DSP mul_reg_reg[0]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[1]0, operation Mode is: A''*(B:0xffb3).
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[0] is absorbed into DSP mul_reg_reg[1]0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[1] is absorbed into DSP mul_reg_reg[1]0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: operator mul_reg_reg[1]0 is absorbed into DSP mul_reg_reg[1]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: Generating DSP mul_reg_reg[2]0, operation Mode is: A''*(B:0xd6).
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[1] is absorbed into DSP mul_reg_reg[2]0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[2] is absorbed into DSP mul_reg_reg[2]0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: operator mul_reg_reg[2]0 is absorbed into DSP mul_reg_reg[2]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: Generating DSP mul_reg_reg[3]0, operation Mode is: A''*(B:0x63).
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[2] is absorbed into DSP mul_reg_reg[3]0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[3] is absorbed into DSP mul_reg_reg[3]0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: operator mul_reg_reg[3]0 is absorbed into DSP mul_reg_reg[3]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[4]0, operation Mode is: A''*(B:0xfdb1).
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[3] is absorbed into DSP mul_reg_reg[4]0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[4] is absorbed into DSP mul_reg_reg[4]0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: operator mul_reg_reg[4]0 is absorbed into DSP mul_reg_reg[4]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: Generating DSP mul_reg_reg[5]0, operation Mode is: A''*(B:0x1d9).
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[4] is absorbed into DSP mul_reg_reg[5]0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[5] is absorbed into DSP mul_reg_reg[5]0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: operator mul_reg_reg[5]0 is absorbed into DSP mul_reg_reg[5]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: Generating DSP mul_reg_reg[6]0, operation Mode is: A''*(B:0x25f).
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[5] is absorbed into DSP mul_reg_reg[6]0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[6] is absorbed into DSP mul_reg_reg[6]0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: operator mul_reg_reg[6]0 is absorbed into DSP mul_reg_reg[6]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[7]0, operation Mode is: A''*(B:0xfab4).
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[6] is absorbed into DSP mul_reg_reg[7]0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[7] is absorbed into DSP mul_reg_reg[7]0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: operator mul_reg_reg[7]0 is absorbed into DSP mul_reg_reg[7]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: Generating DSP mul_reg_reg[8]0, operation Mode is: A''*(B:0x141).
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[7] is absorbed into DSP mul_reg_reg[8]0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[8] is absorbed into DSP mul_reg_reg[8]0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: operator mul_reg_reg[8]0 is absorbed into DSP mul_reg_reg[8]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: Generating DSP mul_reg_reg[9]0, operation Mode is: A''*(B:0x63b).
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[8] is absorbed into DSP mul_reg_reg[9]0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register shift_reg_reg[9] is absorbed into DSP mul_reg_reg[9]0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: operator mul_reg_reg[9]0 is absorbed into DSP mul_reg_reg[9]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[10]0, operation Mode is: A''*(B:0xf92d).
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: register shift_reg_reg[9] is absorbed into DSP mul_reg_reg[10]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[10] is absorbed into DSP mul_reg_reg[10]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[10]0 is absorbed into DSP mul_reg_reg[10]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[11]0, operation Mode is: A''*(B:0xfe5a).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[10] is absorbed into DSP mul_reg_reg[11]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[11] is absorbed into DSP mul_reg_reg[11]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[11]0 is absorbed into DSP mul_reg_reg[11]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[12]0, operation Mode is: A''*(B:0x825).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[11] is absorbed into DSP mul_reg_reg[12]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[12] is absorbed into DSP mul_reg_reg[12]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[12]0 is absorbed into DSP mul_reg_reg[12]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[13]0, operation Mode is: A''*(B:0xfbe0).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[12] is absorbed into DSP mul_reg_reg[13]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[13] is absorbed into DSP mul_reg_reg[13]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[13]0 is absorbed into DSP mul_reg_reg[13]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[14]0, operation Mode is: A''*(B:0xfccd).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[13] is absorbed into DSP mul_reg_reg[14]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[14] is absorbed into DSP mul_reg_reg[14]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[14]0 is absorbed into DSP mul_reg_reg[14]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[15]0, operation Mode is: A''*(B:0x31e).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[14] is absorbed into DSP mul_reg_reg[15]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[15] is absorbed into DSP mul_reg_reg[15]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[15]0 is absorbed into DSP mul_reg_reg[15]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: Generating DSP mul_reg_reg[16]0, operation Mode is: A''*(B:0x11).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[15] is absorbed into DSP mul_reg_reg[16]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[16] is absorbed into DSP mul_reg_reg[16]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[16]0 is absorbed into DSP mul_reg_reg[16]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[17]0, operation Mode is: A''*(B:0x410).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[16] is absorbed into DSP mul_reg_reg[17]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[17] is absorbed into DSP mul_reg_reg[17]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[17]0 is absorbed into DSP mul_reg_reg[17]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[18]0, operation Mode is: A''*(B:0xf766).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[17] is absorbed into DSP mul_reg_reg[18]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[18] is absorbed into DSP mul_reg_reg[18]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[18]0 is absorbed into DSP mul_reg_reg[18]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[19]0, operation Mode is: A''*(B:0xfcc2).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[18] is absorbed into DSP mul_reg_reg[19]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[19] is absorbed into DSP mul_reg_reg[19]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[19]0 is absorbed into DSP mul_reg_reg[19]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[20]0, operation Mode is: A''*(B:0x1730).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[19] is absorbed into DSP mul_reg_reg[20]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[20] is absorbed into DSP mul_reg_reg[20]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[20]0 is absorbed into DSP mul_reg_reg[20]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[21]0, operation Mode is: A''*(B:0xeeb3).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[20] is absorbed into DSP mul_reg_reg[21]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[21] is absorbed into DSP mul_reg_reg[21]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[21]0 is absorbed into DSP mul_reg_reg[21]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[22]0, operation Mode is: A''*(B:0xea68).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[21] is absorbed into DSP mul_reg_reg[22]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[22] is absorbed into DSP mul_reg_reg[22]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[22]0 is absorbed into DSP mul_reg_reg[22]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[23]0, operation Mode is: A''*(B:0x2dac).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[22] is absorbed into DSP mul_reg_reg[23]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[23] is absorbed into DSP mul_reg_reg[23]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[23]0 is absorbed into DSP mul_reg_reg[23]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[24]0, operation Mode is: A''*(B:0xf57a).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[23] is absorbed into DSP mul_reg_reg[24]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[24] is absorbed into DSP mul_reg_reg[24]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[24]0 is absorbed into DSP mul_reg_reg[24]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[25]0, operation Mode is: A''*(B:0xcd9b).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[24] is absorbed into DSP mul_reg_reg[25]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[25] is absorbed into DSP mul_reg_reg[25]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[25]0 is absorbed into DSP mul_reg_reg[25]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[26]0, operation Mode is: A''*(B:0x3731).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[25] is absorbed into DSP mul_reg_reg[26]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[26] is absorbed into DSP mul_reg_reg[26]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[26]0 is absorbed into DSP mul_reg_reg[26]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[27]0, operation Mode is: A''*(B:0xdd7).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[26] is absorbed into DSP mul_reg_reg[27]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[27] is absorbed into DSP mul_reg_reg[27]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[27]0 is absorbed into DSP mul_reg_reg[27]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[28]0, operation Mode is: A''*(B:0xb74e).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[27] is absorbed into DSP mul_reg_reg[28]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[28] is absorbed into DSP mul_reg_reg[28]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[28]0 is absorbed into DSP mul_reg_reg[28]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[29]0, operation Mode is: A''*(B:0x2a15).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[28] is absorbed into DSP mul_reg_reg[29]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[29] is absorbed into DSP mul_reg_reg[29]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[29]0 is absorbed into DSP mul_reg_reg[29]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[30]0, operation Mode is: A''*(B:0x2a15).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[29] is absorbed into DSP mul_reg_reg[30]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[30] is absorbed into DSP mul_reg_reg[30]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[30]0 is absorbed into DSP mul_reg_reg[30]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[31]0, operation Mode is: A''*(B:0xb74e).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[30] is absorbed into DSP mul_reg_reg[31]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[31] is absorbed into DSP mul_reg_reg[31]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[31]0 is absorbed into DSP mul_reg_reg[31]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[32]0, operation Mode is: A''*(B:0xdd7).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[31] is absorbed into DSP mul_reg_reg[32]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[32] is absorbed into DSP mul_reg_reg[32]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[32]0 is absorbed into DSP mul_reg_reg[32]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[33]0, operation Mode is: A''*(B:0x3731).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[32] is absorbed into DSP mul_reg_reg[33]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[33] is absorbed into DSP mul_reg_reg[33]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[33]0 is absorbed into DSP mul_reg_reg[33]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[34]0, operation Mode is: A''*(B:0xcd9b).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[33] is absorbed into DSP mul_reg_reg[34]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[34] is absorbed into DSP mul_reg_reg[34]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[34]0 is absorbed into DSP mul_reg_reg[34]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[35]0, operation Mode is: A''*(B:0xf57a).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[34] is absorbed into DSP mul_reg_reg[35]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[35] is absorbed into DSP mul_reg_reg[35]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[35]0 is absorbed into DSP mul_reg_reg[35]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[36]0, operation Mode is: A''*(B:0x2dac).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[35] is absorbed into DSP mul_reg_reg[36]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[36] is absorbed into DSP mul_reg_reg[36]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[36]0 is absorbed into DSP mul_reg_reg[36]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[37]0, operation Mode is: A''*(B:0xea68).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[36] is absorbed into DSP mul_reg_reg[37]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[37] is absorbed into DSP mul_reg_reg[37]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[37]0 is absorbed into DSP mul_reg_reg[37]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[38]0, operation Mode is: A''*(B:0xeeb3).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[37] is absorbed into DSP mul_reg_reg[38]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[38] is absorbed into DSP mul_reg_reg[38]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[38]0 is absorbed into DSP mul_reg_reg[38]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[39]0, operation Mode is: A''*(B:0x1730).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[38] is absorbed into DSP mul_reg_reg[39]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[39] is absorbed into DSP mul_reg_reg[39]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[39]0 is absorbed into DSP mul_reg_reg[39]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[40]0, operation Mode is: A''*(B:0xfcc2).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[39] is absorbed into DSP mul_reg_reg[40]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[40] is absorbed into DSP mul_reg_reg[40]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[40]0 is absorbed into DSP mul_reg_reg[40]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[41]0, operation Mode is: A''*(B:0xf766).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[40] is absorbed into DSP mul_reg_reg[41]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[41] is absorbed into DSP mul_reg_reg[41]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[41]0 is absorbed into DSP mul_reg_reg[41]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[42]0, operation Mode is: A''*(B:0x410).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[41] is absorbed into DSP mul_reg_reg[42]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[42] is absorbed into DSP mul_reg_reg[42]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[42]0 is absorbed into DSP mul_reg_reg[42]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: Generating DSP mul_reg_reg[43]0, operation Mode is: A''*(B:0x11).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[42] is absorbed into DSP mul_reg_reg[43]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[43] is absorbed into DSP mul_reg_reg[43]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[43]0 is absorbed into DSP mul_reg_reg[43]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[44]0, operation Mode is: A''*(B:0x31e).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[43] is absorbed into DSP mul_reg_reg[44]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[44] is absorbed into DSP mul_reg_reg[44]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[44]0 is absorbed into DSP mul_reg_reg[44]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[45]0, operation Mode is: A''*(B:0xfccd).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[44] is absorbed into DSP mul_reg_reg[45]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[45] is absorbed into DSP mul_reg_reg[45]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[45]0 is absorbed into DSP mul_reg_reg[45]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[46]0, operation Mode is: A''*(B:0xfbe0).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[45] is absorbed into DSP mul_reg_reg[46]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[46] is absorbed into DSP mul_reg_reg[46]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[46]0 is absorbed into DSP mul_reg_reg[46]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[47]0, operation Mode is: A''*(B:0x825).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[46] is absorbed into DSP mul_reg_reg[47]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[47] is absorbed into DSP mul_reg_reg[47]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[47]0 is absorbed into DSP mul_reg_reg[47]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[48]0, operation Mode is: A''*(B:0xfe5a).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[47] is absorbed into DSP mul_reg_reg[48]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[48] is absorbed into DSP mul_reg_reg[48]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[48]0 is absorbed into DSP mul_reg_reg[48]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[49]0, operation Mode is: A''*(B:0xf92d).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[48] is absorbed into DSP mul_reg_reg[49]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[49] is absorbed into DSP mul_reg_reg[49]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[49]0 is absorbed into DSP mul_reg_reg[49]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[50]0, operation Mode is: A''*(B:0x63b).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[49] is absorbed into DSP mul_reg_reg[50]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[50] is absorbed into DSP mul_reg_reg[50]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[50]0 is absorbed into DSP mul_reg_reg[50]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[51]0, operation Mode is: A''*(B:0x141).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[50] is absorbed into DSP mul_reg_reg[51]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[51] is absorbed into DSP mul_reg_reg[51]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[51]0 is absorbed into DSP mul_reg_reg[51]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[52]0, operation Mode is: A''*(B:0xfab4).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[51] is absorbed into DSP mul_reg_reg[52]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[52] is absorbed into DSP mul_reg_reg[52]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[52]0 is absorbed into DSP mul_reg_reg[52]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[53]0, operation Mode is: A''*(B:0x25f).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[52] is absorbed into DSP mul_reg_reg[53]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[53] is absorbed into DSP mul_reg_reg[53]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[53]0 is absorbed into DSP mul_reg_reg[53]0.
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP mul_reg_reg[54]0, operation Mode is: A''*(B:0x1d9).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[53] is absorbed into DSP mul_reg_reg[54]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[54] is absorbed into DSP mul_reg_reg[54]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[54]0 is absorbed into DSP mul_reg_reg[54]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[55]0, operation Mode is: A''*(B:0xfdb1).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[54] is absorbed into DSP mul_reg_reg[55]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[55] is absorbed into DSP mul_reg_reg[55]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[55]0 is absorbed into DSP mul_reg_reg[55]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: Generating DSP mul_reg_reg[56]0, operation Mode is: A''*(B:0x63).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[55] is absorbed into DSP mul_reg_reg[56]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[56] is absorbed into DSP mul_reg_reg[56]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[56]0 is absorbed into DSP mul_reg_reg[56]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: Generating DSP mul_reg_reg[57]0, operation Mode is: A''*(B:0xd6).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[56] is absorbed into DSP mul_reg_reg[57]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[57] is absorbed into DSP mul_reg_reg[57]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[57]0 is absorbed into DSP mul_reg_reg[57]0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP mul_reg_reg[58]0, operation Mode is: A''*(B:0xffb3).
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[57] is absorbed into DSP mul_reg_reg[58]0.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register shift_reg_reg[58] is absorbed into DSP mul_reg_reg[58]0.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: operator mul_reg_reg[58]0 is absorbed into DSP mul_reg_reg[58]0.
2default:defaulth p
x
� 
�
+design %s has port %s driven by constant %s3447*oasys2'
Parallel_FIR_filter2default:default2 
data_o_valid2default:default2
12default:defaultZ8-3917h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[9][27]2default:default2
FDCE2default:default2&
mul_reg_reg[9][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[9][28]2default:default2
FDCE2default:default2&
mul_reg_reg[9][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[9][29]2default:default2
FDCE2default:default2&
mul_reg_reg[9][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[9][30]2default:default2
FDCE2default:default2&
mul_reg_reg[9][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
\mul_reg_reg[9][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[8][25]2default:default2
FDCE2default:default2&
mul_reg_reg[8][26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[8][26]2default:default2
FDCE2default:default2&
mul_reg_reg[8][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[6][26]2default:default2
FDCE2default:default2&
mul_reg_reg[6][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[8][27]2default:default2
FDCE2default:default2&
mul_reg_reg[8][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[6][27]2default:default2
FDCE2default:default2&
mul_reg_reg[6][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[8][28]2default:default2
FDCE2default:default2&
mul_reg_reg[8][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[6][28]2default:default2
FDCE2default:default2&
mul_reg_reg[6][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[8][29]2default:default2
FDCE2default:default2&
mul_reg_reg[8][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[6][29]2default:default2
FDCE2default:default2&
mul_reg_reg[6][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[8][30]2default:default2
FDCE2default:default2&
mul_reg_reg[8][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[6][30]2default:default2
FDCE2default:default2&
mul_reg_reg[6][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
\mul_reg_reg[8][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
\mul_reg_reg[6][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[3][23]2default:default2
FDCE2default:default2&
mul_reg_reg[3][24]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[3][24]2default:default2
FDCE2default:default2&
mul_reg_reg[3][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[5][25]2default:default2
FDCE2default:default2&
mul_reg_reg[5][26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[3][25]2default:default2
FDCE2default:default2&
mul_reg_reg[3][26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[5][26]2default:default2
FDCE2default:default2&
mul_reg_reg[5][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[3][26]2default:default2
FDCE2default:default2&
mul_reg_reg[3][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[5][27]2default:default2
FDCE2default:default2&
mul_reg_reg[5][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[3][27]2default:default2
FDCE2default:default2&
mul_reg_reg[3][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[5][28]2default:default2
FDCE2default:default2&
mul_reg_reg[5][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[3][28]2default:default2
FDCE2default:default2&
mul_reg_reg[3][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[5][29]2default:default2
FDCE2default:default2&
mul_reg_reg[5][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[3][29]2default:default2
FDCE2default:default2&
mul_reg_reg[3][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[5][30]2default:default2
FDCE2default:default2&
mul_reg_reg[5][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[3][30]2default:default2
FDCE2default:default2&
mul_reg_reg[3][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
\mul_reg_reg[5][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
\mul_reg_reg[3][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[2][24]2default:default2
FDCE2default:default2&
mul_reg_reg[2][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[2][25]2default:default2
FDCE2default:default2&
mul_reg_reg[2][26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[2][26]2default:default2
FDCE2default:default2&
mul_reg_reg[2][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[2][27]2default:default2
FDCE2default:default2&
mul_reg_reg[2][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[2][28]2default:default2
FDCE2default:default2&
mul_reg_reg[2][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[2][29]2default:default2
FDCE2default:default2&
mul_reg_reg[2][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
mul_reg_reg[2][30]2default:default2
FDCE2default:default2&
mul_reg_reg[2][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
\mul_reg_reg[2][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[57][24]2default:default2
FDCE2default:default2'
mul_reg_reg[57][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[57][25]2default:default2
FDCE2default:default2'
mul_reg_reg[57][26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[57][26]2default:default2
FDCE2default:default2'
mul_reg_reg[57][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[57][27]2default:default2
FDCE2default:default2'
mul_reg_reg[57][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[57][28]2default:default2
FDCE2default:default2'
mul_reg_reg[57][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[57][29]2default:default2
FDCE2default:default2'
mul_reg_reg[57][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[57][30]2default:default2
FDCE2default:default2'
mul_reg_reg[57][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[57][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[56][23]2default:default2
FDCE2default:default2'
mul_reg_reg[56][24]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[56][24]2default:default2
FDCE2default:default2'
mul_reg_reg[56][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[56][25]2default:default2
FDCE2default:default2'
mul_reg_reg[56][26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[54][25]2default:default2
FDCE2default:default2'
mul_reg_reg[54][26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[56][26]2default:default2
FDCE2default:default2'
mul_reg_reg[56][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[54][26]2default:default2
FDCE2default:default2'
mul_reg_reg[54][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[56][27]2default:default2
FDCE2default:default2'
mul_reg_reg[56][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[54][27]2default:default2
FDCE2default:default2'
mul_reg_reg[54][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[56][28]2default:default2
FDCE2default:default2'
mul_reg_reg[56][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[54][28]2default:default2
FDCE2default:default2'
mul_reg_reg[54][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[56][29]2default:default2
FDCE2default:default2'
mul_reg_reg[56][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[54][29]2default:default2
FDCE2default:default2'
mul_reg_reg[54][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[56][30]2default:default2
FDCE2default:default2'
mul_reg_reg[56][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[54][30]2default:default2
FDCE2default:default2'
mul_reg_reg[54][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[56][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[54][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[51][25]2default:default2
FDCE2default:default2'
mul_reg_reg[51][26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[53][26]2default:default2
FDCE2default:default2'
mul_reg_reg[53][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[51][26]2default:default2
FDCE2default:default2'
mul_reg_reg[51][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[53][27]2default:default2
FDCE2default:default2'
mul_reg_reg[53][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[51][27]2default:default2
FDCE2default:default2'
mul_reg_reg[51][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[53][28]2default:default2
FDCE2default:default2'
mul_reg_reg[53][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[51][28]2default:default2
FDCE2default:default2'
mul_reg_reg[51][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[53][29]2default:default2
FDCE2default:default2'
mul_reg_reg[53][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[51][29]2default:default2
FDCE2default:default2'
mul_reg_reg[51][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[53][30]2default:default2
FDCE2default:default2'
mul_reg_reg[53][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[51][30]2default:default2
FDCE2default:default2'
mul_reg_reg[51][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[53][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[51][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[50][27]2default:default2
FDCE2default:default2'
mul_reg_reg[50][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[50][28]2default:default2
FDCE2default:default2'
mul_reg_reg[50][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[50][29]2default:default2
FDCE2default:default2'
mul_reg_reg[50][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[50][30]2default:default2
FDCE2default:default2'
mul_reg_reg[50][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[50][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[47][28]2default:default2
FDCE2default:default2'
mul_reg_reg[47][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[47][29]2default:default2
FDCE2default:default2'
mul_reg_reg[47][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[47][30]2default:default2
FDCE2default:default2'
mul_reg_reg[47][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[47][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[43][21]2default:default2
FDCE2default:default2'
mul_reg_reg[43][22]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[43][22]2default:default2
FDCE2default:default2'
mul_reg_reg[43][23]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[43][23]2default:default2
FDCE2default:default2'
mul_reg_reg[43][24]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[43][24]2default:default2
FDCE2default:default2'
mul_reg_reg[43][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[43][25]2default:default2
FDCE2default:default2'
mul_reg_reg[43][26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[44][26]2default:default2
FDCE2default:default2'
mul_reg_reg[44][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[43][26]2default:default2
FDCE2default:default2'
mul_reg_reg[43][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[44][27]2default:default2
FDCE2default:default2'
mul_reg_reg[44][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[42][27]2default:default2
FDCE2default:default2'
mul_reg_reg[42][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[43][27]2default:default2
FDCE2default:default2'
mul_reg_reg[43][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[44][28]2default:default2
FDCE2default:default2'
mul_reg_reg[44][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[42][28]2default:default2
FDCE2default:default2'
mul_reg_reg[42][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[43][28]2default:default2
FDCE2default:default2'
mul_reg_reg[43][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[44][29]2default:default2
FDCE2default:default2'
mul_reg_reg[44][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[42][29]2default:default2
FDCE2default:default2'
mul_reg_reg[42][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[43][29]2default:default2
FDCE2default:default2'
mul_reg_reg[43][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[44][30]2default:default2
FDCE2default:default2'
mul_reg_reg[44][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[42][30]2default:default2
FDCE2default:default2'
mul_reg_reg[42][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[43][30]2default:default2
FDCE2default:default2'
mul_reg_reg[43][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[44][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[43][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[42][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[39][29]2default:default2
FDCE2default:default2'
mul_reg_reg[39][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[39][30]2default:default2
FDCE2default:default2'
mul_reg_reg[39][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[39][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[36][30]2default:default2
FDCE2default:default2'
mul_reg_reg[36][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[36][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[33][30]2default:default2
FDCE2default:default2'
mul_reg_reg[33][31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[33][31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[32][28]2default:default2
FDCE2default:default2'
mul_reg_reg[32][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
mul_reg_reg[32][29]2default:default2
FDCE2default:default2'
mul_reg_reg[32][30]2default:defaultZ8-3886h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[32][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[30][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[29][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[27][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[26][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[23][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[20][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[17][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[16][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[15][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\mul_reg_reg[12][31] 2default:defaultZ8-3333h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:46 . Memory (MB): peak = 2529.438 ; gain = 958.301 ; free physical = 20978 ; free virtual = 97496
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
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
_
%s*synth2G
3
DSP: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+--------------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name         | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px� 
�
%s*synth2�
�+--------------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A2*(B:0xffff)  | 16     | 16     | -      | -      | 32     | 1    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xffb3) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xd6)   | 16     | 8      | -      | -      | 24     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x63)   | 16     | 7      | -      | -      | 23     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xfdb1) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x1d9)  | 16     | 9      | -      | -      | 25     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x25f)  | 16     | 10     | -      | -      | 26     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xfab4) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x141)  | 16     | 9      | -      | -      | 25     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x63b)  | 16     | 11     | -      | -      | 27     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xf92d) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xfe5a) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x825)  | 16     | 12     | -      | -      | 28     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xfbe0) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xfccd) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x31e)  | 16     | 10     | -      | -      | 26     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x11)   | 16     | 5      | -      | -      | 21     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x410)  | 16     | 11     | -      | -      | 27     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xf766) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xfcc2) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x1730) | 16     | 13     | -      | -      | 29     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xeeb3) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xea68) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x2dac) | 16     | 14     | -      | -      | 30     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xf57a) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xcd9b) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x3731) | 16     | 14     | -      | -      | 30     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xdd7)  | 16     | 12     | -      | -      | 28     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xb74e) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x2a15) | 16     | 14     | -      | -      | 30     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x2a15) | 16     | 14     | -      | -      | 30     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xb74e) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xdd7)  | 16     | 12     | -      | -      | 28     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x3731) | 16     | 14     | -      | -      | 30     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xcd9b) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xf57a) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x2dac) | 16     | 14     | -      | -      | 30     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xea68) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xeeb3) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x1730) | 16     | 13     | -      | -      | 29     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xfcc2) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xf766) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x410)  | 16     | 11     | -      | -      | 27     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x11)   | 16     | 5      | -      | -      | 21     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x31e)  | 16     | 10     | -      | -      | 26     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xfccd) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xfbe0) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x825)  | 16     | 12     | -      | -      | 28     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xfe5a) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xf92d) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x63b)  | 16     | 11     | -      | -      | 27     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x141)  | 16     | 9      | -      | -      | 25     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xfab4) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x25f)  | 16     | 10     | -      | -      | 26     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x1d9)  | 16     | 9      | -      | -      | 25     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xfdb1) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0x63)   | 16     | 7      | -      | -      | 23     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xd6)   | 16     | 8      | -      | -      | 24     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|Parallel_FIR_filter | A''*(B:0xffb3) | 16     | 16     | -      | -      | 32     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�+--------------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:47 . Memory (MB): peak = 2535.363 ; gain = 964.227 ; free physical = 20979 ; free virtual = 97497
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2~
h/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd2default:default2
962default:default8@Z8-5844h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:24 ; elapsed = 00:00:49 . Memory (MB): peak = 2591.359 ; gain = 1020.223 ; free physical = 20977 ; free virtual = 97495
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:50 . Memory (MB): peak = 2591.363 ; gain = 1020.227 ; free physical = 20977 ; free virtual = 97495
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
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
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:50 . Memory (MB): peak = 2591.363 ; gain = 1020.227 ; free physical = 20977 ; free virtual = 97495
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:50 . Memory (MB): peak = 2591.363 ; gain = 1020.227 ; free physical = 20977 ; free virtual = 97496
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:25 ; elapsed = 00:00:50 . Memory (MB): peak = 2591.363 ; gain = 1020.227 ; free physical = 20977 ; free virtual = 97496
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:25 ; elapsed = 00:00:50 . Memory (MB): peak = 2591.363 ; gain = 1020.227 ; free physical = 20978 ; free virtual = 97496
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:50 . Memory (MB): peak = 2591.363 ; gain = 1020.227 ; free physical = 20978 ; free virtual = 97496
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
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|1     |BUFG    |     1|
2default:defaulth px� 
E
%s*synth2-
|2     |CARRY8  |   116|
2default:defaulth px� 
E
%s*synth2-
|3     |DSP48E2 |    59|
2default:defaulth px� 
E
%s*synth2-
|4     |LUT2    |    44|
2default:defaulth px� 
E
%s*synth2-
|5     |LUT3    |  1061|
2default:defaulth px� 
E
%s*synth2-
|6     |LUT4    |   551|
2default:defaulth px� 
E
%s*synth2-
|7     |LUT5    |   581|
2default:defaulth px� 
E
%s*synth2-
|8     |LUT6    |  1183|
2default:defaulth px� 
E
%s*synth2-
|9     |FDCE    |    59|
2default:defaulth px� 
E
%s*synth2-
|10    |FDRE    |   976|
2default:defaulth px� 
E
%s*synth2-
|11    |IBUF    |    19|
2default:defaulth px� 
E
%s*synth2-
|12    |OBUF    |    33|
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
N
%s
*synth26
"|1     |top      |       |  4683|
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:50 . Memory (MB): peak = 2591.363 ; gain = 1020.227 ; free physical = 20978 ; free virtual = 97496
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
FSynthesis finished with 0 errors, 0 critical warnings and 6 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:50 . Memory (MB): peak = 2591.363 ; gain = 1020.227 ; free physical = 20981 ; free virtual = 97499
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:50 . Memory (MB): peak = 2591.367 ; gain = 1020.227 ; free physical = 20993 ; free virtual = 97511
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1952default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2'
Parallel_FIR_filter2default:default2'
Parallel_FIR_filter2default:defaultZ29-101h px� 
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
2683.2662default:default2
0.0002default:default2
208912default:default2
974102default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 79 instances were transformed.
  BUFG => BUFGCE: 1 instances
  DSP48E2 => DSP48E2 (DSP_ALU, DSP_A_B_DATA, DSP_C_DATA, DSP_MULTIPLIER, DSP_M_DATA, DSP_OUTPUT, DSP_PREADD_DATA, DSP_PREADD): 59 instances
  IBUF => IBUF (IBUFCTRL, INBUF): 19 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
3042default:default2
72default:default2
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
00:00:312default:default2
00:01:012default:default2
2683.2662default:default2
1145.0982default:default2
209922default:default2
975102default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2683.2662default:default2
0.0002default:default2
209922default:default2
975102default:defaultZ17-722h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2
k/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.runs/synth_while_loop/Parallel_FIR_filter.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
|Executing : report_utilization -file Parallel_FIR_filter_utilization_synth.rpt -pb Parallel_FIR_filter_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Jun 13 14:21:41 20242default:defaultZ17-206h px� 


End Record