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
static const char *ng0 = "D:/FPGA-robotics/Projects/VisualControl-drone/TEST_VIVADO/camera/capture_color.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {1U, 0U};



static void Always_49_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 6000U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 8800);
    *((int *)t2) = 1;
    t3 = (t0 + 6032);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(50, ng0);

LAB5:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 1320U);
    t5 = *((char **)t4);
    t4 = (t0 + 4760);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    goto LAB2;

}

static void Always_53_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 6248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 8816);
    *((int *)t2) = 1;
    t3 = (t0 + 6280);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);

LAB5:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1480U);
    t5 = *((char **)t4);
    t4 = (t0 + 4920);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    goto LAB2;

}

static void Always_57_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 6496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 8832);
    *((int *)t2) = 1;
    t3 = (t0 + 6528);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(58, ng0);

LAB5:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1640U);
    t5 = *((char **)t4);
    t4 = (t0 + 5080);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    goto LAB2;

}

static void NetDecl_62_3(char *t0)
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

LAB0:    t1 = (t0 + 6744U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5080);
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

LAB38:    t111 = (t0 + 9040);
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
    t124 = (t0 + 8848);
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

LAB12:    t36 = (t0 + 1640U);
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

static void NetDecl_63_4(char *t0)
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

LAB0:    t1 = (t0 + 6992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1480U);
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

LAB38:    t111 = (t0 + 9104);
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
    t124 = (t0 + 8864);
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

LAB12:    t34 = (t0 + 4920);
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

static void NetDecl_64_5(char *t0)
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

LAB0:    t1 = (t0 + 7240U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1480U);
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

LAB38:    t111 = (t0 + 9168);
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
    t124 = (t0 + 8880);
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

LAB12:    t34 = (t0 + 4920);
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

static void Always_67_6(char *t0)
{
    char t6[8];
    char t19[8];
    char t26[8];
    char t58[8];
    char t72[8];
    char t79[8];
    char t122[8];
    char t125[8];
    char t135[8];
    char t145[8];
    char t155[8];
    char t165[8];
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
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    int t103;
    int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    int t121;
    char *t123;
    char *t124;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    char *t133;
    char *t134;
    char *t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t143;
    char *t144;
    char *t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t153;
    char *t154;
    char *t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    char *t163;
    char *t164;
    char *t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    char *t173;

LAB0:    t1 = (t0 + 7488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 8896);
    *((int *)t2) = 1;
    t3 = (t0 + 7520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(68, ng0);

LAB5:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 1960U);
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

LAB12:    memset(t58, 0, 8);
    t59 = (t26 + 4);
    t60 = *((unsigned int *)t59);
    t61 = (~(t60));
    t62 = *((unsigned int *)t26);
    t63 = (t62 & t61);
    t64 = (t63 & 1U);
    if (t64 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t59) != 0)
        goto LAB22;

LAB23:    t66 = (t58 + 4);
    t67 = *((unsigned int *)t58);
    t68 = *((unsigned int *)t66);
    t69 = (t67 || t68);
    if (t69 > 0)
        goto LAB24;

LAB25:    memcpy(t79, t58, 8);

LAB26:    t111 = (t79 + 4);
    t112 = *((unsigned int *)t111);
    t113 = (~(t112));
    t114 = *((unsigned int *)t79);
    t115 = (t114 & t113);
    t116 = (t115 != 0);
    if (t116 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 3240U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB54;

LAB55:
LAB56:
LAB36:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t17 = (t0 + 2920U);
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

LAB20:    *((unsigned int *)t58) = 1;
    goto LAB23;

LAB22:    t65 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t65) = 1;
    goto LAB23;

LAB24:    t70 = (t0 + 3080U);
    t71 = *((char **)t70);
    memset(t72, 0, 8);
    t70 = (t71 + 4);
    t73 = *((unsigned int *)t70);
    t74 = (~(t73));
    t75 = *((unsigned int *)t71);
    t76 = (t75 & t74);
    t77 = (t76 & 1U);
    if (t77 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t70) != 0)
        goto LAB29;

LAB30:    t80 = *((unsigned int *)t58);
    t81 = *((unsigned int *)t72);
    t82 = (t80 & t81);
    *((unsigned int *)t79) = t82;
    t83 = (t58 + 4);
    t84 = (t72 + 4);
    t85 = (t79 + 4);
    t86 = *((unsigned int *)t83);
    t87 = *((unsigned int *)t84);
    t88 = (t86 | t87);
    *((unsigned int *)t85) = t88;
    t89 = *((unsigned int *)t85);
    t90 = (t89 != 0);
    if (t90 == 1)
        goto LAB31;

LAB32:
LAB33:    goto LAB26;

LAB27:    *((unsigned int *)t72) = 1;
    goto LAB30;

LAB29:    t78 = (t72 + 4);
    *((unsigned int *)t72) = 1;
    *((unsigned int *)t78) = 1;
    goto LAB30;

LAB31:    t91 = *((unsigned int *)t79);
    t92 = *((unsigned int *)t85);
    *((unsigned int *)t79) = (t91 | t92);
    t93 = (t58 + 4);
    t94 = (t72 + 4);
    t95 = *((unsigned int *)t58);
    t96 = (~(t95));
    t97 = *((unsigned int *)t93);
    t98 = (~(t97));
    t99 = *((unsigned int *)t72);
    t100 = (~(t99));
    t101 = *((unsigned int *)t94);
    t102 = (~(t101));
    t103 = (t96 & t98);
    t104 = (t100 & t102);
    t105 = (~(t103));
    t106 = (~(t104));
    t107 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t107 & t105);
    t108 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t108 & t106);
    t109 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t109 & t105);
    t110 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t110 & t106);
    goto LAB33;

LAB34:    xsi_set_current_line(70, ng0);

LAB37:    xsi_set_current_line(71, ng0);
    t117 = (t0 + 3640);
    t118 = (t117 + 56U);
    t119 = *((char **)t118);

LAB38:    t120 = ((char*)((ng3)));
    t121 = xsi_vlog_unsigned_case_compare(t119, 1, t120, 1);
    if (t121 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng4)));
    t50 = xsi_vlog_unsigned_case_compare(t119, 1, t2, 1);
    if (t50 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB36;

LAB39:    xsi_set_current_line(73, ng0);

LAB44:    xsi_set_current_line(74, ng0);
    t123 = (t0 + 2120U);
    t124 = *((char **)t123);
    memset(t125, 0, 8);
    t123 = (t125 + 4);
    t126 = (t124 + 4);
    t127 = *((unsigned int *)t124);
    t128 = (t127 >> 3);
    t129 = (t128 & 1);
    *((unsigned int *)t125) = t129;
    t130 = *((unsigned int *)t126);
    t131 = (t130 >> 3);
    t132 = (t131 & 1);
    *((unsigned int *)t123) = t132;
    t133 = (t0 + 2120U);
    t134 = *((char **)t133);
    memset(t135, 0, 8);
    t133 = (t135 + 4);
    t136 = (t134 + 4);
    t137 = *((unsigned int *)t134);
    t138 = (t137 >> 4);
    t139 = (t138 & 1);
    *((unsigned int *)t135) = t139;
    t140 = *((unsigned int *)t136);
    t141 = (t140 >> 4);
    t142 = (t141 & 1);
    *((unsigned int *)t133) = t142;
    t143 = (t0 + 2120U);
    t144 = *((char **)t143);
    memset(t145, 0, 8);
    t143 = (t145 + 4);
    t146 = (t144 + 4);
    t147 = *((unsigned int *)t144);
    t148 = (t147 >> 5);
    t149 = (t148 & 1);
    *((unsigned int *)t145) = t149;
    t150 = *((unsigned int *)t146);
    t151 = (t150 >> 5);
    t152 = (t151 & 1);
    *((unsigned int *)t143) = t152;
    t153 = (t0 + 2120U);
    t154 = *((char **)t153);
    memset(t155, 0, 8);
    t153 = (t155 + 4);
    t156 = (t154 + 4);
    t157 = *((unsigned int *)t154);
    t158 = (t157 >> 6);
    t159 = (t158 & 1);
    *((unsigned int *)t155) = t159;
    t160 = *((unsigned int *)t156);
    t161 = (t160 >> 6);
    t162 = (t161 & 1);
    *((unsigned int *)t153) = t162;
    t163 = (t0 + 2120U);
    t164 = *((char **)t163);
    memset(t165, 0, 8);
    t163 = (t165 + 4);
    t166 = (t164 + 4);
    t167 = *((unsigned int *)t164);
    t168 = (t167 >> 7);
    t169 = (t168 & 1);
    *((unsigned int *)t165) = t169;
    t170 = *((unsigned int *)t166);
    t171 = (t170 >> 7);
    t172 = (t171 & 1);
    *((unsigned int *)t163) = t172;
    xsi_vlogtype_concat(t122, 5, 5, 5U, t165, 1, t155, 1, t145, 1, t135, 1, t125, 1);
    t173 = (t0 + 4120);
    xsi_vlogvar_wait_assign_value(t173, t122, 0, 0, 5, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2120U);
    t3 = *((char **)t2);
    memset(t19, 0, 8);
    t2 = (t19 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    t9 = (t8 & 1);
    *((unsigned int *)t19) = t9;
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    t14 = (t11 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 2120U);
    t12 = *((char **)t5);
    memset(t26, 0, 8);
    t5 = (t26 + 4);
    t13 = (t12 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 1);
    t20 = (t16 & 1);
    *((unsigned int *)t26) = t20;
    t21 = *((unsigned int *)t13);
    t22 = (t21 >> 1);
    t23 = (t22 & 1);
    *((unsigned int *)t5) = t23;
    t17 = (t0 + 2120U);
    t18 = *((char **)t17);
    memset(t58, 0, 8);
    t17 = (t58 + 4);
    t25 = (t18 + 4);
    t24 = *((unsigned int *)t18);
    t27 = (t24 >> 2);
    t28 = (t27 & 1);
    *((unsigned int *)t58) = t28;
    t29 = *((unsigned int *)t25);
    t33 = (t29 >> 2);
    t34 = (t33 & 1);
    *((unsigned int *)t17) = t34;
    xsi_vlogtype_concat(t6, 3, 3, 3U, t58, 1, t26, 1, t19, 1);
    t30 = (t0 + 4280);
    xsi_vlogvar_wait_assign_value(t30, t6, 0, 0, 3, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3800);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3960);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB48;

LAB46:    if (*((unsigned int *)t5) == 0)
        goto LAB45;

LAB47:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;

LAB48:    t13 = (t0 + 3960);
    xsi_vlogvar_wait_assign_value(t13, t6, 0, 0, 1, 0LL);
    goto LAB43;

LAB41:    xsi_set_current_line(81, ng0);

LAB49:    xsi_set_current_line(82, ng0);
    t3 = (t0 + 2120U);
    t4 = *((char **)t3);
    memset(t19, 0, 8);
    t3 = (t19 + 4);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 5);
    t9 = (t8 & 1);
    *((unsigned int *)t19) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 5);
    t14 = (t11 & 1);
    *((unsigned int *)t3) = t14;
    t12 = (t0 + 2120U);
    t13 = *((char **)t12);
    memset(t26, 0, 8);
    t12 = (t26 + 4);
    t17 = (t13 + 4);
    t15 = *((unsigned int *)t13);
    t16 = (t15 >> 6);
    t20 = (t16 & 1);
    *((unsigned int *)t26) = t20;
    t21 = *((unsigned int *)t17);
    t22 = (t21 >> 6);
    t23 = (t22 & 1);
    *((unsigned int *)t12) = t23;
    t18 = (t0 + 2120U);
    t25 = *((char **)t18);
    memset(t58, 0, 8);
    t18 = (t58 + 4);
    t30 = (t25 + 4);
    t24 = *((unsigned int *)t25);
    t27 = (t24 >> 7);
    t28 = (t27 & 1);
    *((unsigned int *)t58) = t28;
    t29 = *((unsigned int *)t30);
    t33 = (t29 >> 7);
    t34 = (t33 & 1);
    *((unsigned int *)t18) = t34;
    t31 = (t0 + 4280);
    t32 = (t31 + 56U);
    t40 = *((char **)t32);
    xsi_vlogtype_concat(t6, 6, 6, 4U, t40, 3, t58, 1, t26, 1, t19, 1);
    t41 = (t0 + 4440);
    xsi_vlogvar_wait_assign_value(t41, t6, 0, 0, 6, 0LL);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2120U);
    t3 = *((char **)t2);
    memset(t19, 0, 8);
    t2 = (t19 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    t9 = (t8 & 1);
    *((unsigned int *)t19) = t9;
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    t14 = (t11 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 2120U);
    t12 = *((char **)t5);
    memset(t26, 0, 8);
    t5 = (t26 + 4);
    t13 = (t12 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 1);
    t20 = (t16 & 1);
    *((unsigned int *)t26) = t20;
    t21 = *((unsigned int *)t13);
    t22 = (t21 >> 1);
    t23 = (t22 & 1);
    *((unsigned int *)t5) = t23;
    t17 = (t0 + 2120U);
    t18 = *((char **)t17);
    memset(t58, 0, 8);
    t17 = (t58 + 4);
    t25 = (t18 + 4);
    t24 = *((unsigned int *)t18);
    t27 = (t24 >> 2);
    t28 = (t27 & 1);
    *((unsigned int *)t58) = t28;
    t29 = *((unsigned int *)t25);
    t33 = (t29 >> 2);
    t34 = (t33 & 1);
    *((unsigned int *)t17) = t34;
    t30 = (t0 + 2120U);
    t31 = *((char **)t30);
    memset(t72, 0, 8);
    t30 = (t72 + 4);
    t32 = (t31 + 4);
    t35 = *((unsigned int *)t31);
    t36 = (t35 >> 3);
    t37 = (t36 & 1);
    *((unsigned int *)t72) = t37;
    t38 = *((unsigned int *)t32);
    t39 = (t38 >> 3);
    t42 = (t39 & 1);
    *((unsigned int *)t30) = t42;
    t40 = (t0 + 2120U);
    t41 = *((char **)t40);
    memset(t79, 0, 8);
    t40 = (t79 + 4);
    t59 = (t41 + 4);
    t43 = *((unsigned int *)t41);
    t44 = (t43 >> 4);
    t45 = (t44 & 1);
    *((unsigned int *)t79) = t45;
    t46 = *((unsigned int *)t59);
    t47 = (t46 >> 4);
    t48 = (t47 & 1);
    *((unsigned int *)t40) = t48;
    xsi_vlogtype_concat(t6, 5, 5, 5U, t79, 1, t72, 1, t58, 1, t26, 1, t19, 1);
    t65 = (t0 + 4600);
    xsi_vlogvar_wait_assign_value(t65, t6, 0, 0, 5, 0LL);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3800);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3960);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB53;

LAB51:    if (*((unsigned int *)t5) == 0)
        goto LAB50;

LAB52:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;

LAB53:    t13 = (t0 + 3960);
    xsi_vlogvar_wait_assign_value(t13, t6, 0, 0, 1, 0LL);
    goto LAB43;

LAB45:    *((unsigned int *)t6) = 1;
    goto LAB48;

LAB50:    *((unsigned int *)t6) = 1;
    goto LAB53;

LAB54:    xsi_set_current_line(91, ng0);

LAB57:    xsi_set_current_line(92, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 3800);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB56;

}

static void Cont_97_7(char *t0)
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

LAB0:    t1 = (t0 + 7736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 4600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9232);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 31U;
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
    xsi_driver_vfirst_trans(t5, 0, 4);
    t18 = (t0 + 8912);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_98_8(char *t0)
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

LAB0:    t1 = (t0 + 7984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9296);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 63U;
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
    xsi_driver_vfirst_trans(t5, 0, 5);
    t18 = (t0 + 8928);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_99_9(char *t0)
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

LAB0:    t1 = (t0 + 8232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4120);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 31U;
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
    xsi_driver_vfirst_trans(t5, 0, 4);
    t18 = (t0 + 8944);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_100_10(char *t0)
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

LAB0:    t1 = (t0 + 8480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3800);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9424);
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
    t18 = (t0 + 8960);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000002462161254_2516711291_init()
{
	static char *pe[] = {(void *)Always_49_0,(void *)Always_53_1,(void *)Always_57_2,(void *)NetDecl_62_3,(void *)NetDecl_63_4,(void *)NetDecl_64_5,(void *)Always_67_6,(void *)Cont_97_7,(void *)Cont_98_8,(void *)Cont_99_9,(void *)Cont_100_10};
	xsi_register_didat("work_m_00000000002462161254_2516711291", "isim/TestBench_isim_beh.exe.sim/work/m_00000000002462161254_2516711291.didat");
	xsi_register_executes(pe);
}
