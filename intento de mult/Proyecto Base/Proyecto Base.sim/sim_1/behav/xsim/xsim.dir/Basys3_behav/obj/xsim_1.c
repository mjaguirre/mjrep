/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


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
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


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
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_3447(char*, char *);
extern void execute_3448(char*, char *);
extern void execute_3449(char*, char *);
extern void execute_3450(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void execute_234(char*, char *);
extern void execute_235(char*, char *);
extern void execute_236(char*, char *);
extern void execute_237(char*, char *);
extern void execute_97(char*, char *);
extern void execute_98(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_239(char*, char *);
extern void execute_545(char*, char *);
extern void execute_546(char*, char *);
extern void execute_547(char*, char *);
extern void execute_548(char*, char *);
extern void execute_754(char*, char *);
extern void execute_942(char*, char *);
extern void execute_1130(char*, char *);
extern void execute_1318(char*, char *);
extern void execute_1506(char*, char *);
extern void execute_1694(char*, char *);
extern void execute_1882(char*, char *);
extern void execute_2070(char*, char *);
extern void execute_2258(char*, char *);
extern void execute_2446(char*, char *);
extern void execute_2634(char*, char *);
extern void execute_2822(char*, char *);
extern void execute_3010(char*, char *);
extern void execute_3198(char*, char *);
extern void execute_3386(char*, char *);
extern void execute_3387(char*, char *);
extern void execute_3388(char*, char *);
extern void execute_3389(char*, char *);
extern void execute_3390(char*, char *);
extern void execute_551(char*, char *);
extern void execute_552(char*, char *);
extern void execute_553(char*, char *);
extern void execute_554(char*, char *);
extern void execute_555(char*, char *);
extern void execute_556(char*, char *);
extern void execute_557(char*, char *);
extern void execute_558(char*, char *);
extern void execute_559(char*, char *);
extern void execute_560(char*, char *);
extern void execute_561(char*, char *);
extern void execute_562(char*, char *);
extern void execute_563(char*, char *);
extern void execute_564(char*, char *);
extern void execute_565(char*, char *);
extern void execute_566(char*, char *);
extern void execute_568(char*, char *);
extern void execute_569(char*, char *);
extern void execute_570(char*, char *);
extern void execute_571(char*, char *);
extern void execute_572(char*, char *);
extern void execute_573(char*, char *);
extern void execute_574(char*, char *);
extern void execute_575(char*, char *);
extern void execute_576(char*, char *);
extern void execute_577(char*, char *);
extern void execute_578(char*, char *);
extern void execute_579(char*, char *);
extern void execute_580(char*, char *);
extern void execute_581(char*, char *);
extern void execute_582(char*, char *);
extern void execute_583(char*, char *);
extern void execute_584(char*, char *);
extern void execute_585(char*, char *);
extern void execute_586(char*, char *);
extern void execute_3413(char*, char *);
extern void execute_3414(char*, char *);
extern void execute_3415(char*, char *);
extern void execute_3416(char*, char *);
extern void execute_3417(char*, char *);
extern void execute_3418(char*, char *);
extern void execute_3419(char*, char *);
extern void execute_3420(char*, char *);
extern void execute_3421(char*, char *);
extern void execute_3422(char*, char *);
extern void execute_3423(char*, char *);
extern void execute_3424(char*, char *);
extern void execute_3425(char*, char *);
extern void execute_3426(char*, char *);
extern void execute_3427(char*, char *);
extern void execute_3428(char*, char *);
extern void execute_3429(char*, char *);
extern void execute_3430(char*, char *);
extern void execute_3431(char*, char *);
extern void execute_3434(char*, char *);
extern void execute_3435(char*, char *);
extern void execute_3436(char*, char *);
extern void execute_3437(char*, char *);
extern void execute_3438(char*, char *);
extern void execute_3441(char*, char *);
extern void execute_3442(char*, char *);
extern void execute_3443(char*, char *);
extern void execute_3444(char*, char *);
extern void execute_3445(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_3(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_6(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[132] = {(funcp)execute_17, (funcp)execute_18, (funcp)execute_19, (funcp)execute_20, (funcp)execute_21, (funcp)execute_22, (funcp)execute_23, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_51, (funcp)execute_52, (funcp)execute_53, (funcp)execute_54, (funcp)execute_65, (funcp)execute_66, (funcp)execute_67, (funcp)execute_69, (funcp)execute_70, (funcp)execute_3447, (funcp)execute_3448, (funcp)execute_3449, (funcp)execute_3450, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)execute_86, (funcp)execute_87, (funcp)execute_234, (funcp)execute_235, (funcp)execute_236, (funcp)execute_237, (funcp)execute_97, (funcp)execute_98, (funcp)execute_92, (funcp)execute_93, (funcp)execute_239, (funcp)execute_545, (funcp)execute_546, (funcp)execute_547, (funcp)execute_548, (funcp)execute_754, (funcp)execute_942, (funcp)execute_1130, (funcp)execute_1318, (funcp)execute_1506, (funcp)execute_1694, (funcp)execute_1882, (funcp)execute_2070, (funcp)execute_2258, (funcp)execute_2446, (funcp)execute_2634, (funcp)execute_2822, (funcp)execute_3010, (funcp)execute_3198, (funcp)execute_3386, (funcp)execute_3387, (funcp)execute_3388, (funcp)execute_3389, (funcp)execute_3390, (funcp)execute_551, (funcp)execute_552, (funcp)execute_553, (funcp)execute_554, (funcp)execute_555, (funcp)execute_556, (funcp)execute_557, (funcp)execute_558, (funcp)execute_559, (funcp)execute_560, (funcp)execute_561, (funcp)execute_562, (funcp)execute_563, (funcp)execute_564, (funcp)execute_565, (funcp)execute_566, (funcp)execute_568, (funcp)execute_569, (funcp)execute_570, (funcp)execute_571, (funcp)execute_572, (funcp)execute_573, (funcp)execute_574, (funcp)execute_575, (funcp)execute_576, (funcp)execute_577, (funcp)execute_578, (funcp)execute_579, (funcp)execute_580, (funcp)execute_581, (funcp)execute_582, (funcp)execute_583, (funcp)execute_584, (funcp)execute_585, (funcp)execute_586, (funcp)execute_3413, (funcp)execute_3414, (funcp)execute_3415, (funcp)execute_3416, (funcp)execute_3417, (funcp)execute_3418, (funcp)execute_3419, (funcp)execute_3420, (funcp)execute_3421, (funcp)execute_3422, (funcp)execute_3423, (funcp)execute_3424, (funcp)execute_3425, (funcp)execute_3426, (funcp)execute_3427, (funcp)execute_3428, (funcp)execute_3429, (funcp)execute_3430, (funcp)execute_3431, (funcp)execute_3434, (funcp)execute_3435, (funcp)execute_3436, (funcp)execute_3437, (funcp)execute_3438, (funcp)execute_3441, (funcp)execute_3442, (funcp)execute_3443, (funcp)execute_3444, (funcp)execute_3445, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_3, (funcp)transaction_6};
const int NumRelocateId= 132;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Basys3_behav/xsim.reloc",  (void **)funcTab, 132);
	iki_vhdl_file_variable_register(dp + 402552);
	iki_vhdl_file_variable_register(dp + 402608);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Basys3_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/Basys3_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Basys3_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Basys3_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Basys3_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
