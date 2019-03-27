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
    work_m_00000000000933343465_1004119592_init();
    work_m_00000000000713588564_2717801708_init();
    work_m_00000000002462161254_2516711291_init();
    work_m_00000000004105626068_1552395451_init();
    work_m_00000000003501175023_0924759715_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003501175023_0924759715");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
