/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2(char*, char *);
IKI_DLLESPEC extern void execute_3(char*, char *);
IKI_DLLESPEC extern void execute_4(char*, char *);
IKI_DLLESPEC extern void execute_5(char*, char *);
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void execute_7(char*, char *);
IKI_DLLESPEC extern void execute_8(char*, char *);
IKI_DLLESPEC extern void execute_9(char*, char *);
IKI_DLLESPEC extern void execute_10(char*, char *);
IKI_DLLESPEC extern void execute_11(char*, char *);
IKI_DLLESPEC extern void execute_700(char*, char *);
IKI_DLLESPEC extern void execute_701(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_23(char*, char *);
IKI_DLLESPEC extern void execute_24(char*, char *);
IKI_DLLESPEC extern void execute_25(char*, char *);
IKI_DLLESPEC extern void execute_26(char*, char *);
IKI_DLLESPEC extern void execute_27(char*, char *);
IKI_DLLESPEC extern void execute_28(char*, char *);
IKI_DLLESPEC extern void execute_29(char*, char *);
IKI_DLLESPEC extern void execute_30(char*, char *);
IKI_DLLESPEC extern void execute_31(char*, char *);
IKI_DLLESPEC extern void execute_704(char*, char *);
IKI_DLLESPEC extern void execute_705(char*, char *);
IKI_DLLESPEC extern void execute_706(char*, char *);
IKI_DLLESPEC extern void execute_707(char*, char *);
IKI_DLLESPEC extern void execute_708(char*, char *);
IKI_DLLESPEC extern void execute_709(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_711(char*, char *);
IKI_DLLESPEC extern void execute_33(char*, char *);
IKI_DLLESPEC extern void execute_712(char*, char *);
IKI_DLLESPEC extern void execute_106(char*, char *);
IKI_DLLESPEC extern void execute_749(char*, char *);
IKI_DLLESPEC extern void execute_750(char*, char *);
IKI_DLLESPEC extern void execute_751(char*, char *);
IKI_DLLESPEC extern void execute_752(char*, char *);
IKI_DLLESPEC extern void execute_753(char*, char *);
IKI_DLLESPEC extern void execute_754(char*, char *);
IKI_DLLESPEC extern void execute_755(char*, char *);
IKI_DLLESPEC extern void execute_756(char*, char *);
IKI_DLLESPEC extern void execute_748(char*, char *);
IKI_DLLESPEC extern void execute_178(char*, char *);
IKI_DLLESPEC extern void execute_965(char*, char *);
IKI_DLLESPEC extern void execute_966(char*, char *);
IKI_DLLESPEC extern void execute_967(char*, char *);
IKI_DLLESPEC extern void execute_968(char*, char *);
IKI_DLLESPEC extern void execute_964(char*, char *);
IKI_DLLESPEC extern void execute_201(char*, char *);
IKI_DLLESPEC extern void execute_1032(char*, char *);
IKI_DLLESPEC extern void execute_1033(char*, char *);
IKI_DLLESPEC extern void execute_1034(char*, char *);
IKI_DLLESPEC extern void execute_268(char*, char *);
IKI_DLLESPEC extern void execute_1132(char*, char *);
IKI_DLLESPEC extern void execute_1133(char*, char *);
IKI_DLLESPEC extern void execute_1131(char*, char *);
IKI_DLLESPEC extern void execute_270(char*, char *);
IKI_DLLESPEC extern void execute_271(char*, char *);
IKI_DLLESPEC extern void execute_272(char*, char *);
IKI_DLLESPEC extern void execute_1134(char*, char *);
IKI_DLLESPEC extern void execute_1135(char*, char *);
IKI_DLLESPEC extern void execute_1136(char*, char *);
IKI_DLLESPEC extern void execute_274(char*, char *);
IKI_DLLESPEC extern void execute_275(char*, char *);
IKI_DLLESPEC extern void execute_276(char*, char *);
IKI_DLLESPEC extern void execute_1137(char*, char *);
IKI_DLLESPEC extern void execute_1138(char*, char *);
IKI_DLLESPEC extern void execute_1139(char*, char *);
IKI_DLLESPEC extern void execute_1140(char*, char *);
IKI_DLLESPEC extern void execute_410(char*, char *);
IKI_DLLESPEC extern void execute_411(char*, char *);
IKI_DLLESPEC extern void execute_577(char*, char *);
IKI_DLLESPEC extern void execute_578(char*, char *);
IKI_DLLESPEC extern void execute_579(char*, char *);
IKI_DLLESPEC extern void execute_1592(char*, char *);
IKI_DLLESPEC extern void execute_1593(char*, char *);
IKI_DLLESPEC extern void execute_1594(char*, char *);
IKI_DLLESPEC extern void execute_1595(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_520(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_526(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_532(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_538(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_544(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_550(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_556(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_562(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_568(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_574(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_580(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_586(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_592(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_598(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_604(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_610(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_616(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_622(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_628(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_634(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_640(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_646(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_652(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_658(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_664(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_670(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_676(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_682(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_688(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_694(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_700(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_706(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_712(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_719(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_733(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1055(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1061(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1067(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1073(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1079(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1085(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1091(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1097(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1103(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1109(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1115(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1121(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1127(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1133(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1139(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1145(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1151(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1157(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1163(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1169(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1175(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1181(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1187(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1193(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1199(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1205(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1211(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1217(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1223(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1229(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1235(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[164] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_10, (funcp)execute_11, (funcp)execute_700, (funcp)execute_701, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_23, (funcp)execute_24, (funcp)execute_25, (funcp)execute_26, (funcp)execute_27, (funcp)execute_28, (funcp)execute_29, (funcp)execute_30, (funcp)execute_31, (funcp)execute_704, (funcp)execute_705, (funcp)execute_706, (funcp)execute_707, (funcp)execute_708, (funcp)execute_709, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_711, (funcp)execute_33, (funcp)execute_712, (funcp)execute_106, (funcp)execute_749, (funcp)execute_750, (funcp)execute_751, (funcp)execute_752, (funcp)execute_753, (funcp)execute_754, (funcp)execute_755, (funcp)execute_756, (funcp)execute_748, (funcp)execute_178, (funcp)execute_965, (funcp)execute_966, (funcp)execute_967, (funcp)execute_968, (funcp)execute_964, (funcp)execute_201, (funcp)execute_1032, (funcp)execute_1033, (funcp)execute_1034, (funcp)execute_268, (funcp)execute_1132, (funcp)execute_1133, (funcp)execute_1131, (funcp)execute_270, (funcp)execute_271, (funcp)execute_272, (funcp)execute_1134, (funcp)execute_1135, (funcp)execute_1136, (funcp)execute_274, (funcp)execute_275, (funcp)execute_276, (funcp)execute_1137, (funcp)execute_1138, (funcp)execute_1139, (funcp)execute_1140, (funcp)execute_410, (funcp)execute_411, (funcp)execute_577, (funcp)execute_578, (funcp)execute_579, (funcp)execute_1592, (funcp)execute_1593, (funcp)execute_1594, (funcp)execute_1595, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_520, (funcp)transaction_526, (funcp)transaction_532, (funcp)transaction_538, (funcp)transaction_544, (funcp)transaction_550, (funcp)transaction_556, (funcp)transaction_562, (funcp)transaction_568, (funcp)transaction_574, (funcp)transaction_580, (funcp)transaction_586, (funcp)transaction_592, (funcp)transaction_598, (funcp)transaction_604, (funcp)transaction_610, (funcp)transaction_616, (funcp)transaction_622, (funcp)transaction_628, (funcp)transaction_634, (funcp)transaction_640, (funcp)transaction_646, (funcp)transaction_652, (funcp)transaction_658, (funcp)transaction_664, (funcp)transaction_670, (funcp)transaction_676, (funcp)transaction_682, (funcp)transaction_688, (funcp)transaction_694, (funcp)transaction_700, (funcp)transaction_706, (funcp)transaction_712, (funcp)transaction_719, (funcp)transaction_733, (funcp)transaction_1055, (funcp)transaction_1061, (funcp)transaction_1067, (funcp)transaction_1073, (funcp)transaction_1079, (funcp)transaction_1085, (funcp)transaction_1091, (funcp)transaction_1097, (funcp)transaction_1103, (funcp)transaction_1109, (funcp)transaction_1115, (funcp)transaction_1121, (funcp)transaction_1127, (funcp)transaction_1133, (funcp)transaction_1139, (funcp)transaction_1145, (funcp)transaction_1151, (funcp)transaction_1157, (funcp)transaction_1163, (funcp)transaction_1169, (funcp)transaction_1175, (funcp)transaction_1181, (funcp)transaction_1187, (funcp)transaction_1193, (funcp)transaction_1199, (funcp)transaction_1205, (funcp)transaction_1211, (funcp)transaction_1217, (funcp)transaction_1223, (funcp)transaction_1229, (funcp)transaction_1235};
const int NumRelocateId= 164;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Scrambler_32bits_TB_func_synth/xsim.reloc",  (void **)funcTab, 164);
	iki_vhdl_file_variable_register(dp + 248960);
	iki_vhdl_file_variable_register(dp + 249016);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Scrambler_32bits_TB_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 254328, dp + 255512, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 254384, dp + 258536, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 254440, dp + 255792, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 254520, dp + 256016, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 254632, dp + 255904, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 254480, dp + 258648, 0, 30, 0, 30, 31, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 254576, dp + 255680, 0, 0, 0, 0, 1, 1);

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Scrambler_32bits_TB_func_synth/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Scrambler_32bits_TB_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Scrambler_32bits_TB_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Scrambler_32bits_TB_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
