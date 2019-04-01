/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001801604972_1004119592_init();
    work_m_00000000000713588564_2717801708_init();
    work_m_00000000002462161254_2516711291_init();
    work_m_00000000001645064396_2018657252_init();
    work_m_00000000001866004092_1552395451_init();
    work_m_00000000000605172474_1812465255_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000605172474_1812465255");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
