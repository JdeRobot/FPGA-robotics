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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/FPGA-robotics/Projects/VisualControl-drone/TEST_VIVADO/camera/process_color.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {25U, 0U};
static unsigned int ng4[] = {31U, 0U};
static unsigned int ng5[] = {0U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {1U, 0U};



static void Always_55_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 6976U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 9032);
    *((int *)t2) = 1;
    t3 = (t0 + 7008);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(56, ng0);

LAB5:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 2776U);
    t5 = *((char **)t4);
    t4 = (t0 + 5736);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    goto LAB2;

}

static void Always_59_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 7224U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 9048);
    *((int *)t2) = 1;
    t3 = (t0 + 7256);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(60, ng0);

LAB5:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 2616U);
    t5 = *((char **)t4);
    t4 = (t0 + 5896);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    goto LAB2;

}

static void Always_63_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 7472U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 9064);
    *((int *)t2) = 1;
    t3 = (t0 + 7504);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(64, ng0);

LAB5:    xsi_set_current_line(65, ng0);
    t4 = (t0 + 3416U);
    t5 = *((char **)t4);
    t4 = (t0 + 6056);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    goto LAB2;

}

static void NetDecl_68_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char t24[8];
    char t38[8];
    char t54[8];
    char t62[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    char *t114;
    char *t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;

LAB0:    t1 = (t0 + 7720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 6056);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB7;

LAB4:    if (t20 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t8) = 1;

LAB7:    memset(t24, 0, 8);
    t25 = (t8 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t25) != 0)
        goto LAB10;

LAB11:    t32 = (t24 + 4);
    t33 = *((unsigned int *)t24);
    t34 = *((unsigned int *)t32);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB12;

LAB13:    memcpy(t62, t24, 8);

LAB14:    memset(t4, 0, 8);
    t94 = (t62 + 4);
    t95 = *((unsigned int *)t94);
    t96 = (~(t95));
    t97 = *((unsigned int *)t62);
    t98 = (t97 & t96);
    t99 = (t98 & 1U);
    if (t99 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t94) != 0)
        goto LAB28;

LAB29:    t101 = (t4 + 4);
    t102 = *((unsigned int *)t4);
    t103 = *((unsigned int *)t101);
    t104 = (t102 || t103);
    if (t104 > 0)
        goto LAB30;

LAB31:    t106 = *((unsigned int *)t4);
    t107 = (~(t106));
    t108 = *((unsigned int *)t101);
    t109 = (t107 || t108);
    if (t109 > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t101) > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t4) > 0)
        goto LAB36;

LAB37:    memcpy(t3, t110, 8);

LAB38:    t111 = (t0 + 9224);
    t112 = (t111 + 56U);
    t113 = *((char **)t112);
    t114 = (t113 + 56U);
    t115 = *((char **)t114);
    memset(t115, 0, 8);
    t116 = 1U;
    t117 = t116;
    t118 = (t3 + 4);
    t119 = *((unsigned int *)t3);
    t116 = (t116 & t119);
    t120 = *((unsigned int *)t118);
    t117 = (t117 & t120);
    t121 = (t115 + 4);
    t122 = *((unsigned int *)t115);
    *((unsigned int *)t115) = (t122 | t116);
    t123 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t123 | t117);
    xsi_driver_vfirst_trans(t111, 0, 0U);
    t124 = (t0 + 9080);
    *((int *)t124) = 1;

LAB1:    return;
LAB6:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t24) = 1;
    goto LAB11;

LAB10:    t31 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB11;

LAB12:    t36 = (t0 + 3416U);
    t37 = *((char **)t36);
    t36 = ((char*)((ng2)));
    memset(t38, 0, 8);
    t39 = (t37 + 4);
    t40 = (t36 + 4);
    t41 = *((unsigned int *)t37);
    t42 = *((unsigned int *)t36);
    t43 = (t41 ^ t42);
    t44 = *((unsigned int *)t39);
    t45 = *((unsigned int *)t40);
    t46 = (t44 ^ t45);
    t47 = (t43 | t46);
    t48 = *((unsigned int *)t39);
    t49 = *((unsigned int *)t40);
    t50 = (t48 | t49);
    t51 = (~(t50));
    t52 = (t47 & t51);
    if (t52 != 0)
        goto LAB18;

LAB15:    if (t50 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t38) = 1;

LAB18:    memset(t54, 0, 8);
    t55 = (t38 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t38);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t55) != 0)
        goto LAB21;

LAB22:    t63 = *((unsigned int *)t24);
    t64 = *((unsigned int *)t54);
    t65 = (t63 & t64);
    *((unsigned int *)t62) = t65;
    t66 = (t24 + 4);
    t67 = (t54 + 4);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t66);
    t70 = *((unsigned int *)t67);
    t71 = (t69 | t70);
    *((unsigned int *)t68) = t71;
    t72 = *((unsigned int *)t68);
    t73 = (t72 != 0);
    if (t73 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB14;

LAB17:    t53 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t54) = 1;
    goto LAB22;

LAB21:    t61 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB22;

LAB23:    t74 = *((unsigned int *)t62);
    t75 = *((unsigned int *)t68);
    *((unsigned int *)t62) = (t74 | t75);
    t76 = (t24 + 4);
    t77 = (t54 + 4);
    t78 = *((unsigned int *)t24);
    t79 = (~(t78));
    t80 = *((unsigned int *)t76);
    t81 = (~(t80));
    t82 = *((unsigned int *)t54);
    t83 = (~(t82));
    t84 = *((unsigned int *)t77);
    t85 = (~(t84));
    t86 = (t79 & t81);
    t87 = (t83 & t85);
    t88 = (~(t86));
    t89 = (~(t87));
    t90 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t90 & t88);
    t91 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t91 & t89);
    t92 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t92 & t88);
    t93 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t93 & t89);
    goto LAB25;

LAB26:    *((unsigned int *)t4) = 1;
    goto LAB29;

LAB28:    t100 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t100) = 1;
    goto LAB29;

LAB30:    t105 = ((char*)((ng2)));
    goto LAB31;

LAB32:    t110 = ((char*)((ng1)));
    goto LAB33;

LAB34:    xsi_vlog_unsigned_bit_combine(t3, 32, t105, 32, t110, 32);
    goto LAB38;

LAB36:    memcpy(t3, t105, 8);
    goto LAB38;

}

static void NetDecl_69_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t22[8];
    char t38[8];
    char t54[8];
    char t62[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    char *t114;
    char *t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;

LAB0:    t1 = (t0 + 7968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2616U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t23) != 0)
        goto LAB10;

LAB11:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB12;

LAB13:    memcpy(t62, t22, 8);

LAB14:    memset(t4, 0, 8);
    t94 = (t62 + 4);
    t95 = *((unsigned int *)t94);
    t96 = (~(t95));
    t97 = *((unsigned int *)t62);
    t98 = (t97 & t96);
    t99 = (t98 & 1U);
    if (t99 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t94) != 0)
        goto LAB28;

LAB29:    t101 = (t4 + 4);
    t102 = *((unsigned int *)t4);
    t103 = *((unsigned int *)t101);
    t104 = (t102 || t103);
    if (t104 > 0)
        goto LAB30;

LAB31:    t106 = *((unsigned int *)t4);
    t107 = (~(t106));
    t108 = *((unsigned int *)t101);
    t109 = (t107 || t108);
    if (t109 > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t101) > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t4) > 0)
        goto LAB36;

LAB37:    memcpy(t3, t110, 8);

LAB38:    t111 = (t0 + 9288);
    t112 = (t111 + 56U);
    t113 = *((char **)t112);
    t114 = (t113 + 56U);
    t115 = *((char **)t114);
    memset(t115, 0, 8);
    t116 = 1U;
    t117 = t116;
    t118 = (t3 + 4);
    t119 = *((unsigned int *)t3);
    t116 = (t116 & t119);
    t120 = *((unsigned int *)t118);
    t117 = (t117 & t120);
    t121 = (t115 + 4);
    t122 = *((unsigned int *)t115);
    *((unsigned int *)t115) = (t122 | t116);
    t123 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t123 | t117);
    xsi_driver_vfirst_trans(t111, 0, 0U);
    t124 = (t0 + 9096);
    *((int *)t124) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t22) = 1;
    goto LAB11;

LAB10:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB11;

LAB12:    t34 = (t0 + 5896);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = ((char*)((ng2)));
    memset(t38, 0, 8);
    t39 = (t36 + 4);
    t40 = (t37 + 4);
    t41 = *((unsigned int *)t36);
    t42 = *((unsigned int *)t37);
    t43 = (t41 ^ t42);
    t44 = *((unsigned int *)t39);
    t45 = *((unsigned int *)t40);
    t46 = (t44 ^ t45);
    t47 = (t43 | t46);
    t48 = *((unsigned int *)t39);
    t49 = *((unsigned int *)t40);
    t50 = (t48 | t49);
    t51 = (~(t50));
    t52 = (t47 & t51);
    if (t52 != 0)
        goto LAB18;

LAB15:    if (t50 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t38) = 1;

LAB18:    memset(t54, 0, 8);
    t55 = (t38 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t38);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t55) != 0)
        goto LAB21;

LAB22:    t63 = *((unsigned int *)t22);
    t64 = *((unsigned int *)t54);
    t65 = (t63 & t64);
    *((unsigned int *)t62) = t65;
    t66 = (t22 + 4);
    t67 = (t54 + 4);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t66);
    t70 = *((unsigned int *)t67);
    t71 = (t69 | t70);
    *((unsigned int *)t68) = t71;
    t72 = *((unsigned int *)t68);
    t73 = (t72 != 0);
    if (t73 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB14;

LAB17:    t53 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t54) = 1;
    goto LAB22;

LAB21:    t61 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB22;

LAB23:    t74 = *((unsigned int *)t62);
    t75 = *((unsigned int *)t68);
    *((unsigned int *)t62) = (t74 | t75);
    t76 = (t22 + 4);
    t77 = (t54 + 4);
    t78 = *((unsigned int *)t22);
    t79 = (~(t78));
    t80 = *((unsigned int *)t76);
    t81 = (~(t80));
    t82 = *((unsigned int *)t54);
    t83 = (~(t82));
    t84 = *((unsigned int *)t77);
    t85 = (~(t84));
    t86 = (t79 & t81);
    t87 = (t83 & t85);
    t88 = (~(t86));
    t89 = (~(t87));
    t90 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t90 & t88);
    t91 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t91 & t89);
    t92 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t92 & t88);
    t93 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t93 & t89);
    goto LAB25;

LAB26:    *((unsigned int *)t4) = 1;
    goto LAB29;

LAB28:    t100 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t100) = 1;
    goto LAB29;

LAB30:    t105 = ((char*)((ng2)));
    goto LAB31;

LAB32:    t110 = ((char*)((ng1)));
    goto LAB33;

LAB34:    xsi_vlog_unsigned_bit_combine(t3, 32, t105, 32, t110, 32);
    goto LAB38;

LAB36:    memcpy(t3, t105, 8);
    goto LAB38;

}

static void NetDecl_70_5(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t22[8];
    char t38[8];
    char t54[8];
    char t62[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    char *t114;
    char *t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;

LAB0:    t1 = (t0 + 8216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2616U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t23) != 0)
        goto LAB10;

LAB11:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB12;

LAB13:    memcpy(t62, t22, 8);

LAB14:    memset(t4, 0, 8);
    t94 = (t62 + 4);
    t95 = *((unsigned int *)t94);
    t96 = (~(t95));
    t97 = *((unsigned int *)t62);
    t98 = (t97 & t96);
    t99 = (t98 & 1U);
    if (t99 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t94) != 0)
        goto LAB28;

LAB29:    t101 = (t4 + 4);
    t102 = *((unsigned int *)t4);
    t103 = *((unsigned int *)t101);
    t104 = (t102 || t103);
    if (t104 > 0)
        goto LAB30;

LAB31:    t106 = *((unsigned int *)t4);
    t107 = (~(t106));
    t108 = *((unsigned int *)t101);
    t109 = (t107 || t108);
    if (t109 > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t101) > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t4) > 0)
        goto LAB36;

LAB37:    memcpy(t3, t110, 8);

LAB38:    t111 = (t0 + 9352);
    t112 = (t111 + 56U);
    t113 = *((char **)t112);
    t114 = (t113 + 56U);
    t115 = *((char **)t114);
    memset(t115, 0, 8);
    t116 = 1U;
    t117 = t116;
    t118 = (t3 + 4);
    t119 = *((unsigned int *)t3);
    t116 = (t116 & t119);
    t120 = *((unsigned int *)t118);
    t117 = (t117 & t120);
    t121 = (t115 + 4);
    t122 = *((unsigned int *)t115);
    *((unsigned int *)t115) = (t122 | t116);
    t123 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t123 | t117);
    xsi_driver_vfirst_trans(t111, 0, 0U);
    t124 = (t0 + 9112);
    *((int *)t124) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t22) = 1;
    goto LAB11;

LAB10:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB11;

LAB12:    t34 = (t0 + 5896);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = ((char*)((ng1)));
    memset(t38, 0, 8);
    t39 = (t36 + 4);
    t40 = (t37 + 4);
    t41 = *((unsigned int *)t36);
    t42 = *((unsigned int *)t37);
    t43 = (t41 ^ t42);
    t44 = *((unsigned int *)t39);
    t45 = *((unsigned int *)t40);
    t46 = (t44 ^ t45);
    t47 = (t43 | t46);
    t48 = *((unsigned int *)t39);
    t49 = *((unsigned int *)t40);
    t50 = (t48 | t49);
    t51 = (~(t50));
    t52 = (t47 & t51);
    if (t52 != 0)
        goto LAB18;

LAB15:    if (t50 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t38) = 1;

LAB18:    memset(t54, 0, 8);
    t55 = (t38 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t38);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t55) != 0)
        goto LAB21;

LAB22:    t63 = *((unsigned int *)t22);
    t64 = *((unsigned int *)t54);
    t65 = (t63 & t64);
    *((unsigned int *)t62) = t65;
    t66 = (t22 + 4);
    t67 = (t54 + 4);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t66);
    t70 = *((unsigned int *)t67);
    t71 = (t69 | t70);
    *((unsigned int *)t68) = t71;
    t72 = *((unsigned int *)t68);
    t73 = (t72 != 0);
    if (t73 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB14;

LAB17:    t53 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t54) = 1;
    goto LAB22;

LAB21:    t61 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB22;

LAB23:    t74 = *((unsigned int *)t62);
    t75 = *((unsigned int *)t68);
    *((unsigned int *)t62) = (t74 | t75);
    t76 = (t22 + 4);
    t77 = (t54 + 4);
    t78 = *((unsigned int *)t22);
    t79 = (~(t78));
    t80 = *((unsigned int *)t76);
    t81 = (~(t80));
    t82 = *((unsigned int *)t54);
    t83 = (~(t82));
    t84 = *((unsigned int *)t77);
    t85 = (~(t84));
    t86 = (t79 & t81);
    t87 = (t83 & t85);
    t88 = (~(t86));
    t89 = (~(t87));
    t90 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t90 & t88);
    t91 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t91 & t89);
    t92 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t92 & t88);
    t93 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t93 & t89);
    goto LAB25;

LAB26:    *((unsigned int *)t4) = 1;
    goto LAB29;

LAB28:    t100 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t100) = 1;
    goto LAB29;

LAB30:    t105 = ((char*)((ng2)));
    goto LAB31;

LAB32:    t110 = ((char*)((ng1)));
    goto LAB33;

LAB34:    xsi_vlog_unsigned_bit_combine(t3, 32, t105, 32, t110, 32);
    goto LAB38;

LAB36:    memcpy(t3, t105, 8);
    goto LAB38;

}

static void Always_73_6(char *t0)
{
    char t6[8];
    char t19[8];
    char t26[8];
    char t66[8];
    char t70[8];
    char t84[8];
    char t88[8];
    char t96[8];
    char t128[8];
    char t142[8];
    char t146[8];
    char t154[8];
    char t186[8];
    char t200[8];
    char t204[8];
    char t212[8];
    char t244[8];
    char t258[8];
    char t262[8];
    char t270[8];
    char t302[8];
    char t316[8];
    char t320[8];
    char t328[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t67;
    char *t68;
    char *t69;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    char *t85;
    char *t86;
    char *t87;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    int t120;
    int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    char *t140;
    char *t141;
    char *t143;
    char *t144;
    char *t145;
    char *t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t153;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    char *t158;
    char *t159;
    char *t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    char *t168;
    char *t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    int t178;
    int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    char *t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    char *t193;
    char *t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    char *t198;
    char *t199;
    char *t201;
    char *t202;
    char *t203;
    char *t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    char *t211;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    char *t216;
    char *t217;
    char *t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    char *t226;
    char *t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    unsigned int t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    unsigned int t235;
    int t236;
    int t237;
    unsigned int t238;
    unsigned int t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    unsigned int t243;
    char *t245;
    unsigned int t246;
    unsigned int t247;
    unsigned int t248;
    unsigned int t249;
    unsigned int t250;
    char *t251;
    char *t252;
    unsigned int t253;
    unsigned int t254;
    unsigned int t255;
    char *t256;
    char *t257;
    char *t259;
    char *t260;
    char *t261;
    char *t263;
    unsigned int t264;
    unsigned int t265;
    unsigned int t266;
    unsigned int t267;
    unsigned int t268;
    char *t269;
    unsigned int t271;
    unsigned int t272;
    unsigned int t273;
    char *t274;
    char *t275;
    char *t276;
    unsigned int t277;
    unsigned int t278;
    unsigned int t279;
    unsigned int t280;
    unsigned int t281;
    unsigned int t282;
    unsigned int t283;
    char *t284;
    char *t285;
    unsigned int t286;
    unsigned int t287;
    unsigned int t288;
    unsigned int t289;
    unsigned int t290;
    unsigned int t291;
    unsigned int t292;
    unsigned int t293;
    int t294;
    int t295;
    unsigned int t296;
    unsigned int t297;
    unsigned int t298;
    unsigned int t299;
    unsigned int t300;
    unsigned int t301;
    char *t303;
    unsigned int t304;
    unsigned int t305;
    unsigned int t306;
    unsigned int t307;
    unsigned int t308;
    char *t309;
    char *t310;
    unsigned int t311;
    unsigned int t312;
    unsigned int t313;
    char *t314;
    char *t315;
    char *t317;
    char *t318;
    char *t319;
    char *t321;
    unsigned int t322;
    unsigned int t323;
    unsigned int t324;
    unsigned int t325;
    unsigned int t326;
    char *t327;
    unsigned int t329;
    unsigned int t330;
    unsigned int t331;
    char *t332;
    char *t333;
    char *t334;
    unsigned int t335;
    unsigned int t336;
    unsigned int t337;
    unsigned int t338;
    unsigned int t339;
    unsigned int t340;
    unsigned int t341;
    char *t342;
    char *t343;
    unsigned int t344;
    unsigned int t345;
    unsigned int t346;
    unsigned int t347;
    unsigned int t348;
    unsigned int t349;
    unsigned int t350;
    unsigned int t351;
    int t352;
    int t353;
    unsigned int t354;
    unsigned int t355;
    unsigned int t356;
    unsigned int t357;
    unsigned int t358;
    unsigned int t359;
    char *t360;
    unsigned int t361;
    unsigned int t362;
    unsigned int t363;
    unsigned int t364;
    unsigned int t365;
    char *t366;
    char *t367;

LAB0:    t1 = (t0 + 8464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 9128);
    *((int *)t2) = 1;
    t3 = (t0 + 8496);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(74, ng0);

LAB5:    xsi_set_current_line(75, ng0);
    t4 = (t0 + 3736U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t4) != 0)
        goto LAB8;

LAB9:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t13);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB10;

LAB11:    memcpy(t26, t6, 8);

LAB12:    t58 = (t26 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t26);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB20;

LAB21:
LAB22:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t17 = (t0 + 4056U);
    t18 = *((char **)t17);
    memset(t19, 0, 8);
    t17 = (t18 + 4);
    t20 = *((unsigned int *)t17);
    t21 = (~(t20));
    t22 = *((unsigned int *)t18);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t17) != 0)
        goto LAB15;

LAB16:    t27 = *((unsigned int *)t6);
    t28 = *((unsigned int *)t19);
    t29 = (t27 & t28);
    *((unsigned int *)t26) = t29;
    t30 = (t6 + 4);
    t31 = (t19 + 4);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t30);
    t34 = *((unsigned int *)t31);
    t35 = (t33 | t34);
    *((unsigned int *)t32) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB12;

LAB13:    *((unsigned int *)t19) = 1;
    goto LAB16;

LAB15:    t25 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB16;

LAB17:    t38 = *((unsigned int *)t26);
    t39 = *((unsigned int *)t32);
    *((unsigned int *)t26) = (t38 | t39);
    t40 = (t6 + 4);
    t41 = (t19 + 4);
    t42 = *((unsigned int *)t6);
    t43 = (~(t42));
    t44 = *((unsigned int *)t40);
    t45 = (~(t44));
    t46 = *((unsigned int *)t19);
    t47 = (~(t46));
    t48 = *((unsigned int *)t41);
    t49 = (~(t48));
    t50 = (t43 & t45);
    t51 = (t47 & t49);
    t52 = (~(t50));
    t53 = (~(t51));
    t54 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t54 & t52);
    t55 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t55 & t53);
    t56 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t56 & t52);
    t57 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t57 & t53);
    goto LAB19;

LAB20:    xsi_set_current_line(76, ng0);

LAB23:    xsi_set_current_line(77, ng0);
    t64 = (t0 + 2136U);
    t65 = *((char **)t64);
    t64 = ((char*)((ng3)));
    memset(t66, 0, 8);
    t67 = (t65 + 4);
    if (*((unsigned int *)t67) != 0)
        goto LAB25;

LAB24:    t68 = (t64 + 4);
    if (*((unsigned int *)t68) != 0)
        goto LAB25;

LAB28:    if (*((unsigned int *)t65) < *((unsigned int *)t64))
        goto LAB27;

LAB26:    *((unsigned int *)t66) = 1;

LAB27:    memset(t70, 0, 8);
    t71 = (t66 + 4);
    t72 = *((unsigned int *)t71);
    t73 = (~(t72));
    t74 = *((unsigned int *)t66);
    t75 = (t74 & t73);
    t76 = (t75 & 1U);
    if (t76 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t71) != 0)
        goto LAB31;

LAB32:    t78 = (t70 + 4);
    t79 = *((unsigned int *)t70);
    t80 = *((unsigned int *)t78);
    t81 = (t79 || t80);
    if (t81 > 0)
        goto LAB33;

LAB34:    memcpy(t96, t70, 8);

LAB35:    memset(t128, 0, 8);
    t129 = (t96 + 4);
    t130 = *((unsigned int *)t129);
    t131 = (~(t130));
    t132 = *((unsigned int *)t96);
    t133 = (t132 & t131);
    t134 = (t133 & 1U);
    if (t134 != 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t129) != 0)
        goto LAB50;

LAB51:    t136 = (t128 + 4);
    t137 = *((unsigned int *)t128);
    t138 = *((unsigned int *)t136);
    t139 = (t137 || t138);
    if (t139 > 0)
        goto LAB52;

LAB53:    memcpy(t154, t128, 8);

LAB54:    memset(t186, 0, 8);
    t187 = (t154 + 4);
    t188 = *((unsigned int *)t187);
    t189 = (~(t188));
    t190 = *((unsigned int *)t154);
    t191 = (t190 & t189);
    t192 = (t191 & 1U);
    if (t192 != 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t187) != 0)
        goto LAB69;

LAB70:    t194 = (t186 + 4);
    t195 = *((unsigned int *)t186);
    t196 = *((unsigned int *)t194);
    t197 = (t195 || t196);
    if (t197 > 0)
        goto LAB71;

LAB72:    memcpy(t212, t186, 8);

LAB73:    memset(t244, 0, 8);
    t245 = (t212 + 4);
    t246 = *((unsigned int *)t245);
    t247 = (~(t246));
    t248 = *((unsigned int *)t212);
    t249 = (t248 & t247);
    t250 = (t249 & 1U);
    if (t250 != 0)
        goto LAB86;

LAB87:    if (*((unsigned int *)t245) != 0)
        goto LAB88;

LAB89:    t252 = (t244 + 4);
    t253 = *((unsigned int *)t244);
    t254 = *((unsigned int *)t252);
    t255 = (t253 || t254);
    if (t255 > 0)
        goto LAB90;

LAB91:    memcpy(t270, t244, 8);

LAB92:    memset(t302, 0, 8);
    t303 = (t270 + 4);
    t304 = *((unsigned int *)t303);
    t305 = (~(t304));
    t306 = *((unsigned int *)t270);
    t307 = (t306 & t305);
    t308 = (t307 & 1U);
    if (t308 != 0)
        goto LAB105;

LAB106:    if (*((unsigned int *)t303) != 0)
        goto LAB107;

LAB108:    t310 = (t302 + 4);
    t311 = *((unsigned int *)t302);
    t312 = *((unsigned int *)t310);
    t313 = (t311 || t312);
    if (t313 > 0)
        goto LAB109;

LAB110:    memcpy(t328, t302, 8);

LAB111:    t360 = (t328 + 4);
    t361 = *((unsigned int *)t360);
    t362 = (~(t361));
    t363 = *((unsigned int *)t328);
    t364 = (t363 & t362);
    t365 = (t364 != 0);
    if (t365 > 0)
        goto LAB124;

LAB125:    xsi_set_current_line(82, ng0);

LAB128:    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5256);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB126:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 5096);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 18, t4, 18, t5, 18);
    t12 = (t0 + 5096);
    xsi_vlogvar_wait_assign_value(t12, t6, 0, 0, 18, 0LL);
    goto LAB22;

LAB25:    t69 = (t66 + 4);
    *((unsigned int *)t66) = 1;
    *((unsigned int *)t69) = 1;
    goto LAB27;

LAB29:    *((unsigned int *)t70) = 1;
    goto LAB32;

LAB31:    t77 = (t70 + 4);
    *((unsigned int *)t70) = 1;
    *((unsigned int *)t77) = 1;
    goto LAB32;

LAB33:    t82 = (t0 + 2136U);
    t83 = *((char **)t82);
    t82 = ((char*)((ng4)));
    memset(t84, 0, 8);
    t85 = (t83 + 4);
    if (*((unsigned int *)t85) != 0)
        goto LAB37;

LAB36:    t86 = (t82 + 4);
    if (*((unsigned int *)t86) != 0)
        goto LAB37;

LAB40:    if (*((unsigned int *)t83) > *((unsigned int *)t82))
        goto LAB39;

LAB38:    *((unsigned int *)t84) = 1;

LAB39:    memset(t88, 0, 8);
    t89 = (t84 + 4);
    t90 = *((unsigned int *)t89);
    t91 = (~(t90));
    t92 = *((unsigned int *)t84);
    t93 = (t92 & t91);
    t94 = (t93 & 1U);
    if (t94 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t89) != 0)
        goto LAB43;

LAB44:    t97 = *((unsigned int *)t70);
    t98 = *((unsigned int *)t88);
    t99 = (t97 & t98);
    *((unsigned int *)t96) = t99;
    t100 = (t70 + 4);
    t101 = (t88 + 4);
    t102 = (t96 + 4);
    t103 = *((unsigned int *)t100);
    t104 = *((unsigned int *)t101);
    t105 = (t103 | t104);
    *((unsigned int *)t102) = t105;
    t106 = *((unsigned int *)t102);
    t107 = (t106 != 0);
    if (t107 == 1)
        goto LAB45;

LAB46:
LAB47:    goto LAB35;

LAB37:    t87 = (t84 + 4);
    *((unsigned int *)t84) = 1;
    *((unsigned int *)t87) = 1;
    goto LAB39;

LAB41:    *((unsigned int *)t88) = 1;
    goto LAB44;

LAB43:    t95 = (t88 + 4);
    *((unsigned int *)t88) = 1;
    *((unsigned int *)t95) = 1;
    goto LAB44;

LAB45:    t108 = *((unsigned int *)t96);
    t109 = *((unsigned int *)t102);
    *((unsigned int *)t96) = (t108 | t109);
    t110 = (t70 + 4);
    t111 = (t88 + 4);
    t112 = *((unsigned int *)t70);
    t113 = (~(t112));
    t114 = *((unsigned int *)t110);
    t115 = (~(t114));
    t116 = *((unsigned int *)t88);
    t117 = (~(t116));
    t118 = *((unsigned int *)t111);
    t119 = (~(t118));
    t120 = (t113 & t115);
    t121 = (t117 & t119);
    t122 = (~(t120));
    t123 = (~(t121));
    t124 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t124 & t122);
    t125 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t125 & t123);
    t126 = *((unsigned int *)t96);
    *((unsigned int *)t96) = (t126 & t122);
    t127 = *((unsigned int *)t96);
    *((unsigned int *)t96) = (t127 & t123);
    goto LAB47;

LAB48:    *((unsigned int *)t128) = 1;
    goto LAB51;

LAB50:    t135 = (t128 + 4);
    *((unsigned int *)t128) = 1;
    *((unsigned int *)t135) = 1;
    goto LAB51;

LAB52:    t140 = (t0 + 2296U);
    t141 = *((char **)t140);
    t140 = ((char*)((ng5)));
    memset(t142, 0, 8);
    t143 = (t141 + 4);
    if (*((unsigned int *)t143) != 0)
        goto LAB56;

LAB55:    t144 = (t140 + 4);
    if (*((unsigned int *)t144) != 0)
        goto LAB56;

LAB59:    if (*((unsigned int *)t141) < *((unsigned int *)t140))
        goto LAB58;

LAB57:    *((unsigned int *)t142) = 1;

LAB58:    memset(t146, 0, 8);
    t147 = (t142 + 4);
    t148 = *((unsigned int *)t147);
    t149 = (~(t148));
    t150 = *((unsigned int *)t142);
    t151 = (t150 & t149);
    t152 = (t151 & 1U);
    if (t152 != 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t147) != 0)
        goto LAB62;

LAB63:    t155 = *((unsigned int *)t128);
    t156 = *((unsigned int *)t146);
    t157 = (t155 & t156);
    *((unsigned int *)t154) = t157;
    t158 = (t128 + 4);
    t159 = (t146 + 4);
    t160 = (t154 + 4);
    t161 = *((unsigned int *)t158);
    t162 = *((unsigned int *)t159);
    t163 = (t161 | t162);
    *((unsigned int *)t160) = t163;
    t164 = *((unsigned int *)t160);
    t165 = (t164 != 0);
    if (t165 == 1)
        goto LAB64;

LAB65:
LAB66:    goto LAB54;

LAB56:    t145 = (t142 + 4);
    *((unsigned int *)t142) = 1;
    *((unsigned int *)t145) = 1;
    goto LAB58;

LAB60:    *((unsigned int *)t146) = 1;
    goto LAB63;

LAB62:    t153 = (t146 + 4);
    *((unsigned int *)t146) = 1;
    *((unsigned int *)t153) = 1;
    goto LAB63;

LAB64:    t166 = *((unsigned int *)t154);
    t167 = *((unsigned int *)t160);
    *((unsigned int *)t154) = (t166 | t167);
    t168 = (t128 + 4);
    t169 = (t146 + 4);
    t170 = *((unsigned int *)t128);
    t171 = (~(t170));
    t172 = *((unsigned int *)t168);
    t173 = (~(t172));
    t174 = *((unsigned int *)t146);
    t175 = (~(t174));
    t176 = *((unsigned int *)t169);
    t177 = (~(t176));
    t178 = (t171 & t173);
    t179 = (t175 & t177);
    t180 = (~(t178));
    t181 = (~(t179));
    t182 = *((unsigned int *)t160);
    *((unsigned int *)t160) = (t182 & t180);
    t183 = *((unsigned int *)t160);
    *((unsigned int *)t160) = (t183 & t181);
    t184 = *((unsigned int *)t154);
    *((unsigned int *)t154) = (t184 & t180);
    t185 = *((unsigned int *)t154);
    *((unsigned int *)t154) = (t185 & t181);
    goto LAB66;

LAB67:    *((unsigned int *)t186) = 1;
    goto LAB70;

LAB69:    t193 = (t186 + 4);
    *((unsigned int *)t186) = 1;
    *((unsigned int *)t193) = 1;
    goto LAB70;

LAB71:    t198 = (t0 + 2296U);
    t199 = *((char **)t198);
    t198 = ((char*)((ng6)));
    memset(t200, 0, 8);
    t201 = (t199 + 4);
    if (*((unsigned int *)t201) != 0)
        goto LAB75;

LAB74:    t202 = (t198 + 4);
    if (*((unsigned int *)t202) != 0)
        goto LAB75;

LAB78:    if (*((unsigned int *)t199) > *((unsigned int *)t198))
        goto LAB77;

LAB76:    *((unsigned int *)t200) = 1;

LAB77:    memset(t204, 0, 8);
    t205 = (t200 + 4);
    t206 = *((unsigned int *)t205);
    t207 = (~(t206));
    t208 = *((unsigned int *)t200);
    t209 = (t208 & t207);
    t210 = (t209 & 1U);
    if (t210 != 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t205) != 0)
        goto LAB81;

LAB82:    t213 = *((unsigned int *)t186);
    t214 = *((unsigned int *)t204);
    t215 = (t213 & t214);
    *((unsigned int *)t212) = t215;
    t216 = (t186 + 4);
    t217 = (t204 + 4);
    t218 = (t212 + 4);
    t219 = *((unsigned int *)t216);
    t220 = *((unsigned int *)t217);
    t221 = (t219 | t220);
    *((unsigned int *)t218) = t221;
    t222 = *((unsigned int *)t218);
    t223 = (t222 != 0);
    if (t223 == 1)
        goto LAB83;

LAB84:
LAB85:    goto LAB73;

LAB75:    t203 = (t200 + 4);
    *((unsigned int *)t200) = 1;
    *((unsigned int *)t203) = 1;
    goto LAB77;

LAB79:    *((unsigned int *)t204) = 1;
    goto LAB82;

LAB81:    t211 = (t204 + 4);
    *((unsigned int *)t204) = 1;
    *((unsigned int *)t211) = 1;
    goto LAB82;

LAB83:    t224 = *((unsigned int *)t212);
    t225 = *((unsigned int *)t218);
    *((unsigned int *)t212) = (t224 | t225);
    t226 = (t186 + 4);
    t227 = (t204 + 4);
    t228 = *((unsigned int *)t186);
    t229 = (~(t228));
    t230 = *((unsigned int *)t226);
    t231 = (~(t230));
    t232 = *((unsigned int *)t204);
    t233 = (~(t232));
    t234 = *((unsigned int *)t227);
    t235 = (~(t234));
    t236 = (t229 & t231);
    t237 = (t233 & t235);
    t238 = (~(t236));
    t239 = (~(t237));
    t240 = *((unsigned int *)t218);
    *((unsigned int *)t218) = (t240 & t238);
    t241 = *((unsigned int *)t218);
    *((unsigned int *)t218) = (t241 & t239);
    t242 = *((unsigned int *)t212);
    *((unsigned int *)t212) = (t242 & t238);
    t243 = *((unsigned int *)t212);
    *((unsigned int *)t212) = (t243 & t239);
    goto LAB85;

LAB86:    *((unsigned int *)t244) = 1;
    goto LAB89;

LAB88:    t251 = (t244 + 4);
    *((unsigned int *)t244) = 1;
    *((unsigned int *)t251) = 1;
    goto LAB89;

LAB90:    t256 = (t0 + 2456U);
    t257 = *((char **)t256);
    t256 = ((char*)((ng5)));
    memset(t258, 0, 8);
    t259 = (t257 + 4);
    if (*((unsigned int *)t259) != 0)
        goto LAB94;

LAB93:    t260 = (t256 + 4);
    if (*((unsigned int *)t260) != 0)
        goto LAB94;

LAB97:    if (*((unsigned int *)t257) < *((unsigned int *)t256))
        goto LAB96;

LAB95:    *((unsigned int *)t258) = 1;

LAB96:    memset(t262, 0, 8);
    t263 = (t258 + 4);
    t264 = *((unsigned int *)t263);
    t265 = (~(t264));
    t266 = *((unsigned int *)t258);
    t267 = (t266 & t265);
    t268 = (t267 & 1U);
    if (t268 != 0)
        goto LAB98;

LAB99:    if (*((unsigned int *)t263) != 0)
        goto LAB100;

LAB101:    t271 = *((unsigned int *)t244);
    t272 = *((unsigned int *)t262);
    t273 = (t271 & t272);
    *((unsigned int *)t270) = t273;
    t274 = (t244 + 4);
    t275 = (t262 + 4);
    t276 = (t270 + 4);
    t277 = *((unsigned int *)t274);
    t278 = *((unsigned int *)t275);
    t279 = (t277 | t278);
    *((unsigned int *)t276) = t279;
    t280 = *((unsigned int *)t276);
    t281 = (t280 != 0);
    if (t281 == 1)
        goto LAB102;

LAB103:
LAB104:    goto LAB92;

LAB94:    t261 = (t258 + 4);
    *((unsigned int *)t258) = 1;
    *((unsigned int *)t261) = 1;
    goto LAB96;

LAB98:    *((unsigned int *)t262) = 1;
    goto LAB101;

LAB100:    t269 = (t262 + 4);
    *((unsigned int *)t262) = 1;
    *((unsigned int *)t269) = 1;
    goto LAB101;

LAB102:    t282 = *((unsigned int *)t270);
    t283 = *((unsigned int *)t276);
    *((unsigned int *)t270) = (t282 | t283);
    t284 = (t244 + 4);
    t285 = (t262 + 4);
    t286 = *((unsigned int *)t244);
    t287 = (~(t286));
    t288 = *((unsigned int *)t284);
    t289 = (~(t288));
    t290 = *((unsigned int *)t262);
    t291 = (~(t290));
    t292 = *((unsigned int *)t285);
    t293 = (~(t292));
    t294 = (t287 & t289);
    t295 = (t291 & t293);
    t296 = (~(t294));
    t297 = (~(t295));
    t298 = *((unsigned int *)t276);
    *((unsigned int *)t276) = (t298 & t296);
    t299 = *((unsigned int *)t276);
    *((unsigned int *)t276) = (t299 & t297);
    t300 = *((unsigned int *)t270);
    *((unsigned int *)t270) = (t300 & t296);
    t301 = *((unsigned int *)t270);
    *((unsigned int *)t270) = (t301 & t297);
    goto LAB104;

LAB105:    *((unsigned int *)t302) = 1;
    goto LAB108;

LAB107:    t309 = (t302 + 4);
    *((unsigned int *)t302) = 1;
    *((unsigned int *)t309) = 1;
    goto LAB108;

LAB109:    t314 = (t0 + 2456U);
    t315 = *((char **)t314);
    t314 = ((char*)((ng6)));
    memset(t316, 0, 8);
    t317 = (t315 + 4);
    if (*((unsigned int *)t317) != 0)
        goto LAB113;

LAB112:    t318 = (t314 + 4);
    if (*((unsigned int *)t318) != 0)
        goto LAB113;

LAB116:    if (*((unsigned int *)t315) > *((unsigned int *)t314))
        goto LAB115;

LAB114:    *((unsigned int *)t316) = 1;

LAB115:    memset(t320, 0, 8);
    t321 = (t316 + 4);
    t322 = *((unsigned int *)t321);
    t323 = (~(t322));
    t324 = *((unsigned int *)t316);
    t325 = (t324 & t323);
    t326 = (t325 & 1U);
    if (t326 != 0)
        goto LAB117;

LAB118:    if (*((unsigned int *)t321) != 0)
        goto LAB119;

LAB120:    t329 = *((unsigned int *)t302);
    t330 = *((unsigned int *)t320);
    t331 = (t329 & t330);
    *((unsigned int *)t328) = t331;
    t332 = (t302 + 4);
    t333 = (t320 + 4);
    t334 = (t328 + 4);
    t335 = *((unsigned int *)t332);
    t336 = *((unsigned int *)t333);
    t337 = (t335 | t336);
    *((unsigned int *)t334) = t337;
    t338 = *((unsigned int *)t334);
    t339 = (t338 != 0);
    if (t339 == 1)
        goto LAB121;

LAB122:
LAB123:    goto LAB111;

LAB113:    t319 = (t316 + 4);
    *((unsigned int *)t316) = 1;
    *((unsigned int *)t319) = 1;
    goto LAB115;

LAB117:    *((unsigned int *)t320) = 1;
    goto LAB120;

LAB119:    t327 = (t320 + 4);
    *((unsigned int *)t320) = 1;
    *((unsigned int *)t327) = 1;
    goto LAB120;

LAB121:    t340 = *((unsigned int *)t328);
    t341 = *((unsigned int *)t334);
    *((unsigned int *)t328) = (t340 | t341);
    t342 = (t302 + 4);
    t343 = (t320 + 4);
    t344 = *((unsigned int *)t302);
    t345 = (~(t344));
    t346 = *((unsigned int *)t342);
    t347 = (~(t346));
    t348 = *((unsigned int *)t320);
    t349 = (~(t348));
    t350 = *((unsigned int *)t343);
    t351 = (~(t350));
    t352 = (t345 & t347);
    t353 = (t349 & t351);
    t354 = (~(t352));
    t355 = (~(t353));
    t356 = *((unsigned int *)t334);
    *((unsigned int *)t334) = (t356 & t354);
    t357 = *((unsigned int *)t334);
    *((unsigned int *)t334) = (t357 & t355);
    t358 = *((unsigned int *)t328);
    *((unsigned int *)t328) = (t358 & t354);
    t359 = *((unsigned int *)t328);
    *((unsigned int *)t328) = (t359 & t355);
    goto LAB123;

LAB124:    xsi_set_current_line(78, ng0);

LAB127:    xsi_set_current_line(79, ng0);
    t366 = ((char*)((ng7)));
    t367 = (t0 + 5256);
    xsi_vlogvar_wait_assign_value(t367, t366, 0, 0, 1, 0LL);
    goto LAB126;

}

static void Cont_90_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 8712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 5256);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9416);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 9144);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000001645064396_2018657252_init()
{
	static char *pe[] = {(void *)Always_55_0,(void *)Always_59_1,(void *)Always_63_2,(void *)NetDecl_68_3,(void *)NetDecl_69_4,(void *)NetDecl_70_5,(void *)Always_73_6,(void *)Cont_90_7};
	xsi_register_didat("work_m_00000000001645064396_2018657252", "isim/TestBench_isim_beh.exe.sim/work/m_00000000001645064396_2018657252.didat");
	xsi_register_executes(pe);
}
