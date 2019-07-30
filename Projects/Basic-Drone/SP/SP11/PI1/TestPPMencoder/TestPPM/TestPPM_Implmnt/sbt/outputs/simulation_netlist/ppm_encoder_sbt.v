// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 11 2017 17:30:03

// File Generated:     Mar 10 2019 17:06:25

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "ppm_encoder" view "INTERFACE"

module ppm_encoder (
    test_led,
    ppm_output,
    clk);

    output test_led;
    output ppm_output;
    input clk;

    wire N__5127;
    wire N__5126;
    wire N__5125;
    wire N__5116;
    wire N__5115;
    wire N__5114;
    wire N__5107;
    wire N__5106;
    wire N__5105;
    wire N__5088;
    wire N__5087;
    wire N__5086;
    wire N__5083;
    wire N__5080;
    wire N__5077;
    wire N__5074;
    wire N__5067;
    wire N__5064;
    wire N__5063;
    wire N__5062;
    wire N__5059;
    wire N__5056;
    wire N__5053;
    wire N__5050;
    wire N__5043;
    wire N__5040;
    wire N__5037;
    wire N__5036;
    wire N__5033;
    wire N__5032;
    wire N__5029;
    wire N__5026;
    wire N__5023;
    wire N__5016;
    wire N__5015;
    wire N__5014;
    wire N__5011;
    wire N__5008;
    wire N__5005;
    wire N__5002;
    wire N__4999;
    wire N__4992;
    wire N__4989;
    wire N__4986;
    wire N__4983;
    wire N__4980;
    wire N__4977;
    wire N__4974;
    wire N__4973;
    wire N__4970;
    wire N__4967;
    wire N__4962;
    wire N__4959;
    wire N__4956;
    wire N__4953;
    wire N__4950;
    wire N__4949;
    wire N__4946;
    wire N__4943;
    wire N__4938;
    wire N__4935;
    wire N__4932;
    wire N__4929;
    wire N__4926;
    wire N__4925;
    wire N__4922;
    wire N__4919;
    wire N__4914;
    wire N__4911;
    wire N__4910;
    wire N__4907;
    wire N__4906;
    wire N__4903;
    wire N__4900;
    wire N__4897;
    wire N__4890;
    wire N__4887;
    wire N__4884;
    wire N__4881;
    wire N__4878;
    wire N__4875;
    wire N__4872;
    wire N__4869;
    wire N__4868;
    wire N__4865;
    wire N__4862;
    wire N__4857;
    wire N__4856;
    wire N__4855;
    wire N__4854;
    wire N__4853;
    wire N__4852;
    wire N__4851;
    wire N__4850;
    wire N__4849;
    wire N__4848;
    wire N__4845;
    wire N__4844;
    wire N__4843;
    wire N__4842;
    wire N__4841;
    wire N__4840;
    wire N__4839;
    wire N__4836;
    wire N__4825;
    wire N__4818;
    wire N__4815;
    wire N__4812;
    wire N__4801;
    wire N__4798;
    wire N__4795;
    wire N__4792;
    wire N__4791;
    wire N__4788;
    wire N__4777;
    wire N__4774;
    wire N__4767;
    wire N__4764;
    wire N__4761;
    wire N__4760;
    wire N__4759;
    wire N__4758;
    wire N__4757;
    wire N__4756;
    wire N__4755;
    wire N__4754;
    wire N__4753;
    wire N__4752;
    wire N__4751;
    wire N__4750;
    wire N__4749;
    wire N__4748;
    wire N__4747;
    wire N__4746;
    wire N__4745;
    wire N__4744;
    wire N__4743;
    wire N__4742;
    wire N__4741;
    wire N__4740;
    wire N__4739;
    wire N__4738;
    wire N__4689;
    wire N__4686;
    wire N__4683;
    wire N__4682;
    wire N__4681;
    wire N__4680;
    wire N__4679;
    wire N__4678;
    wire N__4677;
    wire N__4676;
    wire N__4675;
    wire N__4674;
    wire N__4653;
    wire N__4650;
    wire N__4647;
    wire N__4646;
    wire N__4645;
    wire N__4642;
    wire N__4637;
    wire N__4632;
    wire N__4629;
    wire N__4628;
    wire N__4627;
    wire N__4624;
    wire N__4621;
    wire N__4618;
    wire N__4615;
    wire N__4612;
    wire N__4605;
    wire N__4604;
    wire N__4603;
    wire N__4600;
    wire N__4597;
    wire N__4594;
    wire N__4587;
    wire N__4586;
    wire N__4585;
    wire N__4582;
    wire N__4579;
    wire N__4576;
    wire N__4573;
    wire N__4570;
    wire N__4563;
    wire N__4562;
    wire N__4561;
    wire N__4560;
    wire N__4559;
    wire N__4556;
    wire N__4555;
    wire N__4554;
    wire N__4553;
    wire N__4550;
    wire N__4549;
    wire N__4546;
    wire N__4543;
    wire N__4542;
    wire N__4541;
    wire N__4538;
    wire N__4537;
    wire N__4532;
    wire N__4527;
    wire N__4524;
    wire N__4515;
    wire N__4512;
    wire N__4507;
    wire N__4494;
    wire N__4491;
    wire N__4488;
    wire N__4487;
    wire N__4486;
    wire N__4485;
    wire N__4484;
    wire N__4481;
    wire N__4480;
    wire N__4479;
    wire N__4478;
    wire N__4477;
    wire N__4476;
    wire N__4475;
    wire N__4472;
    wire N__4467;
    wire N__4464;
    wire N__4461;
    wire N__4454;
    wire N__4447;
    wire N__4434;
    wire N__4431;
    wire N__4428;
    wire N__4425;
    wire N__4422;
    wire N__4419;
    wire N__4416;
    wire N__4413;
    wire N__4410;
    wire N__4407;
    wire N__4406;
    wire N__4405;
    wire N__4402;
    wire N__4399;
    wire N__4396;
    wire N__4393;
    wire N__4390;
    wire N__4387;
    wire N__4380;
    wire N__4379;
    wire N__4376;
    wire N__4373;
    wire N__4372;
    wire N__4369;
    wire N__4366;
    wire N__4363;
    wire N__4356;
    wire N__4353;
    wire N__4350;
    wire N__4349;
    wire N__4348;
    wire N__4345;
    wire N__4344;
    wire N__4341;
    wire N__4338;
    wire N__4335;
    wire N__4334;
    wire N__4331;
    wire N__4328;
    wire N__4325;
    wire N__4322;
    wire N__4319;
    wire N__4308;
    wire N__4305;
    wire N__4302;
    wire N__4299;
    wire N__4298;
    wire N__4297;
    wire N__4294;
    wire N__4291;
    wire N__4288;
    wire N__4285;
    wire N__4278;
    wire N__4277;
    wire N__4276;
    wire N__4273;
    wire N__4270;
    wire N__4267;
    wire N__4260;
    wire N__4259;
    wire N__4258;
    wire N__4255;
    wire N__4252;
    wire N__4249;
    wire N__4246;
    wire N__4239;
    wire N__4238;
    wire N__4237;
    wire N__4234;
    wire N__4231;
    wire N__4228;
    wire N__4225;
    wire N__4218;
    wire N__4217;
    wire N__4216;
    wire N__4213;
    wire N__4210;
    wire N__4207;
    wire N__4204;
    wire N__4197;
    wire N__4194;
    wire N__4191;
    wire N__4188;
    wire N__4185;
    wire N__4182;
    wire N__4179;
    wire N__4176;
    wire N__4175;
    wire N__4174;
    wire N__4171;
    wire N__4166;
    wire N__4161;
    wire N__4158;
    wire N__4155;
    wire N__4152;
    wire N__4151;
    wire N__4148;
    wire N__4147;
    wire N__4144;
    wire N__4139;
    wire N__4134;
    wire N__4131;
    wire N__4128;
    wire N__4125;
    wire N__4122;
    wire N__4119;
    wire N__4118;
    wire N__4117;
    wire N__4116;
    wire N__4111;
    wire N__4110;
    wire N__4109;
    wire N__4106;
    wire N__4105;
    wire N__4102;
    wire N__4101;
    wire N__4100;
    wire N__4097;
    wire N__4088;
    wire N__4081;
    wire N__4074;
    wire N__4071;
    wire N__4068;
    wire N__4067;
    wire N__4064;
    wire N__4061;
    wire N__4056;
    wire N__4053;
    wire N__4050;
    wire N__4047;
    wire N__4046;
    wire N__4043;
    wire N__4040;
    wire N__4035;
    wire N__4032;
    wire N__4029;
    wire N__4026;
    wire N__4023;
    wire N__4022;
    wire N__4019;
    wire N__4016;
    wire N__4011;
    wire N__4008;
    wire N__4005;
    wire N__4002;
    wire N__3999;
    wire N__3996;
    wire N__3995;
    wire N__3992;
    wire N__3989;
    wire N__3984;
    wire N__3981;
    wire N__3978;
    wire N__3975;
    wire N__3974;
    wire N__3973;
    wire N__3972;
    wire N__3963;
    wire N__3960;
    wire N__3957;
    wire N__3954;
    wire N__3953;
    wire N__3952;
    wire N__3949;
    wire N__3946;
    wire N__3945;
    wire N__3942;
    wire N__3933;
    wire N__3930;
    wire N__3927;
    wire N__3924;
    wire N__3923;
    wire N__3920;
    wire N__3917;
    wire N__3912;
    wire N__3909;
    wire N__3906;
    wire N__3903;
    wire N__3900;
    wire N__3897;
    wire N__3894;
    wire N__3891;
    wire N__3888;
    wire N__3885;
    wire N__3882;
    wire N__3881;
    wire N__3878;
    wire N__3875;
    wire N__3870;
    wire N__3867;
    wire N__3864;
    wire N__3861;
    wire N__3858;
    wire N__3855;
    wire N__3852;
    wire N__3851;
    wire N__3850;
    wire N__3849;
    wire N__3848;
    wire N__3845;
    wire N__3842;
    wire N__3839;
    wire N__3836;
    wire N__3831;
    wire N__3822;
    wire N__3821;
    wire N__3820;
    wire N__3819;
    wire N__3818;
    wire N__3815;
    wire N__3812;
    wire N__3805;
    wire N__3798;
    wire N__3797;
    wire N__3796;
    wire N__3795;
    wire N__3792;
    wire N__3789;
    wire N__3788;
    wire N__3785;
    wire N__3782;
    wire N__3779;
    wire N__3774;
    wire N__3765;
    wire N__3764;
    wire N__3763;
    wire N__3760;
    wire N__3759;
    wire N__3758;
    wire N__3755;
    wire N__3752;
    wire N__3745;
    wire N__3738;
    wire N__3735;
    wire N__3732;
    wire N__3729;
    wire N__3726;
    wire N__3723;
    wire N__3720;
    wire N__3717;
    wire N__3716;
    wire N__3715;
    wire N__3714;
    wire N__3713;
    wire N__3712;
    wire N__3709;
    wire N__3708;
    wire N__3705;
    wire N__3704;
    wire N__3703;
    wire N__3700;
    wire N__3697;
    wire N__3696;
    wire N__3695;
    wire N__3690;
    wire N__3685;
    wire N__3682;
    wire N__3679;
    wire N__3676;
    wire N__3671;
    wire N__3668;
    wire N__3665;
    wire N__3658;
    wire N__3655;
    wire N__3652;
    wire N__3647;
    wire N__3636;
    wire N__3635;
    wire N__3634;
    wire N__3633;
    wire N__3632;
    wire N__3631;
    wire N__3626;
    wire N__3623;
    wire N__3622;
    wire N__3621;
    wire N__3618;
    wire N__3615;
    wire N__3612;
    wire N__3611;
    wire N__3610;
    wire N__3607;
    wire N__3602;
    wire N__3599;
    wire N__3594;
    wire N__3591;
    wire N__3588;
    wire N__3587;
    wire N__3584;
    wire N__3575;
    wire N__3572;
    wire N__3569;
    wire N__3566;
    wire N__3563;
    wire N__3552;
    wire N__3551;
    wire N__3550;
    wire N__3547;
    wire N__3546;
    wire N__3545;
    wire N__3542;
    wire N__3541;
    wire N__3538;
    wire N__3537;
    wire N__3534;
    wire N__3531;
    wire N__3528;
    wire N__3527;
    wire N__3524;
    wire N__3523;
    wire N__3520;
    wire N__3519;
    wire N__3514;
    wire N__3511;
    wire N__3508;
    wire N__3505;
    wire N__3502;
    wire N__3499;
    wire N__3494;
    wire N__3491;
    wire N__3488;
    wire N__3481;
    wire N__3478;
    wire N__3475;
    wire N__3462;
    wire N__3461;
    wire N__3458;
    wire N__3457;
    wire N__3456;
    wire N__3455;
    wire N__3452;
    wire N__3451;
    wire N__3450;
    wire N__3449;
    wire N__3446;
    wire N__3441;
    wire N__3438;
    wire N__3437;
    wire N__3436;
    wire N__3435;
    wire N__3434;
    wire N__3433;
    wire N__3430;
    wire N__3427;
    wire N__3424;
    wire N__3421;
    wire N__3414;
    wire N__3409;
    wire N__3404;
    wire N__3401;
    wire N__3392;
    wire N__3381;
    wire N__3378;
    wire N__3375;
    wire N__3372;
    wire N__3369;
    wire N__3366;
    wire N__3363;
    wire N__3360;
    wire N__3359;
    wire N__3358;
    wire N__3351;
    wire N__3348;
    wire N__3345;
    wire N__3344;
    wire N__3343;
    wire N__3340;
    wire N__3337;
    wire N__3334;
    wire N__3331;
    wire N__3328;
    wire N__3321;
    wire N__3320;
    wire N__3319;
    wire N__3316;
    wire N__3313;
    wire N__3310;
    wire N__3307;
    wire N__3304;
    wire N__3297;
    wire N__3296;
    wire N__3293;
    wire N__3292;
    wire N__3289;
    wire N__3286;
    wire N__3283;
    wire N__3276;
    wire N__3273;
    wire N__3270;
    wire N__3267;
    wire N__3264;
    wire N__3261;
    wire N__3258;
    wire N__3255;
    wire N__3252;
    wire N__3249;
    wire N__3246;
    wire N__3243;
    wire N__3240;
    wire N__3237;
    wire N__3234;
    wire N__3231;
    wire N__3228;
    wire N__3225;
    wire N__3222;
    wire N__3219;
    wire N__3216;
    wire N__3213;
    wire N__3210;
    wire N__3207;
    wire N__3204;
    wire N__3201;
    wire N__3198;
    wire N__3195;
    wire N__3192;
    wire N__3189;
    wire N__3186;
    wire N__3183;
    wire N__3180;
    wire N__3177;
    wire N__3174;
    wire N__3171;
    wire N__3170;
    wire N__3167;
    wire N__3164;
    wire N__3161;
    wire N__3158;
    wire N__3155;
    wire N__3152;
    wire N__3147;
    wire N__3144;
    wire N__3141;
    wire N__3138;
    wire N__3135;
    wire N__3132;
    wire N__3129;
    wire N__3126;
    wire N__3123;
    wire N__3120;
    wire N__3117;
    wire N__3114;
    wire N__3113;
    wire N__3110;
    wire N__3107;
    wire N__3102;
    wire N__3101;
    wire N__3100;
    wire N__3095;
    wire N__3092;
    wire N__3087;
    wire N__3084;
    wire N__3081;
    wire N__3078;
    wire N__3075;
    wire N__3074;
    wire N__3073;
    wire N__3072;
    wire N__3071;
    wire N__3070;
    wire N__3069;
    wire N__3066;
    wire N__3063;
    wire N__3062;
    wire N__3061;
    wire N__3058;
    wire N__3055;
    wire N__3052;
    wire N__3051;
    wire N__3050;
    wire N__3049;
    wire N__3048;
    wire N__3047;
    wire N__3046;
    wire N__3045;
    wire N__3042;
    wire N__3039;
    wire N__3038;
    wire N__3033;
    wire N__3030;
    wire N__3027;
    wire N__3026;
    wire N__3025;
    wire N__3010;
    wire N__3003;
    wire N__2996;
    wire N__2993;
    wire N__2986;
    wire N__2983;
    wire N__2980;
    wire N__2975;
    wire N__2972;
    wire N__2965;
    wire N__2962;
    wire N__2955;
    wire N__2952;
    wire N__2949;
    wire N__2946;
    wire N__2943;
    wire N__2942;
    wire N__2939;
    wire N__2936;
    wire N__2931;
    wire N__2928;
    wire N__2925;
    wire N__2922;
    wire N__2919;
    wire N__2916;
    wire N__2913;
    wire N__2910;
    wire N__2907;
    wire N__2904;
    wire N__2901;
    wire N__2900;
    wire N__2897;
    wire N__2894;
    wire N__2891;
    wire N__2888;
    wire N__2883;
    wire N__2880;
    wire N__2877;
    wire N__2874;
    wire N__2873;
    wire N__2868;
    wire N__2865;
    wire N__2864;
    wire N__2861;
    wire N__2858;
    wire N__2853;
    wire N__2850;
    wire N__2849;
    wire N__2848;
    wire N__2847;
    wire N__2844;
    wire N__2841;
    wire N__2838;
    wire N__2835;
    wire N__2830;
    wire N__2825;
    wire N__2820;
    wire N__2819;
    wire N__2816;
    wire N__2813;
    wire N__2808;
    wire N__2807;
    wire N__2804;
    wire N__2801;
    wire N__2798;
    wire N__2793;
    wire N__2792;
    wire N__2789;
    wire N__2786;
    wire N__2783;
    wire N__2778;
    wire N__2775;
    wire N__2774;
    wire N__2771;
    wire N__2768;
    wire N__2763;
    wire N__2760;
    wire N__2759;
    wire N__2756;
    wire N__2753;
    wire N__2748;
    wire N__2747;
    wire N__2744;
    wire N__2741;
    wire N__2738;
    wire N__2735;
    wire N__2730;
    wire N__2727;
    wire N__2726;
    wire N__2723;
    wire N__2720;
    wire N__2715;
    wire N__2714;
    wire N__2713;
    wire N__2712;
    wire N__2711;
    wire N__2710;
    wire N__2709;
    wire N__2708;
    wire N__2707;
    wire N__2706;
    wire N__2705;
    wire N__2704;
    wire N__2703;
    wire N__2702;
    wire N__2701;
    wire N__2700;
    wire N__2699;
    wire N__2698;
    wire N__2697;
    wire N__2694;
    wire N__2685;
    wire N__2680;
    wire N__2677;
    wire N__2670;
    wire N__2659;
    wire N__2652;
    wire N__2645;
    wire N__2634;
    wire N__2631;
    wire N__2628;
    wire N__2625;
    wire N__2622;
    wire N__2621;
    wire N__2616;
    wire N__2613;
    wire N__2610;
    wire N__2607;
    wire N__2606;
    wire N__2603;
    wire N__2600;
    wire N__2595;
    wire N__2592;
    wire N__2589;
    wire N__2586;
    wire N__2583;
    wire N__2580;
    wire N__2577;
    wire N__2574;
    wire N__2571;
    wire N__2568;
    wire N__2565;
    wire N__2562;
    wire N__2559;
    wire N__2556;
    wire N__2553;
    wire N__2552;
    wire N__2551;
    wire N__2550;
    wire N__2549;
    wire N__2548;
    wire N__2547;
    wire N__2546;
    wire N__2545;
    wire N__2542;
    wire N__2541;
    wire N__2540;
    wire N__2537;
    wire N__2536;
    wire N__2533;
    wire N__2530;
    wire N__2529;
    wire N__2528;
    wire N__2527;
    wire N__2526;
    wire N__2523;
    wire N__2520;
    wire N__2519;
    wire N__2516;
    wire N__2515;
    wire N__2506;
    wire N__2491;
    wire N__2486;
    wire N__2475;
    wire N__2466;
    wire N__2463;
    wire N__2460;
    wire N__2457;
    wire N__2454;
    wire N__2451;
    wire N__2448;
    wire N__2445;
    wire N__2442;
    wire N__2439;
    wire N__2436;
    wire N__2433;
    wire N__2430;
    wire N__2427;
    wire N__2424;
    wire N__2421;
    wire N__2418;
    wire N__2415;
    wire N__2412;
    wire N__2409;
    wire N__2406;
    wire N__2403;
    wire N__2400;
    wire N__2397;
    wire N__2394;
    wire N__2391;
    wire N__2388;
    wire N__2385;
    wire N__2382;
    wire N__2381;
    wire N__2380;
    wire N__2377;
    wire N__2372;
    wire N__2367;
    wire N__2366;
    wire N__2365;
    wire N__2362;
    wire N__2359;
    wire N__2356;
    wire N__2349;
    wire N__2346;
    wire N__2343;
    wire N__2340;
    wire N__2337;
    wire N__2334;
    wire N__2331;
    wire N__2328;
    wire N__2325;
    wire N__2322;
    wire N__2319;
    wire N__2316;
    wire N__2313;
    wire N__2310;
    wire N__2307;
    wire N__2304;
    wire N__2301;
    wire N__2298;
    wire N__2297;
    wire N__2294;
    wire N__2291;
    wire N__2286;
    wire N__2283;
    wire N__2282;
    wire N__2279;
    wire N__2276;
    wire N__2271;
    wire N__2268;
    wire N__2267;
    wire N__2264;
    wire N__2261;
    wire N__2256;
    wire N__2253;
    wire N__2252;
    wire N__2249;
    wire N__2246;
    wire N__2243;
    wire N__2238;
    wire N__2235;
    wire N__2234;
    wire N__2231;
    wire N__2228;
    wire N__2223;
    wire N__2220;
    wire N__2219;
    wire N__2216;
    wire N__2213;
    wire N__2208;
    wire N__2205;
    wire N__2204;
    wire N__2201;
    wire N__2198;
    wire N__2193;
    wire N__2190;
    wire N__2189;
    wire N__2188;
    wire N__2185;
    wire N__2180;
    wire N__2175;
    wire N__2172;
    wire N__2169;
    wire N__2166;
    wire N__2165;
    wire N__2162;
    wire N__2159;
    wire N__2154;
    wire N__2153;
    wire N__2152;
    wire N__2149;
    wire N__2144;
    wire N__2141;
    wire N__2136;
    wire N__2133;
    wire N__2130;
    wire N__2127;
    wire N__2124;
    wire N__2121;
    wire N__2118;
    wire N__2115;
    wire N__2112;
    wire N__2109;
    wire N__2106;
    wire N__2103;
    wire N__2100;
    wire N__2097;
    wire N__2094;
    wire N__2091;
    wire N__2088;
    wire N__2085;
    wire N__2082;
    wire N__2079;
    wire N__2076;
    wire N__2075;
    wire N__2072;
    wire N__2069;
    wire VCCG0;
    wire GNDG0;
    wire count6lto11_1_cascade_;
    wire count6lt11;
    wire count6lt11_cascade_;
    wire count6lto11_1;
    wire count6_0_cascade_;
    wire test_led_c;
    wire N_153_1_cascade_;
    wire init_pulses39_0_cascade_;
    wire init_pulses_0_sqmuxa_cascade_;
    wire countZ0Z_1;
    wire countZ0Z_0;
    wire bfn_9_25_0_;
    wire countZ0Z_2;
    wire count_1_cry_1;
    wire countZ0Z_3;
    wire count_1_cry_2;
    wire countZ0Z_4;
    wire count_1_cry_3;
    wire countZ0Z_5;
    wire count_1_cry_4;
    wire countZ0Z_6;
    wire count_1_cry_5;
    wire countZ0Z_7;
    wire count_1_cry_6;
    wire countZ0Z_8;
    wire count_1_cry_7;
    wire count_1_cry_8;
    wire countZ0Z_9;
    wire bfn_9_26_0_;
    wire countZ0Z_10;
    wire count_1_cry_9;
    wire countZ0Z_11;
    wire count_1_cry_10;
    wire countZ0Z_12;
    wire count_1_cry_11;
    wire count_1_cry_12;
    wire countZ0Z_13;
    wire count6lto13_iso;
    wire un1_init_pulses_axb_0;
    wire bfn_10_21_0_;
    wire init_pulses_RNO_0Z0Z_1;
    wire un1_init_pulses_cry_0;
    wire init_pulses_RNO_0Z0Z_2;
    wire un1_init_pulses_cry_1;
    wire init_pulses_RNO_0Z0Z_3;
    wire un1_init_pulses_cry_2;
    wire init_pulses_RNO_0Z0Z_4;
    wire un1_init_pulses_cry_3;
    wire init_pulses_RNO_0Z0Z_5;
    wire un1_init_pulses_cry_4;
    wire init_pulses_RNO_0Z0Z_6;
    wire un1_init_pulses_cry_5;
    wire init_pulses_RNO_0Z0Z_7;
    wire un1_init_pulses_cry_6;
    wire un1_init_pulses_cry_7;
    wire init_pulses_RNO_0Z0Z_8;
    wire bfn_10_22_0_;
    wire init_pulses_RNO_0Z0Z_9;
    wire un1_init_pulses_cry_8;
    wire un1_init_pulses_cry_9;
    wire init_pulses_RNO_0Z0Z_11;
    wire un1_init_pulses_cry_10;
    wire init_pulses_RNO_0Z0Z_12;
    wire un1_init_pulses_cry_11;
    wire init_pulses_RNO_0Z0Z_13;
    wire un1_init_pulses_cry_12;
    wire init_pulses_RNO_0Z0Z_14;
    wire un1_init_pulses_cry_13;
    wire init_pulses_RNO_0Z0Z_15;
    wire un1_init_pulses_cry_14;
    wire un1_init_pulses_cry_15;
    wire bfn_10_23_0_;
    wire un1_init_pulses_cry_16;
    wire un1_init_pulses_cry_17;
    wire init_pulses_RNO_0Z0Z_18_cascade_;
    wire init_pulses_RNO_0Z0Z_10;
    wire init_pulses_RNO_0Z0Z_16;
    wire init_pulses_0_sqmuxa;
    wire init_pulses_RNO_0Z0Z_17;
    wire init_pulsesZ0Z_15;
    wire init_pulsesZ0Z_10;
    wire init_pulsesZ0Z_0;
    wire init_pulsesZ0Z_17;
    wire init_pulsesZ0Z_13;
    wire init_pulsesZ0Z_6;
    wire init_pulsesZ0Z_11;
    wire N_153_1;
    wire pulses2count_8_0_iv_0_1_10_0;
    wire N_44;
    wire init_pulsesZ0Z_14;
    wire pulses2countZ0Z_14;
    wire pulses2countZ0Z_15;
    wire ppm_output_c;
    wire un15_0_iv_1_12;
    wire init_pulses_2_sqmuxa_0_cascade_;
    wire N_51;
    wire un15_0_12_cascade_;
    wire N_323_i;
    wire N_43_cascade_;
    wire un15_0_i_0_0_cascade_;
    wire CHOOSE_CHANNEL_fast_RNIPSOR8_0Z0Z_2;
    wire un15_0_12;
    wire un15_0_i_0_0;
    wire CHOOSE_CHANNEL_fast_RNIPSOR8Z0Z_2;
    wire PPM_STATE_r_1_1_cascade_;
    wire init_pulses_6_sqmuxa_0;
    wire pulses2countZ0Z_6;
    wire init_pulsesZ0Z_7;
    wire pulses2countZ0Z_7;
    wire bfn_11_24_0_;
    wire counter11_0_data_tmp_0;
    wire counter11_0_data_tmp_1;
    wire counter11_0_I_21_c_RNOZ0;
    wire counter11_0_data_tmp_2;
    wire counter11_0_data_tmp_3;
    wire counter11_0_data_tmp_4;
    wire counter11_0_data_tmp_5;
    wire counter11_0_I_45_c_RNOZ0;
    wire counter11_0_data_tmp_6;
    wire counter11_0_data_tmp_7;
    wire bfn_11_25_0_;
    wire counter11_0_data_tmp_8;
    wire counter11_0_N_2;
    wire pulses2countZ0Z_0;
    wire counter11_0_I_1_c_RNOZ0;
    wire pulses2countZ0Z_10;
    wire pulses2countZ0Z_11;
    wire counter11_0_I_33_c_RNOZ0;
    wire pulses2countZ0Z_13;
    wire counter11_0_I_39_c_RNOZ0;
    wire pulses2countZ0Z_17;
    wire counter11_0_I_51_c_RNOZ0;
    wire N_36_i;
    wire bfn_11_26_0_;
    wire un1_counter_13_cry_0;
    wire un1_counter_13_cry_1;
    wire un1_counter_13_cry_2;
    wire un1_counter_13_cry_3;
    wire un1_counter_13_cry_4;
    wire un1_counter_13_cry_5;
    wire un1_counter_13_cry_6;
    wire un1_counter_13_cry_7;
    wire bfn_11_27_0_;
    wire un1_counter_13_cry_8;
    wire un1_counter_13_cry_9;
    wire un1_counter_13_cry_10;
    wire un1_counter_13_cry_11;
    wire un1_counter_13_cry_12;
    wire un1_counter_13_cry_13;
    wire un1_counter_13_cry_14;
    wire un1_counter_13_cry_15;
    wire bfn_11_28_0_;
    wire un1_counter_13_cry_16;
    wire un1_counter_13_cry_17;
    wire un1_PPM_STATE_0_sqmuxa_0_i_g;
    wire counterZ0Z_17;
    wire counterZ0Z_14;
    wire counterZ0Z_1;
    wire N_43;
    wire N_30_i;
    wire CHOOSE_CHANNEL_fastZ0Z_1;
    wire CHOOSE_CHANNEL_fastZ0Z_0;
    wire CHOOSE_CHANNEL_fastZ0Z_3;
    wire CHOOSE_CHANNEL_fastZ0Z_2;
    wire N_15_i;
    wire PPM_STATE_e_1_0;
    wire CHOOSE_CHANNELZ0Z_2;
    wire CHOOSE_CHANNELZ0Z_1;
    wire CHOOSE_CHANNELZ0Z_3;
    wire CHOOSE_CHANNELZ0Z_0;
    wire CONSTANT_ONE_NET;
    wire init_pulsesZ0Z_3;
    wire init_pulsesZ0Z_1;
    wire pulses2countZ0Z_1;
    wire init_pulsesZ0Z_12;
    wire pulses2countZ0Z_12;
    wire init_pulsesZ0Z_16;
    wire pulses2countZ0Z_16;
    wire init_pulses39_0;
    wire un1_init_pulses39_2_0_0;
    wire init_pulsesZ0Z_2;
    wire pulses2countZ0Z_2;
    wire pulses2countZ0Z_3;
    wire counter11_0_I_9_c_RNOZ0;
    wire init_pulsesZ0Z_5;
    wire counterZ0Z_3;
    wire counterZ0Z_10;
    wire counterZ0Z_2;
    wire counterZ0Z_16;
    wire PPM_STATEZ0Z_1;
    wire PPM_STATEZ0Z_0;
    wire PPM_STATE_0_sqmuxa_1_14;
    wire PPM_STATE_0_sqmuxa_1_13;
    wire PPM_STATE_0_sqmuxa_1_15;
    wire PPM_STATE_0_sqmuxa_1;
    wire pulses2count39_0;
    wire PPM_STATE_0_sqmuxa_1_cascade_;
    wire counter11_0_N_2_THRU_CO;
    wire un1_PPM_STATE_0_sqmuxa_0_i;
    wire counterZ0Z_6;
    wire counterZ0Z_0;
    wire counterZ0Z_11;
    wire counterZ0Z_7;
    wire counterZ0Z_15;
    wire PPM_STATE_0_sqmuxa_1_12_cascade_;
    wire PPM_STATE_0_sqmuxa_1_16;
    wire PPM_STATE_0_sqmuxa_1_2;
    wire counterZ0Z_5;
    wire pulses2countZ0Z_5;
    wire counterZ0Z_4;
    wire counter11_0_I_15_c_RNOZ0;
    wire counterZ0Z_12;
    wire counterZ0Z_13;
    wire PPM_STATE_0_sqmuxa_1_0;
    wire counterZ0Z_8;
    wire counterZ0Z_9;
    wire counter11_0_I_27_c_RNOZ0;
    wire init_pulsesZ0Z_8;
    wire pulses2countZ0Z_8;
    wire init_pulsesZ0Z_9;
    wire pulses2countZ0Z_9;
    wire init_pulsesZ0Z_18;
    wire counterZ0Z_18;
    wire pulses2countZ0Z_18;
    wire counter11_0_I_57_c_RNOZ0;
    wire init_pulsesZ0Z_4;
    wire pulses2count22_0;
    wire pulses2countZ0Z_4;
    wire clk_c_g;
    wire N_30_i_g;
    wire _gnd_net_;

    PRE_IO_GBUF clk_ibuf_gb_io_preiogbuf (
            .PADSIGNALTOGLOBALBUFFER(N__5125),
            .GLOBALBUFFEROUTPUT(clk_c_g));
    defparam clk_ibuf_gb_io_iopad.PULLUP=1'b0;
    defparam clk_ibuf_gb_io_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD clk_ibuf_gb_io_iopad (
            .OE(N__5127),
            .DIN(N__5126),
            .DOUT(N__5125),
            .PACKAGEPIN(clk));
    defparam clk_ibuf_gb_io_preio.NEG_TRIGGER=1'b0;
    defparam clk_ibuf_gb_io_preio.PIN_TYPE=6'b000001;
    PRE_IO clk_ibuf_gb_io_preio (
            .PADOEN(N__5127),
            .PADOUT(N__5126),
            .PADIN(N__5125),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    defparam test_led_obuf_iopad.PULLUP=1'b0;
    defparam test_led_obuf_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD test_led_obuf_iopad (
            .OE(N__5116),
            .DIN(N__5115),
            .DOUT(N__5114),
            .PACKAGEPIN(test_led));
    defparam test_led_obuf_preio.NEG_TRIGGER=1'b0;
    defparam test_led_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO test_led_obuf_preio (
            .PADOEN(N__5116),
            .PADOUT(N__5115),
            .PADIN(N__5114),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__2094),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    defparam ppm_output_obuf_iopad.PULLUP=1'b0;
    defparam ppm_output_obuf_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD ppm_output_obuf_iopad (
            .OE(N__5107),
            .DIN(N__5106),
            .DOUT(N__5105),
            .PACKAGEPIN(ppm_output));
    defparam ppm_output_obuf_preio.NEG_TRIGGER=1'b0;
    defparam ppm_output_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO ppm_output_obuf_preio (
            .PADOEN(N__5107),
            .PADOUT(N__5106),
            .PADIN(N__5105),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__2907),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    InMux I__1186 (
            .O(N__5088),
            .I(N__5083));
    InMux I__1185 (
            .O(N__5087),
            .I(N__5080));
    InMux I__1184 (
            .O(N__5086),
            .I(N__5077));
    LocalMux I__1183 (
            .O(N__5083),
            .I(N__5074));
    LocalMux I__1182 (
            .O(N__5080),
            .I(counterZ0Z_12));
    LocalMux I__1181 (
            .O(N__5077),
            .I(counterZ0Z_12));
    Odrv4 I__1180 (
            .O(N__5074),
            .I(counterZ0Z_12));
    InMux I__1179 (
            .O(N__5067),
            .I(N__5064));
    LocalMux I__1178 (
            .O(N__5064),
            .I(N__5059));
    InMux I__1177 (
            .O(N__5063),
            .I(N__5056));
    InMux I__1176 (
            .O(N__5062),
            .I(N__5053));
    Span4Mux_h I__1175 (
            .O(N__5059),
            .I(N__5050));
    LocalMux I__1174 (
            .O(N__5056),
            .I(counterZ0Z_13));
    LocalMux I__1173 (
            .O(N__5053),
            .I(counterZ0Z_13));
    Odrv4 I__1172 (
            .O(N__5050),
            .I(counterZ0Z_13));
    InMux I__1171 (
            .O(N__5043),
            .I(N__5040));
    LocalMux I__1170 (
            .O(N__5040),
            .I(PPM_STATE_0_sqmuxa_1_0));
    CascadeMux I__1169 (
            .O(N__5037),
            .I(N__5033));
    InMux I__1168 (
            .O(N__5036),
            .I(N__5029));
    InMux I__1167 (
            .O(N__5033),
            .I(N__5026));
    InMux I__1166 (
            .O(N__5032),
            .I(N__5023));
    LocalMux I__1165 (
            .O(N__5029),
            .I(counterZ0Z_8));
    LocalMux I__1164 (
            .O(N__5026),
            .I(counterZ0Z_8));
    LocalMux I__1163 (
            .O(N__5023),
            .I(counterZ0Z_8));
    InMux I__1162 (
            .O(N__5016),
            .I(N__5011));
    CascadeMux I__1161 (
            .O(N__5015),
            .I(N__5008));
    InMux I__1160 (
            .O(N__5014),
            .I(N__5005));
    LocalMux I__1159 (
            .O(N__5011),
            .I(N__5002));
    InMux I__1158 (
            .O(N__5008),
            .I(N__4999));
    LocalMux I__1157 (
            .O(N__5005),
            .I(counterZ0Z_9));
    Odrv4 I__1156 (
            .O(N__5002),
            .I(counterZ0Z_9));
    LocalMux I__1155 (
            .O(N__4999),
            .I(counterZ0Z_9));
    InMux I__1154 (
            .O(N__4992),
            .I(N__4989));
    LocalMux I__1153 (
            .O(N__4989),
            .I(N__4986));
    Odrv4 I__1152 (
            .O(N__4986),
            .I(counter11_0_I_27_c_RNOZ0));
    InMux I__1151 (
            .O(N__4983),
            .I(N__4980));
    LocalMux I__1150 (
            .O(N__4980),
            .I(N__4977));
    Span4Mux_v I__1149 (
            .O(N__4977),
            .I(N__4974));
    Span4Mux_h I__1148 (
            .O(N__4974),
            .I(N__4970));
    InMux I__1147 (
            .O(N__4973),
            .I(N__4967));
    Odrv4 I__1146 (
            .O(N__4970),
            .I(init_pulsesZ0Z_8));
    LocalMux I__1145 (
            .O(N__4967),
            .I(init_pulsesZ0Z_8));
    InMux I__1144 (
            .O(N__4962),
            .I(N__4959));
    LocalMux I__1143 (
            .O(N__4959),
            .I(pulses2countZ0Z_8));
    InMux I__1142 (
            .O(N__4956),
            .I(N__4953));
    LocalMux I__1141 (
            .O(N__4953),
            .I(N__4950));
    Span4Mux_v I__1140 (
            .O(N__4950),
            .I(N__4946));
    InMux I__1139 (
            .O(N__4949),
            .I(N__4943));
    Odrv4 I__1138 (
            .O(N__4946),
            .I(init_pulsesZ0Z_9));
    LocalMux I__1137 (
            .O(N__4943),
            .I(init_pulsesZ0Z_9));
    InMux I__1136 (
            .O(N__4938),
            .I(N__4935));
    LocalMux I__1135 (
            .O(N__4935),
            .I(pulses2countZ0Z_9));
    InMux I__1134 (
            .O(N__4932),
            .I(N__4929));
    LocalMux I__1133 (
            .O(N__4929),
            .I(N__4926));
    Span4Mux_v I__1132 (
            .O(N__4926),
            .I(N__4922));
    InMux I__1131 (
            .O(N__4925),
            .I(N__4919));
    Odrv4 I__1130 (
            .O(N__4922),
            .I(init_pulsesZ0Z_18));
    LocalMux I__1129 (
            .O(N__4919),
            .I(init_pulsesZ0Z_18));
    CascadeMux I__1128 (
            .O(N__4914),
            .I(N__4911));
    InMux I__1127 (
            .O(N__4911),
            .I(N__4907));
    InMux I__1126 (
            .O(N__4910),
            .I(N__4903));
    LocalMux I__1125 (
            .O(N__4907),
            .I(N__4900));
    InMux I__1124 (
            .O(N__4906),
            .I(N__4897));
    LocalMux I__1123 (
            .O(N__4903),
            .I(counterZ0Z_18));
    Odrv4 I__1122 (
            .O(N__4900),
            .I(counterZ0Z_18));
    LocalMux I__1121 (
            .O(N__4897),
            .I(counterZ0Z_18));
    InMux I__1120 (
            .O(N__4890),
            .I(N__4887));
    LocalMux I__1119 (
            .O(N__4887),
            .I(pulses2countZ0Z_18));
    InMux I__1118 (
            .O(N__4884),
            .I(N__4881));
    LocalMux I__1117 (
            .O(N__4881),
            .I(N__4878));
    Odrv4 I__1116 (
            .O(N__4878),
            .I(counter11_0_I_57_c_RNOZ0));
    InMux I__1115 (
            .O(N__4875),
            .I(N__4872));
    LocalMux I__1114 (
            .O(N__4872),
            .I(N__4869));
    Span4Mux_v I__1113 (
            .O(N__4869),
            .I(N__4865));
    InMux I__1112 (
            .O(N__4868),
            .I(N__4862));
    Odrv4 I__1111 (
            .O(N__4865),
            .I(init_pulsesZ0Z_4));
    LocalMux I__1110 (
            .O(N__4862),
            .I(init_pulsesZ0Z_4));
    InMux I__1109 (
            .O(N__4857),
            .I(N__4845));
    InMux I__1108 (
            .O(N__4856),
            .I(N__4836));
    InMux I__1107 (
            .O(N__4855),
            .I(N__4825));
    InMux I__1106 (
            .O(N__4854),
            .I(N__4825));
    InMux I__1105 (
            .O(N__4853),
            .I(N__4825));
    InMux I__1104 (
            .O(N__4852),
            .I(N__4825));
    InMux I__1103 (
            .O(N__4851),
            .I(N__4825));
    InMux I__1102 (
            .O(N__4850),
            .I(N__4818));
    InMux I__1101 (
            .O(N__4849),
            .I(N__4818));
    InMux I__1100 (
            .O(N__4848),
            .I(N__4818));
    LocalMux I__1099 (
            .O(N__4845),
            .I(N__4815));
    InMux I__1098 (
            .O(N__4844),
            .I(N__4812));
    InMux I__1097 (
            .O(N__4843),
            .I(N__4801));
    InMux I__1096 (
            .O(N__4842),
            .I(N__4801));
    InMux I__1095 (
            .O(N__4841),
            .I(N__4801));
    InMux I__1094 (
            .O(N__4840),
            .I(N__4801));
    InMux I__1093 (
            .O(N__4839),
            .I(N__4801));
    LocalMux I__1092 (
            .O(N__4836),
            .I(N__4798));
    LocalMux I__1091 (
            .O(N__4825),
            .I(N__4795));
    LocalMux I__1090 (
            .O(N__4818),
            .I(N__4792));
    Span4Mux_v I__1089 (
            .O(N__4815),
            .I(N__4788));
    LocalMux I__1088 (
            .O(N__4812),
            .I(N__4777));
    LocalMux I__1087 (
            .O(N__4801),
            .I(N__4777));
    Span4Mux_v I__1086 (
            .O(N__4798),
            .I(N__4777));
    Span4Mux_h I__1085 (
            .O(N__4795),
            .I(N__4777));
    Span4Mux_v I__1084 (
            .O(N__4792),
            .I(N__4777));
    InMux I__1083 (
            .O(N__4791),
            .I(N__4774));
    Odrv4 I__1082 (
            .O(N__4788),
            .I(pulses2count22_0));
    Odrv4 I__1081 (
            .O(N__4777),
            .I(pulses2count22_0));
    LocalMux I__1080 (
            .O(N__4774),
            .I(pulses2count22_0));
    InMux I__1079 (
            .O(N__4767),
            .I(N__4764));
    LocalMux I__1078 (
            .O(N__4764),
            .I(pulses2countZ0Z_4));
    ClkMux I__1077 (
            .O(N__4761),
            .I(N__4689));
    ClkMux I__1076 (
            .O(N__4760),
            .I(N__4689));
    ClkMux I__1075 (
            .O(N__4759),
            .I(N__4689));
    ClkMux I__1074 (
            .O(N__4758),
            .I(N__4689));
    ClkMux I__1073 (
            .O(N__4757),
            .I(N__4689));
    ClkMux I__1072 (
            .O(N__4756),
            .I(N__4689));
    ClkMux I__1071 (
            .O(N__4755),
            .I(N__4689));
    ClkMux I__1070 (
            .O(N__4754),
            .I(N__4689));
    ClkMux I__1069 (
            .O(N__4753),
            .I(N__4689));
    ClkMux I__1068 (
            .O(N__4752),
            .I(N__4689));
    ClkMux I__1067 (
            .O(N__4751),
            .I(N__4689));
    ClkMux I__1066 (
            .O(N__4750),
            .I(N__4689));
    ClkMux I__1065 (
            .O(N__4749),
            .I(N__4689));
    ClkMux I__1064 (
            .O(N__4748),
            .I(N__4689));
    ClkMux I__1063 (
            .O(N__4747),
            .I(N__4689));
    ClkMux I__1062 (
            .O(N__4746),
            .I(N__4689));
    ClkMux I__1061 (
            .O(N__4745),
            .I(N__4689));
    ClkMux I__1060 (
            .O(N__4744),
            .I(N__4689));
    ClkMux I__1059 (
            .O(N__4743),
            .I(N__4689));
    ClkMux I__1058 (
            .O(N__4742),
            .I(N__4689));
    ClkMux I__1057 (
            .O(N__4741),
            .I(N__4689));
    ClkMux I__1056 (
            .O(N__4740),
            .I(N__4689));
    ClkMux I__1055 (
            .O(N__4739),
            .I(N__4689));
    ClkMux I__1054 (
            .O(N__4738),
            .I(N__4689));
    GlobalMux I__1053 (
            .O(N__4689),
            .I(N__4686));
    gio2CtrlBuf I__1052 (
            .O(N__4686),
            .I(clk_c_g));
    CEMux I__1051 (
            .O(N__4683),
            .I(N__4653));
    CEMux I__1050 (
            .O(N__4682),
            .I(N__4653));
    CEMux I__1049 (
            .O(N__4681),
            .I(N__4653));
    CEMux I__1048 (
            .O(N__4680),
            .I(N__4653));
    CEMux I__1047 (
            .O(N__4679),
            .I(N__4653));
    CEMux I__1046 (
            .O(N__4678),
            .I(N__4653));
    CEMux I__1045 (
            .O(N__4677),
            .I(N__4653));
    CEMux I__1044 (
            .O(N__4676),
            .I(N__4653));
    CEMux I__1043 (
            .O(N__4675),
            .I(N__4653));
    CEMux I__1042 (
            .O(N__4674),
            .I(N__4653));
    GlobalMux I__1041 (
            .O(N__4653),
            .I(N__4650));
    gio2CtrlBuf I__1040 (
            .O(N__4650),
            .I(N_30_i_g));
    InMux I__1039 (
            .O(N__4647),
            .I(N__4642));
    InMux I__1038 (
            .O(N__4646),
            .I(N__4637));
    InMux I__1037 (
            .O(N__4645),
            .I(N__4637));
    LocalMux I__1036 (
            .O(N__4642),
            .I(counterZ0Z_3));
    LocalMux I__1035 (
            .O(N__4637),
            .I(counterZ0Z_3));
    CascadeMux I__1034 (
            .O(N__4632),
            .I(N__4629));
    InMux I__1033 (
            .O(N__4629),
            .I(N__4624));
    InMux I__1032 (
            .O(N__4628),
            .I(N__4621));
    InMux I__1031 (
            .O(N__4627),
            .I(N__4618));
    LocalMux I__1030 (
            .O(N__4624),
            .I(N__4615));
    LocalMux I__1029 (
            .O(N__4621),
            .I(N__4612));
    LocalMux I__1028 (
            .O(N__4618),
            .I(counterZ0Z_10));
    Odrv4 I__1027 (
            .O(N__4615),
            .I(counterZ0Z_10));
    Odrv4 I__1026 (
            .O(N__4612),
            .I(counterZ0Z_10));
    InMux I__1025 (
            .O(N__4605),
            .I(N__4600));
    InMux I__1024 (
            .O(N__4604),
            .I(N__4597));
    InMux I__1023 (
            .O(N__4603),
            .I(N__4594));
    LocalMux I__1022 (
            .O(N__4600),
            .I(counterZ0Z_2));
    LocalMux I__1021 (
            .O(N__4597),
            .I(counterZ0Z_2));
    LocalMux I__1020 (
            .O(N__4594),
            .I(counterZ0Z_2));
    InMux I__1019 (
            .O(N__4587),
            .I(N__4582));
    InMux I__1018 (
            .O(N__4586),
            .I(N__4579));
    InMux I__1017 (
            .O(N__4585),
            .I(N__4576));
    LocalMux I__1016 (
            .O(N__4582),
            .I(N__4573));
    LocalMux I__1015 (
            .O(N__4579),
            .I(N__4570));
    LocalMux I__1014 (
            .O(N__4576),
            .I(counterZ0Z_16));
    Odrv4 I__1013 (
            .O(N__4573),
            .I(counterZ0Z_16));
    Odrv4 I__1012 (
            .O(N__4570),
            .I(counterZ0Z_16));
    CascadeMux I__1011 (
            .O(N__4563),
            .I(N__4556));
    InMux I__1010 (
            .O(N__4562),
            .I(N__4550));
    CascadeMux I__1009 (
            .O(N__4561),
            .I(N__4546));
    CascadeMux I__1008 (
            .O(N__4560),
            .I(N__4543));
    CascadeMux I__1007 (
            .O(N__4559),
            .I(N__4538));
    InMux I__1006 (
            .O(N__4556),
            .I(N__4532));
    InMux I__1005 (
            .O(N__4555),
            .I(N__4532));
    InMux I__1004 (
            .O(N__4554),
            .I(N__4527));
    InMux I__1003 (
            .O(N__4553),
            .I(N__4527));
    LocalMux I__1002 (
            .O(N__4550),
            .I(N__4524));
    InMux I__1001 (
            .O(N__4549),
            .I(N__4515));
    InMux I__1000 (
            .O(N__4546),
            .I(N__4515));
    InMux I__999 (
            .O(N__4543),
            .I(N__4515));
    InMux I__998 (
            .O(N__4542),
            .I(N__4515));
    InMux I__997 (
            .O(N__4541),
            .I(N__4512));
    InMux I__996 (
            .O(N__4538),
            .I(N__4507));
    InMux I__995 (
            .O(N__4537),
            .I(N__4507));
    LocalMux I__994 (
            .O(N__4532),
            .I(PPM_STATEZ0Z_1));
    LocalMux I__993 (
            .O(N__4527),
            .I(PPM_STATEZ0Z_1));
    Odrv4 I__992 (
            .O(N__4524),
            .I(PPM_STATEZ0Z_1));
    LocalMux I__991 (
            .O(N__4515),
            .I(PPM_STATEZ0Z_1));
    LocalMux I__990 (
            .O(N__4512),
            .I(PPM_STATEZ0Z_1));
    LocalMux I__989 (
            .O(N__4507),
            .I(PPM_STATEZ0Z_1));
    CascadeMux I__988 (
            .O(N__4494),
            .I(N__4491));
    InMux I__987 (
            .O(N__4491),
            .I(N__4488));
    LocalMux I__986 (
            .O(N__4488),
            .I(N__4481));
    InMux I__985 (
            .O(N__4487),
            .I(N__4472));
    InMux I__984 (
            .O(N__4486),
            .I(N__4467));
    InMux I__983 (
            .O(N__4485),
            .I(N__4467));
    InMux I__982 (
            .O(N__4484),
            .I(N__4464));
    Span4Mux_v I__981 (
            .O(N__4481),
            .I(N__4461));
    InMux I__980 (
            .O(N__4480),
            .I(N__4454));
    InMux I__979 (
            .O(N__4479),
            .I(N__4454));
    InMux I__978 (
            .O(N__4478),
            .I(N__4454));
    InMux I__977 (
            .O(N__4477),
            .I(N__4447));
    InMux I__976 (
            .O(N__4476),
            .I(N__4447));
    InMux I__975 (
            .O(N__4475),
            .I(N__4447));
    LocalMux I__974 (
            .O(N__4472),
            .I(PPM_STATEZ0Z_0));
    LocalMux I__973 (
            .O(N__4467),
            .I(PPM_STATEZ0Z_0));
    LocalMux I__972 (
            .O(N__4464),
            .I(PPM_STATEZ0Z_0));
    Odrv4 I__971 (
            .O(N__4461),
            .I(PPM_STATEZ0Z_0));
    LocalMux I__970 (
            .O(N__4454),
            .I(PPM_STATEZ0Z_0));
    LocalMux I__969 (
            .O(N__4447),
            .I(PPM_STATEZ0Z_0));
    InMux I__968 (
            .O(N__4434),
            .I(N__4431));
    LocalMux I__967 (
            .O(N__4431),
            .I(N__4428));
    Span4Mux_v I__966 (
            .O(N__4428),
            .I(N__4425));
    Odrv4 I__965 (
            .O(N__4425),
            .I(PPM_STATE_0_sqmuxa_1_14));
    InMux I__964 (
            .O(N__4422),
            .I(N__4419));
    LocalMux I__963 (
            .O(N__4419),
            .I(PPM_STATE_0_sqmuxa_1_13));
    InMux I__962 (
            .O(N__4416),
            .I(N__4413));
    LocalMux I__961 (
            .O(N__4413),
            .I(PPM_STATE_0_sqmuxa_1_15));
    InMux I__960 (
            .O(N__4410),
            .I(N__4407));
    LocalMux I__959 (
            .O(N__4407),
            .I(N__4402));
    InMux I__958 (
            .O(N__4406),
            .I(N__4399));
    InMux I__957 (
            .O(N__4405),
            .I(N__4396));
    Span4Mux_h I__956 (
            .O(N__4402),
            .I(N__4393));
    LocalMux I__955 (
            .O(N__4399),
            .I(N__4390));
    LocalMux I__954 (
            .O(N__4396),
            .I(N__4387));
    Odrv4 I__953 (
            .O(N__4393),
            .I(PPM_STATE_0_sqmuxa_1));
    Odrv12 I__952 (
            .O(N__4390),
            .I(PPM_STATE_0_sqmuxa_1));
    Odrv4 I__951 (
            .O(N__4387),
            .I(PPM_STATE_0_sqmuxa_1));
    InMux I__950 (
            .O(N__4380),
            .I(N__4376));
    InMux I__949 (
            .O(N__4379),
            .I(N__4373));
    LocalMux I__948 (
            .O(N__4376),
            .I(N__4369));
    LocalMux I__947 (
            .O(N__4373),
            .I(N__4366));
    InMux I__946 (
            .O(N__4372),
            .I(N__4363));
    Span4Mux_h I__945 (
            .O(N__4369),
            .I(N__4356));
    Span4Mux_h I__944 (
            .O(N__4366),
            .I(N__4356));
    LocalMux I__943 (
            .O(N__4363),
            .I(N__4356));
    Odrv4 I__942 (
            .O(N__4356),
            .I(pulses2count39_0));
    CascadeMux I__941 (
            .O(N__4353),
            .I(PPM_STATE_0_sqmuxa_1_cascade_));
    InMux I__940 (
            .O(N__4350),
            .I(N__4345));
    InMux I__939 (
            .O(N__4349),
            .I(N__4341));
    InMux I__938 (
            .O(N__4348),
            .I(N__4338));
    LocalMux I__937 (
            .O(N__4345),
            .I(N__4335));
    InMux I__936 (
            .O(N__4344),
            .I(N__4331));
    LocalMux I__935 (
            .O(N__4341),
            .I(N__4328));
    LocalMux I__934 (
            .O(N__4338),
            .I(N__4325));
    Span4Mux_h I__933 (
            .O(N__4335),
            .I(N__4322));
    InMux I__932 (
            .O(N__4334),
            .I(N__4319));
    LocalMux I__931 (
            .O(N__4331),
            .I(counter11_0_N_2_THRU_CO));
    Odrv4 I__930 (
            .O(N__4328),
            .I(counter11_0_N_2_THRU_CO));
    Odrv4 I__929 (
            .O(N__4325),
            .I(counter11_0_N_2_THRU_CO));
    Odrv4 I__928 (
            .O(N__4322),
            .I(counter11_0_N_2_THRU_CO));
    LocalMux I__927 (
            .O(N__4319),
            .I(counter11_0_N_2_THRU_CO));
    IoInMux I__926 (
            .O(N__4308),
            .I(N__4305));
    LocalMux I__925 (
            .O(N__4305),
            .I(N__4302));
    Odrv12 I__924 (
            .O(N__4302),
            .I(un1_PPM_STATE_0_sqmuxa_0_i));
    InMux I__923 (
            .O(N__4299),
            .I(N__4294));
    InMux I__922 (
            .O(N__4298),
            .I(N__4291));
    InMux I__921 (
            .O(N__4297),
            .I(N__4288));
    LocalMux I__920 (
            .O(N__4294),
            .I(N__4285));
    LocalMux I__919 (
            .O(N__4291),
            .I(counterZ0Z_6));
    LocalMux I__918 (
            .O(N__4288),
            .I(counterZ0Z_6));
    Odrv12 I__917 (
            .O(N__4285),
            .I(counterZ0Z_6));
    InMux I__916 (
            .O(N__4278),
            .I(N__4273));
    InMux I__915 (
            .O(N__4277),
            .I(N__4270));
    InMux I__914 (
            .O(N__4276),
            .I(N__4267));
    LocalMux I__913 (
            .O(N__4273),
            .I(counterZ0Z_0));
    LocalMux I__912 (
            .O(N__4270),
            .I(counterZ0Z_0));
    LocalMux I__911 (
            .O(N__4267),
            .I(counterZ0Z_0));
    InMux I__910 (
            .O(N__4260),
            .I(N__4255));
    InMux I__909 (
            .O(N__4259),
            .I(N__4252));
    InMux I__908 (
            .O(N__4258),
            .I(N__4249));
    LocalMux I__907 (
            .O(N__4255),
            .I(N__4246));
    LocalMux I__906 (
            .O(N__4252),
            .I(counterZ0Z_11));
    LocalMux I__905 (
            .O(N__4249),
            .I(counterZ0Z_11));
    Odrv4 I__904 (
            .O(N__4246),
            .I(counterZ0Z_11));
    InMux I__903 (
            .O(N__4239),
            .I(N__4234));
    InMux I__902 (
            .O(N__4238),
            .I(N__4231));
    InMux I__901 (
            .O(N__4237),
            .I(N__4228));
    LocalMux I__900 (
            .O(N__4234),
            .I(N__4225));
    LocalMux I__899 (
            .O(N__4231),
            .I(counterZ0Z_7));
    LocalMux I__898 (
            .O(N__4228),
            .I(counterZ0Z_7));
    Odrv12 I__897 (
            .O(N__4225),
            .I(counterZ0Z_7));
    InMux I__896 (
            .O(N__4218),
            .I(N__4213));
    InMux I__895 (
            .O(N__4217),
            .I(N__4210));
    InMux I__894 (
            .O(N__4216),
            .I(N__4207));
    LocalMux I__893 (
            .O(N__4213),
            .I(N__4204));
    LocalMux I__892 (
            .O(N__4210),
            .I(counterZ0Z_15));
    LocalMux I__891 (
            .O(N__4207),
            .I(counterZ0Z_15));
    Odrv4 I__890 (
            .O(N__4204),
            .I(counterZ0Z_15));
    CascadeMux I__889 (
            .O(N__4197),
            .I(PPM_STATE_0_sqmuxa_1_12_cascade_));
    CascadeMux I__888 (
            .O(N__4194),
            .I(N__4191));
    InMux I__887 (
            .O(N__4191),
            .I(N__4188));
    LocalMux I__886 (
            .O(N__4188),
            .I(N__4185));
    Odrv4 I__885 (
            .O(N__4185),
            .I(PPM_STATE_0_sqmuxa_1_16));
    InMux I__884 (
            .O(N__4182),
            .I(N__4179));
    LocalMux I__883 (
            .O(N__4179),
            .I(PPM_STATE_0_sqmuxa_1_2));
    InMux I__882 (
            .O(N__4176),
            .I(N__4171));
    InMux I__881 (
            .O(N__4175),
            .I(N__4166));
    InMux I__880 (
            .O(N__4174),
            .I(N__4166));
    LocalMux I__879 (
            .O(N__4171),
            .I(counterZ0Z_5));
    LocalMux I__878 (
            .O(N__4166),
            .I(counterZ0Z_5));
    CascadeMux I__877 (
            .O(N__4161),
            .I(N__4158));
    InMux I__876 (
            .O(N__4158),
            .I(N__4155));
    LocalMux I__875 (
            .O(N__4155),
            .I(pulses2countZ0Z_5));
    CascadeMux I__874 (
            .O(N__4152),
            .I(N__4148));
    InMux I__873 (
            .O(N__4151),
            .I(N__4144));
    InMux I__872 (
            .O(N__4148),
            .I(N__4139));
    InMux I__871 (
            .O(N__4147),
            .I(N__4139));
    LocalMux I__870 (
            .O(N__4144),
            .I(counterZ0Z_4));
    LocalMux I__869 (
            .O(N__4139),
            .I(counterZ0Z_4));
    CascadeMux I__868 (
            .O(N__4134),
            .I(N__4131));
    InMux I__867 (
            .O(N__4131),
            .I(N__4128));
    LocalMux I__866 (
            .O(N__4128),
            .I(N__4125));
    Odrv4 I__865 (
            .O(N__4125),
            .I(counter11_0_I_15_c_RNOZ0));
    CascadeMux I__864 (
            .O(N__4122),
            .I(N__4119));
    InMux I__863 (
            .O(N__4119),
            .I(N__4111));
    InMux I__862 (
            .O(N__4118),
            .I(N__4111));
    CascadeMux I__861 (
            .O(N__4117),
            .I(N__4106));
    CascadeMux I__860 (
            .O(N__4116),
            .I(N__4102));
    LocalMux I__859 (
            .O(N__4111),
            .I(N__4097));
    InMux I__858 (
            .O(N__4110),
            .I(N__4088));
    InMux I__857 (
            .O(N__4109),
            .I(N__4088));
    InMux I__856 (
            .O(N__4106),
            .I(N__4088));
    InMux I__855 (
            .O(N__4105),
            .I(N__4088));
    InMux I__854 (
            .O(N__4102),
            .I(N__4081));
    InMux I__853 (
            .O(N__4101),
            .I(N__4081));
    InMux I__852 (
            .O(N__4100),
            .I(N__4081));
    Odrv4 I__851 (
            .O(N__4097),
            .I(CONSTANT_ONE_NET));
    LocalMux I__850 (
            .O(N__4088),
            .I(CONSTANT_ONE_NET));
    LocalMux I__849 (
            .O(N__4081),
            .I(CONSTANT_ONE_NET));
    InMux I__848 (
            .O(N__4074),
            .I(N__4071));
    LocalMux I__847 (
            .O(N__4071),
            .I(N__4068));
    Span4Mux_h I__846 (
            .O(N__4068),
            .I(N__4064));
    InMux I__845 (
            .O(N__4067),
            .I(N__4061));
    Odrv4 I__844 (
            .O(N__4064),
            .I(init_pulsesZ0Z_3));
    LocalMux I__843 (
            .O(N__4061),
            .I(init_pulsesZ0Z_3));
    CascadeMux I__842 (
            .O(N__4056),
            .I(N__4053));
    InMux I__841 (
            .O(N__4053),
            .I(N__4050));
    LocalMux I__840 (
            .O(N__4050),
            .I(N__4047));
    Span4Mux_h I__839 (
            .O(N__4047),
            .I(N__4043));
    InMux I__838 (
            .O(N__4046),
            .I(N__4040));
    Odrv4 I__837 (
            .O(N__4043),
            .I(init_pulsesZ0Z_1));
    LocalMux I__836 (
            .O(N__4040),
            .I(init_pulsesZ0Z_1));
    InMux I__835 (
            .O(N__4035),
            .I(N__4032));
    LocalMux I__834 (
            .O(N__4032),
            .I(pulses2countZ0Z_1));
    InMux I__833 (
            .O(N__4029),
            .I(N__4026));
    LocalMux I__832 (
            .O(N__4026),
            .I(N__4023));
    Span4Mux_h I__831 (
            .O(N__4023),
            .I(N__4019));
    InMux I__830 (
            .O(N__4022),
            .I(N__4016));
    Odrv4 I__829 (
            .O(N__4019),
            .I(init_pulsesZ0Z_12));
    LocalMux I__828 (
            .O(N__4016),
            .I(init_pulsesZ0Z_12));
    CascadeMux I__827 (
            .O(N__4011),
            .I(N__4008));
    InMux I__826 (
            .O(N__4008),
            .I(N__4005));
    LocalMux I__825 (
            .O(N__4005),
            .I(pulses2countZ0Z_12));
    InMux I__824 (
            .O(N__4002),
            .I(N__3999));
    LocalMux I__823 (
            .O(N__3999),
            .I(N__3996));
    Span4Mux_v I__822 (
            .O(N__3996),
            .I(N__3992));
    InMux I__821 (
            .O(N__3995),
            .I(N__3989));
    Odrv4 I__820 (
            .O(N__3992),
            .I(init_pulsesZ0Z_16));
    LocalMux I__819 (
            .O(N__3989),
            .I(init_pulsesZ0Z_16));
    CascadeMux I__818 (
            .O(N__3984),
            .I(N__3981));
    InMux I__817 (
            .O(N__3981),
            .I(N__3978));
    LocalMux I__816 (
            .O(N__3978),
            .I(pulses2countZ0Z_16));
    InMux I__815 (
            .O(N__3975),
            .I(N__3963));
    InMux I__814 (
            .O(N__3974),
            .I(N__3963));
    InMux I__813 (
            .O(N__3973),
            .I(N__3963));
    InMux I__812 (
            .O(N__3972),
            .I(N__3963));
    LocalMux I__811 (
            .O(N__3963),
            .I(N__3960));
    Span4Mux_h I__810 (
            .O(N__3960),
            .I(N__3957));
    Odrv4 I__809 (
            .O(N__3957),
            .I(init_pulses39_0));
    CascadeMux I__808 (
            .O(N__3954),
            .I(N__3949));
    CascadeMux I__807 (
            .O(N__3953),
            .I(N__3946));
    CascadeMux I__806 (
            .O(N__3952),
            .I(N__3942));
    InMux I__805 (
            .O(N__3949),
            .I(N__3933));
    InMux I__804 (
            .O(N__3946),
            .I(N__3933));
    InMux I__803 (
            .O(N__3945),
            .I(N__3933));
    InMux I__802 (
            .O(N__3942),
            .I(N__3933));
    LocalMux I__801 (
            .O(N__3933),
            .I(un1_init_pulses39_2_0_0));
    InMux I__800 (
            .O(N__3930),
            .I(N__3927));
    LocalMux I__799 (
            .O(N__3927),
            .I(N__3924));
    Span4Mux_h I__798 (
            .O(N__3924),
            .I(N__3920));
    InMux I__797 (
            .O(N__3923),
            .I(N__3917));
    Odrv4 I__796 (
            .O(N__3920),
            .I(init_pulsesZ0Z_2));
    LocalMux I__795 (
            .O(N__3917),
            .I(init_pulsesZ0Z_2));
    InMux I__794 (
            .O(N__3912),
            .I(N__3909));
    LocalMux I__793 (
            .O(N__3909),
            .I(pulses2countZ0Z_2));
    CascadeMux I__792 (
            .O(N__3906),
            .I(N__3903));
    InMux I__791 (
            .O(N__3903),
            .I(N__3900));
    LocalMux I__790 (
            .O(N__3900),
            .I(pulses2countZ0Z_3));
    CascadeMux I__789 (
            .O(N__3897),
            .I(N__3894));
    InMux I__788 (
            .O(N__3894),
            .I(N__3891));
    LocalMux I__787 (
            .O(N__3891),
            .I(counter11_0_I_9_c_RNOZ0));
    InMux I__786 (
            .O(N__3888),
            .I(N__3885));
    LocalMux I__785 (
            .O(N__3885),
            .I(N__3882));
    Span4Mux_v I__784 (
            .O(N__3882),
            .I(N__3878));
    InMux I__783 (
            .O(N__3881),
            .I(N__3875));
    Odrv4 I__782 (
            .O(N__3878),
            .I(init_pulsesZ0Z_5));
    LocalMux I__781 (
            .O(N__3875),
            .I(init_pulsesZ0Z_5));
    InMux I__780 (
            .O(N__3870),
            .I(N__3867));
    LocalMux I__779 (
            .O(N__3867),
            .I(N_43));
    IoInMux I__778 (
            .O(N__3864),
            .I(N__3861));
    LocalMux I__777 (
            .O(N__3861),
            .I(N__3858));
    Span12Mux_s9_v I__776 (
            .O(N__3858),
            .I(N__3855));
    Odrv12 I__775 (
            .O(N__3855),
            .I(N_30_i));
    CascadeMux I__774 (
            .O(N__3852),
            .I(N__3845));
    InMux I__773 (
            .O(N__3851),
            .I(N__3842));
    InMux I__772 (
            .O(N__3850),
            .I(N__3839));
    InMux I__771 (
            .O(N__3849),
            .I(N__3836));
    InMux I__770 (
            .O(N__3848),
            .I(N__3831));
    InMux I__769 (
            .O(N__3845),
            .I(N__3831));
    LocalMux I__768 (
            .O(N__3842),
            .I(CHOOSE_CHANNEL_fastZ0Z_1));
    LocalMux I__767 (
            .O(N__3839),
            .I(CHOOSE_CHANNEL_fastZ0Z_1));
    LocalMux I__766 (
            .O(N__3836),
            .I(CHOOSE_CHANNEL_fastZ0Z_1));
    LocalMux I__765 (
            .O(N__3831),
            .I(CHOOSE_CHANNEL_fastZ0Z_1));
    InMux I__764 (
            .O(N__3822),
            .I(N__3815));
    InMux I__763 (
            .O(N__3821),
            .I(N__3812));
    InMux I__762 (
            .O(N__3820),
            .I(N__3805));
    InMux I__761 (
            .O(N__3819),
            .I(N__3805));
    InMux I__760 (
            .O(N__3818),
            .I(N__3805));
    LocalMux I__759 (
            .O(N__3815),
            .I(CHOOSE_CHANNEL_fastZ0Z_0));
    LocalMux I__758 (
            .O(N__3812),
            .I(CHOOSE_CHANNEL_fastZ0Z_0));
    LocalMux I__757 (
            .O(N__3805),
            .I(CHOOSE_CHANNEL_fastZ0Z_0));
    CascadeMux I__756 (
            .O(N__3798),
            .I(N__3792));
    CascadeMux I__755 (
            .O(N__3797),
            .I(N__3789));
    InMux I__754 (
            .O(N__3796),
            .I(N__3785));
    InMux I__753 (
            .O(N__3795),
            .I(N__3782));
    InMux I__752 (
            .O(N__3792),
            .I(N__3779));
    InMux I__751 (
            .O(N__3789),
            .I(N__3774));
    InMux I__750 (
            .O(N__3788),
            .I(N__3774));
    LocalMux I__749 (
            .O(N__3785),
            .I(CHOOSE_CHANNEL_fastZ0Z_3));
    LocalMux I__748 (
            .O(N__3782),
            .I(CHOOSE_CHANNEL_fastZ0Z_3));
    LocalMux I__747 (
            .O(N__3779),
            .I(CHOOSE_CHANNEL_fastZ0Z_3));
    LocalMux I__746 (
            .O(N__3774),
            .I(CHOOSE_CHANNEL_fastZ0Z_3));
    CascadeMux I__745 (
            .O(N__3765),
            .I(N__3760));
    InMux I__744 (
            .O(N__3764),
            .I(N__3755));
    InMux I__743 (
            .O(N__3763),
            .I(N__3752));
    InMux I__742 (
            .O(N__3760),
            .I(N__3745));
    InMux I__741 (
            .O(N__3759),
            .I(N__3745));
    InMux I__740 (
            .O(N__3758),
            .I(N__3745));
    LocalMux I__739 (
            .O(N__3755),
            .I(CHOOSE_CHANNEL_fastZ0Z_2));
    LocalMux I__738 (
            .O(N__3752),
            .I(CHOOSE_CHANNEL_fastZ0Z_2));
    LocalMux I__737 (
            .O(N__3745),
            .I(CHOOSE_CHANNEL_fastZ0Z_2));
    SRMux I__736 (
            .O(N__3738),
            .I(N__3735));
    LocalMux I__735 (
            .O(N__3735),
            .I(N__3732));
    Span4Mux_h I__734 (
            .O(N__3732),
            .I(N__3729));
    Odrv4 I__733 (
            .O(N__3729),
            .I(N_15_i));
    CascadeMux I__732 (
            .O(N__3726),
            .I(N__3723));
    InMux I__731 (
            .O(N__3723),
            .I(N__3720));
    LocalMux I__730 (
            .O(N__3720),
            .I(PPM_STATE_e_1_0));
    CascadeMux I__729 (
            .O(N__3717),
            .I(N__3709));
    InMux I__728 (
            .O(N__3716),
            .I(N__3705));
    InMux I__727 (
            .O(N__3715),
            .I(N__3700));
    InMux I__726 (
            .O(N__3714),
            .I(N__3697));
    InMux I__725 (
            .O(N__3713),
            .I(N__3690));
    InMux I__724 (
            .O(N__3712),
            .I(N__3690));
    InMux I__723 (
            .O(N__3709),
            .I(N__3685));
    InMux I__722 (
            .O(N__3708),
            .I(N__3685));
    LocalMux I__721 (
            .O(N__3705),
            .I(N__3682));
    InMux I__720 (
            .O(N__3704),
            .I(N__3679));
    InMux I__719 (
            .O(N__3703),
            .I(N__3676));
    LocalMux I__718 (
            .O(N__3700),
            .I(N__3671));
    LocalMux I__717 (
            .O(N__3697),
            .I(N__3671));
    InMux I__716 (
            .O(N__3696),
            .I(N__3668));
    InMux I__715 (
            .O(N__3695),
            .I(N__3665));
    LocalMux I__714 (
            .O(N__3690),
            .I(N__3658));
    LocalMux I__713 (
            .O(N__3685),
            .I(N__3658));
    Span4Mux_v I__712 (
            .O(N__3682),
            .I(N__3658));
    LocalMux I__711 (
            .O(N__3679),
            .I(N__3655));
    LocalMux I__710 (
            .O(N__3676),
            .I(N__3652));
    Span4Mux_v I__709 (
            .O(N__3671),
            .I(N__3647));
    LocalMux I__708 (
            .O(N__3668),
            .I(N__3647));
    LocalMux I__707 (
            .O(N__3665),
            .I(CHOOSE_CHANNELZ0Z_2));
    Odrv4 I__706 (
            .O(N__3658),
            .I(CHOOSE_CHANNELZ0Z_2));
    Odrv12 I__705 (
            .O(N__3655),
            .I(CHOOSE_CHANNELZ0Z_2));
    Odrv4 I__704 (
            .O(N__3652),
            .I(CHOOSE_CHANNELZ0Z_2));
    Odrv4 I__703 (
            .O(N__3647),
            .I(CHOOSE_CHANNELZ0Z_2));
    InMux I__702 (
            .O(N__3636),
            .I(N__3626));
    InMux I__701 (
            .O(N__3635),
            .I(N__3626));
    CascadeMux I__700 (
            .O(N__3634),
            .I(N__3623));
    InMux I__699 (
            .O(N__3633),
            .I(N__3618));
    InMux I__698 (
            .O(N__3632),
            .I(N__3615));
    InMux I__697 (
            .O(N__3631),
            .I(N__3612));
    LocalMux I__696 (
            .O(N__3626),
            .I(N__3607));
    InMux I__695 (
            .O(N__3623),
            .I(N__3602));
    InMux I__694 (
            .O(N__3622),
            .I(N__3602));
    InMux I__693 (
            .O(N__3621),
            .I(N__3599));
    LocalMux I__692 (
            .O(N__3618),
            .I(N__3594));
    LocalMux I__691 (
            .O(N__3615),
            .I(N__3594));
    LocalMux I__690 (
            .O(N__3612),
            .I(N__3591));
    InMux I__689 (
            .O(N__3611),
            .I(N__3588));
    InMux I__688 (
            .O(N__3610),
            .I(N__3584));
    Span4Mux_h I__687 (
            .O(N__3607),
            .I(N__3575));
    LocalMux I__686 (
            .O(N__3602),
            .I(N__3575));
    LocalMux I__685 (
            .O(N__3599),
            .I(N__3575));
    Span4Mux_v I__684 (
            .O(N__3594),
            .I(N__3575));
    Span4Mux_v I__683 (
            .O(N__3591),
            .I(N__3572));
    LocalMux I__682 (
            .O(N__3588),
            .I(N__3569));
    InMux I__681 (
            .O(N__3587),
            .I(N__3566));
    LocalMux I__680 (
            .O(N__3584),
            .I(N__3563));
    Odrv4 I__679 (
            .O(N__3575),
            .I(CHOOSE_CHANNELZ0Z_1));
    Odrv4 I__678 (
            .O(N__3572),
            .I(CHOOSE_CHANNELZ0Z_1));
    Odrv12 I__677 (
            .O(N__3569),
            .I(CHOOSE_CHANNELZ0Z_1));
    LocalMux I__676 (
            .O(N__3566),
            .I(CHOOSE_CHANNELZ0Z_1));
    Odrv4 I__675 (
            .O(N__3563),
            .I(CHOOSE_CHANNELZ0Z_1));
    CascadeMux I__674 (
            .O(N__3552),
            .I(N__3547));
    CascadeMux I__673 (
            .O(N__3551),
            .I(N__3542));
    CascadeMux I__672 (
            .O(N__3550),
            .I(N__3538));
    InMux I__671 (
            .O(N__3547),
            .I(N__3534));
    CascadeMux I__670 (
            .O(N__3546),
            .I(N__3531));
    CascadeMux I__669 (
            .O(N__3545),
            .I(N__3528));
    InMux I__668 (
            .O(N__3542),
            .I(N__3524));
    CascadeMux I__667 (
            .O(N__3541),
            .I(N__3520));
    InMux I__666 (
            .O(N__3538),
            .I(N__3514));
    InMux I__665 (
            .O(N__3537),
            .I(N__3514));
    LocalMux I__664 (
            .O(N__3534),
            .I(N__3511));
    InMux I__663 (
            .O(N__3531),
            .I(N__3508));
    InMux I__662 (
            .O(N__3528),
            .I(N__3505));
    InMux I__661 (
            .O(N__3527),
            .I(N__3502));
    LocalMux I__660 (
            .O(N__3524),
            .I(N__3499));
    InMux I__659 (
            .O(N__3523),
            .I(N__3494));
    InMux I__658 (
            .O(N__3520),
            .I(N__3494));
    InMux I__657 (
            .O(N__3519),
            .I(N__3491));
    LocalMux I__656 (
            .O(N__3514),
            .I(N__3488));
    Span4Mux_h I__655 (
            .O(N__3511),
            .I(N__3481));
    LocalMux I__654 (
            .O(N__3508),
            .I(N__3481));
    LocalMux I__653 (
            .O(N__3505),
            .I(N__3481));
    LocalMux I__652 (
            .O(N__3502),
            .I(N__3478));
    Span4Mux_h I__651 (
            .O(N__3499),
            .I(N__3475));
    LocalMux I__650 (
            .O(N__3494),
            .I(CHOOSE_CHANNELZ0Z_3));
    LocalMux I__649 (
            .O(N__3491),
            .I(CHOOSE_CHANNELZ0Z_3));
    Odrv12 I__648 (
            .O(N__3488),
            .I(CHOOSE_CHANNELZ0Z_3));
    Odrv4 I__647 (
            .O(N__3481),
            .I(CHOOSE_CHANNELZ0Z_3));
    Odrv4 I__646 (
            .O(N__3478),
            .I(CHOOSE_CHANNELZ0Z_3));
    Odrv4 I__645 (
            .O(N__3475),
            .I(CHOOSE_CHANNELZ0Z_3));
    InMux I__644 (
            .O(N__3462),
            .I(N__3458));
    InMux I__643 (
            .O(N__3461),
            .I(N__3452));
    LocalMux I__642 (
            .O(N__3458),
            .I(N__3446));
    InMux I__641 (
            .O(N__3457),
            .I(N__3441));
    InMux I__640 (
            .O(N__3456),
            .I(N__3441));
    InMux I__639 (
            .O(N__3455),
            .I(N__3438));
    LocalMux I__638 (
            .O(N__3452),
            .I(N__3430));
    InMux I__637 (
            .O(N__3451),
            .I(N__3427));
    InMux I__636 (
            .O(N__3450),
            .I(N__3424));
    InMux I__635 (
            .O(N__3449),
            .I(N__3421));
    Span4Mux_v I__634 (
            .O(N__3446),
            .I(N__3414));
    LocalMux I__633 (
            .O(N__3441),
            .I(N__3414));
    LocalMux I__632 (
            .O(N__3438),
            .I(N__3414));
    InMux I__631 (
            .O(N__3437),
            .I(N__3409));
    InMux I__630 (
            .O(N__3436),
            .I(N__3409));
    InMux I__629 (
            .O(N__3435),
            .I(N__3404));
    InMux I__628 (
            .O(N__3434),
            .I(N__3404));
    InMux I__627 (
            .O(N__3433),
            .I(N__3401));
    Span4Mux_h I__626 (
            .O(N__3430),
            .I(N__3392));
    LocalMux I__625 (
            .O(N__3427),
            .I(N__3392));
    LocalMux I__624 (
            .O(N__3424),
            .I(N__3392));
    LocalMux I__623 (
            .O(N__3421),
            .I(N__3392));
    Odrv4 I__622 (
            .O(N__3414),
            .I(CHOOSE_CHANNELZ0Z_0));
    LocalMux I__621 (
            .O(N__3409),
            .I(CHOOSE_CHANNELZ0Z_0));
    LocalMux I__620 (
            .O(N__3404),
            .I(CHOOSE_CHANNELZ0Z_0));
    LocalMux I__619 (
            .O(N__3401),
            .I(CHOOSE_CHANNELZ0Z_0));
    Odrv4 I__618 (
            .O(N__3392),
            .I(CHOOSE_CHANNELZ0Z_0));
    InMux I__617 (
            .O(N__3381),
            .I(un1_counter_13_cry_11));
    InMux I__616 (
            .O(N__3378),
            .I(un1_counter_13_cry_12));
    InMux I__615 (
            .O(N__3375),
            .I(un1_counter_13_cry_13));
    InMux I__614 (
            .O(N__3372),
            .I(un1_counter_13_cry_14));
    InMux I__613 (
            .O(N__3369),
            .I(bfn_11_28_0_));
    InMux I__612 (
            .O(N__3366),
            .I(un1_counter_13_cry_16));
    InMux I__611 (
            .O(N__3363),
            .I(un1_counter_13_cry_17));
    SRMux I__610 (
            .O(N__3360),
            .I(N__3351));
    SRMux I__609 (
            .O(N__3359),
            .I(N__3351));
    SRMux I__608 (
            .O(N__3358),
            .I(N__3351));
    GlobalMux I__607 (
            .O(N__3351),
            .I(N__3348));
    gio2CtrlBuf I__606 (
            .O(N__3348),
            .I(un1_PPM_STATE_0_sqmuxa_0_i_g));
    InMux I__605 (
            .O(N__3345),
            .I(N__3340));
    InMux I__604 (
            .O(N__3344),
            .I(N__3337));
    InMux I__603 (
            .O(N__3343),
            .I(N__3334));
    LocalMux I__602 (
            .O(N__3340),
            .I(N__3331));
    LocalMux I__601 (
            .O(N__3337),
            .I(N__3328));
    LocalMux I__600 (
            .O(N__3334),
            .I(counterZ0Z_17));
    Odrv4 I__599 (
            .O(N__3331),
            .I(counterZ0Z_17));
    Odrv4 I__598 (
            .O(N__3328),
            .I(counterZ0Z_17));
    InMux I__597 (
            .O(N__3321),
            .I(N__3316));
    InMux I__596 (
            .O(N__3320),
            .I(N__3313));
    InMux I__595 (
            .O(N__3319),
            .I(N__3310));
    LocalMux I__594 (
            .O(N__3316),
            .I(N__3307));
    LocalMux I__593 (
            .O(N__3313),
            .I(N__3304));
    LocalMux I__592 (
            .O(N__3310),
            .I(counterZ0Z_14));
    Odrv4 I__591 (
            .O(N__3307),
            .I(counterZ0Z_14));
    Odrv4 I__590 (
            .O(N__3304),
            .I(counterZ0Z_14));
    InMux I__589 (
            .O(N__3297),
            .I(N__3293));
    InMux I__588 (
            .O(N__3296),
            .I(N__3289));
    LocalMux I__587 (
            .O(N__3293),
            .I(N__3286));
    InMux I__586 (
            .O(N__3292),
            .I(N__3283));
    LocalMux I__585 (
            .O(N__3289),
            .I(counterZ0Z_1));
    Odrv12 I__584 (
            .O(N__3286),
            .I(counterZ0Z_1));
    LocalMux I__583 (
            .O(N__3283),
            .I(counterZ0Z_1));
    InMux I__582 (
            .O(N__3276),
            .I(un1_counter_13_cry_1));
    InMux I__581 (
            .O(N__3273),
            .I(un1_counter_13_cry_2));
    InMux I__580 (
            .O(N__3270),
            .I(un1_counter_13_cry_3));
    InMux I__579 (
            .O(N__3267),
            .I(un1_counter_13_cry_4));
    InMux I__578 (
            .O(N__3264),
            .I(un1_counter_13_cry_5));
    InMux I__577 (
            .O(N__3261),
            .I(un1_counter_13_cry_6));
    InMux I__576 (
            .O(N__3258),
            .I(bfn_11_27_0_));
    InMux I__575 (
            .O(N__3255),
            .I(un1_counter_13_cry_8));
    InMux I__574 (
            .O(N__3252),
            .I(un1_counter_13_cry_9));
    InMux I__573 (
            .O(N__3249),
            .I(un1_counter_13_cry_10));
    InMux I__572 (
            .O(N__3246),
            .I(counter11_0_N_2));
    CascadeMux I__571 (
            .O(N__3243),
            .I(N__3240));
    InMux I__570 (
            .O(N__3240),
            .I(N__3237));
    LocalMux I__569 (
            .O(N__3237),
            .I(pulses2countZ0Z_0));
    CascadeMux I__568 (
            .O(N__3234),
            .I(N__3231));
    InMux I__567 (
            .O(N__3231),
            .I(N__3228));
    LocalMux I__566 (
            .O(N__3228),
            .I(counter11_0_I_1_c_RNOZ0));
    CascadeMux I__565 (
            .O(N__3225),
            .I(N__3222));
    InMux I__564 (
            .O(N__3222),
            .I(N__3219));
    LocalMux I__563 (
            .O(N__3219),
            .I(pulses2countZ0Z_10));
    InMux I__562 (
            .O(N__3216),
            .I(N__3213));
    LocalMux I__561 (
            .O(N__3213),
            .I(pulses2countZ0Z_11));
    CascadeMux I__560 (
            .O(N__3210),
            .I(N__3207));
    InMux I__559 (
            .O(N__3207),
            .I(N__3204));
    LocalMux I__558 (
            .O(N__3204),
            .I(counter11_0_I_33_c_RNOZ0));
    InMux I__557 (
            .O(N__3201),
            .I(N__3198));
    LocalMux I__556 (
            .O(N__3198),
            .I(pulses2countZ0Z_13));
    CascadeMux I__555 (
            .O(N__3195),
            .I(N__3192));
    InMux I__554 (
            .O(N__3192),
            .I(N__3189));
    LocalMux I__553 (
            .O(N__3189),
            .I(counter11_0_I_39_c_RNOZ0));
    InMux I__552 (
            .O(N__3186),
            .I(N__3183));
    LocalMux I__551 (
            .O(N__3183),
            .I(pulses2countZ0Z_17));
    CascadeMux I__550 (
            .O(N__3180),
            .I(N__3177));
    InMux I__549 (
            .O(N__3177),
            .I(N__3174));
    LocalMux I__548 (
            .O(N__3174),
            .I(counter11_0_I_51_c_RNOZ0));
    InMux I__547 (
            .O(N__3171),
            .I(N__3167));
    CascadeMux I__546 (
            .O(N__3170),
            .I(N__3164));
    LocalMux I__545 (
            .O(N__3167),
            .I(N__3161));
    InMux I__544 (
            .O(N__3164),
            .I(N__3158));
    Span4Mux_v I__543 (
            .O(N__3161),
            .I(N__3155));
    LocalMux I__542 (
            .O(N__3158),
            .I(N__3152));
    Odrv4 I__541 (
            .O(N__3155),
            .I(N_36_i));
    Odrv12 I__540 (
            .O(N__3152),
            .I(N_36_i));
    InMux I__539 (
            .O(N__3147),
            .I(un1_counter_13_cry_0));
    CascadeMux I__538 (
            .O(N__3144),
            .I(N__3141));
    InMux I__537 (
            .O(N__3141),
            .I(N__3138));
    LocalMux I__536 (
            .O(N__3138),
            .I(counter11_0_I_21_c_RNOZ0));
    InMux I__535 (
            .O(N__3135),
            .I(N__3132));
    LocalMux I__534 (
            .O(N__3132),
            .I(counter11_0_I_45_c_RNOZ0));
    CascadeMux I__533 (
            .O(N__3129),
            .I(N_43_cascade_));
    CascadeMux I__532 (
            .O(N__3126),
            .I(un15_0_i_0_0_cascade_));
    CascadeMux I__531 (
            .O(N__3123),
            .I(N__3120));
    InMux I__530 (
            .O(N__3120),
            .I(N__3117));
    LocalMux I__529 (
            .O(N__3117),
            .I(CHOOSE_CHANNEL_fast_RNIPSOR8_0Z0Z_2));
    InMux I__528 (
            .O(N__3114),
            .I(N__3110));
    InMux I__527 (
            .O(N__3113),
            .I(N__3107));
    LocalMux I__526 (
            .O(N__3110),
            .I(un15_0_12));
    LocalMux I__525 (
            .O(N__3107),
            .I(un15_0_12));
    InMux I__524 (
            .O(N__3102),
            .I(N__3095));
    InMux I__523 (
            .O(N__3101),
            .I(N__3095));
    InMux I__522 (
            .O(N__3100),
            .I(N__3092));
    LocalMux I__521 (
            .O(N__3095),
            .I(un15_0_i_0_0));
    LocalMux I__520 (
            .O(N__3092),
            .I(un15_0_i_0_0));
    CascadeMux I__519 (
            .O(N__3087),
            .I(N__3084));
    InMux I__518 (
            .O(N__3084),
            .I(N__3081));
    LocalMux I__517 (
            .O(N__3081),
            .I(CHOOSE_CHANNEL_fast_RNIPSOR8Z0Z_2));
    CascadeMux I__516 (
            .O(N__3078),
            .I(PPM_STATE_r_1_1_cascade_));
    CascadeMux I__515 (
            .O(N__3075),
            .I(N__3066));
    CascadeMux I__514 (
            .O(N__3074),
            .I(N__3063));
    CascadeMux I__513 (
            .O(N__3073),
            .I(N__3058));
    CascadeMux I__512 (
            .O(N__3072),
            .I(N__3055));
    CascadeMux I__511 (
            .O(N__3071),
            .I(N__3052));
    CascadeMux I__510 (
            .O(N__3070),
            .I(N__3042));
    CascadeMux I__509 (
            .O(N__3069),
            .I(N__3039));
    InMux I__508 (
            .O(N__3066),
            .I(N__3033));
    InMux I__507 (
            .O(N__3063),
            .I(N__3033));
    CascadeMux I__506 (
            .O(N__3062),
            .I(N__3030));
    CascadeMux I__505 (
            .O(N__3061),
            .I(N__3027));
    InMux I__504 (
            .O(N__3058),
            .I(N__3010));
    InMux I__503 (
            .O(N__3055),
            .I(N__3010));
    InMux I__502 (
            .O(N__3052),
            .I(N__3010));
    InMux I__501 (
            .O(N__3051),
            .I(N__3010));
    InMux I__500 (
            .O(N__3050),
            .I(N__3010));
    InMux I__499 (
            .O(N__3049),
            .I(N__3010));
    InMux I__498 (
            .O(N__3048),
            .I(N__3010));
    InMux I__497 (
            .O(N__3047),
            .I(N__3003));
    InMux I__496 (
            .O(N__3046),
            .I(N__3003));
    InMux I__495 (
            .O(N__3045),
            .I(N__3003));
    InMux I__494 (
            .O(N__3042),
            .I(N__2996));
    InMux I__493 (
            .O(N__3039),
            .I(N__2996));
    InMux I__492 (
            .O(N__3038),
            .I(N__2996));
    LocalMux I__491 (
            .O(N__3033),
            .I(N__2993));
    InMux I__490 (
            .O(N__3030),
            .I(N__2986));
    InMux I__489 (
            .O(N__3027),
            .I(N__2986));
    InMux I__488 (
            .O(N__3026),
            .I(N__2986));
    InMux I__487 (
            .O(N__3025),
            .I(N__2983));
    LocalMux I__486 (
            .O(N__3010),
            .I(N__2980));
    LocalMux I__485 (
            .O(N__3003),
            .I(N__2975));
    LocalMux I__484 (
            .O(N__2996),
            .I(N__2975));
    Span4Mux_v I__483 (
            .O(N__2993),
            .I(N__2972));
    LocalMux I__482 (
            .O(N__2986),
            .I(N__2965));
    LocalMux I__481 (
            .O(N__2983),
            .I(N__2965));
    Span4Mux_h I__480 (
            .O(N__2980),
            .I(N__2965));
    Span4Mux_h I__479 (
            .O(N__2975),
            .I(N__2962));
    Odrv4 I__478 (
            .O(N__2972),
            .I(init_pulses_6_sqmuxa_0));
    Odrv4 I__477 (
            .O(N__2965),
            .I(init_pulses_6_sqmuxa_0));
    Odrv4 I__476 (
            .O(N__2962),
            .I(init_pulses_6_sqmuxa_0));
    InMux I__475 (
            .O(N__2955),
            .I(N__2952));
    LocalMux I__474 (
            .O(N__2952),
            .I(pulses2countZ0Z_6));
    InMux I__473 (
            .O(N__2949),
            .I(N__2946));
    LocalMux I__472 (
            .O(N__2946),
            .I(N__2943));
    Span4Mux_h I__471 (
            .O(N__2943),
            .I(N__2939));
    InMux I__470 (
            .O(N__2942),
            .I(N__2936));
    Odrv4 I__469 (
            .O(N__2939),
            .I(init_pulsesZ0Z_7));
    LocalMux I__468 (
            .O(N__2936),
            .I(init_pulsesZ0Z_7));
    CascadeMux I__467 (
            .O(N__2931),
            .I(N__2928));
    InMux I__466 (
            .O(N__2928),
            .I(N__2925));
    LocalMux I__465 (
            .O(N__2925),
            .I(pulses2countZ0Z_7));
    InMux I__464 (
            .O(N__2922),
            .I(N__2919));
    LocalMux I__463 (
            .O(N__2919),
            .I(pulses2countZ0Z_14));
    CascadeMux I__462 (
            .O(N__2916),
            .I(N__2913));
    InMux I__461 (
            .O(N__2913),
            .I(N__2910));
    LocalMux I__460 (
            .O(N__2910),
            .I(pulses2countZ0Z_15));
    IoInMux I__459 (
            .O(N__2907),
            .I(N__2904));
    LocalMux I__458 (
            .O(N__2904),
            .I(N__2901));
    Span4Mux_s0_v I__457 (
            .O(N__2901),
            .I(N__2897));
    CascadeMux I__456 (
            .O(N__2900),
            .I(N__2894));
    Span4Mux_v I__455 (
            .O(N__2897),
            .I(N__2891));
    InMux I__454 (
            .O(N__2894),
            .I(N__2888));
    Odrv4 I__453 (
            .O(N__2891),
            .I(ppm_output_c));
    LocalMux I__452 (
            .O(N__2888),
            .I(ppm_output_c));
    InMux I__451 (
            .O(N__2883),
            .I(N__2880));
    LocalMux I__450 (
            .O(N__2880),
            .I(un15_0_iv_1_12));
    CascadeMux I__449 (
            .O(N__2877),
            .I(init_pulses_2_sqmuxa_0_cascade_));
    InMux I__448 (
            .O(N__2874),
            .I(N__2868));
    InMux I__447 (
            .O(N__2873),
            .I(N__2868));
    LocalMux I__446 (
            .O(N__2868),
            .I(N__2865));
    Span4Mux_v I__445 (
            .O(N__2865),
            .I(N__2861));
    InMux I__444 (
            .O(N__2864),
            .I(N__2858));
    Odrv4 I__443 (
            .O(N__2861),
            .I(N_51));
    LocalMux I__442 (
            .O(N__2858),
            .I(N_51));
    CascadeMux I__441 (
            .O(N__2853),
            .I(un15_0_12_cascade_));
    CascadeMux I__440 (
            .O(N__2850),
            .I(N__2844));
    CascadeMux I__439 (
            .O(N__2849),
            .I(N__2841));
    CascadeMux I__438 (
            .O(N__2848),
            .I(N__2838));
    CascadeMux I__437 (
            .O(N__2847),
            .I(N__2835));
    InMux I__436 (
            .O(N__2844),
            .I(N__2830));
    InMux I__435 (
            .O(N__2841),
            .I(N__2830));
    InMux I__434 (
            .O(N__2838),
            .I(N__2825));
    InMux I__433 (
            .O(N__2835),
            .I(N__2825));
    LocalMux I__432 (
            .O(N__2830),
            .I(N_323_i));
    LocalMux I__431 (
            .O(N__2825),
            .I(N_323_i));
    InMux I__430 (
            .O(N__2820),
            .I(N__2816));
    InMux I__429 (
            .O(N__2819),
            .I(N__2813));
    LocalMux I__428 (
            .O(N__2816),
            .I(init_pulsesZ0Z_15));
    LocalMux I__427 (
            .O(N__2813),
            .I(init_pulsesZ0Z_15));
    InMux I__426 (
            .O(N__2808),
            .I(N__2804));
    InMux I__425 (
            .O(N__2807),
            .I(N__2801));
    LocalMux I__424 (
            .O(N__2804),
            .I(N__2798));
    LocalMux I__423 (
            .O(N__2801),
            .I(init_pulsesZ0Z_10));
    Odrv4 I__422 (
            .O(N__2798),
            .I(init_pulsesZ0Z_10));
    CascadeMux I__421 (
            .O(N__2793),
            .I(N__2789));
    InMux I__420 (
            .O(N__2792),
            .I(N__2786));
    InMux I__419 (
            .O(N__2789),
            .I(N__2783));
    LocalMux I__418 (
            .O(N__2786),
            .I(N__2778));
    LocalMux I__417 (
            .O(N__2783),
            .I(N__2778));
    Odrv4 I__416 (
            .O(N__2778),
            .I(init_pulsesZ0Z_0));
    InMux I__415 (
            .O(N__2775),
            .I(N__2771));
    InMux I__414 (
            .O(N__2774),
            .I(N__2768));
    LocalMux I__413 (
            .O(N__2771),
            .I(init_pulsesZ0Z_17));
    LocalMux I__412 (
            .O(N__2768),
            .I(init_pulsesZ0Z_17));
    InMux I__411 (
            .O(N__2763),
            .I(N__2760));
    LocalMux I__410 (
            .O(N__2760),
            .I(N__2756));
    InMux I__409 (
            .O(N__2759),
            .I(N__2753));
    Odrv4 I__408 (
            .O(N__2756),
            .I(init_pulsesZ0Z_13));
    LocalMux I__407 (
            .O(N__2753),
            .I(init_pulsesZ0Z_13));
    InMux I__406 (
            .O(N__2748),
            .I(N__2744));
    CascadeMux I__405 (
            .O(N__2747),
            .I(N__2741));
    LocalMux I__404 (
            .O(N__2744),
            .I(N__2738));
    InMux I__403 (
            .O(N__2741),
            .I(N__2735));
    Odrv4 I__402 (
            .O(N__2738),
            .I(init_pulsesZ0Z_6));
    LocalMux I__401 (
            .O(N__2735),
            .I(init_pulsesZ0Z_6));
    InMux I__400 (
            .O(N__2730),
            .I(N__2727));
    LocalMux I__399 (
            .O(N__2727),
            .I(N__2723));
    InMux I__398 (
            .O(N__2726),
            .I(N__2720));
    Odrv4 I__397 (
            .O(N__2723),
            .I(init_pulsesZ0Z_11));
    LocalMux I__396 (
            .O(N__2720),
            .I(init_pulsesZ0Z_11));
    InMux I__395 (
            .O(N__2715),
            .I(N__2694));
    InMux I__394 (
            .O(N__2714),
            .I(N__2685));
    InMux I__393 (
            .O(N__2713),
            .I(N__2685));
    InMux I__392 (
            .O(N__2712),
            .I(N__2685));
    InMux I__391 (
            .O(N__2711),
            .I(N__2685));
    InMux I__390 (
            .O(N__2710),
            .I(N__2680));
    InMux I__389 (
            .O(N__2709),
            .I(N__2680));
    InMux I__388 (
            .O(N__2708),
            .I(N__2677));
    InMux I__387 (
            .O(N__2707),
            .I(N__2670));
    InMux I__386 (
            .O(N__2706),
            .I(N__2670));
    InMux I__385 (
            .O(N__2705),
            .I(N__2670));
    InMux I__384 (
            .O(N__2704),
            .I(N__2659));
    InMux I__383 (
            .O(N__2703),
            .I(N__2659));
    InMux I__382 (
            .O(N__2702),
            .I(N__2659));
    InMux I__381 (
            .O(N__2701),
            .I(N__2659));
    InMux I__380 (
            .O(N__2700),
            .I(N__2659));
    InMux I__379 (
            .O(N__2699),
            .I(N__2652));
    InMux I__378 (
            .O(N__2698),
            .I(N__2652));
    InMux I__377 (
            .O(N__2697),
            .I(N__2652));
    LocalMux I__376 (
            .O(N__2694),
            .I(N__2645));
    LocalMux I__375 (
            .O(N__2685),
            .I(N__2645));
    LocalMux I__374 (
            .O(N__2680),
            .I(N__2645));
    LocalMux I__373 (
            .O(N__2677),
            .I(N_153_1));
    LocalMux I__372 (
            .O(N__2670),
            .I(N_153_1));
    LocalMux I__371 (
            .O(N__2659),
            .I(N_153_1));
    LocalMux I__370 (
            .O(N__2652),
            .I(N_153_1));
    Odrv4 I__369 (
            .O(N__2645),
            .I(N_153_1));
    CascadeMux I__368 (
            .O(N__2634),
            .I(N__2631));
    InMux I__367 (
            .O(N__2631),
            .I(N__2628));
    LocalMux I__366 (
            .O(N__2628),
            .I(N__2625));
    Odrv4 I__365 (
            .O(N__2625),
            .I(pulses2count_8_0_iv_0_1_10_0));
    InMux I__364 (
            .O(N__2622),
            .I(N__2616));
    InMux I__363 (
            .O(N__2621),
            .I(N__2616));
    LocalMux I__362 (
            .O(N__2616),
            .I(N_44));
    InMux I__361 (
            .O(N__2613),
            .I(N__2610));
    LocalMux I__360 (
            .O(N__2610),
            .I(N__2607));
    Span4Mux_v I__359 (
            .O(N__2607),
            .I(N__2603));
    InMux I__358 (
            .O(N__2606),
            .I(N__2600));
    Odrv4 I__357 (
            .O(N__2603),
            .I(init_pulsesZ0Z_14));
    LocalMux I__356 (
            .O(N__2600),
            .I(init_pulsesZ0Z_14));
    InMux I__355 (
            .O(N__2595),
            .I(N__2592));
    LocalMux I__354 (
            .O(N__2592),
            .I(init_pulses_RNO_0Z0Z_14));
    InMux I__353 (
            .O(N__2589),
            .I(un1_init_pulses_cry_13));
    InMux I__352 (
            .O(N__2586),
            .I(N__2583));
    LocalMux I__351 (
            .O(N__2583),
            .I(init_pulses_RNO_0Z0Z_15));
    InMux I__350 (
            .O(N__2580),
            .I(un1_init_pulses_cry_14));
    InMux I__349 (
            .O(N__2577),
            .I(bfn_10_23_0_));
    InMux I__348 (
            .O(N__2574),
            .I(un1_init_pulses_cry_16));
    InMux I__347 (
            .O(N__2571),
            .I(un1_init_pulses_cry_17));
    CascadeMux I__346 (
            .O(N__2568),
            .I(init_pulses_RNO_0Z0Z_18_cascade_));
    InMux I__345 (
            .O(N__2565),
            .I(N__2562));
    LocalMux I__344 (
            .O(N__2562),
            .I(init_pulses_RNO_0Z0Z_10));
    InMux I__343 (
            .O(N__2559),
            .I(N__2556));
    LocalMux I__342 (
            .O(N__2556),
            .I(init_pulses_RNO_0Z0Z_16));
    CascadeMux I__341 (
            .O(N__2553),
            .I(N__2542));
    CascadeMux I__340 (
            .O(N__2552),
            .I(N__2537));
    CascadeMux I__339 (
            .O(N__2551),
            .I(N__2533));
    CascadeMux I__338 (
            .O(N__2550),
            .I(N__2530));
    CascadeMux I__337 (
            .O(N__2549),
            .I(N__2523));
    CascadeMux I__336 (
            .O(N__2548),
            .I(N__2520));
    CascadeMux I__335 (
            .O(N__2547),
            .I(N__2516));
    InMux I__334 (
            .O(N__2546),
            .I(N__2506));
    InMux I__333 (
            .O(N__2545),
            .I(N__2506));
    InMux I__332 (
            .O(N__2542),
            .I(N__2506));
    InMux I__331 (
            .O(N__2541),
            .I(N__2506));
    InMux I__330 (
            .O(N__2540),
            .I(N__2491));
    InMux I__329 (
            .O(N__2537),
            .I(N__2491));
    InMux I__328 (
            .O(N__2536),
            .I(N__2491));
    InMux I__327 (
            .O(N__2533),
            .I(N__2491));
    InMux I__326 (
            .O(N__2530),
            .I(N__2491));
    InMux I__325 (
            .O(N__2529),
            .I(N__2491));
    InMux I__324 (
            .O(N__2528),
            .I(N__2491));
    InMux I__323 (
            .O(N__2527),
            .I(N__2486));
    InMux I__322 (
            .O(N__2526),
            .I(N__2486));
    InMux I__321 (
            .O(N__2523),
            .I(N__2475));
    InMux I__320 (
            .O(N__2520),
            .I(N__2475));
    InMux I__319 (
            .O(N__2519),
            .I(N__2475));
    InMux I__318 (
            .O(N__2516),
            .I(N__2475));
    InMux I__317 (
            .O(N__2515),
            .I(N__2475));
    LocalMux I__316 (
            .O(N__2506),
            .I(init_pulses_0_sqmuxa));
    LocalMux I__315 (
            .O(N__2491),
            .I(init_pulses_0_sqmuxa));
    LocalMux I__314 (
            .O(N__2486),
            .I(init_pulses_0_sqmuxa));
    LocalMux I__313 (
            .O(N__2475),
            .I(init_pulses_0_sqmuxa));
    InMux I__312 (
            .O(N__2466),
            .I(N__2463));
    LocalMux I__311 (
            .O(N__2463),
            .I(init_pulses_RNO_0Z0Z_17));
    InMux I__310 (
            .O(N__2460),
            .I(N__2457));
    LocalMux I__309 (
            .O(N__2457),
            .I(init_pulses_RNO_0Z0Z_5));
    InMux I__308 (
            .O(N__2454),
            .I(un1_init_pulses_cry_4));
    InMux I__307 (
            .O(N__2451),
            .I(N__2448));
    LocalMux I__306 (
            .O(N__2448),
            .I(init_pulses_RNO_0Z0Z_6));
    InMux I__305 (
            .O(N__2445),
            .I(un1_init_pulses_cry_5));
    InMux I__304 (
            .O(N__2442),
            .I(N__2439));
    LocalMux I__303 (
            .O(N__2439),
            .I(init_pulses_RNO_0Z0Z_7));
    InMux I__302 (
            .O(N__2436),
            .I(un1_init_pulses_cry_6));
    InMux I__301 (
            .O(N__2433),
            .I(N__2430));
    LocalMux I__300 (
            .O(N__2430),
            .I(init_pulses_RNO_0Z0Z_8));
    InMux I__299 (
            .O(N__2427),
            .I(bfn_10_22_0_));
    InMux I__298 (
            .O(N__2424),
            .I(N__2421));
    LocalMux I__297 (
            .O(N__2421),
            .I(init_pulses_RNO_0Z0Z_9));
    InMux I__296 (
            .O(N__2418),
            .I(un1_init_pulses_cry_8));
    InMux I__295 (
            .O(N__2415),
            .I(un1_init_pulses_cry_9));
    InMux I__294 (
            .O(N__2412),
            .I(N__2409));
    LocalMux I__293 (
            .O(N__2409),
            .I(init_pulses_RNO_0Z0Z_11));
    InMux I__292 (
            .O(N__2406),
            .I(un1_init_pulses_cry_10));
    InMux I__291 (
            .O(N__2403),
            .I(N__2400));
    LocalMux I__290 (
            .O(N__2400),
            .I(init_pulses_RNO_0Z0Z_12));
    InMux I__289 (
            .O(N__2397),
            .I(un1_init_pulses_cry_11));
    InMux I__288 (
            .O(N__2394),
            .I(N__2391));
    LocalMux I__287 (
            .O(N__2391),
            .I(init_pulses_RNO_0Z0Z_13));
    InMux I__286 (
            .O(N__2388),
            .I(un1_init_pulses_cry_12));
    InMux I__285 (
            .O(N__2385),
            .I(count_1_cry_12));
    InMux I__284 (
            .O(N__2382),
            .I(N__2377));
    InMux I__283 (
            .O(N__2381),
            .I(N__2372));
    InMux I__282 (
            .O(N__2380),
            .I(N__2372));
    LocalMux I__281 (
            .O(N__2377),
            .I(countZ0Z_13));
    LocalMux I__280 (
            .O(N__2372),
            .I(countZ0Z_13));
    SRMux I__279 (
            .O(N__2367),
            .I(N__2362));
    SRMux I__278 (
            .O(N__2366),
            .I(N__2359));
    SRMux I__277 (
            .O(N__2365),
            .I(N__2356));
    LocalMux I__276 (
            .O(N__2362),
            .I(count6lto13_iso));
    LocalMux I__275 (
            .O(N__2359),
            .I(count6lto13_iso));
    LocalMux I__274 (
            .O(N__2356),
            .I(count6lto13_iso));
    InMux I__273 (
            .O(N__2349),
            .I(N__2346));
    LocalMux I__272 (
            .O(N__2346),
            .I(un1_init_pulses_axb_0));
    InMux I__271 (
            .O(N__2343),
            .I(N__2340));
    LocalMux I__270 (
            .O(N__2340),
            .I(init_pulses_RNO_0Z0Z_1));
    InMux I__269 (
            .O(N__2337),
            .I(un1_init_pulses_cry_0));
    InMux I__268 (
            .O(N__2334),
            .I(N__2331));
    LocalMux I__267 (
            .O(N__2331),
            .I(init_pulses_RNO_0Z0Z_2));
    InMux I__266 (
            .O(N__2328),
            .I(un1_init_pulses_cry_1));
    InMux I__265 (
            .O(N__2325),
            .I(N__2322));
    LocalMux I__264 (
            .O(N__2322),
            .I(init_pulses_RNO_0Z0Z_3));
    InMux I__263 (
            .O(N__2319),
            .I(un1_init_pulses_cry_2));
    InMux I__262 (
            .O(N__2316),
            .I(N__2313));
    LocalMux I__261 (
            .O(N__2313),
            .I(init_pulses_RNO_0Z0Z_4));
    InMux I__260 (
            .O(N__2310),
            .I(un1_init_pulses_cry_3));
    InMux I__259 (
            .O(N__2307),
            .I(N__2304));
    LocalMux I__258 (
            .O(N__2304),
            .I(countZ0Z_4));
    InMux I__257 (
            .O(N__2301),
            .I(count_1_cry_3));
    InMux I__256 (
            .O(N__2298),
            .I(N__2294));
    InMux I__255 (
            .O(N__2297),
            .I(N__2291));
    LocalMux I__254 (
            .O(N__2294),
            .I(countZ0Z_5));
    LocalMux I__253 (
            .O(N__2291),
            .I(countZ0Z_5));
    InMux I__252 (
            .O(N__2286),
            .I(count_1_cry_4));
    InMux I__251 (
            .O(N__2283),
            .I(N__2279));
    InMux I__250 (
            .O(N__2282),
            .I(N__2276));
    LocalMux I__249 (
            .O(N__2279),
            .I(countZ0Z_6));
    LocalMux I__248 (
            .O(N__2276),
            .I(countZ0Z_6));
    InMux I__247 (
            .O(N__2271),
            .I(count_1_cry_5));
    InMux I__246 (
            .O(N__2268),
            .I(N__2264));
    InMux I__245 (
            .O(N__2267),
            .I(N__2261));
    LocalMux I__244 (
            .O(N__2264),
            .I(countZ0Z_7));
    LocalMux I__243 (
            .O(N__2261),
            .I(countZ0Z_7));
    InMux I__242 (
            .O(N__2256),
            .I(count_1_cry_6));
    CascadeMux I__241 (
            .O(N__2253),
            .I(N__2249));
    InMux I__240 (
            .O(N__2252),
            .I(N__2246));
    InMux I__239 (
            .O(N__2249),
            .I(N__2243));
    LocalMux I__238 (
            .O(N__2246),
            .I(countZ0Z_8));
    LocalMux I__237 (
            .O(N__2243),
            .I(countZ0Z_8));
    InMux I__236 (
            .O(N__2238),
            .I(count_1_cry_7));
    InMux I__235 (
            .O(N__2235),
            .I(N__2231));
    InMux I__234 (
            .O(N__2234),
            .I(N__2228));
    LocalMux I__233 (
            .O(N__2231),
            .I(countZ0Z_9));
    LocalMux I__232 (
            .O(N__2228),
            .I(countZ0Z_9));
    InMux I__231 (
            .O(N__2223),
            .I(bfn_9_26_0_));
    InMux I__230 (
            .O(N__2220),
            .I(N__2216));
    InMux I__229 (
            .O(N__2219),
            .I(N__2213));
    LocalMux I__228 (
            .O(N__2216),
            .I(countZ0Z_10));
    LocalMux I__227 (
            .O(N__2213),
            .I(countZ0Z_10));
    InMux I__226 (
            .O(N__2208),
            .I(count_1_cry_9));
    InMux I__225 (
            .O(N__2205),
            .I(N__2201));
    InMux I__224 (
            .O(N__2204),
            .I(N__2198));
    LocalMux I__223 (
            .O(N__2201),
            .I(countZ0Z_11));
    LocalMux I__222 (
            .O(N__2198),
            .I(countZ0Z_11));
    InMux I__221 (
            .O(N__2193),
            .I(count_1_cry_10));
    InMux I__220 (
            .O(N__2190),
            .I(N__2185));
    InMux I__219 (
            .O(N__2189),
            .I(N__2180));
    InMux I__218 (
            .O(N__2188),
            .I(N__2180));
    LocalMux I__217 (
            .O(N__2185),
            .I(countZ0Z_12));
    LocalMux I__216 (
            .O(N__2180),
            .I(countZ0Z_12));
    InMux I__215 (
            .O(N__2175),
            .I(count_1_cry_11));
    CascadeMux I__214 (
            .O(N__2172),
            .I(init_pulses39_0_cascade_));
    CascadeMux I__213 (
            .O(N__2169),
            .I(init_pulses_0_sqmuxa_cascade_));
    InMux I__212 (
            .O(N__2166),
            .I(N__2162));
    InMux I__211 (
            .O(N__2165),
            .I(N__2159));
    LocalMux I__210 (
            .O(N__2162),
            .I(countZ0Z_1));
    LocalMux I__209 (
            .O(N__2159),
            .I(countZ0Z_1));
    CascadeMux I__208 (
            .O(N__2154),
            .I(N__2149));
    InMux I__207 (
            .O(N__2153),
            .I(N__2144));
    InMux I__206 (
            .O(N__2152),
            .I(N__2144));
    InMux I__205 (
            .O(N__2149),
            .I(N__2141));
    LocalMux I__204 (
            .O(N__2144),
            .I(countZ0Z_0));
    LocalMux I__203 (
            .O(N__2141),
            .I(countZ0Z_0));
    InMux I__202 (
            .O(N__2136),
            .I(N__2133));
    LocalMux I__201 (
            .O(N__2133),
            .I(countZ0Z_2));
    InMux I__200 (
            .O(N__2130),
            .I(count_1_cry_1));
    InMux I__199 (
            .O(N__2127),
            .I(N__2124));
    LocalMux I__198 (
            .O(N__2124),
            .I(countZ0Z_3));
    InMux I__197 (
            .O(N__2121),
            .I(count_1_cry_2));
    CascadeMux I__196 (
            .O(N__2118),
            .I(N_153_1_cascade_));
    CascadeMux I__195 (
            .O(N__2115),
            .I(count6lto11_1_cascade_));
    InMux I__194 (
            .O(N__2112),
            .I(N__2109));
    LocalMux I__193 (
            .O(N__2109),
            .I(count6lt11));
    CascadeMux I__192 (
            .O(N__2106),
            .I(count6lt11_cascade_));
    InMux I__191 (
            .O(N__2103),
            .I(N__2100));
    LocalMux I__190 (
            .O(N__2100),
            .I(count6lto11_1));
    CascadeMux I__189 (
            .O(N__2097),
            .I(count6_0_cascade_));
    IoInMux I__188 (
            .O(N__2094),
            .I(N__2091));
    LocalMux I__187 (
            .O(N__2091),
            .I(N__2088));
    Span4Mux_s1_v I__186 (
            .O(N__2088),
            .I(N__2085));
    Sp12to4 I__185 (
            .O(N__2085),
            .I(N__2082));
    Span12Mux_h I__184 (
            .O(N__2082),
            .I(N__2079));
    Span12Mux_v I__183 (
            .O(N__2079),
            .I(N__2076));
    Span12Mux_v I__182 (
            .O(N__2076),
            .I(N__2072));
    InMux I__181 (
            .O(N__2075),
            .I(N__2069));
    Odrv12 I__180 (
            .O(N__2072),
            .I(test_led_c));
    LocalMux I__179 (
            .O(N__2069),
            .I(test_led_c));
    defparam IN_MUX_bfv_11_24_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_11_24_0_ (
            .carryinitin(),
            .carryinitout(bfn_11_24_0_));
    defparam IN_MUX_bfv_11_25_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_11_25_0_ (
            .carryinitin(counter11_0_data_tmp_7),
            .carryinitout(bfn_11_25_0_));
    defparam IN_MUX_bfv_9_25_0_.C_INIT=2'b00;
    ICE_CARRY_IN_MUX IN_MUX_bfv_9_25_0_ (
            .carryinitin(),
            .carryinitout(bfn_9_25_0_));
    defparam IN_MUX_bfv_9_26_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_9_26_0_ (
            .carryinitin(count_1_cry_8),
            .carryinitout(bfn_9_26_0_));
    defparam IN_MUX_bfv_10_21_0_.C_INIT=2'b00;
    ICE_CARRY_IN_MUX IN_MUX_bfv_10_21_0_ (
            .carryinitin(),
            .carryinitout(bfn_10_21_0_));
    defparam IN_MUX_bfv_10_22_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_10_22_0_ (
            .carryinitin(un1_init_pulses_cry_7),
            .carryinitout(bfn_10_22_0_));
    defparam IN_MUX_bfv_10_23_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_10_23_0_ (
            .carryinitin(un1_init_pulses_cry_15),
            .carryinitout(bfn_10_23_0_));
    defparam IN_MUX_bfv_11_26_0_.C_INIT=2'b00;
    ICE_CARRY_IN_MUX IN_MUX_bfv_11_26_0_ (
            .carryinitin(),
            .carryinitout(bfn_11_26_0_));
    defparam IN_MUX_bfv_11_27_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_11_27_0_ (
            .carryinitin(un1_counter_13_cry_7),
            .carryinitout(bfn_11_27_0_));
    defparam IN_MUX_bfv_11_28_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_11_28_0_ (
            .carryinitin(un1_counter_13_cry_15),
            .carryinitout(bfn_11_28_0_));
    VCC VCC (
            .Y(VCCG0));
    ICE_GB PPM_STATE_RNI981B2_0_0 (
            .USERSIGNALTOGLOBALBUFFER(N__3864),
            .GLOBALBUFFEROUTPUT(N_30_i_g));
    ICE_GB counter11_0_I_57_c_RNIUTDL5_0 (
            .USERSIGNALTOGLOBALBUFFER(N__4308),
            .GLOBALBUFFEROUTPUT(un1_PPM_STATE_0_sqmuxa_0_i_g));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam count_0_LC_8_25_1.C_ON=1'b0;
    defparam count_0_LC_8_25_1.SEQ_MODE=4'b1000;
    defparam count_0_LC_8_25_1.LUT_INIT=16'b0000000011111111;
    LogicCell40 count_0_LC_8_25_1 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__2152),
            .lcout(countZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4754),
            .ce(),
            .sr(N__2365));
    defparam count_1_LC_8_25_2.C_ON=1'b0;
    defparam count_1_LC_8_25_2.SEQ_MODE=4'b1000;
    defparam count_1_LC_8_25_2.LUT_INIT=16'b1010010101011010;
    LogicCell40 count_1_LC_8_25_2 (
            .in0(N__2153),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__2166),
            .lcout(countZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4754),
            .ce(),
            .sr(N__2365));
    defparam count_RNIVO3Q_9_LC_8_26_3.C_ON=1'b0;
    defparam count_RNIVO3Q_9_LC_8_26_3.SEQ_MODE=4'b0000;
    defparam count_RNIVO3Q_9_LC_8_26_3.LUT_INIT=16'b1000100000000000;
    LogicCell40 count_RNIVO3Q_9_LC_8_26_3 (
            .in0(N__2204),
            .in1(N__2219),
            .in2(_gnd_net_),
            .in3(N__2234),
            .lcout(count6lto11_1),
            .ltout(count6lto11_1_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam count_RNI67NP1_13_LC_8_26_4.C_ON=1'b0;
    defparam count_RNI67NP1_13_LC_8_26_4.SEQ_MODE=4'b0000;
    defparam count_RNI67NP1_13_LC_8_26_4.LUT_INIT=16'b1000100010101000;
    LogicCell40 count_RNI67NP1_13_LC_8_26_4 (
            .in0(N__2381),
            .in1(N__2189),
            .in2(N__2115),
            .in3(N__2112),
            .lcout(count6lto13_iso),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam count_RNIU4A7_5_LC_8_26_5.C_ON=1'b0;
    defparam count_RNIU4A7_5_LC_8_26_5.SEQ_MODE=4'b0000;
    defparam count_RNIU4A7_5_LC_8_26_5.LUT_INIT=16'b0000011100001111;
    LogicCell40 count_RNIU4A7_5_LC_8_26_5 (
            .in0(N__2267),
            .in1(N__2282),
            .in2(N__2253),
            .in3(N__2297),
            .lcout(count6lt11),
            .ltout(count6lt11_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam test_led_RNO_0_LC_8_26_6.C_ON=1'b0;
    defparam test_led_RNO_0_LC_8_26_6.SEQ_MODE=4'b0000;
    defparam test_led_RNO_0_LC_8_26_6.LUT_INIT=16'b1000101010001000;
    LogicCell40 test_led_RNO_0_LC_8_26_6 (
            .in0(N__2380),
            .in1(N__2188),
            .in2(N__2106),
            .in3(N__2103),
            .lcout(),
            .ltout(count6_0_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam test_ledZ0_LC_8_26_7.C_ON=1'b0;
    defparam test_ledZ0_LC_8_26_7.SEQ_MODE=4'b1000;
    defparam test_ledZ0_LC_8_26_7.LUT_INIT=16'b0000111111110000;
    LogicCell40 test_ledZ0_LC_8_26_7 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__2097),
            .in3(N__2075),
            .lcout(test_led_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4750),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_1_LC_9_20_0.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_1_LC_9_20_0.SEQ_MODE=4'b1000;
    defparam CHOOSE_CHANNEL_1_LC_9_20_0.LUT_INIT=16'b0011001111001100;
    LogicCell40 CHOOSE_CHANNEL_1_LC_9_20_0 (
            .in0(_gnd_net_),
            .in1(N__3621),
            .in2(_gnd_net_),
            .in3(N__3435),
            .lcout(CHOOSE_CHANNELZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4761),
            .ce(N__4677),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_0_LC_9_20_4.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_0_LC_9_20_4.SEQ_MODE=4'b1000;
    defparam CHOOSE_CHANNEL_0_LC_9_20_4.LUT_INIT=16'b0000000001110111;
    LogicCell40 CHOOSE_CHANNEL_0_LC_9_20_4 (
            .in0(N__3519),
            .in1(N__3695),
            .in2(_gnd_net_),
            .in3(N__3434),
            .lcout(CHOOSE_CHANNELZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4761),
            .ce(N__4677),
            .sr(_gnd_net_));
    defparam init_pulses_4_LC_9_21_0.C_ON=1'b0;
    defparam init_pulses_4_LC_9_21_0.SEQ_MODE=4'b1000;
    defparam init_pulses_4_LC_9_21_0.LUT_INIT=16'b0000011100000000;
    LogicCell40 init_pulses_4_LC_9_21_0 (
            .in0(N__2706),
            .in1(N__3050),
            .in2(N__2551),
            .in3(N__2316),
            .lcout(init_pulsesZ0Z_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4760),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_5_LC_9_21_1.C_ON=1'b0;
    defparam init_pulses_5_LC_9_21_1.SEQ_MODE=4'b1000;
    defparam init_pulses_5_LC_9_21_1.LUT_INIT=16'b0001001100000000;
    LogicCell40 init_pulses_5_LC_9_21_1 (
            .in0(N__2698),
            .in1(N__2536),
            .in2(N__3072),
            .in3(N__2460),
            .lcout(init_pulsesZ0Z_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4760),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_RNI31VH_1_LC_9_21_2.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_RNI31VH_1_LC_9_21_2.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_RNI31VH_1_LC_9_21_2.LUT_INIT=16'b0000000000110011;
    LogicCell40 CHOOSE_CHANNEL_RNI31VH_1_LC_9_21_2 (
            .in0(_gnd_net_),
            .in1(N__3587),
            .in2(_gnd_net_),
            .in3(N__3433),
            .lcout(N_153_1),
            .ltout(N_153_1_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_1_LC_9_21_3.C_ON=1'b0;
    defparam init_pulses_1_LC_9_21_3.SEQ_MODE=4'b1000;
    defparam init_pulses_1_LC_9_21_3.LUT_INIT=16'b0000000001001100;
    LogicCell40 init_pulses_1_LC_9_21_3 (
            .in0(N__3048),
            .in1(N__2343),
            .in2(N__2118),
            .in3(N__2528),
            .lcout(init_pulsesZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4760),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_3_LC_9_21_4.C_ON=1'b0;
    defparam init_pulses_3_LC_9_21_4.SEQ_MODE=4'b1000;
    defparam init_pulses_3_LC_9_21_4.LUT_INIT=16'b0000111100001000;
    LogicCell40 init_pulses_3_LC_9_21_4 (
            .in0(N__2705),
            .in1(N__3049),
            .in2(N__2550),
            .in3(N__2325),
            .lcout(init_pulsesZ0Z_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4760),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_7_LC_9_21_5.C_ON=1'b0;
    defparam init_pulses_7_LC_9_21_5.SEQ_MODE=4'b1000;
    defparam init_pulses_7_LC_9_21_5.LUT_INIT=16'b0011001100100000;
    LogicCell40 init_pulses_7_LC_9_21_5 (
            .in0(N__2699),
            .in1(N__2540),
            .in2(N__3073),
            .in3(N__2442),
            .lcout(init_pulsesZ0Z_7),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4760),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_6_LC_9_21_6.C_ON=1'b0;
    defparam init_pulses_6_LC_9_21_6.SEQ_MODE=4'b1000;
    defparam init_pulses_6_LC_9_21_6.LUT_INIT=16'b0000011100000000;
    LogicCell40 init_pulses_6_LC_9_21_6 (
            .in0(N__2707),
            .in1(N__3051),
            .in2(N__2552),
            .in3(N__2451),
            .lcout(init_pulsesZ0Z_6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4760),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_2_LC_9_21_7.C_ON=1'b0;
    defparam init_pulses_2_LC_9_21_7.SEQ_MODE=4'b1000;
    defparam init_pulses_2_LC_9_21_7.LUT_INIT=16'b0001001100000000;
    LogicCell40 init_pulses_2_LC_9_21_7 (
            .in0(N__2697),
            .in1(N__2529),
            .in2(N__3071),
            .in3(N__2334),
            .lcout(init_pulsesZ0Z_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4760),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_12_LC_9_22_0.C_ON=1'b0;
    defparam init_pulses_12_LC_9_22_0.SEQ_MODE=4'b1000;
    defparam init_pulses_12_LC_9_22_0.LUT_INIT=16'b0000111100001000;
    LogicCell40 init_pulses_12_LC_9_22_0 (
            .in0(N__3045),
            .in1(N__2702),
            .in2(N__2547),
            .in3(N__2403),
            .lcout(init_pulsesZ0Z_12),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4758),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_13_LC_9_22_1.C_ON=1'b0;
    defparam init_pulses_13_LC_9_22_1.SEQ_MODE=4'b1000;
    defparam init_pulses_13_LC_9_22_1.LUT_INIT=16'b0011001100100000;
    LogicCell40 init_pulses_13_LC_9_22_1 (
            .in0(N__2701),
            .in1(N__2519),
            .in2(N__3070),
            .in3(N__2394),
            .lcout(init_pulsesZ0Z_13),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4758),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_14_LC_9_22_2.C_ON=1'b0;
    defparam init_pulses_14_LC_9_22_2.SEQ_MODE=4'b1000;
    defparam init_pulses_14_LC_9_22_2.LUT_INIT=16'b0000111100001000;
    LogicCell40 init_pulses_14_LC_9_22_2 (
            .in0(N__3046),
            .in1(N__2703),
            .in2(N__2548),
            .in3(N__2595),
            .lcout(init_pulsesZ0Z_14),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4758),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_11_LC_9_22_3.C_ON=1'b0;
    defparam init_pulses_11_LC_9_22_3.SEQ_MODE=4'b1000;
    defparam init_pulses_11_LC_9_22_3.LUT_INIT=16'b0001001100000000;
    LogicCell40 init_pulses_11_LC_9_22_3 (
            .in0(N__2700),
            .in1(N__2515),
            .in2(N__3069),
            .in3(N__2412),
            .lcout(init_pulsesZ0Z_11),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4758),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_8_LC_9_22_4.C_ON=1'b0;
    defparam init_pulses_8_LC_9_22_4.SEQ_MODE=4'b1000;
    defparam init_pulses_8_LC_9_22_4.LUT_INIT=16'b0000011100000000;
    LogicCell40 init_pulses_8_LC_9_22_4 (
            .in0(N__3047),
            .in1(N__2704),
            .in2(N__2549),
            .in3(N__2433),
            .lcout(init_pulsesZ0Z_8),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4758),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_RNIA6U31_1_3_LC_9_22_5.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_RNIA6U31_1_3_LC_9_22_5.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_RNIA6U31_1_3_LC_9_22_5.LUT_INIT=16'b0000000100000000;
    LogicCell40 CHOOSE_CHANNEL_RNIA6U31_1_3_LC_9_22_5 (
            .in0(N__3610),
            .in1(N__3696),
            .in2(N__3551),
            .in3(N__3449),
            .lcout(init_pulses39_0),
            .ltout(init_pulses39_0_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_57_c_RNIRTLL1_LC_9_22_6.C_ON=1'b0;
    defparam counter11_0_I_57_c_RNIRTLL1_LC_9_22_6.SEQ_MODE=4'b0000;
    defparam counter11_0_I_57_c_RNIRTLL1_LC_9_22_6.LUT_INIT=16'b0000000011000000;
    LogicCell40 counter11_0_I_57_c_RNIRTLL1_LC_9_22_6 (
            .in0(_gnd_net_),
            .in1(N__4379),
            .in2(N__2172),
            .in3(N__4350),
            .lcout(init_pulses_0_sqmuxa),
            .ltout(init_pulses_0_sqmuxa_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_0_LC_9_22_7.C_ON=1'b0;
    defparam init_pulses_0_LC_9_22_7.SEQ_MODE=4'b1000;
    defparam init_pulses_0_LC_9_22_7.LUT_INIT=16'b0000010000001100;
    LogicCell40 init_pulses_0_LC_9_22_7 (
            .in0(N__3038),
            .in1(N__2349),
            .in2(N__2169),
            .in3(N__2708),
            .lcout(init_pulsesZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4758),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_15_LC_9_23_1.C_ON=1'b0;
    defparam init_pulses_15_LC_9_23_1.SEQ_MODE=4'b1000;
    defparam init_pulses_15_LC_9_23_1.LUT_INIT=16'b0011001100100000;
    LogicCell40 init_pulses_15_LC_9_23_1 (
            .in0(N__2709),
            .in1(N__2526),
            .in2(N__3074),
            .in3(N__2586),
            .lcout(init_pulsesZ0Z_15),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4756),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_9_LC_9_23_3.C_ON=1'b0;
    defparam init_pulses_9_LC_9_23_3.SEQ_MODE=4'b1000;
    defparam init_pulses_9_LC_9_23_3.LUT_INIT=16'b0001001100000000;
    LogicCell40 init_pulses_9_LC_9_23_3 (
            .in0(N__2710),
            .in1(N__2527),
            .in2(N__3075),
            .in3(N__2424),
            .lcout(init_pulsesZ0Z_9),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4756),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_RNIA6U31_0_3_LC_9_23_5.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_RNIA6U31_0_3_LC_9_23_5.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_RNIA6U31_0_3_LC_9_23_5.LUT_INIT=16'b0000000100000100;
    LogicCell40 CHOOSE_CHANNEL_RNIA6U31_0_3_LC_9_23_5 (
            .in0(N__3450),
            .in1(N__3714),
            .in2(N__3545),
            .in3(N__3611),
            .lcout(N_44),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam count_1_cry_1_c_LC_9_25_0.C_ON=1'b1;
    defparam count_1_cry_1_c_LC_9_25_0.SEQ_MODE=4'b0000;
    defparam count_1_cry_1_c_LC_9_25_0.LUT_INIT=16'b0000000000000000;
    LogicCell40 count_1_cry_1_c_LC_9_25_0 (
            .in0(_gnd_net_),
            .in1(N__2165),
            .in2(N__2154),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(bfn_9_25_0_),
            .carryout(count_1_cry_1),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam count_2_LC_9_25_1.C_ON=1'b1;
    defparam count_2_LC_9_25_1.SEQ_MODE=4'b1000;
    defparam count_2_LC_9_25_1.LUT_INIT=16'b1001100101100110;
    LogicCell40 count_2_LC_9_25_1 (
            .in0(_gnd_net_),
            .in1(N__2136),
            .in2(_gnd_net_),
            .in3(N__2130),
            .lcout(countZ0Z_2),
            .ltout(),
            .carryin(count_1_cry_1),
            .carryout(count_1_cry_2),
            .clk(N__4751),
            .ce(),
            .sr(N__2367));
    defparam count_3_LC_9_25_2.C_ON=1'b1;
    defparam count_3_LC_9_25_2.SEQ_MODE=4'b1000;
    defparam count_3_LC_9_25_2.LUT_INIT=16'b1001100101100110;
    LogicCell40 count_3_LC_9_25_2 (
            .in0(_gnd_net_),
            .in1(N__2127),
            .in2(_gnd_net_),
            .in3(N__2121),
            .lcout(countZ0Z_3),
            .ltout(),
            .carryin(count_1_cry_2),
            .carryout(count_1_cry_3),
            .clk(N__4751),
            .ce(),
            .sr(N__2367));
    defparam count_4_LC_9_25_3.C_ON=1'b1;
    defparam count_4_LC_9_25_3.SEQ_MODE=4'b1000;
    defparam count_4_LC_9_25_3.LUT_INIT=16'b1001100101100110;
    LogicCell40 count_4_LC_9_25_3 (
            .in0(_gnd_net_),
            .in1(N__2307),
            .in2(_gnd_net_),
            .in3(N__2301),
            .lcout(countZ0Z_4),
            .ltout(),
            .carryin(count_1_cry_3),
            .carryout(count_1_cry_4),
            .clk(N__4751),
            .ce(),
            .sr(N__2367));
    defparam count_5_LC_9_25_4.C_ON=1'b1;
    defparam count_5_LC_9_25_4.SEQ_MODE=4'b1000;
    defparam count_5_LC_9_25_4.LUT_INIT=16'b1001100101100110;
    LogicCell40 count_5_LC_9_25_4 (
            .in0(_gnd_net_),
            .in1(N__2298),
            .in2(_gnd_net_),
            .in3(N__2286),
            .lcout(countZ0Z_5),
            .ltout(),
            .carryin(count_1_cry_4),
            .carryout(count_1_cry_5),
            .clk(N__4751),
            .ce(),
            .sr(N__2367));
    defparam count_6_LC_9_25_5.C_ON=1'b1;
    defparam count_6_LC_9_25_5.SEQ_MODE=4'b1000;
    defparam count_6_LC_9_25_5.LUT_INIT=16'b1001100101100110;
    LogicCell40 count_6_LC_9_25_5 (
            .in0(_gnd_net_),
            .in1(N__2283),
            .in2(_gnd_net_),
            .in3(N__2271),
            .lcout(countZ0Z_6),
            .ltout(),
            .carryin(count_1_cry_5),
            .carryout(count_1_cry_6),
            .clk(N__4751),
            .ce(),
            .sr(N__2367));
    defparam count_7_LC_9_25_6.C_ON=1'b1;
    defparam count_7_LC_9_25_6.SEQ_MODE=4'b1000;
    defparam count_7_LC_9_25_6.LUT_INIT=16'b1001100101100110;
    LogicCell40 count_7_LC_9_25_6 (
            .in0(_gnd_net_),
            .in1(N__2268),
            .in2(_gnd_net_),
            .in3(N__2256),
            .lcout(countZ0Z_7),
            .ltout(),
            .carryin(count_1_cry_6),
            .carryout(count_1_cry_7),
            .clk(N__4751),
            .ce(),
            .sr(N__2367));
    defparam count_8_LC_9_25_7.C_ON=1'b1;
    defparam count_8_LC_9_25_7.SEQ_MODE=4'b1000;
    defparam count_8_LC_9_25_7.LUT_INIT=16'b1001100101100110;
    LogicCell40 count_8_LC_9_25_7 (
            .in0(_gnd_net_),
            .in1(N__2252),
            .in2(_gnd_net_),
            .in3(N__2238),
            .lcout(countZ0Z_8),
            .ltout(),
            .carryin(count_1_cry_7),
            .carryout(count_1_cry_8),
            .clk(N__4751),
            .ce(),
            .sr(N__2367));
    defparam count_9_LC_9_26_0.C_ON=1'b1;
    defparam count_9_LC_9_26_0.SEQ_MODE=4'b1000;
    defparam count_9_LC_9_26_0.LUT_INIT=16'b1001100101100110;
    LogicCell40 count_9_LC_9_26_0 (
            .in0(_gnd_net_),
            .in1(N__2235),
            .in2(_gnd_net_),
            .in3(N__2223),
            .lcout(countZ0Z_9),
            .ltout(),
            .carryin(bfn_9_26_0_),
            .carryout(count_1_cry_9),
            .clk(N__4746),
            .ce(),
            .sr(N__2366));
    defparam count_10_LC_9_26_1.C_ON=1'b1;
    defparam count_10_LC_9_26_1.SEQ_MODE=4'b1000;
    defparam count_10_LC_9_26_1.LUT_INIT=16'b1001100101100110;
    LogicCell40 count_10_LC_9_26_1 (
            .in0(_gnd_net_),
            .in1(N__2220),
            .in2(_gnd_net_),
            .in3(N__2208),
            .lcout(countZ0Z_10),
            .ltout(),
            .carryin(count_1_cry_9),
            .carryout(count_1_cry_10),
            .clk(N__4746),
            .ce(),
            .sr(N__2366));
    defparam count_11_LC_9_26_2.C_ON=1'b1;
    defparam count_11_LC_9_26_2.SEQ_MODE=4'b1000;
    defparam count_11_LC_9_26_2.LUT_INIT=16'b1001100101100110;
    LogicCell40 count_11_LC_9_26_2 (
            .in0(_gnd_net_),
            .in1(N__2205),
            .in2(_gnd_net_),
            .in3(N__2193),
            .lcout(countZ0Z_11),
            .ltout(),
            .carryin(count_1_cry_10),
            .carryout(count_1_cry_11),
            .clk(N__4746),
            .ce(),
            .sr(N__2366));
    defparam count_12_LC_9_26_3.C_ON=1'b1;
    defparam count_12_LC_9_26_3.SEQ_MODE=4'b1000;
    defparam count_12_LC_9_26_3.LUT_INIT=16'b1001100101100110;
    LogicCell40 count_12_LC_9_26_3 (
            .in0(_gnd_net_),
            .in1(N__2190),
            .in2(_gnd_net_),
            .in3(N__2175),
            .lcout(countZ0Z_12),
            .ltout(),
            .carryin(count_1_cry_11),
            .carryout(count_1_cry_12),
            .clk(N__4746),
            .ce(),
            .sr(N__2366));
    defparam count_13_LC_9_26_4.C_ON=1'b0;
    defparam count_13_LC_9_26_4.SEQ_MODE=4'b1000;
    defparam count_13_LC_9_26_4.LUT_INIT=16'b0011001111001100;
    LogicCell40 count_13_LC_9_26_4 (
            .in0(_gnd_net_),
            .in1(N__2382),
            .in2(_gnd_net_),
            .in3(N__2385),
            .lcout(countZ0Z_13),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4746),
            .ce(),
            .sr(N__2366));
    defparam CHOOSE_CHANNEL_2_LC_10_20_0.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_2_LC_10_20_0.SEQ_MODE=4'b1000;
    defparam CHOOSE_CHANNEL_2_LC_10_20_0.LUT_INIT=16'b0100011000001010;
    LogicCell40 CHOOSE_CHANNEL_2_LC_10_20_0 (
            .in0(N__3712),
            .in1(N__3622),
            .in2(N__3541),
            .in3(N__3436),
            .lcout(CHOOSE_CHANNELZ0Z_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4759),
            .ce(N__4676),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_3_LC_10_20_7.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_3_LC_10_20_7.SEQ_MODE=4'b1000;
    defparam CHOOSE_CHANNEL_3_LC_10_20_7.LUT_INIT=16'b1011001110000000;
    LogicCell40 CHOOSE_CHANNEL_3_LC_10_20_7 (
            .in0(N__3437),
            .in1(N__3713),
            .in2(N__3634),
            .in3(N__3523),
            .lcout(CHOOSE_CHANNELZ0Z_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4759),
            .ce(N__4676),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_0_LC_10_21_0.C_ON=1'b1;
    defparam init_pulses_RNO_0_0_LC_10_21_0.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_0_LC_10_21_0.LUT_INIT=16'b0011110000111100;
    LogicCell40 init_pulses_RNO_0_0_LC_10_21_0 (
            .in0(_gnd_net_),
            .in1(N__3101),
            .in2(N__2793),
            .in3(_gnd_net_),
            .lcout(un1_init_pulses_axb_0),
            .ltout(),
            .carryin(bfn_10_21_0_),
            .carryout(un1_init_pulses_cry_0),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_1_LC_10_21_1.C_ON=1'b1;
    defparam init_pulses_RNO_0_1_LC_10_21_1.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_1_LC_10_21_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 init_pulses_RNO_0_1_LC_10_21_1 (
            .in0(_gnd_net_),
            .in1(N__4046),
            .in2(N__2847),
            .in3(N__2337),
            .lcout(init_pulses_RNO_0Z0Z_1),
            .ltout(),
            .carryin(un1_init_pulses_cry_0),
            .carryout(un1_init_pulses_cry_1),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_2_LC_10_21_2.C_ON=1'b1;
    defparam init_pulses_RNO_0_2_LC_10_21_2.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_2_LC_10_21_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 init_pulses_RNO_0_2_LC_10_21_2 (
            .in0(_gnd_net_),
            .in1(N__3923),
            .in2(N__3123),
            .in3(N__2328),
            .lcout(init_pulses_RNO_0Z0Z_2),
            .ltout(),
            .carryin(un1_init_pulses_cry_1),
            .carryout(un1_init_pulses_cry_2),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_3_LC_10_21_3.C_ON=1'b1;
    defparam init_pulses_RNO_0_3_LC_10_21_3.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_3_LC_10_21_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 init_pulses_RNO_0_3_LC_10_21_3 (
            .in0(_gnd_net_),
            .in1(N__4067),
            .in2(N__2848),
            .in3(N__2319),
            .lcout(init_pulses_RNO_0Z0Z_3),
            .ltout(),
            .carryin(un1_init_pulses_cry_2),
            .carryout(un1_init_pulses_cry_3),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_4_LC_10_21_4.C_ON=1'b1;
    defparam init_pulses_RNO_0_4_LC_10_21_4.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_4_LC_10_21_4.LUT_INIT=16'b1001100101100110;
    LogicCell40 init_pulses_RNO_0_4_LC_10_21_4 (
            .in0(_gnd_net_),
            .in1(N__4868),
            .in2(_gnd_net_),
            .in3(N__2310),
            .lcout(init_pulses_RNO_0Z0Z_4),
            .ltout(),
            .carryin(un1_init_pulses_cry_3),
            .carryout(un1_init_pulses_cry_4),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_5_LC_10_21_5.C_ON=1'b1;
    defparam init_pulses_RNO_0_5_LC_10_21_5.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_5_LC_10_21_5.LUT_INIT=16'b1001100101100110;
    LogicCell40 init_pulses_RNO_0_5_LC_10_21_5 (
            .in0(_gnd_net_),
            .in1(N__3881),
            .in2(_gnd_net_),
            .in3(N__2454),
            .lcout(init_pulses_RNO_0Z0Z_5),
            .ltout(),
            .carryin(un1_init_pulses_cry_4),
            .carryout(un1_init_pulses_cry_5),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_6_LC_10_21_6.C_ON=1'b1;
    defparam init_pulses_RNO_0_6_LC_10_21_6.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_6_LC_10_21_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 init_pulses_RNO_0_6_LC_10_21_6 (
            .in0(_gnd_net_),
            .in1(N__3102),
            .in2(N__2747),
            .in3(N__2445),
            .lcout(init_pulses_RNO_0Z0Z_6),
            .ltout(),
            .carryin(un1_init_pulses_cry_5),
            .carryout(un1_init_pulses_cry_6),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_7_LC_10_21_7.C_ON=1'b1;
    defparam init_pulses_RNO_0_7_LC_10_21_7.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_7_LC_10_21_7.LUT_INIT=16'b1001100101100110;
    LogicCell40 init_pulses_RNO_0_7_LC_10_21_7 (
            .in0(_gnd_net_),
            .in1(N__2942),
            .in2(_gnd_net_),
            .in3(N__2436),
            .lcout(init_pulses_RNO_0Z0Z_7),
            .ltout(),
            .carryin(un1_init_pulses_cry_6),
            .carryout(un1_init_pulses_cry_7),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_8_LC_10_22_0.C_ON=1'b1;
    defparam init_pulses_RNO_0_8_LC_10_22_0.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_8_LC_10_22_0.LUT_INIT=16'b1001100101100110;
    LogicCell40 init_pulses_RNO_0_8_LC_10_22_0 (
            .in0(_gnd_net_),
            .in1(N__4973),
            .in2(_gnd_net_),
            .in3(N__2427),
            .lcout(init_pulses_RNO_0Z0Z_8),
            .ltout(),
            .carryin(bfn_10_22_0_),
            .carryout(un1_init_pulses_cry_8),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_9_LC_10_22_1.C_ON=1'b1;
    defparam init_pulses_RNO_0_9_LC_10_22_1.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_9_LC_10_22_1.LUT_INIT=16'b1001100101100110;
    LogicCell40 init_pulses_RNO_0_9_LC_10_22_1 (
            .in0(_gnd_net_),
            .in1(N__4949),
            .in2(_gnd_net_),
            .in3(N__2418),
            .lcout(init_pulses_RNO_0Z0Z_9),
            .ltout(),
            .carryin(un1_init_pulses_cry_8),
            .carryout(un1_init_pulses_cry_9),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_10_LC_10_22_2.C_ON=1'b1;
    defparam init_pulses_RNO_0_10_LC_10_22_2.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_10_LC_10_22_2.LUT_INIT=16'b1001100101100110;
    LogicCell40 init_pulses_RNO_0_10_LC_10_22_2 (
            .in0(_gnd_net_),
            .in1(N__2808),
            .in2(_gnd_net_),
            .in3(N__2415),
            .lcout(init_pulses_RNO_0Z0Z_10),
            .ltout(),
            .carryin(un1_init_pulses_cry_9),
            .carryout(un1_init_pulses_cry_10),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_11_LC_10_22_3.C_ON=1'b1;
    defparam init_pulses_RNO_0_11_LC_10_22_3.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_11_LC_10_22_3.LUT_INIT=16'b1001100101100110;
    LogicCell40 init_pulses_RNO_0_11_LC_10_22_3 (
            .in0(_gnd_net_),
            .in1(N__2726),
            .in2(_gnd_net_),
            .in3(N__2406),
            .lcout(init_pulses_RNO_0Z0Z_11),
            .ltout(),
            .carryin(un1_init_pulses_cry_10),
            .carryout(un1_init_pulses_cry_11),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_12_LC_10_22_4.C_ON=1'b1;
    defparam init_pulses_RNO_0_12_LC_10_22_4.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_12_LC_10_22_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 init_pulses_RNO_0_12_LC_10_22_4 (
            .in0(_gnd_net_),
            .in1(N__4022),
            .in2(N__2849),
            .in3(N__2397),
            .lcout(init_pulses_RNO_0Z0Z_12),
            .ltout(),
            .carryin(un1_init_pulses_cry_11),
            .carryout(un1_init_pulses_cry_12),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_13_LC_10_22_5.C_ON=1'b1;
    defparam init_pulses_RNO_0_13_LC_10_22_5.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_13_LC_10_22_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 init_pulses_RNO_0_13_LC_10_22_5 (
            .in0(_gnd_net_),
            .in1(N__2759),
            .in2(N__3087),
            .in3(N__2388),
            .lcout(init_pulses_RNO_0Z0Z_13),
            .ltout(),
            .carryin(un1_init_pulses_cry_12),
            .carryout(un1_init_pulses_cry_13),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_14_LC_10_22_6.C_ON=1'b1;
    defparam init_pulses_RNO_0_14_LC_10_22_6.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_14_LC_10_22_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 init_pulses_RNO_0_14_LC_10_22_6 (
            .in0(_gnd_net_),
            .in1(N__2606),
            .in2(N__2850),
            .in3(N__2589),
            .lcout(init_pulses_RNO_0Z0Z_14),
            .ltout(),
            .carryin(un1_init_pulses_cry_13),
            .carryout(un1_init_pulses_cry_14),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_15_LC_10_22_7.C_ON=1'b1;
    defparam init_pulses_RNO_0_15_LC_10_22_7.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_15_LC_10_22_7.LUT_INIT=16'b1001100101100110;
    LogicCell40 init_pulses_RNO_0_15_LC_10_22_7 (
            .in0(_gnd_net_),
            .in1(N__2819),
            .in2(_gnd_net_),
            .in3(N__2580),
            .lcout(init_pulses_RNO_0Z0Z_15),
            .ltout(),
            .carryin(un1_init_pulses_cry_14),
            .carryout(un1_init_pulses_cry_15),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_16_LC_10_23_0.C_ON=1'b1;
    defparam init_pulses_RNO_0_16_LC_10_23_0.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_16_LC_10_23_0.LUT_INIT=16'b1001100101100110;
    LogicCell40 init_pulses_RNO_0_16_LC_10_23_0 (
            .in0(_gnd_net_),
            .in1(N__3995),
            .in2(_gnd_net_),
            .in3(N__2577),
            .lcout(init_pulses_RNO_0Z0Z_16),
            .ltout(),
            .carryin(bfn_10_23_0_),
            .carryout(un1_init_pulses_cry_16),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_17_LC_10_23_1.C_ON=1'b1;
    defparam init_pulses_RNO_0_17_LC_10_23_1.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_17_LC_10_23_1.LUT_INIT=16'b1001100101100110;
    LogicCell40 init_pulses_RNO_0_17_LC_10_23_1 (
            .in0(_gnd_net_),
            .in1(N__2774),
            .in2(_gnd_net_),
            .in3(N__2574),
            .lcout(init_pulses_RNO_0Z0Z_17),
            .ltout(),
            .carryin(un1_init_pulses_cry_16),
            .carryout(un1_init_pulses_cry_17),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_RNO_0_18_LC_10_23_2.C_ON=1'b0;
    defparam init_pulses_RNO_0_18_LC_10_23_2.SEQ_MODE=4'b0000;
    defparam init_pulses_RNO_0_18_LC_10_23_2.LUT_INIT=16'b0101010110101010;
    LogicCell40 init_pulses_RNO_0_18_LC_10_23_2 (
            .in0(N__4925),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__2571),
            .lcout(),
            .ltout(init_pulses_RNO_0Z0Z_18_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_18_LC_10_23_3.C_ON=1'b0;
    defparam init_pulses_18_LC_10_23_3.SEQ_MODE=4'b1000;
    defparam init_pulses_18_LC_10_23_3.LUT_INIT=16'b0001000001010000;
    LogicCell40 init_pulses_18_LC_10_23_3 (
            .in0(N__2546),
            .in1(N__3026),
            .in2(N__2568),
            .in3(N__2714),
            .lcout(init_pulsesZ0Z_18),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4752),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_10_LC_10_23_4.C_ON=1'b0;
    defparam init_pulses_10_LC_10_23_4.SEQ_MODE=4'b1000;
    defparam init_pulses_10_LC_10_23_4.LUT_INIT=16'b0001001100000000;
    LogicCell40 init_pulses_10_LC_10_23_4 (
            .in0(N__2711),
            .in1(N__2541),
            .in2(N__3061),
            .in3(N__2565),
            .lcout(init_pulsesZ0Z_10),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4752),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_16_LC_10_23_5.C_ON=1'b0;
    defparam init_pulses_16_LC_10_23_5.SEQ_MODE=4'b1000;
    defparam init_pulses_16_LC_10_23_5.LUT_INIT=16'b0000111100001000;
    LogicCell40 init_pulses_16_LC_10_23_5 (
            .in0(N__3025),
            .in1(N__2713),
            .in2(N__2553),
            .in3(N__2559),
            .lcout(init_pulsesZ0Z_16),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4752),
            .ce(),
            .sr(_gnd_net_));
    defparam init_pulses_17_LC_10_23_6.C_ON=1'b0;
    defparam init_pulses_17_LC_10_23_6.SEQ_MODE=4'b1000;
    defparam init_pulses_17_LC_10_23_6.LUT_INIT=16'b0011001100100000;
    LogicCell40 init_pulses_17_LC_10_23_6 (
            .in0(N__2712),
            .in1(N__2545),
            .in2(N__3062),
            .in3(N__2466),
            .lcout(init_pulsesZ0Z_17),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4752),
            .ce(),
            .sr(_gnd_net_));
    defparam pulses2count_RNO_0_11_LC_10_23_7.C_ON=1'b0;
    defparam pulses2count_RNO_0_11_LC_10_23_7.SEQ_MODE=4'b0000;
    defparam pulses2count_RNO_0_11_LC_10_23_7.LUT_INIT=16'b0000011100001111;
    LogicCell40 pulses2count_RNO_0_11_LC_10_23_7 (
            .in0(N__3704),
            .in1(N__3631),
            .in2(N__3546),
            .in3(N__3451),
            .lcout(pulses2count_8_0_iv_0_1_10_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam pulses2count_15_LC_10_24_0.C_ON=1'b0;
    defparam pulses2count_15_LC_10_24_0.SEQ_MODE=4'b1000;
    defparam pulses2count_15_LC_10_24_0.LUT_INIT=16'b1000100010001000;
    LogicCell40 pulses2count_15_LC_10_24_0 (
            .in0(N__4855),
            .in1(N__2820),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(pulses2countZ0Z_15),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4748),
            .ce(N__4681),
            .sr(_gnd_net_));
    defparam pulses2count_10_LC_10_24_1.C_ON=1'b0;
    defparam pulses2count_10_LC_10_24_1.SEQ_MODE=4'b1000;
    defparam pulses2count_10_LC_10_24_1.LUT_INIT=16'b1100110000000000;
    LogicCell40 pulses2count_10_LC_10_24_1 (
            .in0(_gnd_net_),
            .in1(N__4851),
            .in2(_gnd_net_),
            .in3(N__2807),
            .lcout(pulses2countZ0Z_10),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4748),
            .ce(N__4681),
            .sr(_gnd_net_));
    defparam pulses2count_0_LC_10_24_2.C_ON=1'b0;
    defparam pulses2count_0_LC_10_24_2.SEQ_MODE=4'b1000;
    defparam pulses2count_0_LC_10_24_2.LUT_INIT=16'b1101110111011101;
    LogicCell40 pulses2count_0_LC_10_24_2 (
            .in0(N__4854),
            .in1(N__2792),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(pulses2countZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4748),
            .ce(N__4681),
            .sr(_gnd_net_));
    defparam pulses2count_17_LC_10_24_3.C_ON=1'b0;
    defparam pulses2count_17_LC_10_24_3.SEQ_MODE=4'b1000;
    defparam pulses2count_17_LC_10_24_3.LUT_INIT=16'b1100110000000000;
    LogicCell40 pulses2count_17_LC_10_24_3 (
            .in0(_gnd_net_),
            .in1(N__4852),
            .in2(_gnd_net_),
            .in3(N__2775),
            .lcout(pulses2countZ0Z_17),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4748),
            .ce(N__4681),
            .sr(_gnd_net_));
    defparam pulses2count_13_LC_10_24_4.C_ON=1'b0;
    defparam pulses2count_13_LC_10_24_4.SEQ_MODE=4'b1000;
    defparam pulses2count_13_LC_10_24_4.LUT_INIT=16'b0100010001010101;
    LogicCell40 pulses2count_13_LC_10_24_4 (
            .in0(N__2621),
            .in1(N__2763),
            .in2(_gnd_net_),
            .in3(N__2874),
            .lcout(pulses2countZ0Z_13),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4748),
            .ce(N__4681),
            .sr(_gnd_net_));
    defparam pulses2count_6_LC_10_24_5.C_ON=1'b0;
    defparam pulses2count_6_LC_10_24_5.SEQ_MODE=4'b1000;
    defparam pulses2count_6_LC_10_24_5.LUT_INIT=16'b1100110011111111;
    LogicCell40 pulses2count_6_LC_10_24_5 (
            .in0(_gnd_net_),
            .in1(N__2748),
            .in2(_gnd_net_),
            .in3(N__4853),
            .lcout(pulses2countZ0Z_6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4748),
            .ce(N__4681),
            .sr(_gnd_net_));
    defparam pulses2count_11_LC_10_24_6.C_ON=1'b0;
    defparam pulses2count_11_LC_10_24_6.SEQ_MODE=4'b1000;
    defparam pulses2count_11_LC_10_24_6.LUT_INIT=16'b0000111110001111;
    LogicCell40 pulses2count_11_LC_10_24_6 (
            .in0(N__2730),
            .in1(N__2715),
            .in2(N__2634),
            .in3(N__3715),
            .lcout(pulses2countZ0Z_11),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4748),
            .ce(N__4681),
            .sr(_gnd_net_));
    defparam pulses2count_14_LC_10_24_7.C_ON=1'b0;
    defparam pulses2count_14_LC_10_24_7.SEQ_MODE=4'b1000;
    defparam pulses2count_14_LC_10_24_7.LUT_INIT=16'b1110111011001100;
    LogicCell40 pulses2count_14_LC_10_24_7 (
            .in0(N__2873),
            .in1(N__2622),
            .in2(_gnd_net_),
            .in3(N__2613),
            .lcout(pulses2countZ0Z_14),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4748),
            .ce(N__4681),
            .sr(_gnd_net_));
    defparam counter11_0_I_45_c_RNO_LC_10_25_5.C_ON=1'b0;
    defparam counter11_0_I_45_c_RNO_LC_10_25_5.SEQ_MODE=4'b0000;
    defparam counter11_0_I_45_c_RNO_LC_10_25_5.LUT_INIT=16'b0111110110111110;
    LogicCell40 counter11_0_I_45_c_RNO_LC_10_25_5 (
            .in0(N__2922),
            .in1(N__4218),
            .in2(N__2916),
            .in3(N__3320),
            .lcout(counter11_0_I_45_c_RNOZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam ppm_output_reg_LC_10_26_6.C_ON=1'b0;
    defparam ppm_output_reg_LC_10_26_6.SEQ_MODE=4'b1000;
    defparam ppm_output_reg_LC_10_26_6.LUT_INIT=16'b0011110000011110;
    LogicCell40 ppm_output_reg_LC_10_26_6 (
            .in0(N__4380),
            .in1(N__4405),
            .in2(N__2900),
            .in3(N__4344),
            .lcout(ppm_output_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4744),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_1_LC_11_20_2.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_1_LC_11_20_2.SEQ_MODE=4'b1000;
    defparam CHOOSE_CHANNEL_fast_1_LC_11_20_2.LUT_INIT=16'b0011001111001100;
    LogicCell40 CHOOSE_CHANNEL_fast_1_LC_11_20_2 (
            .in0(_gnd_net_),
            .in1(N__3455),
            .in2(_gnd_net_),
            .in3(N__3851),
            .lcout(CHOOSE_CHANNEL_fastZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4757),
            .ce(N__4675),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_RNICOMD1_2_LC_11_21_0.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_RNICOMD1_2_LC_11_21_0.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_fast_RNICOMD1_2_LC_11_21_0.LUT_INIT=16'b0000001101000111;
    LogicCell40 CHOOSE_CHANNEL_fast_RNICOMD1_2_LC_11_21_0 (
            .in0(N__4537),
            .in1(N__3758),
            .in2(N__3797),
            .in3(N__4475),
            .lcout(un15_0_iv_1_12),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_RNIEQVB1_0_LC_11_21_1.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_RNIEQVB1_0_LC_11_21_1.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_fast_RNIEQVB1_0_LC_11_21_1.LUT_INIT=16'b0000000000000011;
    LogicCell40 CHOOSE_CHANNEL_fast_RNIEQVB1_0_LC_11_21_1 (
            .in0(_gnd_net_),
            .in1(N__3788),
            .in2(N__3852),
            .in3(N__3818),
            .lcout(N_51),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_RNI8KMD1_0_LC_11_21_2.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_RNI8KMD1_0_LC_11_21_2.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_fast_RNI8KMD1_0_LC_11_21_2.LUT_INIT=16'b0000000100000000;
    LogicCell40 CHOOSE_CHANNEL_fast_RNI8KMD1_0_LC_11_21_2 (
            .in0(N__3819),
            .in1(N__4476),
            .in2(N__4559),
            .in3(N__3848),
            .lcout(),
            .ltout(init_pulses_2_sqmuxa_0_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_RNIIG2M4_2_LC_11_21_3.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_RNIIG2M4_2_LC_11_21_3.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_fast_RNIIG2M4_2_LC_11_21_3.LUT_INIT=16'b0011011110111111;
    LogicCell40 CHOOSE_CHANNEL_fast_RNIIG2M4_2_LC_11_21_3 (
            .in0(N__3759),
            .in1(N__2883),
            .in2(N__2877),
            .in3(N__2864),
            .lcout(un15_0_12),
            .ltout(un15_0_12_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_RNIIG2M4_0_2_LC_11_21_4.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_RNIIG2M4_0_2_LC_11_21_4.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_fast_RNIIG2M4_0_2_LC_11_21_4.LUT_INIT=16'b0000111100001111;
    LogicCell40 CHOOSE_CHANNEL_fast_RNIIG2M4_0_2_LC_11_21_4 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__2853),
            .in3(_gnd_net_),
            .lcout(N_323_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_RNIU3LQ1_0_LC_11_21_5.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_RNIU3LQ1_0_LC_11_21_5.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_fast_RNIU3LQ1_0_LC_11_21_5.LUT_INIT=16'b1010000010000000;
    LogicCell40 CHOOSE_CHANNEL_fast_RNIU3LQ1_0_LC_11_21_5 (
            .in0(N__3795),
            .in1(N__3820),
            .in2(N__3765),
            .in3(N__3850),
            .lcout(N_43),
            .ltout(N_43_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam PPM_STATE_RNI7CM54_0_LC_11_21_6.C_ON=1'b0;
    defparam PPM_STATE_RNI7CM54_0_LC_11_21_6.SEQ_MODE=4'b0000;
    defparam PPM_STATE_RNI7CM54_0_LC_11_21_6.LUT_INIT=16'b0000000000000001;
    LogicCell40 PPM_STATE_RNI7CM54_0_LC_11_21_6 (
            .in0(N__4791),
            .in1(N__4541),
            .in2(N__3129),
            .in3(N__4477),
            .lcout(un15_0_i_0_0),
            .ltout(un15_0_i_0_0_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_RNIPSOR8_0_2_LC_11_21_7.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_RNIPSOR8_0_2_LC_11_21_7.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_fast_RNIPSOR8_0_2_LC_11_21_7.LUT_INIT=16'b1111000000000000;
    LogicCell40 CHOOSE_CHANNEL_fast_RNIPSOR8_0_2_LC_11_21_7 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__3126),
            .in3(N__3113),
            .lcout(CHOOSE_CHANNEL_fast_RNIPSOR8_0Z0Z_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_RNIPSOR8_2_LC_11_22_2.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_RNIPSOR8_2_LC_11_22_2.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_fast_RNIPSOR8_2_LC_11_22_2.LUT_INIT=16'b1100110000000000;
    LogicCell40 CHOOSE_CHANNEL_fast_RNIPSOR8_2_LC_11_22_2 (
            .in0(_gnd_net_),
            .in1(N__3114),
            .in2(_gnd_net_),
            .in3(N__3100),
            .lcout(CHOOSE_CHANNEL_fast_RNIPSOR8Z0Z_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam PPM_STATE_RNO_0_1_LC_11_22_3.C_ON=1'b0;
    defparam PPM_STATE_RNO_0_1_LC_11_22_3.SEQ_MODE=4'b0000;
    defparam PPM_STATE_RNO_0_1_LC_11_22_3.LUT_INIT=16'b0101000001011010;
    LogicCell40 PPM_STATE_RNO_0_1_LC_11_22_3 (
            .in0(N__4480),
            .in1(_gnd_net_),
            .in2(N__4561),
            .in3(N__4349),
            .lcout(),
            .ltout(PPM_STATE_r_1_1_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam PPM_STATE_1_LC_11_22_4.C_ON=1'b0;
    defparam PPM_STATE_1_LC_11_22_4.SEQ_MODE=4'b1000;
    defparam PPM_STATE_1_LC_11_22_4.LUT_INIT=16'b1011111110110000;
    LogicCell40 PPM_STATE_1_LC_11_22_4 (
            .in0(N__3633),
            .in1(N__4410),
            .in2(N__3078),
            .in3(N__4549),
            .lcout(PPM_STATEZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4753),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_RNII9B21_3_LC_11_22_5.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_RNII9B21_3_LC_11_22_5.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_RNII9B21_3_LC_11_22_5.LUT_INIT=16'b0000010000000000;
    LogicCell40 CHOOSE_CHANNEL_RNII9B21_3_LC_11_22_5 (
            .in0(N__4479),
            .in1(N__3527),
            .in2(N__4560),
            .in3(N__3703),
            .lcout(init_pulses_6_sqmuxa_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam PPM_STATE_RNIB4CG_0_LC_11_22_6.C_ON=1'b0;
    defparam PPM_STATE_RNIB4CG_0_LC_11_22_6.SEQ_MODE=4'b0000;
    defparam PPM_STATE_RNIB4CG_0_LC_11_22_6.LUT_INIT=16'b0011001111001100;
    LogicCell40 PPM_STATE_RNIB4CG_0_LC_11_22_6 (
            .in0(_gnd_net_),
            .in1(N__4542),
            .in2(_gnd_net_),
            .in3(N__4478),
            .lcout(N_36_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_21_c_RNO_LC_11_23_0.C_ON=1'b0;
    defparam counter11_0_I_21_c_RNO_LC_11_23_0.SEQ_MODE=4'b0000;
    defparam counter11_0_I_21_c_RNO_LC_11_23_0.LUT_INIT=16'b0111101111011110;
    LogicCell40 counter11_0_I_21_c_RNO_LC_11_23_0 (
            .in0(N__4239),
            .in1(N__4299),
            .in2(N__2931),
            .in3(N__2955),
            .lcout(counter11_0_I_21_c_RNOZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam pulses2count_7_LC_11_23_2.C_ON=1'b0;
    defparam pulses2count_7_LC_11_23_2.SEQ_MODE=4'b1000;
    defparam pulses2count_7_LC_11_23_2.LUT_INIT=16'b1100110000000000;
    LogicCell40 pulses2count_7_LC_11_23_2 (
            .in0(_gnd_net_),
            .in1(N__2949),
            .in2(_gnd_net_),
            .in3(N__4844),
            .lcout(pulses2countZ0Z_7),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4749),
            .ce(N__4679),
            .sr(_gnd_net_));
    defparam counter11_0_I_1_c_LC_11_24_0.C_ON=1'b1;
    defparam counter11_0_I_1_c_LC_11_24_0.SEQ_MODE=4'b0000;
    defparam counter11_0_I_1_c_LC_11_24_0.LUT_INIT=16'b0000000000000000;
    LogicCell40 counter11_0_I_1_c_LC_11_24_0 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__3234),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(bfn_11_24_0_),
            .carryout(counter11_0_data_tmp_0),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_9_c_LC_11_24_1.C_ON=1'b1;
    defparam counter11_0_I_9_c_LC_11_24_1.SEQ_MODE=4'b0000;
    defparam counter11_0_I_9_c_LC_11_24_1.LUT_INIT=16'b0000000000000000;
    LogicCell40 counter11_0_I_9_c_LC_11_24_1 (
            .in0(_gnd_net_),
            .in1(N__4110),
            .in2(N__3897),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(counter11_0_data_tmp_0),
            .carryout(counter11_0_data_tmp_1),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_15_c_LC_11_24_2.C_ON=1'b1;
    defparam counter11_0_I_15_c_LC_11_24_2.SEQ_MODE=4'b0000;
    defparam counter11_0_I_15_c_LC_11_24_2.LUT_INIT=16'b0000000000000000;
    LogicCell40 counter11_0_I_15_c_LC_11_24_2 (
            .in0(_gnd_net_),
            .in1(N__4100),
            .in2(N__4134),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(counter11_0_data_tmp_1),
            .carryout(counter11_0_data_tmp_2),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_21_c_LC_11_24_3.C_ON=1'b1;
    defparam counter11_0_I_21_c_LC_11_24_3.SEQ_MODE=4'b0000;
    defparam counter11_0_I_21_c_LC_11_24_3.LUT_INIT=16'b0000000000000000;
    LogicCell40 counter11_0_I_21_c_LC_11_24_3 (
            .in0(_gnd_net_),
            .in1(N__4105),
            .in2(N__3144),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(counter11_0_data_tmp_2),
            .carryout(counter11_0_data_tmp_3),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_27_c_LC_11_24_4.C_ON=1'b1;
    defparam counter11_0_I_27_c_LC_11_24_4.SEQ_MODE=4'b0000;
    defparam counter11_0_I_27_c_LC_11_24_4.LUT_INIT=16'b0000000000000000;
    LogicCell40 counter11_0_I_27_c_LC_11_24_4 (
            .in0(_gnd_net_),
            .in1(N__4992),
            .in2(N__4117),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(counter11_0_data_tmp_3),
            .carryout(counter11_0_data_tmp_4),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_33_c_LC_11_24_5.C_ON=1'b1;
    defparam counter11_0_I_33_c_LC_11_24_5.SEQ_MODE=4'b0000;
    defparam counter11_0_I_33_c_LC_11_24_5.LUT_INIT=16'b0000000000000000;
    LogicCell40 counter11_0_I_33_c_LC_11_24_5 (
            .in0(_gnd_net_),
            .in1(N__4109),
            .in2(N__3210),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(counter11_0_data_tmp_4),
            .carryout(counter11_0_data_tmp_5),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_39_c_LC_11_24_6.C_ON=1'b1;
    defparam counter11_0_I_39_c_LC_11_24_6.SEQ_MODE=4'b0000;
    defparam counter11_0_I_39_c_LC_11_24_6.LUT_INIT=16'b0000000000000000;
    LogicCell40 counter11_0_I_39_c_LC_11_24_6 (
            .in0(_gnd_net_),
            .in1(N__4101),
            .in2(N__3195),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(counter11_0_data_tmp_5),
            .carryout(counter11_0_data_tmp_6),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_45_c_LC_11_24_7.C_ON=1'b1;
    defparam counter11_0_I_45_c_LC_11_24_7.SEQ_MODE=4'b0000;
    defparam counter11_0_I_45_c_LC_11_24_7.LUT_INIT=16'b0000000000000000;
    LogicCell40 counter11_0_I_45_c_LC_11_24_7 (
            .in0(_gnd_net_),
            .in1(N__3135),
            .in2(N__4116),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(counter11_0_data_tmp_6),
            .carryout(counter11_0_data_tmp_7),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_51_c_LC_11_25_0.C_ON=1'b1;
    defparam counter11_0_I_51_c_LC_11_25_0.SEQ_MODE=4'b0000;
    defparam counter11_0_I_51_c_LC_11_25_0.LUT_INIT=16'b0000000000000000;
    LogicCell40 counter11_0_I_51_c_LC_11_25_0 (
            .in0(_gnd_net_),
            .in1(N__4118),
            .in2(N__3180),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(bfn_11_25_0_),
            .carryout(counter11_0_data_tmp_8),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_57_c_LC_11_25_1.C_ON=1'b1;
    defparam counter11_0_I_57_c_LC_11_25_1.SEQ_MODE=4'b0000;
    defparam counter11_0_I_57_c_LC_11_25_1.LUT_INIT=16'b0000000000000000;
    LogicCell40 counter11_0_I_57_c_LC_11_25_1 (
            .in0(_gnd_net_),
            .in1(N__4884),
            .in2(N__4122),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(counter11_0_data_tmp_8),
            .carryout(counter11_0_N_2),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_N_2_THRU_LUT4_0_LC_11_25_2.C_ON=1'b0;
    defparam counter11_0_N_2_THRU_LUT4_0_LC_11_25_2.SEQ_MODE=4'b0000;
    defparam counter11_0_N_2_THRU_LUT4_0_LC_11_25_2.LUT_INIT=16'b1111111100000000;
    LogicCell40 counter11_0_N_2_THRU_LUT4_0_LC_11_25_2 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__3246),
            .lcout(counter11_0_N_2_THRU_CO),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_1_c_RNO_LC_11_25_3.C_ON=1'b0;
    defparam counter11_0_I_1_c_RNO_LC_11_25_3.SEQ_MODE=4'b0000;
    defparam counter11_0_I_1_c_RNO_LC_11_25_3.LUT_INIT=16'b0111110110111110;
    LogicCell40 counter11_0_I_1_c_RNO_LC_11_25_3 (
            .in0(N__4035),
            .in1(N__4276),
            .in2(N__3243),
            .in3(N__3292),
            .lcout(counter11_0_I_1_c_RNOZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_33_c_RNO_LC_11_25_4.C_ON=1'b0;
    defparam counter11_0_I_33_c_RNO_LC_11_25_4.SEQ_MODE=4'b0000;
    defparam counter11_0_I_33_c_RNO_LC_11_25_4.LUT_INIT=16'b0111110110111110;
    LogicCell40 counter11_0_I_33_c_RNO_LC_11_25_4 (
            .in0(N__4260),
            .in1(N__4628),
            .in2(N__3225),
            .in3(N__3216),
            .lcout(counter11_0_I_33_c_RNOZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_39_c_RNO_LC_11_25_5.C_ON=1'b0;
    defparam counter11_0_I_39_c_RNO_LC_11_25_5.SEQ_MODE=4'b0000;
    defparam counter11_0_I_39_c_RNO_LC_11_25_5.LUT_INIT=16'b0111110110111110;
    LogicCell40 counter11_0_I_39_c_RNO_LC_11_25_5 (
            .in0(N__5067),
            .in1(N__5088),
            .in2(N__4011),
            .in3(N__3201),
            .lcout(counter11_0_I_39_c_RNOZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_51_c_RNO_LC_11_25_6.C_ON=1'b0;
    defparam counter11_0_I_51_c_RNO_LC_11_25_6.SEQ_MODE=4'b0000;
    defparam counter11_0_I_51_c_RNO_LC_11_25_6.LUT_INIT=16'b0111110110111110;
    LogicCell40 counter11_0_I_51_c_RNO_LC_11_25_6 (
            .in0(N__3344),
            .in1(N__4586),
            .in2(N__3984),
            .in3(N__3186),
            .lcout(counter11_0_I_51_c_RNOZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_0_LC_11_26_0.C_ON=1'b1;
    defparam counter_0_LC_11_26_0.SEQ_MODE=4'b1000;
    defparam counter_0_LC_11_26_0.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_0_LC_11_26_0 (
            .in0(_gnd_net_),
            .in1(N__4278),
            .in2(N__3170),
            .in3(N__3171),
            .lcout(counterZ0Z_0),
            .ltout(),
            .carryin(bfn_11_26_0_),
            .carryout(un1_counter_13_cry_0),
            .clk(N__4742),
            .ce(),
            .sr(N__3360));
    defparam counter_1_LC_11_26_1.C_ON=1'b1;
    defparam counter_1_LC_11_26_1.SEQ_MODE=4'b1000;
    defparam counter_1_LC_11_26_1.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_1_LC_11_26_1 (
            .in0(_gnd_net_),
            .in1(N__3296),
            .in2(_gnd_net_),
            .in3(N__3147),
            .lcout(counterZ0Z_1),
            .ltout(),
            .carryin(un1_counter_13_cry_0),
            .carryout(un1_counter_13_cry_1),
            .clk(N__4742),
            .ce(),
            .sr(N__3360));
    defparam counter_2_LC_11_26_2.C_ON=1'b1;
    defparam counter_2_LC_11_26_2.SEQ_MODE=4'b1000;
    defparam counter_2_LC_11_26_2.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_2_LC_11_26_2 (
            .in0(_gnd_net_),
            .in1(N__4605),
            .in2(_gnd_net_),
            .in3(N__3276),
            .lcout(counterZ0Z_2),
            .ltout(),
            .carryin(un1_counter_13_cry_1),
            .carryout(un1_counter_13_cry_2),
            .clk(N__4742),
            .ce(),
            .sr(N__3360));
    defparam counter_3_LC_11_26_3.C_ON=1'b1;
    defparam counter_3_LC_11_26_3.SEQ_MODE=4'b1000;
    defparam counter_3_LC_11_26_3.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_3_LC_11_26_3 (
            .in0(_gnd_net_),
            .in1(N__4647),
            .in2(_gnd_net_),
            .in3(N__3273),
            .lcout(counterZ0Z_3),
            .ltout(),
            .carryin(un1_counter_13_cry_2),
            .carryout(un1_counter_13_cry_3),
            .clk(N__4742),
            .ce(),
            .sr(N__3360));
    defparam counter_4_LC_11_26_4.C_ON=1'b1;
    defparam counter_4_LC_11_26_4.SEQ_MODE=4'b1000;
    defparam counter_4_LC_11_26_4.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_4_LC_11_26_4 (
            .in0(_gnd_net_),
            .in1(N__4151),
            .in2(_gnd_net_),
            .in3(N__3270),
            .lcout(counterZ0Z_4),
            .ltout(),
            .carryin(un1_counter_13_cry_3),
            .carryout(un1_counter_13_cry_4),
            .clk(N__4742),
            .ce(),
            .sr(N__3360));
    defparam counter_5_LC_11_26_5.C_ON=1'b1;
    defparam counter_5_LC_11_26_5.SEQ_MODE=4'b1000;
    defparam counter_5_LC_11_26_5.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_5_LC_11_26_5 (
            .in0(_gnd_net_),
            .in1(N__4176),
            .in2(_gnd_net_),
            .in3(N__3267),
            .lcout(counterZ0Z_5),
            .ltout(),
            .carryin(un1_counter_13_cry_4),
            .carryout(un1_counter_13_cry_5),
            .clk(N__4742),
            .ce(),
            .sr(N__3360));
    defparam counter_6_LC_11_26_6.C_ON=1'b1;
    defparam counter_6_LC_11_26_6.SEQ_MODE=4'b1000;
    defparam counter_6_LC_11_26_6.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_6_LC_11_26_6 (
            .in0(_gnd_net_),
            .in1(N__4298),
            .in2(_gnd_net_),
            .in3(N__3264),
            .lcout(counterZ0Z_6),
            .ltout(),
            .carryin(un1_counter_13_cry_5),
            .carryout(un1_counter_13_cry_6),
            .clk(N__4742),
            .ce(),
            .sr(N__3360));
    defparam counter_7_LC_11_26_7.C_ON=1'b1;
    defparam counter_7_LC_11_26_7.SEQ_MODE=4'b1000;
    defparam counter_7_LC_11_26_7.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_7_LC_11_26_7 (
            .in0(_gnd_net_),
            .in1(N__4238),
            .in2(_gnd_net_),
            .in3(N__3261),
            .lcout(counterZ0Z_7),
            .ltout(),
            .carryin(un1_counter_13_cry_6),
            .carryout(un1_counter_13_cry_7),
            .clk(N__4742),
            .ce(),
            .sr(N__3360));
    defparam counter_8_LC_11_27_0.C_ON=1'b1;
    defparam counter_8_LC_11_27_0.SEQ_MODE=4'b1000;
    defparam counter_8_LC_11_27_0.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_8_LC_11_27_0 (
            .in0(_gnd_net_),
            .in1(N__5036),
            .in2(_gnd_net_),
            .in3(N__3258),
            .lcout(counterZ0Z_8),
            .ltout(),
            .carryin(bfn_11_27_0_),
            .carryout(un1_counter_13_cry_8),
            .clk(N__4740),
            .ce(),
            .sr(N__3359));
    defparam counter_9_LC_11_27_1.C_ON=1'b1;
    defparam counter_9_LC_11_27_1.SEQ_MODE=4'b1000;
    defparam counter_9_LC_11_27_1.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_9_LC_11_27_1 (
            .in0(_gnd_net_),
            .in1(N__5014),
            .in2(_gnd_net_),
            .in3(N__3255),
            .lcout(counterZ0Z_9),
            .ltout(),
            .carryin(un1_counter_13_cry_8),
            .carryout(un1_counter_13_cry_9),
            .clk(N__4740),
            .ce(),
            .sr(N__3359));
    defparam counter_10_LC_11_27_2.C_ON=1'b1;
    defparam counter_10_LC_11_27_2.SEQ_MODE=4'b1000;
    defparam counter_10_LC_11_27_2.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_10_LC_11_27_2 (
            .in0(_gnd_net_),
            .in1(N__4627),
            .in2(_gnd_net_),
            .in3(N__3252),
            .lcout(counterZ0Z_10),
            .ltout(),
            .carryin(un1_counter_13_cry_9),
            .carryout(un1_counter_13_cry_10),
            .clk(N__4740),
            .ce(),
            .sr(N__3359));
    defparam counter_11_LC_11_27_3.C_ON=1'b1;
    defparam counter_11_LC_11_27_3.SEQ_MODE=4'b1000;
    defparam counter_11_LC_11_27_3.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_11_LC_11_27_3 (
            .in0(_gnd_net_),
            .in1(N__4259),
            .in2(_gnd_net_),
            .in3(N__3249),
            .lcout(counterZ0Z_11),
            .ltout(),
            .carryin(un1_counter_13_cry_10),
            .carryout(un1_counter_13_cry_11),
            .clk(N__4740),
            .ce(),
            .sr(N__3359));
    defparam counter_12_LC_11_27_4.C_ON=1'b1;
    defparam counter_12_LC_11_27_4.SEQ_MODE=4'b1000;
    defparam counter_12_LC_11_27_4.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_12_LC_11_27_4 (
            .in0(_gnd_net_),
            .in1(N__5087),
            .in2(_gnd_net_),
            .in3(N__3381),
            .lcout(counterZ0Z_12),
            .ltout(),
            .carryin(un1_counter_13_cry_11),
            .carryout(un1_counter_13_cry_12),
            .clk(N__4740),
            .ce(),
            .sr(N__3359));
    defparam counter_13_LC_11_27_5.C_ON=1'b1;
    defparam counter_13_LC_11_27_5.SEQ_MODE=4'b1000;
    defparam counter_13_LC_11_27_5.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_13_LC_11_27_5 (
            .in0(_gnd_net_),
            .in1(N__5063),
            .in2(_gnd_net_),
            .in3(N__3378),
            .lcout(counterZ0Z_13),
            .ltout(),
            .carryin(un1_counter_13_cry_12),
            .carryout(un1_counter_13_cry_13),
            .clk(N__4740),
            .ce(),
            .sr(N__3359));
    defparam counter_14_LC_11_27_6.C_ON=1'b1;
    defparam counter_14_LC_11_27_6.SEQ_MODE=4'b1000;
    defparam counter_14_LC_11_27_6.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_14_LC_11_27_6 (
            .in0(_gnd_net_),
            .in1(N__3319),
            .in2(_gnd_net_),
            .in3(N__3375),
            .lcout(counterZ0Z_14),
            .ltout(),
            .carryin(un1_counter_13_cry_13),
            .carryout(un1_counter_13_cry_14),
            .clk(N__4740),
            .ce(),
            .sr(N__3359));
    defparam counter_15_LC_11_27_7.C_ON=1'b1;
    defparam counter_15_LC_11_27_7.SEQ_MODE=4'b1000;
    defparam counter_15_LC_11_27_7.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_15_LC_11_27_7 (
            .in0(_gnd_net_),
            .in1(N__4217),
            .in2(_gnd_net_),
            .in3(N__3372),
            .lcout(counterZ0Z_15),
            .ltout(),
            .carryin(un1_counter_13_cry_14),
            .carryout(un1_counter_13_cry_15),
            .clk(N__4740),
            .ce(),
            .sr(N__3359));
    defparam counter_16_LC_11_28_0.C_ON=1'b1;
    defparam counter_16_LC_11_28_0.SEQ_MODE=4'b1000;
    defparam counter_16_LC_11_28_0.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_16_LC_11_28_0 (
            .in0(_gnd_net_),
            .in1(N__4585),
            .in2(_gnd_net_),
            .in3(N__3369),
            .lcout(counterZ0Z_16),
            .ltout(),
            .carryin(bfn_11_28_0_),
            .carryout(un1_counter_13_cry_16),
            .clk(N__4739),
            .ce(),
            .sr(N__3358));
    defparam counter_17_LC_11_28_1.C_ON=1'b1;
    defparam counter_17_LC_11_28_1.SEQ_MODE=4'b1000;
    defparam counter_17_LC_11_28_1.LUT_INIT=16'b1001100101100110;
    LogicCell40 counter_17_LC_11_28_1 (
            .in0(_gnd_net_),
            .in1(N__3343),
            .in2(_gnd_net_),
            .in3(N__3366),
            .lcout(counterZ0Z_17),
            .ltout(),
            .carryin(un1_counter_13_cry_16),
            .carryout(un1_counter_13_cry_17),
            .clk(N__4739),
            .ce(),
            .sr(N__3358));
    defparam counter_18_LC_11_28_2.C_ON=1'b0;
    defparam counter_18_LC_11_28_2.SEQ_MODE=4'b1000;
    defparam counter_18_LC_11_28_2.LUT_INIT=16'b0011001111001100;
    LogicCell40 counter_18_LC_11_28_2 (
            .in0(_gnd_net_),
            .in1(N__4910),
            .in2(_gnd_net_),
            .in3(N__3363),
            .lcout(counterZ0Z_18),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4739),
            .ce(),
            .sr(N__3358));
    defparam counter_RNI75D91_18_LC_11_30_5.C_ON=1'b0;
    defparam counter_RNI75D91_18_LC_11_30_5.SEQ_MODE=4'b0000;
    defparam counter_RNI75D91_18_LC_11_30_5.LUT_INIT=16'b0000000100000000;
    LogicCell40 counter_RNI75D91_18_LC_11_30_5 (
            .in0(N__3345),
            .in1(N__3321),
            .in2(N__4914),
            .in3(N__3297),
            .lcout(PPM_STATE_0_sqmuxa_1_14),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_0_LC_12_20_1.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_0_LC_12_20_1.SEQ_MODE=4'b1000;
    defparam CHOOSE_CHANNEL_fast_0_LC_12_20_1.LUT_INIT=16'b0000000001110111;
    LogicCell40 CHOOSE_CHANNEL_fast_0_LC_12_20_1 (
            .in0(N__3537),
            .in1(N__3708),
            .in2(_gnd_net_),
            .in3(N__3822),
            .lcout(CHOOSE_CHANNEL_fastZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4755),
            .ce(N__4674),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_2_LC_12_20_3.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_2_LC_12_20_3.SEQ_MODE=4'b1000;
    defparam CHOOSE_CHANNEL_fast_2_LC_12_20_3.LUT_INIT=16'b0000011110001000;
    LogicCell40 CHOOSE_CHANNEL_fast_2_LC_12_20_3 (
            .in0(N__3635),
            .in1(N__3456),
            .in2(N__3550),
            .in3(N__3764),
            .lcout(CHOOSE_CHANNEL_fastZ0Z_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4755),
            .ce(N__4674),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_3_LC_12_20_6.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_3_LC_12_20_6.SEQ_MODE=4'b1000;
    defparam CHOOSE_CHANNEL_fast_3_LC_12_20_6.LUT_INIT=16'b1000111110000000;
    LogicCell40 CHOOSE_CHANNEL_fast_3_LC_12_20_6 (
            .in0(N__3457),
            .in1(N__3636),
            .in2(N__3717),
            .in3(N__3796),
            .lcout(CHOOSE_CHANNEL_fastZ0Z_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4755),
            .ce(N__4674),
            .sr(_gnd_net_));
    defparam PPM_STATE_RNI981B2_0_LC_12_21_1.C_ON=1'b0;
    defparam PPM_STATE_RNI981B2_0_LC_12_21_1.SEQ_MODE=4'b0000;
    defparam PPM_STATE_RNI981B2_0_LC_12_21_1.LUT_INIT=16'b0000000000010001;
    LogicCell40 PPM_STATE_RNI981B2_0_LC_12_21_1 (
            .in0(N__3870),
            .in1(N__4485),
            .in2(_gnd_net_),
            .in3(N__4555),
            .lcout(N_30_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam PPM_STATE_RNO_0_0_LC_12_21_2.C_ON=1'b0;
    defparam PPM_STATE_RNO_0_0_LC_12_21_2.SEQ_MODE=4'b0000;
    defparam PPM_STATE_RNO_0_0_LC_12_21_2.LUT_INIT=16'b0000010100000101;
    LogicCell40 PPM_STATE_RNO_0_0_LC_12_21_2 (
            .in0(N__4486),
            .in1(_gnd_net_),
            .in2(N__4563),
            .in3(_gnd_net_),
            .lcout(N_15_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_fast_RNIU3LQ1_0_0_LC_12_21_5.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_fast_RNIU3LQ1_0_0_LC_12_21_5.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_fast_RNIU3LQ1_0_0_LC_12_21_5.LUT_INIT=16'b0000000000000001;
    LogicCell40 CHOOSE_CHANNEL_fast_RNIU3LQ1_0_0_LC_12_21_5 (
            .in0(N__3849),
            .in1(N__3821),
            .in2(N__3798),
            .in3(N__3763),
            .lcout(pulses2count22_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam PPM_STATE_0_LC_12_22_0.C_ON=1'b0;
    defparam PPM_STATE_0_LC_12_22_0.SEQ_MODE=4'b1001;
    defparam PPM_STATE_0_LC_12_22_0.LUT_INIT=16'b1000111110001000;
    LogicCell40 PPM_STATE_0_LC_12_22_0 (
            .in0(N__3462),
            .in1(N__4406),
            .in2(N__3726),
            .in3(N__4487),
            .lcout(PPM_STATEZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4747),
            .ce(),
            .sr(N__3738));
    defparam PPM_STATE_RNO_1_0_LC_12_23_0.C_ON=1'b0;
    defparam PPM_STATE_RNO_1_0_LC_12_23_0.SEQ_MODE=4'b0000;
    defparam PPM_STATE_RNO_1_0_LC_12_23_0.LUT_INIT=16'b0000000000110011;
    LogicCell40 PPM_STATE_RNO_1_0_LC_12_23_0 (
            .in0(_gnd_net_),
            .in1(N__4348),
            .in2(_gnd_net_),
            .in3(N__4554),
            .lcout(PPM_STATE_e_1_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam CHOOSE_CHANNEL_RNIA6U31_3_LC_12_23_3.C_ON=1'b0;
    defparam CHOOSE_CHANNEL_RNIA6U31_3_LC_12_23_3.SEQ_MODE=4'b0000;
    defparam CHOOSE_CHANNEL_RNIA6U31_3_LC_12_23_3.LUT_INIT=16'b1101100101110111;
    LogicCell40 CHOOSE_CHANNEL_RNIA6U31_3_LC_12_23_3 (
            .in0(N__3716),
            .in1(N__3632),
            .in2(N__3552),
            .in3(N__3461),
            .lcout(un1_init_pulses39_2_0_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam PPM_STATE_RNIB4CG_0_0_LC_12_23_4.C_ON=1'b0;
    defparam PPM_STATE_RNIB4CG_0_0_LC_12_23_4.SEQ_MODE=4'b0000;
    defparam PPM_STATE_RNIB4CG_0_0_LC_12_23_4.LUT_INIT=16'b0011001100000000;
    LogicCell40 PPM_STATE_RNIB4CG_0_0_LC_12_23_4 (
            .in0(_gnd_net_),
            .in1(N__4553),
            .in2(_gnd_net_),
            .in3(N__4484),
            .lcout(pulses2count39_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam CONSTANT_ONE_LUT4_LC_12_23_7.C_ON=1'b0;
    defparam CONSTANT_ONE_LUT4_LC_12_23_7.SEQ_MODE=4'b0000;
    defparam CONSTANT_ONE_LUT4_LC_12_23_7.LUT_INIT=16'b1111111111111111;
    LogicCell40 CONSTANT_ONE_LUT4_LC_12_23_7 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(CONSTANT_ONE_NET),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam pulses2count_3_LC_12_24_1.C_ON=1'b0;
    defparam pulses2count_3_LC_12_24_1.SEQ_MODE=4'b1000;
    defparam pulses2count_3_LC_12_24_1.LUT_INIT=16'b0011000000010000;
    LogicCell40 pulses2count_3_LC_12_24_1 (
            .in0(N__4841),
            .in1(N__3975),
            .in2(N__3954),
            .in3(N__4074),
            .lcout(pulses2countZ0Z_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4743),
            .ce(N__4678),
            .sr(_gnd_net_));
    defparam pulses2count_1_LC_12_24_2.C_ON=1'b0;
    defparam pulses2count_1_LC_12_24_2.SEQ_MODE=4'b1000;
    defparam pulses2count_1_LC_12_24_2.LUT_INIT=16'b0100000001000100;
    LogicCell40 pulses2count_1_LC_12_24_2 (
            .in0(N__3973),
            .in1(N__3945),
            .in2(N__4056),
            .in3(N__4843),
            .lcout(pulses2countZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4743),
            .ce(N__4678),
            .sr(_gnd_net_));
    defparam pulses2count_12_LC_12_24_3.C_ON=1'b0;
    defparam pulses2count_12_LC_12_24_3.SEQ_MODE=4'b1000;
    defparam pulses2count_12_LC_12_24_3.LUT_INIT=16'b0011000000010000;
    LogicCell40 pulses2count_12_LC_12_24_3 (
            .in0(N__4839),
            .in1(N__3972),
            .in2(N__3952),
            .in3(N__4029),
            .lcout(pulses2countZ0Z_12),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4743),
            .ce(N__4678),
            .sr(_gnd_net_));
    defparam pulses2count_16_LC_12_24_4.C_ON=1'b0;
    defparam pulses2count_16_LC_12_24_4.SEQ_MODE=4'b1000;
    defparam pulses2count_16_LC_12_24_4.LUT_INIT=16'b1100110000000000;
    LogicCell40 pulses2count_16_LC_12_24_4 (
            .in0(_gnd_net_),
            .in1(N__4002),
            .in2(_gnd_net_),
            .in3(N__4842),
            .lcout(pulses2countZ0Z_16),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4743),
            .ce(N__4678),
            .sr(_gnd_net_));
    defparam pulses2count_2_LC_12_24_7.C_ON=1'b0;
    defparam pulses2count_2_LC_12_24_7.SEQ_MODE=4'b1000;
    defparam pulses2count_2_LC_12_24_7.LUT_INIT=16'b1110111111001111;
    LogicCell40 pulses2count_2_LC_12_24_7 (
            .in0(N__4840),
            .in1(N__3974),
            .in2(N__3953),
            .in3(N__3930),
            .lcout(pulses2countZ0Z_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4743),
            .ce(N__4678),
            .sr(_gnd_net_));
    defparam counter11_0_I_9_c_RNO_LC_12_25_0.C_ON=1'b0;
    defparam counter11_0_I_9_c_RNO_LC_12_25_0.SEQ_MODE=4'b0000;
    defparam counter11_0_I_9_c_RNO_LC_12_25_0.LUT_INIT=16'b0110111111110110;
    LogicCell40 counter11_0_I_9_c_RNO_LC_12_25_0 (
            .in0(N__4603),
            .in1(N__3912),
            .in2(N__3906),
            .in3(N__4645),
            .lcout(counter11_0_I_9_c_RNOZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam pulses2count_5_LC_12_25_3.C_ON=1'b0;
    defparam pulses2count_5_LC_12_25_3.SEQ_MODE=4'b1000;
    defparam pulses2count_5_LC_12_25_3.LUT_INIT=16'b1100110000000000;
    LogicCell40 pulses2count_5_LC_12_25_3 (
            .in0(_gnd_net_),
            .in1(N__3888),
            .in2(_gnd_net_),
            .in3(N__4856),
            .lcout(pulses2countZ0Z_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4741),
            .ce(N__4680),
            .sr(_gnd_net_));
    defparam counter_RNIV1JM_2_LC_12_25_4.C_ON=1'b0;
    defparam counter_RNIV1JM_2_LC_12_25_4.SEQ_MODE=4'b0000;
    defparam counter_RNIV1JM_2_LC_12_25_4.LUT_INIT=16'b1000000000000000;
    LogicCell40 counter_RNIV1JM_2_LC_12_25_4 (
            .in0(N__5016),
            .in1(N__4646),
            .in2(N__4632),
            .in3(N__4604),
            .lcout(PPM_STATE_0_sqmuxa_1_13),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_RNI1JFM1_16_LC_12_25_6.C_ON=1'b0;
    defparam counter_RNI1JFM1_16_LC_12_25_6.SEQ_MODE=4'b0000;
    defparam counter_RNI1JFM1_16_LC_12_25_6.LUT_INIT=16'b0000010000000000;
    LogicCell40 counter_RNI1JFM1_16_LC_12_25_6 (
            .in0(N__4587),
            .in1(N__4562),
            .in2(N__4494),
            .in3(N__5043),
            .lcout(PPM_STATE_0_sqmuxa_1_15),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_RNID6M35_2_LC_12_26_0.C_ON=1'b0;
    defparam counter_RNID6M35_2_LC_12_26_0.SEQ_MODE=4'b0000;
    defparam counter_RNID6M35_2_LC_12_26_0.LUT_INIT=16'b1000000000000000;
    LogicCell40 counter_RNID6M35_2_LC_12_26_0 (
            .in0(N__4434),
            .in1(N__4422),
            .in2(N__4194),
            .in3(N__4416),
            .lcout(PPM_STATE_0_sqmuxa_1),
            .ltout(PPM_STATE_0_sqmuxa_1_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_57_c_RNIUTDL5_LC_12_26_1.C_ON=1'b0;
    defparam counter11_0_I_57_c_RNIUTDL5_LC_12_26_1.SEQ_MODE=4'b0000;
    defparam counter11_0_I_57_c_RNIUTDL5_LC_12_26_1.LUT_INIT=16'b1111000011111100;
    LogicCell40 counter11_0_I_57_c_RNIUTDL5_LC_12_26_1 (
            .in0(_gnd_net_),
            .in1(N__4372),
            .in2(N__4353),
            .in3(N__4334),
            .lcout(un1_PPM_STATE_0_sqmuxa_0_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_RNI03JM_0_LC_12_26_2.C_ON=1'b0;
    defparam counter_RNI03JM_0_LC_12_26_2.SEQ_MODE=4'b0000;
    defparam counter_RNI03JM_0_LC_12_26_2.LUT_INIT=16'b0000000100000000;
    LogicCell40 counter_RNI03JM_0_LC_12_26_2 (
            .in0(N__4297),
            .in1(N__4277),
            .in2(N__5037),
            .in3(N__4258),
            .lcout(),
            .ltout(PPM_STATE_0_sqmuxa_1_12_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_RNI6C6D1_7_LC_12_26_3.C_ON=1'b0;
    defparam counter_RNI6C6D1_7_LC_12_26_3.SEQ_MODE=4'b0000;
    defparam counter_RNI6C6D1_7_LC_12_26_3.LUT_INIT=16'b0001000000000000;
    LogicCell40 counter_RNI6C6D1_7_LC_12_26_3 (
            .in0(N__4237),
            .in1(N__4216),
            .in2(N__4197),
            .in3(N__4182),
            .lcout(PPM_STATE_0_sqmuxa_1_16),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_RNIP3J6_4_LC_12_26_4.C_ON=1'b0;
    defparam counter_RNIP3J6_4_LC_12_26_4.SEQ_MODE=4'b0000;
    defparam counter_RNIP3J6_4_LC_12_26_4.LUT_INIT=16'b0000000000001111;
    LogicCell40 counter_RNIP3J6_4_LC_12_26_4 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__4152),
            .in3(N__4175),
            .lcout(PPM_STATE_0_sqmuxa_1_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_15_c_RNO_LC_12_26_5.C_ON=1'b0;
    defparam counter11_0_I_15_c_RNO_LC_12_26_5.SEQ_MODE=4'b0000;
    defparam counter11_0_I_15_c_RNO_LC_12_26_5.LUT_INIT=16'b0111101111011110;
    LogicCell40 counter11_0_I_15_c_RNO_LC_12_26_5 (
            .in0(N__4174),
            .in1(N__4767),
            .in2(N__4161),
            .in3(N__4147),
            .lcout(counter11_0_I_15_c_RNOZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter_RNINSCP_12_LC_12_26_6.C_ON=1'b0;
    defparam counter_RNINSCP_12_LC_12_26_6.SEQ_MODE=4'b0000;
    defparam counter_RNINSCP_12_LC_12_26_6.LUT_INIT=16'b0000000000110011;
    LogicCell40 counter_RNINSCP_12_LC_12_26_6 (
            .in0(_gnd_net_),
            .in1(N__5086),
            .in2(_gnd_net_),
            .in3(N__5062),
            .lcout(PPM_STATE_0_sqmuxa_1_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam counter11_0_I_27_c_RNO_LC_12_27_0.C_ON=1'b0;
    defparam counter11_0_I_27_c_RNO_LC_12_27_0.SEQ_MODE=4'b0000;
    defparam counter11_0_I_27_c_RNO_LC_12_27_0.LUT_INIT=16'b0110111111110110;
    LogicCell40 counter11_0_I_27_c_RNO_LC_12_27_0 (
            .in0(N__5032),
            .in1(N__4962),
            .in2(N__5015),
            .in3(N__4938),
            .lcout(counter11_0_I_27_c_RNOZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam pulses2count_8_LC_12_27_1.C_ON=1'b0;
    defparam pulses2count_8_LC_12_27_1.SEQ_MODE=4'b1000;
    defparam pulses2count_8_LC_12_27_1.LUT_INIT=16'b1100110000000000;
    LogicCell40 pulses2count_8_LC_12_27_1 (
            .in0(_gnd_net_),
            .in1(N__4848),
            .in2(_gnd_net_),
            .in3(N__4983),
            .lcout(pulses2countZ0Z_8),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4738),
            .ce(N__4683),
            .sr(_gnd_net_));
    defparam pulses2count_9_LC_12_27_2.C_ON=1'b0;
    defparam pulses2count_9_LC_12_27_2.SEQ_MODE=4'b1000;
    defparam pulses2count_9_LC_12_27_2.LUT_INIT=16'b1000100010001000;
    LogicCell40 pulses2count_9_LC_12_27_2 (
            .in0(N__4850),
            .in1(N__4956),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(pulses2countZ0Z_9),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4738),
            .ce(N__4683),
            .sr(_gnd_net_));
    defparam pulses2count_18_LC_12_27_6.C_ON=1'b0;
    defparam pulses2count_18_LC_12_27_6.SEQ_MODE=4'b1000;
    defparam pulses2count_18_LC_12_27_6.LUT_INIT=16'b1000100010001000;
    LogicCell40 pulses2count_18_LC_12_27_6 (
            .in0(N__4849),
            .in1(N__4932),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(pulses2countZ0Z_18),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4738),
            .ce(N__4683),
            .sr(_gnd_net_));
    defparam counter11_0_I_57_c_RNO_LC_12_27_7.C_ON=1'b0;
    defparam counter11_0_I_57_c_RNO_LC_12_27_7.SEQ_MODE=4'b0000;
    defparam counter11_0_I_57_c_RNO_LC_12_27_7.LUT_INIT=16'b0011001111001100;
    LogicCell40 counter11_0_I_57_c_RNO_LC_12_27_7 (
            .in0(_gnd_net_),
            .in1(N__4906),
            .in2(_gnd_net_),
            .in3(N__4890),
            .lcout(counter11_0_I_57_c_RNOZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam pulses2count_4_LC_13_25_3.C_ON=1'b0;
    defparam pulses2count_4_LC_13_25_3.SEQ_MODE=4'b1000;
    defparam pulses2count_4_LC_13_25_3.LUT_INIT=16'b1100110000000000;
    LogicCell40 pulses2count_4_LC_13_25_3 (
            .in0(_gnd_net_),
            .in1(N__4875),
            .in2(_gnd_net_),
            .in3(N__4857),
            .lcout(pulses2countZ0Z_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__4745),
            .ce(N__4682),
            .sr(_gnd_net_));
endmodule // ppm_encoder
