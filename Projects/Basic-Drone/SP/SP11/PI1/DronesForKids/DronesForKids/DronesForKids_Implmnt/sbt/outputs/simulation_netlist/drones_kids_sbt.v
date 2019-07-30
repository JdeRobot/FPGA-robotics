// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 11 2017 17:30:03

// File Generated:     Mar 8 2019 19:59:30

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "drones_kids" view "INTERFACE"

module drones_kids (
    source_data,
    s1,
    reset_system,
    sdin,
    ppm_output,
    debug,
    data_debug,
    source_data_rdy,
    led,
    clk_system);

    output [2:0] source_data;
    input s1;
    input reset_system;
    input sdin;
    output ppm_output;
    output debug;
    output data_debug;
    output source_data_rdy;
    output led;
    input clk_system;

    wire N__6380;
    wire N__6379;
    wire N__6378;
    wire N__6369;
    wire N__6368;
    wire N__6367;
    wire N__6360;
    wire N__6359;
    wire N__6358;
    wire N__6351;
    wire N__6350;
    wire N__6349;
    wire N__6342;
    wire N__6341;
    wire N__6340;
    wire N__6333;
    wire N__6332;
    wire N__6331;
    wire N__6324;
    wire N__6323;
    wire N__6322;
    wire N__6315;
    wire N__6314;
    wire N__6313;
    wire N__6306;
    wire N__6305;
    wire N__6304;
    wire N__6297;
    wire N__6296;
    wire N__6295;
    wire N__6288;
    wire N__6287;
    wire N__6286;
    wire N__6279;
    wire N__6278;
    wire N__6277;
    wire N__6260;
    wire N__6259;
    wire N__6258;
    wire N__6257;
    wire N__6252;
    wire N__6247;
    wire N__6242;
    wire N__6241;
    wire N__6240;
    wire N__6237;
    wire N__6236;
    wire N__6233;
    wire N__6226;
    wire N__6221;
    wire N__6218;
    wire N__6215;
    wire N__6212;
    wire N__6209;
    wire N__6208;
    wire N__6205;
    wire N__6202;
    wire N__6199;
    wire N__6196;
    wire N__6191;
    wire N__6188;
    wire N__6187;
    wire N__6186;
    wire N__6183;
    wire N__6182;
    wire N__6179;
    wire N__6178;
    wire N__6175;
    wire N__6170;
    wire N__6165;
    wire N__6158;
    wire N__6155;
    wire N__6152;
    wire N__6151;
    wire N__6148;
    wire N__6145;
    wire N__6140;
    wire N__6139;
    wire N__6134;
    wire N__6131;
    wire N__6130;
    wire N__6127;
    wire N__6124;
    wire N__6119;
    wire N__6116;
    wire N__6115;
    wire N__6110;
    wire N__6107;
    wire N__6104;
    wire N__6101;
    wire N__6098;
    wire N__6095;
    wire N__6094;
    wire N__6093;
    wire N__6086;
    wire N__6083;
    wire N__6082;
    wire N__6081;
    wire N__6080;
    wire N__6079;
    wire N__6078;
    wire N__6073;
    wire N__6070;
    wire N__6065;
    wire N__6062;
    wire N__6053;
    wire N__6050;
    wire N__6049;
    wire N__6048;
    wire N__6047;
    wire N__6046;
    wire N__6043;
    wire N__6034;
    wire N__6031;
    wire N__6028;
    wire N__6025;
    wire N__6022;
    wire N__6017;
    wire N__6014;
    wire N__6013;
    wire N__6008;
    wire N__6005;
    wire N__6002;
    wire N__5999;
    wire N__5998;
    wire N__5995;
    wire N__5992;
    wire N__5987;
    wire N__5986;
    wire N__5985;
    wire N__5984;
    wire N__5983;
    wire N__5982;
    wire N__5981;
    wire N__5980;
    wire N__5979;
    wire N__5978;
    wire N__5977;
    wire N__5976;
    wire N__5975;
    wire N__5974;
    wire N__5973;
    wire N__5972;
    wire N__5971;
    wire N__5970;
    wire N__5969;
    wire N__5968;
    wire N__5967;
    wire N__5966;
    wire N__5965;
    wire N__5964;
    wire N__5963;
    wire N__5962;
    wire N__5961;
    wire N__5960;
    wire N__5959;
    wire N__5900;
    wire N__5897;
    wire N__5894;
    wire N__5891;
    wire N__5888;
    wire N__5887;
    wire N__5884;
    wire N__5881;
    wire N__5876;
    wire N__5875;
    wire N__5872;
    wire N__5871;
    wire N__5870;
    wire N__5869;
    wire N__5868;
    wire N__5861;
    wire N__5854;
    wire N__5851;
    wire N__5850;
    wire N__5847;
    wire N__5844;
    wire N__5841;
    wire N__5834;
    wire N__5831;
    wire N__5830;
    wire N__5825;
    wire N__5824;
    wire N__5821;
    wire N__5818;
    wire N__5813;
    wire N__5810;
    wire N__5807;
    wire N__5804;
    wire N__5803;
    wire N__5802;
    wire N__5797;
    wire N__5794;
    wire N__5789;
    wire N__5788;
    wire N__5787;
    wire N__5784;
    wire N__5779;
    wire N__5776;
    wire N__5771;
    wire N__5770;
    wire N__5769;
    wire N__5766;
    wire N__5765;
    wire N__5764;
    wire N__5763;
    wire N__5762;
    wire N__5761;
    wire N__5760;
    wire N__5759;
    wire N__5758;
    wire N__5753;
    wire N__5750;
    wire N__5743;
    wire N__5738;
    wire N__5731;
    wire N__5728;
    wire N__5717;
    wire N__5716;
    wire N__5713;
    wire N__5712;
    wire N__5711;
    wire N__5710;
    wire N__5709;
    wire N__5708;
    wire N__5707;
    wire N__5704;
    wire N__5701;
    wire N__5698;
    wire N__5687;
    wire N__5678;
    wire N__5675;
    wire N__5672;
    wire N__5671;
    wire N__5670;
    wire N__5669;
    wire N__5664;
    wire N__5659;
    wire N__5654;
    wire N__5653;
    wire N__5652;
    wire N__5651;
    wire N__5650;
    wire N__5645;
    wire N__5638;
    wire N__5633;
    wire N__5632;
    wire N__5629;
    wire N__5624;
    wire N__5621;
    wire N__5618;
    wire N__5615;
    wire N__5614;
    wire N__5609;
    wire N__5606;
    wire N__5603;
    wire N__5600;
    wire N__5599;
    wire N__5598;
    wire N__5591;
    wire N__5588;
    wire N__5585;
    wire N__5584;
    wire N__5581;
    wire N__5578;
    wire N__5575;
    wire N__5572;
    wire N__5569;
    wire N__5566;
    wire N__5561;
    wire N__5558;
    wire N__5557;
    wire N__5556;
    wire N__5555;
    wire N__5546;
    wire N__5543;
    wire N__5540;
    wire N__5539;
    wire N__5536;
    wire N__5533;
    wire N__5530;
    wire N__5525;
    wire N__5522;
    wire N__5519;
    wire N__5518;
    wire N__5517;
    wire N__5516;
    wire N__5513;
    wire N__5510;
    wire N__5505;
    wire N__5502;
    wire N__5495;
    wire N__5492;
    wire N__5491;
    wire N__5488;
    wire N__5485;
    wire N__5484;
    wire N__5483;
    wire N__5478;
    wire N__5473;
    wire N__5468;
    wire N__5465;
    wire N__5462;
    wire N__5461;
    wire N__5458;
    wire N__5455;
    wire N__5450;
    wire N__5447;
    wire N__5444;
    wire N__5441;
    wire N__5438;
    wire N__5435;
    wire N__5432;
    wire N__5431;
    wire N__5428;
    wire N__5425;
    wire N__5422;
    wire N__5419;
    wire N__5414;
    wire N__5413;
    wire N__5412;
    wire N__5411;
    wire N__5410;
    wire N__5409;
    wire N__5408;
    wire N__5407;
    wire N__5406;
    wire N__5405;
    wire N__5404;
    wire N__5403;
    wire N__5402;
    wire N__5401;
    wire N__5396;
    wire N__5391;
    wire N__5382;
    wire N__5379;
    wire N__5368;
    wire N__5367;
    wire N__5366;
    wire N__5363;
    wire N__5358;
    wire N__5353;
    wire N__5348;
    wire N__5347;
    wire N__5344;
    wire N__5341;
    wire N__5336;
    wire N__5333;
    wire N__5324;
    wire N__5321;
    wire N__5318;
    wire N__5317;
    wire N__5316;
    wire N__5315;
    wire N__5314;
    wire N__5313;
    wire N__5312;
    wire N__5311;
    wire N__5310;
    wire N__5291;
    wire N__5288;
    wire N__5285;
    wire N__5284;
    wire N__5283;
    wire N__5280;
    wire N__5277;
    wire N__5274;
    wire N__5271;
    wire N__5264;
    wire N__5263;
    wire N__5262;
    wire N__5259;
    wire N__5256;
    wire N__5253;
    wire N__5246;
    wire N__5243;
    wire N__5242;
    wire N__5239;
    wire N__5238;
    wire N__5235;
    wire N__5232;
    wire N__5229;
    wire N__5222;
    wire N__5221;
    wire N__5220;
    wire N__5217;
    wire N__5214;
    wire N__5211;
    wire N__5208;
    wire N__5201;
    wire N__5198;
    wire N__5195;
    wire N__5192;
    wire N__5189;
    wire N__5188;
    wire N__5187;
    wire N__5184;
    wire N__5181;
    wire N__5178;
    wire N__5175;
    wire N__5168;
    wire N__5167;
    wire N__5166;
    wire N__5163;
    wire N__5160;
    wire N__5157;
    wire N__5150;
    wire N__5147;
    wire N__5144;
    wire N__5141;
    wire N__5138;
    wire N__5137;
    wire N__5136;
    wire N__5133;
    wire N__5130;
    wire N__5127;
    wire N__5124;
    wire N__5117;
    wire N__5116;
    wire N__5115;
    wire N__5112;
    wire N__5109;
    wire N__5106;
    wire N__5099;
    wire N__5098;
    wire N__5097;
    wire N__5094;
    wire N__5091;
    wire N__5088;
    wire N__5085;
    wire N__5082;
    wire N__5075;
    wire N__5074;
    wire N__5073;
    wire N__5070;
    wire N__5067;
    wire N__5064;
    wire N__5057;
    wire N__5054;
    wire N__5051;
    wire N__5048;
    wire N__5045;
    wire N__5044;
    wire N__5043;
    wire N__5040;
    wire N__5037;
    wire N__5036;
    wire N__5035;
    wire N__5034;
    wire N__5033;
    wire N__5030;
    wire N__5025;
    wire N__5020;
    wire N__5017;
    wire N__5014;
    wire N__5013;
    wire N__5010;
    wire N__5009;
    wire N__5004;
    wire N__5003;
    wire N__4996;
    wire N__4993;
    wire N__4990;
    wire N__4987;
    wire N__4984;
    wire N__4973;
    wire N__4972;
    wire N__4971;
    wire N__4970;
    wire N__4969;
    wire N__4964;
    wire N__4963;
    wire N__4962;
    wire N__4961;
    wire N__4958;
    wire N__4957;
    wire N__4954;
    wire N__4951;
    wire N__4948;
    wire N__4945;
    wire N__4940;
    wire N__4937;
    wire N__4934;
    wire N__4931;
    wire N__4928;
    wire N__4927;
    wire N__4926;
    wire N__4925;
    wire N__4924;
    wire N__4923;
    wire N__4916;
    wire N__4915;
    wire N__4912;
    wire N__4909;
    wire N__4904;
    wire N__4895;
    wire N__4892;
    wire N__4889;
    wire N__4886;
    wire N__4871;
    wire N__4868;
    wire N__4867;
    wire N__4864;
    wire N__4861;
    wire N__4856;
    wire N__4853;
    wire N__4852;
    wire N__4851;
    wire N__4850;
    wire N__4849;
    wire N__4848;
    wire N__4845;
    wire N__4844;
    wire N__4841;
    wire N__4836;
    wire N__4835;
    wire N__4832;
    wire N__4829;
    wire N__4822;
    wire N__4821;
    wire N__4820;
    wire N__4819;
    wire N__4816;
    wire N__4813;
    wire N__4806;
    wire N__4805;
    wire N__4798;
    wire N__4795;
    wire N__4792;
    wire N__4789;
    wire N__4786;
    wire N__4775;
    wire N__4772;
    wire N__4771;
    wire N__4768;
    wire N__4765;
    wire N__4764;
    wire N__4763;
    wire N__4762;
    wire N__4757;
    wire N__4752;
    wire N__4749;
    wire N__4748;
    wire N__4747;
    wire N__4746;
    wire N__4745;
    wire N__4738;
    wire N__4737;
    wire N__4732;
    wire N__4729;
    wire N__4726;
    wire N__4723;
    wire N__4720;
    wire N__4709;
    wire N__4706;
    wire N__4703;
    wire N__4702;
    wire N__4699;
    wire N__4696;
    wire N__4691;
    wire N__4688;
    wire N__4685;
    wire N__4682;
    wire N__4679;
    wire N__4676;
    wire N__4673;
    wire N__4670;
    wire N__4667;
    wire N__4666;
    wire N__4663;
    wire N__4660;
    wire N__4655;
    wire N__4654;
    wire N__4651;
    wire N__4648;
    wire N__4643;
    wire N__4642;
    wire N__4639;
    wire N__4636;
    wire N__4633;
    wire N__4630;
    wire N__4627;
    wire N__4622;
    wire N__4619;
    wire N__4618;
    wire N__4617;
    wire N__4616;
    wire N__4615;
    wire N__4614;
    wire N__4613;
    wire N__4612;
    wire N__4611;
    wire N__4610;
    wire N__4609;
    wire N__4608;
    wire N__4607;
    wire N__4606;
    wire N__4605;
    wire N__4604;
    wire N__4603;
    wire N__4602;
    wire N__4601;
    wire N__4598;
    wire N__4591;
    wire N__4580;
    wire N__4575;
    wire N__4566;
    wire N__4565;
    wire N__4564;
    wire N__4555;
    wire N__4550;
    wire N__4547;
    wire N__4542;
    wire N__4539;
    wire N__4536;
    wire N__4535;
    wire N__4534;
    wire N__4529;
    wire N__4524;
    wire N__4519;
    wire N__4516;
    wire N__4513;
    wire N__4502;
    wire N__4499;
    wire N__4496;
    wire N__4493;
    wire N__4492;
    wire N__4489;
    wire N__4488;
    wire N__4485;
    wire N__4482;
    wire N__4479;
    wire N__4472;
    wire N__4471;
    wire N__4468;
    wire N__4467;
    wire N__4466;
    wire N__4463;
    wire N__4458;
    wire N__4457;
    wire N__4454;
    wire N__4451;
    wire N__4448;
    wire N__4445;
    wire N__4444;
    wire N__4441;
    wire N__4440;
    wire N__4439;
    wire N__4438;
    wire N__4437;
    wire N__4434;
    wire N__4431;
    wire N__4428;
    wire N__4425;
    wire N__4422;
    wire N__4417;
    wire N__4412;
    wire N__4397;
    wire N__4396;
    wire N__4395;
    wire N__4394;
    wire N__4391;
    wire N__4390;
    wire N__4389;
    wire N__4388;
    wire N__4383;
    wire N__4382;
    wire N__4379;
    wire N__4376;
    wire N__4371;
    wire N__4370;
    wire N__4367;
    wire N__4364;
    wire N__4361;
    wire N__4356;
    wire N__4353;
    wire N__4350;
    wire N__4337;
    wire N__4334;
    wire N__4331;
    wire N__4328;
    wire N__4327;
    wire N__4326;
    wire N__4319;
    wire N__4316;
    wire N__4313;
    wire N__4312;
    wire N__4311;
    wire N__4310;
    wire N__4309;
    wire N__4308;
    wire N__4307;
    wire N__4306;
    wire N__4289;
    wire N__4286;
    wire N__4283;
    wire N__4282;
    wire N__4281;
    wire N__4278;
    wire N__4275;
    wire N__4272;
    wire N__4269;
    wire N__4262;
    wire N__4259;
    wire N__4258;
    wire N__4255;
    wire N__4254;
    wire N__4251;
    wire N__4248;
    wire N__4245;
    wire N__4238;
    wire N__4235;
    wire N__4234;
    wire N__4233;
    wire N__4230;
    wire N__4225;
    wire N__4220;
    wire N__4217;
    wire N__4214;
    wire N__4211;
    wire N__4208;
    wire N__4207;
    wire N__4206;
    wire N__4203;
    wire N__4200;
    wire N__4197;
    wire N__4192;
    wire N__4187;
    wire N__4184;
    wire N__4181;
    wire N__4180;
    wire N__4179;
    wire N__4176;
    wire N__4173;
    wire N__4170;
    wire N__4167;
    wire N__4164;
    wire N__4157;
    wire N__4154;
    wire N__4151;
    wire N__4148;
    wire N__4145;
    wire N__4144;
    wire N__4143;
    wire N__4140;
    wire N__4137;
    wire N__4134;
    wire N__4127;
    wire N__4124;
    wire N__4121;
    wire N__4120;
    wire N__4119;
    wire N__4116;
    wire N__4111;
    wire N__4106;
    wire N__4103;
    wire N__4102;
    wire N__4099;
    wire N__4098;
    wire N__4095;
    wire N__4092;
    wire N__4089;
    wire N__4082;
    wire N__4079;
    wire N__4076;
    wire N__4073;
    wire N__4070;
    wire N__4067;
    wire N__4064;
    wire N__4063;
    wire N__4060;
    wire N__4057;
    wire N__4056;
    wire N__4055;
    wire N__4054;
    wire N__4053;
    wire N__4052;
    wire N__4051;
    wire N__4050;
    wire N__4049;
    wire N__4046;
    wire N__4043;
    wire N__4040;
    wire N__4037;
    wire N__4034;
    wire N__4031;
    wire N__4028;
    wire N__4025;
    wire N__4022;
    wire N__4019;
    wire N__4016;
    wire N__4013;
    wire N__4010;
    wire N__4001;
    wire N__3994;
    wire N__3991;
    wire N__3982;
    wire N__3977;
    wire N__3974;
    wire N__3971;
    wire N__3968;
    wire N__3965;
    wire N__3962;
    wire N__3959;
    wire N__3956;
    wire N__3953;
    wire N__3950;
    wire N__3947;
    wire N__3944;
    wire N__3941;
    wire N__3938;
    wire N__3935;
    wire N__3932;
    wire N__3929;
    wire N__3926;
    wire N__3923;
    wire N__3920;
    wire N__3917;
    wire N__3914;
    wire N__3911;
    wire N__3908;
    wire N__3905;
    wire N__3902;
    wire N__3901;
    wire N__3898;
    wire N__3895;
    wire N__3892;
    wire N__3887;
    wire N__3884;
    wire N__3881;
    wire N__3878;
    wire N__3875;
    wire N__3872;
    wire N__3869;
    wire N__3866;
    wire N__3863;
    wire N__3860;
    wire N__3857;
    wire N__3854;
    wire N__3853;
    wire N__3852;
    wire N__3849;
    wire N__3846;
    wire N__3843;
    wire N__3836;
    wire N__3835;
    wire N__3834;
    wire N__3831;
    wire N__3826;
    wire N__3821;
    wire N__3818;
    wire N__3815;
    wire N__3812;
    wire N__3811;
    wire N__3808;
    wire N__3805;
    wire N__3800;
    wire N__3799;
    wire N__3796;
    wire N__3793;
    wire N__3788;
    wire N__3787;
    wire N__3784;
    wire N__3781;
    wire N__3776;
    wire N__3773;
    wire N__3770;
    wire N__3769;
    wire N__3768;
    wire N__3765;
    wire N__3760;
    wire N__3755;
    wire N__3754;
    wire N__3753;
    wire N__3750;
    wire N__3747;
    wire N__3742;
    wire N__3737;
    wire N__3734;
    wire N__3731;
    wire N__3728;
    wire N__3725;
    wire N__3722;
    wire N__3719;
    wire N__3716;
    wire N__3713;
    wire N__3710;
    wire N__3707;
    wire N__3704;
    wire N__3701;
    wire N__3698;
    wire N__3695;
    wire N__3692;
    wire N__3691;
    wire N__3688;
    wire N__3685;
    wire N__3682;
    wire N__3679;
    wire N__3674;
    wire N__3671;
    wire N__3668;
    wire N__3665;
    wire N__3662;
    wire N__3659;
    wire N__3656;
    wire N__3653;
    wire N__3650;
    wire N__3647;
    wire N__3644;
    wire N__3643;
    wire N__3640;
    wire N__3637;
    wire N__3632;
    wire N__3629;
    wire N__3626;
    wire N__3623;
    wire N__3620;
    wire N__3619;
    wire N__3616;
    wire N__3615;
    wire N__3612;
    wire N__3607;
    wire N__3602;
    wire N__3601;
    wire N__3600;
    wire N__3597;
    wire N__3592;
    wire N__3587;
    wire N__3584;
    wire N__3583;
    wire N__3580;
    wire N__3577;
    wire N__3574;
    wire N__3569;
    wire N__3566;
    wire N__3563;
    wire N__3562;
    wire N__3559;
    wire N__3556;
    wire N__3551;
    wire N__3548;
    wire N__3545;
    wire N__3544;
    wire N__3541;
    wire N__3538;
    wire N__3533;
    wire N__3530;
    wire N__3529;
    wire N__3526;
    wire N__3523;
    wire N__3522;
    wire N__3519;
    wire N__3516;
    wire N__3513;
    wire N__3506;
    wire N__3503;
    wire N__3502;
    wire N__3499;
    wire N__3496;
    wire N__3493;
    wire N__3490;
    wire N__3485;
    wire N__3482;
    wire N__3481;
    wire N__3478;
    wire N__3475;
    wire N__3472;
    wire N__3469;
    wire N__3464;
    wire N__3461;
    wire N__3460;
    wire N__3457;
    wire N__3454;
    wire N__3449;
    wire N__3446;
    wire N__3443;
    wire N__3440;
    wire N__3437;
    wire N__3434;
    wire N__3433;
    wire N__3430;
    wire N__3427;
    wire N__3422;
    wire N__3419;
    wire N__3416;
    wire N__3413;
    wire N__3410;
    wire N__3407;
    wire N__3404;
    wire N__3401;
    wire N__3398;
    wire N__3395;
    wire N__3392;
    wire N__3389;
    wire N__3386;
    wire N__3383;
    wire N__3380;
    wire N__3377;
    wire N__3374;
    wire N__3371;
    wire N__3368;
    wire N__3367;
    wire N__3364;
    wire N__3361;
    wire N__3356;
    wire N__3355;
    wire N__3352;
    wire N__3349;
    wire N__3346;
    wire N__3343;
    wire N__3338;
    wire N__3335;
    wire N__3332;
    wire N__3331;
    wire N__3330;
    wire N__3329;
    wire N__3328;
    wire N__3327;
    wire N__3326;
    wire N__3325;
    wire N__3324;
    wire N__3321;
    wire N__3318;
    wire N__3315;
    wire N__3312;
    wire N__3311;
    wire N__3310;
    wire N__3307;
    wire N__3304;
    wire N__3301;
    wire N__3298;
    wire N__3295;
    wire N__3294;
    wire N__3293;
    wire N__3292;
    wire N__3291;
    wire N__3290;
    wire N__3283;
    wire N__3280;
    wire N__3279;
    wire N__3276;
    wire N__3273;
    wire N__3268;
    wire N__3263;
    wire N__3258;
    wire N__3255;
    wire N__3252;
    wire N__3249;
    wire N__3246;
    wire N__3245;
    wire N__3244;
    wire N__3239;
    wire N__3232;
    wire N__3229;
    wire N__3224;
    wire N__3219;
    wire N__3210;
    wire N__3205;
    wire N__3200;
    wire N__3191;
    wire N__3188;
    wire N__3185;
    wire N__3184;
    wire N__3181;
    wire N__3178;
    wire N__3173;
    wire N__3172;
    wire N__3169;
    wire N__3166;
    wire N__3161;
    wire N__3160;
    wire N__3157;
    wire N__3154;
    wire N__3149;
    wire N__3146;
    wire N__3143;
    wire N__3140;
    wire N__3137;
    wire N__3134;
    wire N__3131;
    wire N__3128;
    wire N__3125;
    wire N__3122;
    wire N__3119;
    wire N__3116;
    wire N__3115;
    wire N__3114;
    wire N__3113;
    wire N__3112;
    wire N__3111;
    wire N__3110;
    wire N__3109;
    wire N__3108;
    wire N__3107;
    wire N__3106;
    wire N__3105;
    wire N__3104;
    wire N__3103;
    wire N__3096;
    wire N__3085;
    wire N__3082;
    wire N__3079;
    wire N__3078;
    wire N__3077;
    wire N__3076;
    wire N__3075;
    wire N__3066;
    wire N__3063;
    wire N__3058;
    wire N__3055;
    wire N__3050;
    wire N__3045;
    wire N__3042;
    wire N__3037;
    wire N__3026;
    wire N__3023;
    wire N__3020;
    wire N__3017;
    wire N__3016;
    wire N__3013;
    wire N__3010;
    wire N__3005;
    wire N__3002;
    wire N__3001;
    wire N__2998;
    wire N__2995;
    wire N__2990;
    wire N__2989;
    wire N__2986;
    wire N__2983;
    wire N__2978;
    wire N__2975;
    wire N__2972;
    wire N__2971;
    wire N__2968;
    wire N__2965;
    wire N__2960;
    wire N__2959;
    wire N__2956;
    wire N__2953;
    wire N__2948;
    wire N__2945;
    wire N__2942;
    wire N__2939;
    wire N__2936;
    wire N__2933;
    wire N__2930;
    wire N__2927;
    wire N__2924;
    wire N__2921;
    wire N__2918;
    wire N__2915;
    wire N__2912;
    wire N__2909;
    wire N__2906;
    wire N__2903;
    wire N__2900;
    wire N__2897;
    wire N__2894;
    wire N__2891;
    wire N__2888;
    wire N__2885;
    wire N__2882;
    wire N__2879;
    wire N__2876;
    wire N__2873;
    wire N__2870;
    wire N__2867;
    wire N__2864;
    wire N__2863;
    wire N__2860;
    wire N__2857;
    wire N__2856;
    wire N__2855;
    wire N__2850;
    wire N__2847;
    wire N__2844;
    wire N__2841;
    wire N__2836;
    wire N__2831;
    wire N__2828;
    wire N__2825;
    wire N__2822;
    wire N__2819;
    wire N__2816;
    wire N__2813;
    wire N__2810;
    wire N__2807;
    wire N__2804;
    wire N__2801;
    wire N__2798;
    wire N__2795;
    wire N__2792;
    wire N__2789;
    wire N__2786;
    wire N__2783;
    wire N__2780;
    wire N__2777;
    wire N__2774;
    wire N__2771;
    wire N__2768;
    wire N__2765;
    wire N__2764;
    wire N__2763;
    wire N__2762;
    wire N__2757;
    wire N__2754;
    wire N__2751;
    wire N__2744;
    wire N__2741;
    wire N__2738;
    wire N__2735;
    wire N__2732;
    wire N__2729;
    wire N__2726;
    wire N__2723;
    wire N__2720;
    wire N__2717;
    wire N__2714;
    wire N__2711;
    wire N__2710;
    wire N__2709;
    wire N__2706;
    wire N__2705;
    wire N__2702;
    wire N__2699;
    wire N__2694;
    wire N__2687;
    wire N__2684;
    wire N__2681;
    wire N__2680;
    wire N__2679;
    wire N__2676;
    wire N__2673;
    wire N__2672;
    wire N__2671;
    wire N__2668;
    wire N__2665;
    wire N__2662;
    wire N__2655;
    wire N__2648;
    wire N__2647;
    wire N__2646;
    wire N__2645;
    wire N__2644;
    wire N__2641;
    wire N__2638;
    wire N__2631;
    wire N__2624;
    wire N__2621;
    wire N__2620;
    wire N__2619;
    wire N__2618;
    wire N__2615;
    wire N__2614;
    wire N__2609;
    wire N__2602;
    wire N__2597;
    wire N__2594;
    wire N__2591;
    wire N__2590;
    wire N__2587;
    wire N__2584;
    wire N__2579;
    wire N__2576;
    wire N__2573;
    wire N__2570;
    wire N__2567;
    wire N__2564;
    wire N__2561;
    wire N__2558;
    wire N__2555;
    wire N__2552;
    wire VCCG0;
    wire GNDG0;
    wire led_c;
    wire \ppm_encoder1.N_46_cascade_ ;
    wire \ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_0 ;
    wire \ppm_encoder1.un14_0_iv_1_12_cascade_ ;
    wire \ppm_encoder1.un14_0_12_cascade_ ;
    wire \ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_3 ;
    wire \ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_1 ;
    wire \ppm_encoder1.init_pulses39_2_0_cascade_ ;
    wire \ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_2 ;
    wire \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIINM32Z0Z_2 ;
    wire \ppm_encoder1.un14_0_12 ;
    wire bfn_8_23_0_;
    wire \ppm_encoder1.un1_init_pulses_cry_0 ;
    wire \ppm_encoder1.PPM_STATE_RNIH6OE8_0Z0Z_0 ;
    wire \ppm_encoder1.un1_init_pulses_cry_1 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_3 ;
    wire \ppm_encoder1.un1_init_pulses_cry_2 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_4 ;
    wire \ppm_encoder1.un1_init_pulses_cry_3 ;
    wire \ppm_encoder1.un1_init_pulses_cry_4 ;
    wire \ppm_encoder1.un14_0_i_0_0 ;
    wire \ppm_encoder1.un1_init_pulses_cry_5 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_7 ;
    wire \ppm_encoder1.un1_init_pulses_cry_6 ;
    wire \ppm_encoder1.un1_init_pulses_cry_7 ;
    wire bfn_8_24_0_;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_9 ;
    wire \ppm_encoder1.un1_init_pulses_cry_8 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_10 ;
    wire \ppm_encoder1.un1_init_pulses_cry_9 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_11 ;
    wire \ppm_encoder1.un1_init_pulses_cry_10 ;
    wire \ppm_encoder1.un1_init_pulses_cry_11 ;
    wire \ppm_encoder1.PPM_STATE_RNIH6OE8Z0Z_0 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_13 ;
    wire \ppm_encoder1.un1_init_pulses_cry_12 ;
    wire \ppm_encoder1.N_355_i ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_14 ;
    wire \ppm_encoder1.un1_init_pulses_cry_13 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_15 ;
    wire \ppm_encoder1.un1_init_pulses_cry_14 ;
    wire \ppm_encoder1.un1_init_pulses_cry_15 ;
    wire bfn_8_25_0_;
    wire \ppm_encoder1.un1_init_pulses_cry_16 ;
    wire \ppm_encoder1.un1_init_pulses_cry_17 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_18_cascade_ ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_16 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_17 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_12 ;
    wire \ppm_encoder1.N_39_i ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_6 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_1 ;
    wire \ppm_encoder1.un1_init_pulses_axb_0 ;
    wire \ppm_encoder1.pulses2count39_0_cascade_ ;
    wire \ppm_encoder1.init_pulses_0_sqmuxa_0_cascade_ ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_2 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_5 ;
    wire \ppm_encoder1.init_pulses_0_sqmuxa_0 ;
    wire \ppm_encoder1.init_pulses_RNO_0Z0Z_8 ;
    wire \ppm_encoder1.init_pulsesZ0Z_13 ;
    wire \ppm_encoder1.init_pulsesZ0Z_15 ;
    wire \ppm_encoder1.init_pulsesZ0Z_5 ;
    wire \ppm_encoder1.init_pulsesZ0Z_4 ;
    wire \ppm_encoder1.init_pulsesZ0Z_17 ;
    wire \ppm_encoder1.init_pulsesZ0Z_18 ;
    wire \ppm_encoder1.init_pulsesZ0Z_16 ;
    wire bfn_9_28_0_;
    wire \uart1.un1_count_pulses_needed_6_cry_0 ;
    wire \uart1.un1_count_pulses_needed_6_cry_1 ;
    wire \uart1.un1_count_pulses_needed_6_cry_2 ;
    wire \uart1.un1_count_pulses_needed_6_cry_3 ;
    wire \uart1.un1_count_pulses_needed_6_cry_4 ;
    wire \uart1.un1_count_pulses_needed_6_cry_5 ;
    wire \uart1.un1_count_pulses_needed_6_cry_6 ;
    wire \uart1.un1_count_pulses_needed_6_cry_7 ;
    wire bfn_9_29_0_;
    wire \ppm_encoder1.init_pulsesZ0Z_9 ;
    wire \ppm_encoder1.init_pulsesZ0Z_8 ;
    wire \ppm_encoder1.PPM_STATE_e_1_0 ;
    wire \ppm_encoder1.init_pulses_6_sqmuxa ;
    wire \ppm_encoder1.init_pulsesZ0Z_10 ;
    wire \ppm_encoder1.init_pulsesZ0Z_6 ;
    wire \ppm_encoder1.init_pulsesZ0Z_7 ;
    wire \ppm_encoder1.init_pulsesZ0Z_14 ;
    wire \ppm_encoder1.init_pulses39_2_0 ;
    wire \ppm_encoder1.N_47 ;
    wire \ppm_encoder1.init_pulsesZ0Z_3 ;
    wire \ppm_encoder1.init_pulsesZ0Z_2 ;
    wire \ppm_encoder1.pulses2count_8_0_iv_0_1_10_0 ;
    wire \ppm_encoder1.init_pulsesZ0Z_11 ;
    wire \ppm_encoder1.pulses2countZ0Z_4 ;
    wire \ppm_encoder1.pulses2countZ0Z_5 ;
    wire \ppm_encoder1.PPM_STATE_r_1_1 ;
    wire \ppm_encoder1.pulses2countZ0Z_14 ;
    wire \ppm_encoder1.pulses2countZ0Z_15 ;
    wire \ppm_encoder1.pulses2countZ0Z_17 ;
    wire \ppm_encoder1.pulses2countZ0Z_16 ;
    wire \ppm_encoder1.pulses2countZ0Z_13 ;
    wire \ppm_encoder1.init_pulsesZ0Z_12 ;
    wire \ppm_encoder1.pulses2countZ0Z_12 ;
    wire \ppm_encoder1.pulses2countZ0Z_18 ;
    wire \uart1.count_pulses_neededZ0Z_7 ;
    wire \uart1.count_pulses_neededZ0Z_4 ;
    wire \uart1.count_pulses_neededZ0Z_5 ;
    wire \uart1.count_pulses_neededZ0Z_1 ;
    wire \uart1.m9_i_o2_1_cascade_ ;
    wire \uart1.m9_i_o2_0 ;
    wire \uart1.count_pulses_neededZ0Z_6 ;
    wire \uart1.count_pulses_neededZ0Z_0 ;
    wire \uart1.count_pulses_neededZ0Z_8 ;
    wire \uart1.m9_i_o2_0_2 ;
    wire \uart1.count_pulses_neededZ0Z_3 ;
    wire \uart1.count_pulses_neededZ0Z_2 ;
    wire \uart1.m9_i_o2_0_2_cascade_ ;
    wire \uart1.m9_i_o2_1_2 ;
    wire \uart1.N_23_cascade_ ;
    wire \uart1.N_5 ;
    wire \ppm_encoder1.pulses2countZ0Z_8 ;
    wire \ppm_encoder1.pulses2countZ0Z_9 ;
    wire ppm_output_c;
    wire bfn_11_24_0_;
    wire \ppm_encoder1.counter11_0_data_tmp_0 ;
    wire \ppm_encoder1.counter11_0_I_15_c_RNOZ0 ;
    wire \ppm_encoder1.counter11_0_data_tmp_1 ;
    wire \ppm_encoder1.counter11_0_data_tmp_2 ;
    wire \ppm_encoder1.counter11_0_I_27_c_RNOZ0 ;
    wire \ppm_encoder1.counter11_0_data_tmp_3 ;
    wire \ppm_encoder1.counter11_0_data_tmp_4 ;
    wire \ppm_encoder1.counter11_0_I_39_c_RNOZ0 ;
    wire \ppm_encoder1.counter11_0_data_tmp_5 ;
    wire \ppm_encoder1.counter11_0_I_45_c_RNOZ0 ;
    wire \ppm_encoder1.counter11_0_data_tmp_6 ;
    wire \ppm_encoder1.counter11_0_data_tmp_7 ;
    wire \ppm_encoder1.counter11_0_I_51_c_RNOZ0 ;
    wire bfn_11_25_0_;
    wire \ppm_encoder1.counter11_0_I_57_c_RNOZ0 ;
    wire CONSTANT_ONE_NET;
    wire \ppm_encoder1.counter11_0_data_tmp_8 ;
    wire \ppm_encoder1.counter11_0_N_2 ;
    wire \ppm_encoder1.pulses2countZ0Z_10 ;
    wire \ppm_encoder1.pulses2countZ0Z_11 ;
    wire \ppm_encoder1.counter11_0_I_33_c_RNOZ0 ;
    wire \ppm_encoder1.pulses2countZ0Z_6 ;
    wire \ppm_encoder1.pulses2countZ0Z_7 ;
    wire \ppm_encoder1.counter11_0_I_21_c_RNOZ0 ;
    wire \ppm_encoder1.PPM_STATE_0_sqmuxa_1_12 ;
    wire \ppm_encoder1.PPM_STATE_0_sqmuxa_1_2_cascade_ ;
    wire \ppm_encoder1.pulses2countZ0Z_2 ;
    wire \ppm_encoder1.pulses2countZ0Z_3 ;
    wire \ppm_encoder1.counter11_0_I_9_c_RNOZ0 ;
    wire \ppm_encoder1.N_35_i_i ;
    wire bfn_11_26_0_;
    wire \ppm_encoder1.un1_counter_13_cry_0 ;
    wire \ppm_encoder1.un1_counter_13_cry_1 ;
    wire \ppm_encoder1.un1_counter_13_cry_2 ;
    wire \ppm_encoder1.counterZ0Z_4 ;
    wire \ppm_encoder1.un1_counter_13_cry_3 ;
    wire \ppm_encoder1.un1_counter_13_cry_4 ;
    wire \ppm_encoder1.counterZ0Z_6 ;
    wire \ppm_encoder1.un1_counter_13_cry_5 ;
    wire \ppm_encoder1.counterZ0Z_7 ;
    wire \ppm_encoder1.un1_counter_13_cry_6 ;
    wire \ppm_encoder1.un1_counter_13_cry_7 ;
    wire bfn_11_27_0_;
    wire \ppm_encoder1.un1_counter_13_cry_8 ;
    wire \ppm_encoder1.un1_counter_13_cry_9 ;
    wire \ppm_encoder1.counterZ0Z_11 ;
    wire \ppm_encoder1.un1_counter_13_cry_10 ;
    wire \ppm_encoder1.counterZ0Z_12 ;
    wire \ppm_encoder1.un1_counter_13_cry_11 ;
    wire \ppm_encoder1.counterZ0Z_13 ;
    wire \ppm_encoder1.un1_counter_13_cry_12 ;
    wire \ppm_encoder1.un1_counter_13_cry_13 ;
    wire \ppm_encoder1.un1_counter_13_cry_14 ;
    wire \ppm_encoder1.un1_counter_13_cry_15 ;
    wire \ppm_encoder1.counterZ0Z_16 ;
    wire bfn_11_28_0_;
    wire \ppm_encoder1.counterZ0Z_17 ;
    wire \ppm_encoder1.un1_counter_13_cry_16 ;
    wire \ppm_encoder1.un1_counter_13_cry_17 ;
    wire \ppm_encoder1.un1_PPM_STATE_0_sqmuxa_0_i_g ;
    wire \uart1.un1_state_bus_1_0 ;
    wire \ppm_encoder1.CHOOSE_CHANNELZ0Z_1 ;
    wire \ppm_encoder1.CHOOSE_CHANNELZ0Z_0 ;
    wire \ppm_encoder1.N_146_1 ;
    wire \ppm_encoder1.CHOOSE_CHANNELZ0Z_2 ;
    wire \ppm_encoder1.CHOOSE_CHANNELZ0Z_3 ;
    wire \ppm_encoder1.N_146_1_cascade_ ;
    wire \ppm_encoder1.N_39 ;
    wire \ppm_encoder1.N_31_i ;
    wire \ppm_encoder1.PPM_STATE_0_sqmuxa_1_16 ;
    wire \ppm_encoder1.PPM_STATE_0_sqmuxa_1 ;
    wire \ppm_encoder1.pulses2count39_0 ;
    wire \ppm_encoder1.PPM_STATE_0_sqmuxa_1_cascade_ ;
    wire \ppm_encoder1.counter11_0_N_2_THRU_CO ;
    wire \ppm_encoder1.un1_PPM_STATE_0_sqmuxa_0_i ;
    wire \ppm_encoder1.counterZ0Z_5 ;
    wire \ppm_encoder1.PPM_STATEZ0Z_1 ;
    wire \ppm_encoder1.PPM_STATEZ0Z_0 ;
    wire \ppm_encoder1.PPM_STATE_0_sqmuxa_1_15 ;
    wire \ppm_encoder1.un1_init_pulses39_2_0 ;
    wire \ppm_encoder1.init_pulsesZ0Z_1 ;
    wire \ppm_encoder1.pulses2countZ0Z_1 ;
    wire \ppm_encoder1.counter11_0_I_1_c_RNOZ0 ;
    wire \ppm_encoder1.init_pulsesZ0Z_0 ;
    wire \ppm_encoder1.pulses2count22_0 ;
    wire \ppm_encoder1.pulses2countZ0Z_0 ;
    wire \ppm_encoder1.N_31_i_g ;
    wire \ppm_encoder1.counterZ0Z_15 ;
    wire \ppm_encoder1.counterZ0Z_1 ;
    wire \ppm_encoder1.counterZ0Z_18 ;
    wire \ppm_encoder1.counterZ0Z_8 ;
    wire \ppm_encoder1.PPM_STATE_0_sqmuxa_1_14 ;
    wire \ppm_encoder1.counterZ0Z_14 ;
    wire \ppm_encoder1.counterZ0Z_0 ;
    wire \ppm_encoder1.PPM_STATE_0_sqmuxa_1_0 ;
    wire \ppm_encoder1.counterZ0Z_9 ;
    wire \ppm_encoder1.counterZ0Z_3 ;
    wire \ppm_encoder1.counterZ0Z_10 ;
    wire \ppm_encoder1.counterZ0Z_2 ;
    wire \ppm_encoder1.PPM_STATE_0_sqmuxa_1_13 ;
    wire \uart1.position_RNO_0Z0Z_1_cascade_ ;
    wire \uart1.positionZ1Z_1 ;
    wire \uart1.un1_position_c2 ;
    wire \uart1.positionZ0Z_2 ;
    wire \uart1.un1_position_c2_cascade_ ;
    wire \uart1.positionZ1Z_0 ;
    wire sdin_c;
    wire \uart1.N_9_i_N_2L1_cascade_ ;
    wire \uart1.data_rdy_reg13_0 ;
    wire \uart1.data_rdy_reg13_0_cascade_ ;
    wire \uart1.data_rdy_reg13_i_0 ;
    wire \uart1.positionZ0Z_3 ;
    wire \uart1.flag_reg_0_sqmuxa_0_a2_0_cascade_ ;
    wire data_debug_c;
    wire \uart1.N_23 ;
    wire \uart1.N_29 ;
    wire \uart1.un1_state_bus_0_a2_iso ;
    wire data_6;
    wire data_7;
    wire \uart1.state_busZ0Z_0 ;
    wire \uart1.state_busZ0Z_1 ;
    wire data_rdy;
    wire data_4;
    wire data_1;
    wire data_5;
    wire data_0;
    wire \KeyPress1.N_42_cascade_ ;
    wire \KeyPress1.N_54 ;
    wire source_data_c_2;
    wire \KeyPress1.N_43_0_cascade_ ;
    wire data_2;
    wire source_data_c_0;
    wire \KeyPress1.N_44 ;
    wire \KeyPress1.source_data_ready_reg_4_i_0_a3_2 ;
    wire \KeyPress1.N_62 ;
    wire source_data_rdy_c;
    wire \KeyPress1.N_11_i ;
    wire data_3;
    wire reset_system_c;
    wire \KeyPress1.N_15_cascade_ ;
    wire \KeyPress1.N_43_0 ;
    wire source_data_c_1;
    wire clk_system_c_g;
    wire _gnd_net_;

    PRE_IO_GBUF clk_system_ibuf_gb_io_preiogbuf (
            .PADSIGNALTOGLOBALBUFFER(N__6378),
            .GLOBALBUFFEROUTPUT(clk_system_c_g));
    defparam clk_system_ibuf_gb_io_iopad.PULLUP=1'b0;
    defparam clk_system_ibuf_gb_io_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD clk_system_ibuf_gb_io_iopad (
            .OE(N__6380),
            .DIN(N__6379),
            .DOUT(N__6378),
            .PACKAGEPIN(clk_system));
    defparam clk_system_ibuf_gb_io_preio.NEG_TRIGGER=1'b0;
    defparam clk_system_ibuf_gb_io_preio.PIN_TYPE=6'b000001;
    PRE_IO clk_system_ibuf_gb_io_preio (
            .PADOEN(N__6380),
            .PADOUT(N__6379),
            .PADIN(N__6378),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    defparam reset_system_ibuf_iopad.PULLUP=1'b0;
    defparam reset_system_ibuf_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD reset_system_ibuf_iopad (
            .OE(N__6369),
            .DIN(N__6368),
            .DOUT(N__6367),
            .PACKAGEPIN(reset_system));
    defparam reset_system_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam reset_system_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO reset_system_ibuf_preio (
            .PADOEN(N__6369),
            .PADOUT(N__6368),
            .PADIN(N__6367),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(reset_system_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    defparam led_obuf_iopad.PULLUP=1'b0;
    defparam led_obuf_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD led_obuf_iopad (
            .OE(N__6360),
            .DIN(N__6359),
            .DOUT(N__6358),
            .PACKAGEPIN(led));
    defparam led_obuf_preio.NEG_TRIGGER=1'b0;
    defparam led_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO led_obuf_preio (
            .PADOEN(N__6360),
            .PADOUT(N__6359),
            .PADIN(N__6358),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__2576),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    defparam source_data_obuf_2_iopad.PULLUP=1'b0;
    defparam source_data_obuf_2_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD source_data_obuf_2_iopad (
            .OE(N__6351),
            .DIN(N__6350),
            .DOUT(N__6349),
            .PACKAGEPIN(source_data[2]));
    defparam source_data_obuf_2_preio.NEG_TRIGGER=1'b0;
    defparam source_data_obuf_2_preio.PIN_TYPE=6'b011001;
    PRE_IO source_data_obuf_2_preio (
            .PADOEN(N__6351),
            .PADOUT(N__6350),
            .PADIN(N__6349),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__6212),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    defparam source_data_rdy_obuf_iopad.PULLUP=1'b0;
    defparam source_data_rdy_obuf_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD source_data_rdy_obuf_iopad (
            .OE(N__6342),
            .DIN(N__6341),
            .DOUT(N__6340),
            .PACKAGEPIN(source_data_rdy));
    defparam source_data_rdy_obuf_preio.NEG_TRIGGER=1'b0;
    defparam source_data_rdy_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO source_data_rdy_obuf_preio (
            .PADOEN(N__6342),
            .PADOUT(N__6341),
            .PADIN(N__6340),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__6107),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    defparam sdin_ibuf_iopad.PULLUP=1'b0;
    defparam sdin_ibuf_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD sdin_ibuf_iopad (
            .OE(N__6333),
            .DIN(N__6332),
            .DOUT(N__6331),
            .PACKAGEPIN(sdin));
    defparam sdin_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam sdin_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO sdin_ibuf_preio (
            .PADOEN(N__6333),
            .PADOUT(N__6332),
            .PADIN(N__6331),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(sdin_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    defparam s1_ibuf_iopad.PULLUP=1'b0;
    defparam s1_ibuf_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD s1_ibuf_iopad (
            .OE(N__6324),
            .DIN(N__6323),
            .DOUT(N__6322),
            .PACKAGEPIN(s1));
    defparam s1_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam s1_ibuf_preio.PIN_TYPE=6'b000000;
    PRE_IO s1_ibuf_preio (
            .PADOEN(N__6324),
            .PADOUT(N__6323),
            .PADIN(N__6322),
            .CLOCKENABLE(VCCG0),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(led_c),
            .DOUT0(),
            .INPUTCLK(N__5970),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    defparam source_data_obuf_1_iopad.PULLUP=1'b0;
    defparam source_data_obuf_1_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD source_data_obuf_1_iopad (
            .OE(N__6315),
            .DIN(N__6314),
            .DOUT(N__6313),
            .PACKAGEPIN(source_data[1]));
    defparam source_data_obuf_1_preio.NEG_TRIGGER=1'b0;
    defparam source_data_obuf_1_preio.PIN_TYPE=6'b011001;
    PRE_IO source_data_obuf_1_preio (
            .PADOEN(N__6315),
            .PADOUT(N__6314),
            .PADIN(N__6313),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__6005),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD debug_obuft_iopad (
            .OE(N__6306),
            .DIN(N__6305),
            .DOUT(N__6304),
            .PACKAGEPIN(debug));
    defparam debug_obuft_preio.NEG_TRIGGER=1'b0;
    defparam debug_obuft_preio.PIN_TYPE=6'b101001;
    PRE_IO debug_obuft_preio (
            .PADOEN(N__6306),
            .PADOUT(N__6305),
            .PADIN(N__6304),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    defparam ppm_output_obuf_iopad.PULLUP=1'b0;
    defparam ppm_output_obuf_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD ppm_output_obuf_iopad (
            .OE(N__6297),
            .DIN(N__6296),
            .DOUT(N__6295),
            .PACKAGEPIN(ppm_output));
    defparam ppm_output_obuf_preio.NEG_TRIGGER=1'b0;
    defparam ppm_output_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO ppm_output_obuf_preio (
            .PADOEN(N__6297),
            .PADOUT(N__6296),
            .PADIN(N__6295),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__3695),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD data_debug_obuf_iopad (
            .OE(N__6288),
            .DIN(N__6287),
            .DOUT(N__6286),
            .PACKAGEPIN(data_debug));
    defparam data_debug_obuf_preio.NEG_TRIGGER=1'b0;
    defparam data_debug_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO data_debug_obuf_preio (
            .PADOEN(N__6288),
            .PADOUT(N__6287),
            .PADIN(N__6286),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__5891),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    defparam source_data_obuf_0_iopad.PULLUP=1'b0;
    defparam source_data_obuf_0_iopad.IO_STANDARD="SB_LVCMOS";
    IO_PAD source_data_obuf_0_iopad (
            .OE(N__6279),
            .DIN(N__6278),
            .DOUT(N__6277),
            .PACKAGEPIN(source_data[0]));
    defparam source_data_obuf_0_preio.NEG_TRIGGER=1'b0;
    defparam source_data_obuf_0_preio.PIN_TYPE=6'b011001;
    PRE_IO source_data_obuf_0_preio (
            .PADOEN(N__6279),
            .PADOUT(N__6278),
            .PADIN(N__6277),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__6158),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    InMux I__1456 (
            .O(N__6260),
            .I(N__6252));
    InMux I__1455 (
            .O(N__6259),
            .I(N__6252));
    InMux I__1454 (
            .O(N__6258),
            .I(N__6247));
    InMux I__1453 (
            .O(N__6257),
            .I(N__6247));
    LocalMux I__1452 (
            .O(N__6252),
            .I(data_5));
    LocalMux I__1451 (
            .O(N__6247),
            .I(data_5));
    CascadeMux I__1450 (
            .O(N__6242),
            .I(N__6237));
    InMux I__1449 (
            .O(N__6241),
            .I(N__6233));
    InMux I__1448 (
            .O(N__6240),
            .I(N__6226));
    InMux I__1447 (
            .O(N__6237),
            .I(N__6226));
    InMux I__1446 (
            .O(N__6236),
            .I(N__6226));
    LocalMux I__1445 (
            .O(N__6233),
            .I(data_0));
    LocalMux I__1444 (
            .O(N__6226),
            .I(data_0));
    CascadeMux I__1443 (
            .O(N__6221),
            .I(\KeyPress1.N_42_cascade_ ));
    InMux I__1442 (
            .O(N__6218),
            .I(N__6215));
    LocalMux I__1441 (
            .O(N__6215),
            .I(\KeyPress1.N_54 ));
    IoInMux I__1440 (
            .O(N__6212),
            .I(N__6209));
    LocalMux I__1439 (
            .O(N__6209),
            .I(N__6205));
    CascadeMux I__1438 (
            .O(N__6208),
            .I(N__6202));
    Span12Mux_s0_v I__1437 (
            .O(N__6205),
            .I(N__6199));
    InMux I__1436 (
            .O(N__6202),
            .I(N__6196));
    Odrv12 I__1435 (
            .O(N__6199),
            .I(source_data_c_2));
    LocalMux I__1434 (
            .O(N__6196),
            .I(source_data_c_2));
    CascadeMux I__1433 (
            .O(N__6191),
            .I(\KeyPress1.N_43_0_cascade_ ));
    CascadeMux I__1432 (
            .O(N__6188),
            .I(N__6183));
    CascadeMux I__1431 (
            .O(N__6187),
            .I(N__6179));
    InMux I__1430 (
            .O(N__6186),
            .I(N__6175));
    InMux I__1429 (
            .O(N__6183),
            .I(N__6170));
    InMux I__1428 (
            .O(N__6182),
            .I(N__6170));
    InMux I__1427 (
            .O(N__6179),
            .I(N__6165));
    InMux I__1426 (
            .O(N__6178),
            .I(N__6165));
    LocalMux I__1425 (
            .O(N__6175),
            .I(data_2));
    LocalMux I__1424 (
            .O(N__6170),
            .I(data_2));
    LocalMux I__1423 (
            .O(N__6165),
            .I(data_2));
    IoInMux I__1422 (
            .O(N__6158),
            .I(N__6155));
    LocalMux I__1421 (
            .O(N__6155),
            .I(N__6152));
    Span4Mux_s0_v I__1420 (
            .O(N__6152),
            .I(N__6148));
    InMux I__1419 (
            .O(N__6151),
            .I(N__6145));
    Odrv4 I__1418 (
            .O(N__6148),
            .I(source_data_c_0));
    LocalMux I__1417 (
            .O(N__6145),
            .I(source_data_c_0));
    InMux I__1416 (
            .O(N__6140),
            .I(N__6134));
    InMux I__1415 (
            .O(N__6139),
            .I(N__6134));
    LocalMux I__1414 (
            .O(N__6134),
            .I(\KeyPress1.N_44 ));
    CascadeMux I__1413 (
            .O(N__6131),
            .I(N__6127));
    CascadeMux I__1412 (
            .O(N__6130),
            .I(N__6124));
    InMux I__1411 (
            .O(N__6127),
            .I(N__6119));
    InMux I__1410 (
            .O(N__6124),
            .I(N__6119));
    LocalMux I__1409 (
            .O(N__6119),
            .I(\KeyPress1.source_data_ready_reg_4_i_0_a3_2 ));
    InMux I__1408 (
            .O(N__6116),
            .I(N__6110));
    InMux I__1407 (
            .O(N__6115),
            .I(N__6110));
    LocalMux I__1406 (
            .O(N__6110),
            .I(\KeyPress1.N_62 ));
    IoInMux I__1405 (
            .O(N__6107),
            .I(N__6104));
    LocalMux I__1404 (
            .O(N__6104),
            .I(N__6101));
    Span4Mux_s0_v I__1403 (
            .O(N__6101),
            .I(N__6098));
    Odrv4 I__1402 (
            .O(N__6098),
            .I(source_data_rdy_c));
    InMux I__1401 (
            .O(N__6095),
            .I(N__6086));
    InMux I__1400 (
            .O(N__6094),
            .I(N__6086));
    InMux I__1399 (
            .O(N__6093),
            .I(N__6086));
    LocalMux I__1398 (
            .O(N__6086),
            .I(\KeyPress1.N_11_i ));
    InMux I__1397 (
            .O(N__6083),
            .I(N__6073));
    InMux I__1396 (
            .O(N__6082),
            .I(N__6073));
    InMux I__1395 (
            .O(N__6081),
            .I(N__6070));
    InMux I__1394 (
            .O(N__6080),
            .I(N__6065));
    InMux I__1393 (
            .O(N__6079),
            .I(N__6065));
    InMux I__1392 (
            .O(N__6078),
            .I(N__6062));
    LocalMux I__1391 (
            .O(N__6073),
            .I(data_3));
    LocalMux I__1390 (
            .O(N__6070),
            .I(data_3));
    LocalMux I__1389 (
            .O(N__6065),
            .I(data_3));
    LocalMux I__1388 (
            .O(N__6062),
            .I(data_3));
    CascadeMux I__1387 (
            .O(N__6053),
            .I(N__6050));
    InMux I__1386 (
            .O(N__6050),
            .I(N__6043));
    InMux I__1385 (
            .O(N__6049),
            .I(N__6034));
    InMux I__1384 (
            .O(N__6048),
            .I(N__6034));
    InMux I__1383 (
            .O(N__6047),
            .I(N__6034));
    InMux I__1382 (
            .O(N__6046),
            .I(N__6034));
    LocalMux I__1381 (
            .O(N__6043),
            .I(N__6031));
    LocalMux I__1380 (
            .O(N__6034),
            .I(N__6028));
    IoSpan4Mux I__1379 (
            .O(N__6031),
            .I(N__6025));
    Span4Mux_h I__1378 (
            .O(N__6028),
            .I(N__6022));
    Odrv4 I__1377 (
            .O(N__6025),
            .I(reset_system_c));
    Odrv4 I__1376 (
            .O(N__6022),
            .I(reset_system_c));
    CascadeMux I__1375 (
            .O(N__6017),
            .I(\KeyPress1.N_15_cascade_ ));
    InMux I__1374 (
            .O(N__6014),
            .I(N__6008));
    InMux I__1373 (
            .O(N__6013),
            .I(N__6008));
    LocalMux I__1372 (
            .O(N__6008),
            .I(\KeyPress1.N_43_0 ));
    IoInMux I__1371 (
            .O(N__6005),
            .I(N__6002));
    LocalMux I__1370 (
            .O(N__6002),
            .I(N__5999));
    IoSpan4Mux I__1369 (
            .O(N__5999),
            .I(N__5995));
    InMux I__1368 (
            .O(N__5998),
            .I(N__5992));
    Odrv4 I__1367 (
            .O(N__5995),
            .I(source_data_c_1));
    LocalMux I__1366 (
            .O(N__5992),
            .I(source_data_c_1));
    ClkMux I__1365 (
            .O(N__5987),
            .I(N__5900));
    ClkMux I__1364 (
            .O(N__5986),
            .I(N__5900));
    ClkMux I__1363 (
            .O(N__5985),
            .I(N__5900));
    ClkMux I__1362 (
            .O(N__5984),
            .I(N__5900));
    ClkMux I__1361 (
            .O(N__5983),
            .I(N__5900));
    ClkMux I__1360 (
            .O(N__5982),
            .I(N__5900));
    ClkMux I__1359 (
            .O(N__5981),
            .I(N__5900));
    ClkMux I__1358 (
            .O(N__5980),
            .I(N__5900));
    ClkMux I__1357 (
            .O(N__5979),
            .I(N__5900));
    ClkMux I__1356 (
            .O(N__5978),
            .I(N__5900));
    ClkMux I__1355 (
            .O(N__5977),
            .I(N__5900));
    ClkMux I__1354 (
            .O(N__5976),
            .I(N__5900));
    ClkMux I__1353 (
            .O(N__5975),
            .I(N__5900));
    ClkMux I__1352 (
            .O(N__5974),
            .I(N__5900));
    ClkMux I__1351 (
            .O(N__5973),
            .I(N__5900));
    ClkMux I__1350 (
            .O(N__5972),
            .I(N__5900));
    ClkMux I__1349 (
            .O(N__5971),
            .I(N__5900));
    ClkMux I__1348 (
            .O(N__5970),
            .I(N__5900));
    ClkMux I__1347 (
            .O(N__5969),
            .I(N__5900));
    ClkMux I__1346 (
            .O(N__5968),
            .I(N__5900));
    ClkMux I__1345 (
            .O(N__5967),
            .I(N__5900));
    ClkMux I__1344 (
            .O(N__5966),
            .I(N__5900));
    ClkMux I__1343 (
            .O(N__5965),
            .I(N__5900));
    ClkMux I__1342 (
            .O(N__5964),
            .I(N__5900));
    ClkMux I__1341 (
            .O(N__5963),
            .I(N__5900));
    ClkMux I__1340 (
            .O(N__5962),
            .I(N__5900));
    ClkMux I__1339 (
            .O(N__5961),
            .I(N__5900));
    ClkMux I__1338 (
            .O(N__5960),
            .I(N__5900));
    ClkMux I__1337 (
            .O(N__5959),
            .I(N__5900));
    GlobalMux I__1336 (
            .O(N__5900),
            .I(N__5897));
    gio2CtrlBuf I__1335 (
            .O(N__5897),
            .I(clk_system_c_g));
    CascadeMux I__1334 (
            .O(N__5894),
            .I(\uart1.flag_reg_0_sqmuxa_0_a2_0_cascade_ ));
    IoInMux I__1333 (
            .O(N__5891),
            .I(N__5888));
    LocalMux I__1332 (
            .O(N__5888),
            .I(N__5884));
    InMux I__1331 (
            .O(N__5887),
            .I(N__5881));
    Odrv4 I__1330 (
            .O(N__5884),
            .I(data_debug_c));
    LocalMux I__1329 (
            .O(N__5881),
            .I(data_debug_c));
    CascadeMux I__1328 (
            .O(N__5876),
            .I(N__5872));
    InMux I__1327 (
            .O(N__5875),
            .I(N__5861));
    InMux I__1326 (
            .O(N__5872),
            .I(N__5861));
    InMux I__1325 (
            .O(N__5871),
            .I(N__5861));
    InMux I__1324 (
            .O(N__5870),
            .I(N__5854));
    InMux I__1323 (
            .O(N__5869),
            .I(N__5854));
    InMux I__1322 (
            .O(N__5868),
            .I(N__5854));
    LocalMux I__1321 (
            .O(N__5861),
            .I(N__5851));
    LocalMux I__1320 (
            .O(N__5854),
            .I(N__5847));
    Span4Mux_h I__1319 (
            .O(N__5851),
            .I(N__5844));
    InMux I__1318 (
            .O(N__5850),
            .I(N__5841));
    Odrv12 I__1317 (
            .O(N__5847),
            .I(\uart1.N_23 ));
    Odrv4 I__1316 (
            .O(N__5844),
            .I(\uart1.N_23 ));
    LocalMux I__1315 (
            .O(N__5841),
            .I(\uart1.N_23 ));
    CascadeMux I__1314 (
            .O(N__5834),
            .I(N__5831));
    InMux I__1313 (
            .O(N__5831),
            .I(N__5825));
    InMux I__1312 (
            .O(N__5830),
            .I(N__5825));
    LocalMux I__1311 (
            .O(N__5825),
            .I(N__5821));
    InMux I__1310 (
            .O(N__5824),
            .I(N__5818));
    Odrv4 I__1309 (
            .O(N__5821),
            .I(\uart1.N_29 ));
    LocalMux I__1308 (
            .O(N__5818),
            .I(\uart1.N_29 ));
    SRMux I__1307 (
            .O(N__5813),
            .I(N__5810));
    LocalMux I__1306 (
            .O(N__5810),
            .I(N__5807));
    Odrv4 I__1305 (
            .O(N__5807),
            .I(\uart1.un1_state_bus_0_a2_iso ));
    InMux I__1304 (
            .O(N__5804),
            .I(N__5797));
    InMux I__1303 (
            .O(N__5803),
            .I(N__5797));
    InMux I__1302 (
            .O(N__5802),
            .I(N__5794));
    LocalMux I__1301 (
            .O(N__5797),
            .I(data_6));
    LocalMux I__1300 (
            .O(N__5794),
            .I(data_6));
    InMux I__1299 (
            .O(N__5789),
            .I(N__5784));
    InMux I__1298 (
            .O(N__5788),
            .I(N__5779));
    InMux I__1297 (
            .O(N__5787),
            .I(N__5779));
    LocalMux I__1296 (
            .O(N__5784),
            .I(N__5776));
    LocalMux I__1295 (
            .O(N__5779),
            .I(data_7));
    Odrv4 I__1294 (
            .O(N__5776),
            .I(data_7));
    CascadeMux I__1293 (
            .O(N__5771),
            .I(N__5766));
    InMux I__1292 (
            .O(N__5770),
            .I(N__5753));
    InMux I__1291 (
            .O(N__5769),
            .I(N__5753));
    InMux I__1290 (
            .O(N__5766),
            .I(N__5750));
    InMux I__1289 (
            .O(N__5765),
            .I(N__5743));
    InMux I__1288 (
            .O(N__5764),
            .I(N__5743));
    InMux I__1287 (
            .O(N__5763),
            .I(N__5743));
    InMux I__1286 (
            .O(N__5762),
            .I(N__5738));
    InMux I__1285 (
            .O(N__5761),
            .I(N__5738));
    InMux I__1284 (
            .O(N__5760),
            .I(N__5731));
    InMux I__1283 (
            .O(N__5759),
            .I(N__5731));
    InMux I__1282 (
            .O(N__5758),
            .I(N__5731));
    LocalMux I__1281 (
            .O(N__5753),
            .I(N__5728));
    LocalMux I__1280 (
            .O(N__5750),
            .I(\uart1.state_busZ0Z_0 ));
    LocalMux I__1279 (
            .O(N__5743),
            .I(\uart1.state_busZ0Z_0 ));
    LocalMux I__1278 (
            .O(N__5738),
            .I(\uart1.state_busZ0Z_0 ));
    LocalMux I__1277 (
            .O(N__5731),
            .I(\uart1.state_busZ0Z_0 ));
    Odrv4 I__1276 (
            .O(N__5728),
            .I(\uart1.state_busZ0Z_0 ));
    InMux I__1275 (
            .O(N__5717),
            .I(N__5713));
    InMux I__1274 (
            .O(N__5716),
            .I(N__5704));
    LocalMux I__1273 (
            .O(N__5713),
            .I(N__5701));
    InMux I__1272 (
            .O(N__5712),
            .I(N__5698));
    InMux I__1271 (
            .O(N__5711),
            .I(N__5687));
    InMux I__1270 (
            .O(N__5710),
            .I(N__5687));
    InMux I__1269 (
            .O(N__5709),
            .I(N__5687));
    InMux I__1268 (
            .O(N__5708),
            .I(N__5687));
    InMux I__1267 (
            .O(N__5707),
            .I(N__5687));
    LocalMux I__1266 (
            .O(N__5704),
            .I(\uart1.state_busZ0Z_1 ));
    Odrv4 I__1265 (
            .O(N__5701),
            .I(\uart1.state_busZ0Z_1 ));
    LocalMux I__1264 (
            .O(N__5698),
            .I(\uart1.state_busZ0Z_1 ));
    LocalMux I__1263 (
            .O(N__5687),
            .I(\uart1.state_busZ0Z_1 ));
    InMux I__1262 (
            .O(N__5678),
            .I(N__5675));
    LocalMux I__1261 (
            .O(N__5675),
            .I(data_rdy));
    InMux I__1260 (
            .O(N__5672),
            .I(N__5664));
    InMux I__1259 (
            .O(N__5671),
            .I(N__5664));
    InMux I__1258 (
            .O(N__5670),
            .I(N__5659));
    InMux I__1257 (
            .O(N__5669),
            .I(N__5659));
    LocalMux I__1256 (
            .O(N__5664),
            .I(data_4));
    LocalMux I__1255 (
            .O(N__5659),
            .I(data_4));
    InMux I__1254 (
            .O(N__5654),
            .I(N__5645));
    InMux I__1253 (
            .O(N__5653),
            .I(N__5645));
    InMux I__1252 (
            .O(N__5652),
            .I(N__5638));
    InMux I__1251 (
            .O(N__5651),
            .I(N__5638));
    InMux I__1250 (
            .O(N__5650),
            .I(N__5638));
    LocalMux I__1249 (
            .O(N__5645),
            .I(data_1));
    LocalMux I__1248 (
            .O(N__5638),
            .I(data_1));
    CascadeMux I__1247 (
            .O(N__5633),
            .I(N__5629));
    InMux I__1246 (
            .O(N__5632),
            .I(N__5624));
    InMux I__1245 (
            .O(N__5629),
            .I(N__5624));
    LocalMux I__1244 (
            .O(N__5624),
            .I(\uart1.positionZ1Z_1 ));
    InMux I__1243 (
            .O(N__5621),
            .I(N__5618));
    LocalMux I__1242 (
            .O(N__5618),
            .I(\uart1.un1_position_c2 ));
    InMux I__1241 (
            .O(N__5615),
            .I(N__5609));
    InMux I__1240 (
            .O(N__5614),
            .I(N__5609));
    LocalMux I__1239 (
            .O(N__5609),
            .I(\uart1.positionZ0Z_2 ));
    CascadeMux I__1238 (
            .O(N__5606),
            .I(\uart1.un1_position_c2_cascade_ ));
    CascadeMux I__1237 (
            .O(N__5603),
            .I(N__5600));
    InMux I__1236 (
            .O(N__5600),
            .I(N__5591));
    InMux I__1235 (
            .O(N__5599),
            .I(N__5591));
    InMux I__1234 (
            .O(N__5598),
            .I(N__5591));
    LocalMux I__1233 (
            .O(N__5591),
            .I(\uart1.positionZ1Z_0 ));
    InMux I__1232 (
            .O(N__5588),
            .I(N__5585));
    LocalMux I__1231 (
            .O(N__5585),
            .I(N__5581));
    InMux I__1230 (
            .O(N__5584),
            .I(N__5578));
    Span4Mux_h I__1229 (
            .O(N__5581),
            .I(N__5575));
    LocalMux I__1228 (
            .O(N__5578),
            .I(N__5572));
    Span4Mux_h I__1227 (
            .O(N__5575),
            .I(N__5569));
    Span12Mux_h I__1226 (
            .O(N__5572),
            .I(N__5566));
    Odrv4 I__1225 (
            .O(N__5569),
            .I(sdin_c));
    Odrv12 I__1224 (
            .O(N__5566),
            .I(sdin_c));
    CascadeMux I__1223 (
            .O(N__5561),
            .I(\uart1.N_9_i_N_2L1_cascade_ ));
    InMux I__1222 (
            .O(N__5558),
            .I(N__5546));
    InMux I__1221 (
            .O(N__5557),
            .I(N__5546));
    InMux I__1220 (
            .O(N__5556),
            .I(N__5546));
    InMux I__1219 (
            .O(N__5555),
            .I(N__5546));
    LocalMux I__1218 (
            .O(N__5546),
            .I(\uart1.data_rdy_reg13_0 ));
    CascadeMux I__1217 (
            .O(N__5543),
            .I(\uart1.data_rdy_reg13_0_cascade_ ));
    CascadeMux I__1216 (
            .O(N__5540),
            .I(N__5536));
    InMux I__1215 (
            .O(N__5539),
            .I(N__5533));
    InMux I__1214 (
            .O(N__5536),
            .I(N__5530));
    LocalMux I__1213 (
            .O(N__5533),
            .I(N__5525));
    LocalMux I__1212 (
            .O(N__5530),
            .I(N__5525));
    Odrv4 I__1211 (
            .O(N__5525),
            .I(\uart1.data_rdy_reg13_i_0 ));
    InMux I__1210 (
            .O(N__5522),
            .I(N__5519));
    LocalMux I__1209 (
            .O(N__5519),
            .I(N__5513));
    InMux I__1208 (
            .O(N__5518),
            .I(N__5510));
    InMux I__1207 (
            .O(N__5517),
            .I(N__5505));
    InMux I__1206 (
            .O(N__5516),
            .I(N__5505));
    Span4Mux_s3_v I__1205 (
            .O(N__5513),
            .I(N__5502));
    LocalMux I__1204 (
            .O(N__5510),
            .I(\uart1.positionZ0Z_3 ));
    LocalMux I__1203 (
            .O(N__5505),
            .I(\uart1.positionZ0Z_3 ));
    Odrv4 I__1202 (
            .O(N__5502),
            .I(\uart1.positionZ0Z_3 ));
    InMux I__1201 (
            .O(N__5495),
            .I(N__5492));
    LocalMux I__1200 (
            .O(N__5492),
            .I(N__5488));
    InMux I__1199 (
            .O(N__5491),
            .I(N__5485));
    Span4Mux_h I__1198 (
            .O(N__5488),
            .I(N__5478));
    LocalMux I__1197 (
            .O(N__5485),
            .I(N__5478));
    InMux I__1196 (
            .O(N__5484),
            .I(N__5473));
    InMux I__1195 (
            .O(N__5483),
            .I(N__5473));
    Odrv4 I__1194 (
            .O(N__5478),
            .I(\ppm_encoder1.un1_init_pulses39_2_0 ));
    LocalMux I__1193 (
            .O(N__5473),
            .I(\ppm_encoder1.un1_init_pulses39_2_0 ));
    InMux I__1192 (
            .O(N__5468),
            .I(N__5465));
    LocalMux I__1191 (
            .O(N__5465),
            .I(N__5462));
    Span4Mux_h I__1190 (
            .O(N__5462),
            .I(N__5458));
    InMux I__1189 (
            .O(N__5461),
            .I(N__5455));
    Odrv4 I__1188 (
            .O(N__5458),
            .I(\ppm_encoder1.init_pulsesZ0Z_1 ));
    LocalMux I__1187 (
            .O(N__5455),
            .I(\ppm_encoder1.init_pulsesZ0Z_1 ));
    CascadeMux I__1186 (
            .O(N__5450),
            .I(N__5447));
    InMux I__1185 (
            .O(N__5447),
            .I(N__5444));
    LocalMux I__1184 (
            .O(N__5444),
            .I(\ppm_encoder1.pulses2countZ0Z_1 ));
    InMux I__1183 (
            .O(N__5441),
            .I(N__5438));
    LocalMux I__1182 (
            .O(N__5438),
            .I(\ppm_encoder1.counter11_0_I_1_c_RNOZ0 ));
    InMux I__1181 (
            .O(N__5435),
            .I(N__5432));
    LocalMux I__1180 (
            .O(N__5432),
            .I(N__5428));
    CascadeMux I__1179 (
            .O(N__5431),
            .I(N__5425));
    Span4Mux_v I__1178 (
            .O(N__5428),
            .I(N__5422));
    InMux I__1177 (
            .O(N__5425),
            .I(N__5419));
    Odrv4 I__1176 (
            .O(N__5422),
            .I(\ppm_encoder1.init_pulsesZ0Z_0 ));
    LocalMux I__1175 (
            .O(N__5419),
            .I(\ppm_encoder1.init_pulsesZ0Z_0 ));
    InMux I__1174 (
            .O(N__5414),
            .I(N__5396));
    InMux I__1173 (
            .O(N__5413),
            .I(N__5396));
    InMux I__1172 (
            .O(N__5412),
            .I(N__5391));
    InMux I__1171 (
            .O(N__5411),
            .I(N__5391));
    InMux I__1170 (
            .O(N__5410),
            .I(N__5382));
    InMux I__1169 (
            .O(N__5409),
            .I(N__5382));
    InMux I__1168 (
            .O(N__5408),
            .I(N__5382));
    InMux I__1167 (
            .O(N__5407),
            .I(N__5382));
    InMux I__1166 (
            .O(N__5406),
            .I(N__5379));
    InMux I__1165 (
            .O(N__5405),
            .I(N__5368));
    InMux I__1164 (
            .O(N__5404),
            .I(N__5368));
    InMux I__1163 (
            .O(N__5403),
            .I(N__5368));
    InMux I__1162 (
            .O(N__5402),
            .I(N__5368));
    InMux I__1161 (
            .O(N__5401),
            .I(N__5368));
    LocalMux I__1160 (
            .O(N__5396),
            .I(N__5363));
    LocalMux I__1159 (
            .O(N__5391),
            .I(N__5358));
    LocalMux I__1158 (
            .O(N__5382),
            .I(N__5358));
    LocalMux I__1157 (
            .O(N__5379),
            .I(N__5353));
    LocalMux I__1156 (
            .O(N__5368),
            .I(N__5353));
    InMux I__1155 (
            .O(N__5367),
            .I(N__5348));
    InMux I__1154 (
            .O(N__5366),
            .I(N__5348));
    Span4Mux_v I__1153 (
            .O(N__5363),
            .I(N__5344));
    Span4Mux_v I__1152 (
            .O(N__5358),
            .I(N__5341));
    Span4Mux_v I__1151 (
            .O(N__5353),
            .I(N__5336));
    LocalMux I__1150 (
            .O(N__5348),
            .I(N__5336));
    InMux I__1149 (
            .O(N__5347),
            .I(N__5333));
    Odrv4 I__1148 (
            .O(N__5344),
            .I(\ppm_encoder1.pulses2count22_0 ));
    Odrv4 I__1147 (
            .O(N__5341),
            .I(\ppm_encoder1.pulses2count22_0 ));
    Odrv4 I__1146 (
            .O(N__5336),
            .I(\ppm_encoder1.pulses2count22_0 ));
    LocalMux I__1145 (
            .O(N__5333),
            .I(\ppm_encoder1.pulses2count22_0 ));
    InMux I__1144 (
            .O(N__5324),
            .I(N__5321));
    LocalMux I__1143 (
            .O(N__5321),
            .I(\ppm_encoder1.pulses2countZ0Z_0 ));
    CEMux I__1142 (
            .O(N__5318),
            .I(N__5291));
    CEMux I__1141 (
            .O(N__5317),
            .I(N__5291));
    CEMux I__1140 (
            .O(N__5316),
            .I(N__5291));
    CEMux I__1139 (
            .O(N__5315),
            .I(N__5291));
    CEMux I__1138 (
            .O(N__5314),
            .I(N__5291));
    CEMux I__1137 (
            .O(N__5313),
            .I(N__5291));
    CEMux I__1136 (
            .O(N__5312),
            .I(N__5291));
    CEMux I__1135 (
            .O(N__5311),
            .I(N__5291));
    CEMux I__1134 (
            .O(N__5310),
            .I(N__5291));
    GlobalMux I__1133 (
            .O(N__5291),
            .I(N__5288));
    gio2CtrlBuf I__1132 (
            .O(N__5288),
            .I(\ppm_encoder1.N_31_i_g ));
    InMux I__1131 (
            .O(N__5285),
            .I(N__5280));
    InMux I__1130 (
            .O(N__5284),
            .I(N__5277));
    InMux I__1129 (
            .O(N__5283),
            .I(N__5274));
    LocalMux I__1128 (
            .O(N__5280),
            .I(N__5271));
    LocalMux I__1127 (
            .O(N__5277),
            .I(\ppm_encoder1.counterZ0Z_15 ));
    LocalMux I__1126 (
            .O(N__5274),
            .I(\ppm_encoder1.counterZ0Z_15 ));
    Odrv4 I__1125 (
            .O(N__5271),
            .I(\ppm_encoder1.counterZ0Z_15 ));
    InMux I__1124 (
            .O(N__5264),
            .I(N__5259));
    InMux I__1123 (
            .O(N__5263),
            .I(N__5256));
    InMux I__1122 (
            .O(N__5262),
            .I(N__5253));
    LocalMux I__1121 (
            .O(N__5259),
            .I(\ppm_encoder1.counterZ0Z_1 ));
    LocalMux I__1120 (
            .O(N__5256),
            .I(\ppm_encoder1.counterZ0Z_1 ));
    LocalMux I__1119 (
            .O(N__5253),
            .I(\ppm_encoder1.counterZ0Z_1 ));
    CascadeMux I__1118 (
            .O(N__5246),
            .I(N__5243));
    InMux I__1117 (
            .O(N__5243),
            .I(N__5239));
    InMux I__1116 (
            .O(N__5242),
            .I(N__5235));
    LocalMux I__1115 (
            .O(N__5239),
            .I(N__5232));
    InMux I__1114 (
            .O(N__5238),
            .I(N__5229));
    LocalMux I__1113 (
            .O(N__5235),
            .I(\ppm_encoder1.counterZ0Z_18 ));
    Odrv4 I__1112 (
            .O(N__5232),
            .I(\ppm_encoder1.counterZ0Z_18 ));
    LocalMux I__1111 (
            .O(N__5229),
            .I(\ppm_encoder1.counterZ0Z_18 ));
    InMux I__1110 (
            .O(N__5222),
            .I(N__5217));
    InMux I__1109 (
            .O(N__5221),
            .I(N__5214));
    InMux I__1108 (
            .O(N__5220),
            .I(N__5211));
    LocalMux I__1107 (
            .O(N__5217),
            .I(N__5208));
    LocalMux I__1106 (
            .O(N__5214),
            .I(\ppm_encoder1.counterZ0Z_8 ));
    LocalMux I__1105 (
            .O(N__5211),
            .I(\ppm_encoder1.counterZ0Z_8 ));
    Odrv12 I__1104 (
            .O(N__5208),
            .I(\ppm_encoder1.counterZ0Z_8 ));
    CascadeMux I__1103 (
            .O(N__5201),
            .I(N__5198));
    InMux I__1102 (
            .O(N__5198),
            .I(N__5195));
    LocalMux I__1101 (
            .O(N__5195),
            .I(N__5192));
    Odrv4 I__1100 (
            .O(N__5192),
            .I(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_14 ));
    InMux I__1099 (
            .O(N__5189),
            .I(N__5184));
    InMux I__1098 (
            .O(N__5188),
            .I(N__5181));
    InMux I__1097 (
            .O(N__5187),
            .I(N__5178));
    LocalMux I__1096 (
            .O(N__5184),
            .I(N__5175));
    LocalMux I__1095 (
            .O(N__5181),
            .I(\ppm_encoder1.counterZ0Z_14 ));
    LocalMux I__1094 (
            .O(N__5178),
            .I(\ppm_encoder1.counterZ0Z_14 ));
    Odrv4 I__1093 (
            .O(N__5175),
            .I(\ppm_encoder1.counterZ0Z_14 ));
    InMux I__1092 (
            .O(N__5168),
            .I(N__5163));
    InMux I__1091 (
            .O(N__5167),
            .I(N__5160));
    InMux I__1090 (
            .O(N__5166),
            .I(N__5157));
    LocalMux I__1089 (
            .O(N__5163),
            .I(\ppm_encoder1.counterZ0Z_0 ));
    LocalMux I__1088 (
            .O(N__5160),
            .I(\ppm_encoder1.counterZ0Z_0 ));
    LocalMux I__1087 (
            .O(N__5157),
            .I(\ppm_encoder1.counterZ0Z_0 ));
    CascadeMux I__1086 (
            .O(N__5150),
            .I(N__5147));
    InMux I__1085 (
            .O(N__5147),
            .I(N__5144));
    LocalMux I__1084 (
            .O(N__5144),
            .I(N__5141));
    Odrv4 I__1083 (
            .O(N__5141),
            .I(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_0 ));
    InMux I__1082 (
            .O(N__5138),
            .I(N__5133));
    InMux I__1081 (
            .O(N__5137),
            .I(N__5130));
    InMux I__1080 (
            .O(N__5136),
            .I(N__5127));
    LocalMux I__1079 (
            .O(N__5133),
            .I(N__5124));
    LocalMux I__1078 (
            .O(N__5130),
            .I(\ppm_encoder1.counterZ0Z_9 ));
    LocalMux I__1077 (
            .O(N__5127),
            .I(\ppm_encoder1.counterZ0Z_9 ));
    Odrv12 I__1076 (
            .O(N__5124),
            .I(\ppm_encoder1.counterZ0Z_9 ));
    InMux I__1075 (
            .O(N__5117),
            .I(N__5112));
    InMux I__1074 (
            .O(N__5116),
            .I(N__5109));
    InMux I__1073 (
            .O(N__5115),
            .I(N__5106));
    LocalMux I__1072 (
            .O(N__5112),
            .I(\ppm_encoder1.counterZ0Z_3 ));
    LocalMux I__1071 (
            .O(N__5109),
            .I(\ppm_encoder1.counterZ0Z_3 ));
    LocalMux I__1070 (
            .O(N__5106),
            .I(\ppm_encoder1.counterZ0Z_3 ));
    CascadeMux I__1069 (
            .O(N__5099),
            .I(N__5094));
    InMux I__1068 (
            .O(N__5098),
            .I(N__5091));
    InMux I__1067 (
            .O(N__5097),
            .I(N__5088));
    InMux I__1066 (
            .O(N__5094),
            .I(N__5085));
    LocalMux I__1065 (
            .O(N__5091),
            .I(N__5082));
    LocalMux I__1064 (
            .O(N__5088),
            .I(\ppm_encoder1.counterZ0Z_10 ));
    LocalMux I__1063 (
            .O(N__5085),
            .I(\ppm_encoder1.counterZ0Z_10 ));
    Odrv4 I__1062 (
            .O(N__5082),
            .I(\ppm_encoder1.counterZ0Z_10 ));
    InMux I__1061 (
            .O(N__5075),
            .I(N__5070));
    InMux I__1060 (
            .O(N__5074),
            .I(N__5067));
    InMux I__1059 (
            .O(N__5073),
            .I(N__5064));
    LocalMux I__1058 (
            .O(N__5070),
            .I(\ppm_encoder1.counterZ0Z_2 ));
    LocalMux I__1057 (
            .O(N__5067),
            .I(\ppm_encoder1.counterZ0Z_2 ));
    LocalMux I__1056 (
            .O(N__5064),
            .I(\ppm_encoder1.counterZ0Z_2 ));
    InMux I__1055 (
            .O(N__5057),
            .I(N__5054));
    LocalMux I__1054 (
            .O(N__5054),
            .I(N__5051));
    Odrv4 I__1053 (
            .O(N__5051),
            .I(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_13 ));
    CascadeMux I__1052 (
            .O(N__5048),
            .I(\uart1.position_RNO_0Z0Z_1_cascade_ ));
    InMux I__1051 (
            .O(N__5045),
            .I(N__5040));
    InMux I__1050 (
            .O(N__5044),
            .I(N__5037));
    CascadeMux I__1049 (
            .O(N__5043),
            .I(N__5030));
    LocalMux I__1048 (
            .O(N__5040),
            .I(N__5025));
    LocalMux I__1047 (
            .O(N__5037),
            .I(N__5025));
    InMux I__1046 (
            .O(N__5036),
            .I(N__5020));
    InMux I__1045 (
            .O(N__5035),
            .I(N__5020));
    CascadeMux I__1044 (
            .O(N__5034),
            .I(N__5017));
    CascadeMux I__1043 (
            .O(N__5033),
            .I(N__5014));
    InMux I__1042 (
            .O(N__5030),
            .I(N__5010));
    Span4Mux_v I__1041 (
            .O(N__5025),
            .I(N__5004));
    LocalMux I__1040 (
            .O(N__5020),
            .I(N__5004));
    InMux I__1039 (
            .O(N__5017),
            .I(N__4996));
    InMux I__1038 (
            .O(N__5014),
            .I(N__4996));
    InMux I__1037 (
            .O(N__5013),
            .I(N__4996));
    LocalMux I__1036 (
            .O(N__5010),
            .I(N__4993));
    InMux I__1035 (
            .O(N__5009),
            .I(N__4990));
    Span4Mux_h I__1034 (
            .O(N__5004),
            .I(N__4987));
    InMux I__1033 (
            .O(N__5003),
            .I(N__4984));
    LocalMux I__1032 (
            .O(N__4996),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_1 ));
    Odrv12 I__1031 (
            .O(N__4993),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_1 ));
    LocalMux I__1030 (
            .O(N__4990),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_1 ));
    Odrv4 I__1029 (
            .O(N__4987),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_1 ));
    LocalMux I__1028 (
            .O(N__4984),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_1 ));
    InMux I__1027 (
            .O(N__4973),
            .I(N__4964));
    InMux I__1026 (
            .O(N__4972),
            .I(N__4964));
    InMux I__1025 (
            .O(N__4971),
            .I(N__4958));
    InMux I__1024 (
            .O(N__4970),
            .I(N__4954));
    CascadeMux I__1023 (
            .O(N__4969),
            .I(N__4951));
    LocalMux I__1022 (
            .O(N__4964),
            .I(N__4948));
    InMux I__1021 (
            .O(N__4963),
            .I(N__4945));
    InMux I__1020 (
            .O(N__4962),
            .I(N__4940));
    InMux I__1019 (
            .O(N__4961),
            .I(N__4940));
    LocalMux I__1018 (
            .O(N__4958),
            .I(N__4937));
    InMux I__1017 (
            .O(N__4957),
            .I(N__4934));
    LocalMux I__1016 (
            .O(N__4954),
            .I(N__4931));
    InMux I__1015 (
            .O(N__4951),
            .I(N__4928));
    Span4Mux_v I__1014 (
            .O(N__4948),
            .I(N__4916));
    LocalMux I__1013 (
            .O(N__4945),
            .I(N__4916));
    LocalMux I__1012 (
            .O(N__4940),
            .I(N__4916));
    Span4Mux_h I__1011 (
            .O(N__4937),
            .I(N__4912));
    LocalMux I__1010 (
            .O(N__4934),
            .I(N__4909));
    Span12Mux_s8_v I__1009 (
            .O(N__4931),
            .I(N__4904));
    LocalMux I__1008 (
            .O(N__4928),
            .I(N__4904));
    InMux I__1007 (
            .O(N__4927),
            .I(N__4895));
    InMux I__1006 (
            .O(N__4926),
            .I(N__4895));
    InMux I__1005 (
            .O(N__4925),
            .I(N__4895));
    InMux I__1004 (
            .O(N__4924),
            .I(N__4895));
    InMux I__1003 (
            .O(N__4923),
            .I(N__4892));
    Span4Mux_h I__1002 (
            .O(N__4916),
            .I(N__4889));
    InMux I__1001 (
            .O(N__4915),
            .I(N__4886));
    Odrv4 I__1000 (
            .O(N__4912),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_0 ));
    Odrv12 I__999 (
            .O(N__4909),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_0 ));
    Odrv12 I__998 (
            .O(N__4904),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_0 ));
    LocalMux I__997 (
            .O(N__4895),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_0 ));
    LocalMux I__996 (
            .O(N__4892),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_0 ));
    Odrv4 I__995 (
            .O(N__4889),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_0 ));
    LocalMux I__994 (
            .O(N__4886),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_0 ));
    InMux I__993 (
            .O(N__4871),
            .I(N__4868));
    LocalMux I__992 (
            .O(N__4868),
            .I(N__4864));
    InMux I__991 (
            .O(N__4867),
            .I(N__4861));
    Span4Mux_v I__990 (
            .O(N__4864),
            .I(N__4856));
    LocalMux I__989 (
            .O(N__4861),
            .I(N__4856));
    Odrv4 I__988 (
            .O(N__4856),
            .I(\ppm_encoder1.N_146_1 ));
    CascadeMux I__987 (
            .O(N__4853),
            .I(N__4845));
    CascadeMux I__986 (
            .O(N__4852),
            .I(N__4841));
    InMux I__985 (
            .O(N__4851),
            .I(N__4836));
    InMux I__984 (
            .O(N__4850),
            .I(N__4836));
    InMux I__983 (
            .O(N__4849),
            .I(N__4832));
    InMux I__982 (
            .O(N__4848),
            .I(N__4829));
    InMux I__981 (
            .O(N__4845),
            .I(N__4822));
    InMux I__980 (
            .O(N__4844),
            .I(N__4822));
    InMux I__979 (
            .O(N__4841),
            .I(N__4822));
    LocalMux I__978 (
            .O(N__4836),
            .I(N__4816));
    CascadeMux I__977 (
            .O(N__4835),
            .I(N__4813));
    LocalMux I__976 (
            .O(N__4832),
            .I(N__4806));
    LocalMux I__975 (
            .O(N__4829),
            .I(N__4806));
    LocalMux I__974 (
            .O(N__4822),
            .I(N__4806));
    InMux I__973 (
            .O(N__4821),
            .I(N__4798));
    InMux I__972 (
            .O(N__4820),
            .I(N__4798));
    InMux I__971 (
            .O(N__4819),
            .I(N__4798));
    Span4Mux_h I__970 (
            .O(N__4816),
            .I(N__4795));
    InMux I__969 (
            .O(N__4813),
            .I(N__4792));
    Span4Mux_v I__968 (
            .O(N__4806),
            .I(N__4789));
    InMux I__967 (
            .O(N__4805),
            .I(N__4786));
    LocalMux I__966 (
            .O(N__4798),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_2 ));
    Odrv4 I__965 (
            .O(N__4795),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_2 ));
    LocalMux I__964 (
            .O(N__4792),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_2 ));
    Odrv4 I__963 (
            .O(N__4789),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_2 ));
    LocalMux I__962 (
            .O(N__4786),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_2 ));
    CascadeMux I__961 (
            .O(N__4775),
            .I(N__4772));
    InMux I__960 (
            .O(N__4772),
            .I(N__4768));
    InMux I__959 (
            .O(N__4771),
            .I(N__4765));
    LocalMux I__958 (
            .O(N__4768),
            .I(N__4757));
    LocalMux I__957 (
            .O(N__4765),
            .I(N__4757));
    InMux I__956 (
            .O(N__4764),
            .I(N__4752));
    InMux I__955 (
            .O(N__4763),
            .I(N__4752));
    InMux I__954 (
            .O(N__4762),
            .I(N__4749));
    Span4Mux_v I__953 (
            .O(N__4757),
            .I(N__4738));
    LocalMux I__952 (
            .O(N__4752),
            .I(N__4738));
    LocalMux I__951 (
            .O(N__4749),
            .I(N__4738));
    InMux I__950 (
            .O(N__4748),
            .I(N__4732));
    InMux I__949 (
            .O(N__4747),
            .I(N__4732));
    InMux I__948 (
            .O(N__4746),
            .I(N__4729));
    InMux I__947 (
            .O(N__4745),
            .I(N__4726));
    Span4Mux_h I__946 (
            .O(N__4738),
            .I(N__4723));
    InMux I__945 (
            .O(N__4737),
            .I(N__4720));
    LocalMux I__944 (
            .O(N__4732),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_3 ));
    LocalMux I__943 (
            .O(N__4729),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_3 ));
    LocalMux I__942 (
            .O(N__4726),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_3 ));
    Odrv4 I__941 (
            .O(N__4723),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_3 ));
    LocalMux I__940 (
            .O(N__4720),
            .I(\ppm_encoder1.CHOOSE_CHANNELZ0Z_3 ));
    CascadeMux I__939 (
            .O(N__4709),
            .I(\ppm_encoder1.N_146_1_cascade_ ));
    CascadeMux I__938 (
            .O(N__4706),
            .I(N__4703));
    InMux I__937 (
            .O(N__4703),
            .I(N__4699));
    InMux I__936 (
            .O(N__4702),
            .I(N__4696));
    LocalMux I__935 (
            .O(N__4699),
            .I(\ppm_encoder1.N_39 ));
    LocalMux I__934 (
            .O(N__4696),
            .I(\ppm_encoder1.N_39 ));
    IoInMux I__933 (
            .O(N__4691),
            .I(N__4688));
    LocalMux I__932 (
            .O(N__4688),
            .I(N__4685));
    Span12Mux_s0_v I__931 (
            .O(N__4685),
            .I(N__4682));
    Span12Mux_v I__930 (
            .O(N__4682),
            .I(N__4679));
    Odrv12 I__929 (
            .O(N__4679),
            .I(\ppm_encoder1.N_31_i ));
    InMux I__928 (
            .O(N__4676),
            .I(N__4673));
    LocalMux I__927 (
            .O(N__4673),
            .I(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_16 ));
    InMux I__926 (
            .O(N__4670),
            .I(N__4667));
    LocalMux I__925 (
            .O(N__4667),
            .I(N__4663));
    InMux I__924 (
            .O(N__4666),
            .I(N__4660));
    Span4Mux_h I__923 (
            .O(N__4663),
            .I(N__4655));
    LocalMux I__922 (
            .O(N__4660),
            .I(N__4655));
    Span4Mux_h I__921 (
            .O(N__4655),
            .I(N__4651));
    InMux I__920 (
            .O(N__4654),
            .I(N__4648));
    Odrv4 I__919 (
            .O(N__4651),
            .I(\ppm_encoder1.PPM_STATE_0_sqmuxa_1 ));
    LocalMux I__918 (
            .O(N__4648),
            .I(\ppm_encoder1.PPM_STATE_0_sqmuxa_1 ));
    InMux I__917 (
            .O(N__4643),
            .I(N__4639));
    InMux I__916 (
            .O(N__4642),
            .I(N__4636));
    LocalMux I__915 (
            .O(N__4639),
            .I(N__4633));
    LocalMux I__914 (
            .O(N__4636),
            .I(N__4630));
    Span4Mux_v I__913 (
            .O(N__4633),
            .I(N__4627));
    Odrv12 I__912 (
            .O(N__4630),
            .I(\ppm_encoder1.pulses2count39_0 ));
    Odrv4 I__911 (
            .O(N__4627),
            .I(\ppm_encoder1.pulses2count39_0 ));
    CascadeMux I__910 (
            .O(N__4622),
            .I(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_cascade_ ));
    InMux I__909 (
            .O(N__4619),
            .I(N__4598));
    InMux I__908 (
            .O(N__4618),
            .I(N__4591));
    InMux I__907 (
            .O(N__4617),
            .I(N__4591));
    InMux I__906 (
            .O(N__4616),
            .I(N__4591));
    InMux I__905 (
            .O(N__4615),
            .I(N__4580));
    InMux I__904 (
            .O(N__4614),
            .I(N__4580));
    InMux I__903 (
            .O(N__4613),
            .I(N__4580));
    InMux I__902 (
            .O(N__4612),
            .I(N__4580));
    InMux I__901 (
            .O(N__4611),
            .I(N__4580));
    InMux I__900 (
            .O(N__4610),
            .I(N__4575));
    InMux I__899 (
            .O(N__4609),
            .I(N__4575));
    InMux I__898 (
            .O(N__4608),
            .I(N__4566));
    InMux I__897 (
            .O(N__4607),
            .I(N__4566));
    InMux I__896 (
            .O(N__4606),
            .I(N__4566));
    InMux I__895 (
            .O(N__4605),
            .I(N__4566));
    InMux I__894 (
            .O(N__4604),
            .I(N__4555));
    InMux I__893 (
            .O(N__4603),
            .I(N__4555));
    InMux I__892 (
            .O(N__4602),
            .I(N__4555));
    InMux I__891 (
            .O(N__4601),
            .I(N__4555));
    LocalMux I__890 (
            .O(N__4598),
            .I(N__4550));
    LocalMux I__889 (
            .O(N__4591),
            .I(N__4550));
    LocalMux I__888 (
            .O(N__4580),
            .I(N__4547));
    LocalMux I__887 (
            .O(N__4575),
            .I(N__4542));
    LocalMux I__886 (
            .O(N__4566),
            .I(N__4542));
    InMux I__885 (
            .O(N__4565),
            .I(N__4539));
    InMux I__884 (
            .O(N__4564),
            .I(N__4536));
    LocalMux I__883 (
            .O(N__4555),
            .I(N__4529));
    Span4Mux_v I__882 (
            .O(N__4550),
            .I(N__4529));
    Span4Mux_h I__881 (
            .O(N__4547),
            .I(N__4524));
    Span4Mux_v I__880 (
            .O(N__4542),
            .I(N__4524));
    LocalMux I__879 (
            .O(N__4539),
            .I(N__4519));
    LocalMux I__878 (
            .O(N__4536),
            .I(N__4519));
    InMux I__877 (
            .O(N__4535),
            .I(N__4516));
    InMux I__876 (
            .O(N__4534),
            .I(N__4513));
    Odrv4 I__875 (
            .O(N__4529),
            .I(\ppm_encoder1.counter11_0_N_2_THRU_CO ));
    Odrv4 I__874 (
            .O(N__4524),
            .I(\ppm_encoder1.counter11_0_N_2_THRU_CO ));
    Odrv4 I__873 (
            .O(N__4519),
            .I(\ppm_encoder1.counter11_0_N_2_THRU_CO ));
    LocalMux I__872 (
            .O(N__4516),
            .I(\ppm_encoder1.counter11_0_N_2_THRU_CO ));
    LocalMux I__871 (
            .O(N__4513),
            .I(\ppm_encoder1.counter11_0_N_2_THRU_CO ));
    IoInMux I__870 (
            .O(N__4502),
            .I(N__4499));
    LocalMux I__869 (
            .O(N__4499),
            .I(N__4496));
    Odrv12 I__868 (
            .O(N__4496),
            .I(\ppm_encoder1.un1_PPM_STATE_0_sqmuxa_0_i ));
    InMux I__867 (
            .O(N__4493),
            .I(N__4489));
    InMux I__866 (
            .O(N__4492),
            .I(N__4485));
    LocalMux I__865 (
            .O(N__4489),
            .I(N__4482));
    InMux I__864 (
            .O(N__4488),
            .I(N__4479));
    LocalMux I__863 (
            .O(N__4485),
            .I(\ppm_encoder1.counterZ0Z_5 ));
    Odrv4 I__862 (
            .O(N__4482),
            .I(\ppm_encoder1.counterZ0Z_5 ));
    LocalMux I__861 (
            .O(N__4479),
            .I(\ppm_encoder1.counterZ0Z_5 ));
    CascadeMux I__860 (
            .O(N__4472),
            .I(N__4468));
    InMux I__859 (
            .O(N__4471),
            .I(N__4463));
    InMux I__858 (
            .O(N__4468),
            .I(N__4458));
    InMux I__857 (
            .O(N__4467),
            .I(N__4458));
    InMux I__856 (
            .O(N__4466),
            .I(N__4454));
    LocalMux I__855 (
            .O(N__4463),
            .I(N__4451));
    LocalMux I__854 (
            .O(N__4458),
            .I(N__4448));
    InMux I__853 (
            .O(N__4457),
            .I(N__4445));
    LocalMux I__852 (
            .O(N__4454),
            .I(N__4441));
    Span4Mux_h I__851 (
            .O(N__4451),
            .I(N__4434));
    Span4Mux_h I__850 (
            .O(N__4448),
            .I(N__4431));
    LocalMux I__849 (
            .O(N__4445),
            .I(N__4428));
    InMux I__848 (
            .O(N__4444),
            .I(N__4425));
    Span4Mux_h I__847 (
            .O(N__4441),
            .I(N__4422));
    InMux I__846 (
            .O(N__4440),
            .I(N__4417));
    InMux I__845 (
            .O(N__4439),
            .I(N__4417));
    InMux I__844 (
            .O(N__4438),
            .I(N__4412));
    InMux I__843 (
            .O(N__4437),
            .I(N__4412));
    Odrv4 I__842 (
            .O(N__4434),
            .I(\ppm_encoder1.PPM_STATEZ0Z_1 ));
    Odrv4 I__841 (
            .O(N__4431),
            .I(\ppm_encoder1.PPM_STATEZ0Z_1 ));
    Odrv12 I__840 (
            .O(N__4428),
            .I(\ppm_encoder1.PPM_STATEZ0Z_1 ));
    LocalMux I__839 (
            .O(N__4425),
            .I(\ppm_encoder1.PPM_STATEZ0Z_1 ));
    Odrv4 I__838 (
            .O(N__4422),
            .I(\ppm_encoder1.PPM_STATEZ0Z_1 ));
    LocalMux I__837 (
            .O(N__4417),
            .I(\ppm_encoder1.PPM_STATEZ0Z_1 ));
    LocalMux I__836 (
            .O(N__4412),
            .I(\ppm_encoder1.PPM_STATEZ0Z_1 ));
    InMux I__835 (
            .O(N__4397),
            .I(N__4391));
    InMux I__834 (
            .O(N__4396),
            .I(N__4383));
    InMux I__833 (
            .O(N__4395),
            .I(N__4383));
    InMux I__832 (
            .O(N__4394),
            .I(N__4379));
    LocalMux I__831 (
            .O(N__4391),
            .I(N__4376));
    InMux I__830 (
            .O(N__4390),
            .I(N__4371));
    InMux I__829 (
            .O(N__4389),
            .I(N__4371));
    InMux I__828 (
            .O(N__4388),
            .I(N__4367));
    LocalMux I__827 (
            .O(N__4383),
            .I(N__4364));
    InMux I__826 (
            .O(N__4382),
            .I(N__4361));
    LocalMux I__825 (
            .O(N__4379),
            .I(N__4356));
    Span4Mux_v I__824 (
            .O(N__4376),
            .I(N__4356));
    LocalMux I__823 (
            .O(N__4371),
            .I(N__4353));
    InMux I__822 (
            .O(N__4370),
            .I(N__4350));
    LocalMux I__821 (
            .O(N__4367),
            .I(\ppm_encoder1.PPM_STATEZ0Z_0 ));
    Odrv4 I__820 (
            .O(N__4364),
            .I(\ppm_encoder1.PPM_STATEZ0Z_0 ));
    LocalMux I__819 (
            .O(N__4361),
            .I(\ppm_encoder1.PPM_STATEZ0Z_0 ));
    Odrv4 I__818 (
            .O(N__4356),
            .I(\ppm_encoder1.PPM_STATEZ0Z_0 ));
    Odrv4 I__817 (
            .O(N__4353),
            .I(\ppm_encoder1.PPM_STATEZ0Z_0 ));
    LocalMux I__816 (
            .O(N__4350),
            .I(\ppm_encoder1.PPM_STATEZ0Z_0 ));
    InMux I__815 (
            .O(N__4337),
            .I(N__4334));
    LocalMux I__814 (
            .O(N__4334),
            .I(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_15 ));
    InMux I__813 (
            .O(N__4331),
            .I(\ppm_encoder1.un1_counter_13_cry_17 ));
    SRMux I__812 (
            .O(N__4328),
            .I(N__4319));
    SRMux I__811 (
            .O(N__4327),
            .I(N__4319));
    SRMux I__810 (
            .O(N__4326),
            .I(N__4319));
    GlobalMux I__809 (
            .O(N__4319),
            .I(N__4316));
    gio2CtrlBuf I__808 (
            .O(N__4316),
            .I(\ppm_encoder1.un1_PPM_STATE_0_sqmuxa_0_i_g ));
    InMux I__807 (
            .O(N__4313),
            .I(N__4289));
    InMux I__806 (
            .O(N__4312),
            .I(N__4289));
    InMux I__805 (
            .O(N__4311),
            .I(N__4289));
    InMux I__804 (
            .O(N__4310),
            .I(N__4289));
    InMux I__803 (
            .O(N__4309),
            .I(N__4289));
    InMux I__802 (
            .O(N__4308),
            .I(N__4289));
    InMux I__801 (
            .O(N__4307),
            .I(N__4289));
    InMux I__800 (
            .O(N__4306),
            .I(N__4289));
    LocalMux I__799 (
            .O(N__4289),
            .I(\uart1.un1_state_bus_1_0 ));
    InMux I__798 (
            .O(N__4286),
            .I(\ppm_encoder1.un1_counter_13_cry_9 ));
    InMux I__797 (
            .O(N__4283),
            .I(N__4278));
    InMux I__796 (
            .O(N__4282),
            .I(N__4275));
    InMux I__795 (
            .O(N__4281),
            .I(N__4272));
    LocalMux I__794 (
            .O(N__4278),
            .I(N__4269));
    LocalMux I__793 (
            .O(N__4275),
            .I(\ppm_encoder1.counterZ0Z_11 ));
    LocalMux I__792 (
            .O(N__4272),
            .I(\ppm_encoder1.counterZ0Z_11 ));
    Odrv4 I__791 (
            .O(N__4269),
            .I(\ppm_encoder1.counterZ0Z_11 ));
    InMux I__790 (
            .O(N__4262),
            .I(\ppm_encoder1.un1_counter_13_cry_10 ));
    InMux I__789 (
            .O(N__4259),
            .I(N__4255));
    InMux I__788 (
            .O(N__4258),
            .I(N__4251));
    LocalMux I__787 (
            .O(N__4255),
            .I(N__4248));
    InMux I__786 (
            .O(N__4254),
            .I(N__4245));
    LocalMux I__785 (
            .O(N__4251),
            .I(\ppm_encoder1.counterZ0Z_12 ));
    Odrv4 I__784 (
            .O(N__4248),
            .I(\ppm_encoder1.counterZ0Z_12 ));
    LocalMux I__783 (
            .O(N__4245),
            .I(\ppm_encoder1.counterZ0Z_12 ));
    InMux I__782 (
            .O(N__4238),
            .I(\ppm_encoder1.un1_counter_13_cry_11 ));
    InMux I__781 (
            .O(N__4235),
            .I(N__4230));
    InMux I__780 (
            .O(N__4234),
            .I(N__4225));
    InMux I__779 (
            .O(N__4233),
            .I(N__4225));
    LocalMux I__778 (
            .O(N__4230),
            .I(\ppm_encoder1.counterZ0Z_13 ));
    LocalMux I__777 (
            .O(N__4225),
            .I(\ppm_encoder1.counterZ0Z_13 ));
    InMux I__776 (
            .O(N__4220),
            .I(\ppm_encoder1.un1_counter_13_cry_12 ));
    InMux I__775 (
            .O(N__4217),
            .I(\ppm_encoder1.un1_counter_13_cry_13 ));
    InMux I__774 (
            .O(N__4214),
            .I(\ppm_encoder1.un1_counter_13_cry_14 ));
    CascadeMux I__773 (
            .O(N__4211),
            .I(N__4208));
    InMux I__772 (
            .O(N__4208),
            .I(N__4203));
    InMux I__771 (
            .O(N__4207),
            .I(N__4200));
    InMux I__770 (
            .O(N__4206),
            .I(N__4197));
    LocalMux I__769 (
            .O(N__4203),
            .I(N__4192));
    LocalMux I__768 (
            .O(N__4200),
            .I(N__4192));
    LocalMux I__767 (
            .O(N__4197),
            .I(\ppm_encoder1.counterZ0Z_16 ));
    Odrv4 I__766 (
            .O(N__4192),
            .I(\ppm_encoder1.counterZ0Z_16 ));
    InMux I__765 (
            .O(N__4187),
            .I(bfn_11_28_0_));
    InMux I__764 (
            .O(N__4184),
            .I(N__4181));
    LocalMux I__763 (
            .O(N__4181),
            .I(N__4176));
    InMux I__762 (
            .O(N__4180),
            .I(N__4173));
    InMux I__761 (
            .O(N__4179),
            .I(N__4170));
    Span4Mux_h I__760 (
            .O(N__4176),
            .I(N__4167));
    LocalMux I__759 (
            .O(N__4173),
            .I(N__4164));
    LocalMux I__758 (
            .O(N__4170),
            .I(\ppm_encoder1.counterZ0Z_17 ));
    Odrv4 I__757 (
            .O(N__4167),
            .I(\ppm_encoder1.counterZ0Z_17 ));
    Odrv4 I__756 (
            .O(N__4164),
            .I(\ppm_encoder1.counterZ0Z_17 ));
    InMux I__755 (
            .O(N__4157),
            .I(\ppm_encoder1.un1_counter_13_cry_16 ));
    InMux I__754 (
            .O(N__4154),
            .I(\ppm_encoder1.un1_counter_13_cry_0 ));
    InMux I__753 (
            .O(N__4151),
            .I(\ppm_encoder1.un1_counter_13_cry_1 ));
    InMux I__752 (
            .O(N__4148),
            .I(\ppm_encoder1.un1_counter_13_cry_2 ));
    InMux I__751 (
            .O(N__4145),
            .I(N__4140));
    InMux I__750 (
            .O(N__4144),
            .I(N__4137));
    InMux I__749 (
            .O(N__4143),
            .I(N__4134));
    LocalMux I__748 (
            .O(N__4140),
            .I(\ppm_encoder1.counterZ0Z_4 ));
    LocalMux I__747 (
            .O(N__4137),
            .I(\ppm_encoder1.counterZ0Z_4 ));
    LocalMux I__746 (
            .O(N__4134),
            .I(\ppm_encoder1.counterZ0Z_4 ));
    InMux I__745 (
            .O(N__4127),
            .I(\ppm_encoder1.un1_counter_13_cry_3 ));
    InMux I__744 (
            .O(N__4124),
            .I(\ppm_encoder1.un1_counter_13_cry_4 ));
    InMux I__743 (
            .O(N__4121),
            .I(N__4116));
    InMux I__742 (
            .O(N__4120),
            .I(N__4111));
    InMux I__741 (
            .O(N__4119),
            .I(N__4111));
    LocalMux I__740 (
            .O(N__4116),
            .I(\ppm_encoder1.counterZ0Z_6 ));
    LocalMux I__739 (
            .O(N__4111),
            .I(\ppm_encoder1.counterZ0Z_6 ));
    InMux I__738 (
            .O(N__4106),
            .I(\ppm_encoder1.un1_counter_13_cry_5 ));
    CascadeMux I__737 (
            .O(N__4103),
            .I(N__4099));
    InMux I__736 (
            .O(N__4102),
            .I(N__4095));
    InMux I__735 (
            .O(N__4099),
            .I(N__4092));
    InMux I__734 (
            .O(N__4098),
            .I(N__4089));
    LocalMux I__733 (
            .O(N__4095),
            .I(\ppm_encoder1.counterZ0Z_7 ));
    LocalMux I__732 (
            .O(N__4092),
            .I(\ppm_encoder1.counterZ0Z_7 ));
    LocalMux I__731 (
            .O(N__4089),
            .I(\ppm_encoder1.counterZ0Z_7 ));
    InMux I__730 (
            .O(N__4082),
            .I(\ppm_encoder1.un1_counter_13_cry_6 ));
    InMux I__729 (
            .O(N__4079),
            .I(bfn_11_27_0_));
    InMux I__728 (
            .O(N__4076),
            .I(\ppm_encoder1.un1_counter_13_cry_8 ));
    InMux I__727 (
            .O(N__4073),
            .I(N__4070));
    LocalMux I__726 (
            .O(N__4070),
            .I(N__4067));
    Odrv4 I__725 (
            .O(N__4067),
            .I(\ppm_encoder1.counter11_0_I_57_c_RNOZ0 ));
    CascadeMux I__724 (
            .O(N__4064),
            .I(N__4060));
    CascadeMux I__723 (
            .O(N__4063),
            .I(N__4057));
    InMux I__722 (
            .O(N__4060),
            .I(N__4046));
    InMux I__721 (
            .O(N__4057),
            .I(N__4043));
    InMux I__720 (
            .O(N__4056),
            .I(N__4040));
    CascadeMux I__719 (
            .O(N__4055),
            .I(N__4037));
    CascadeMux I__718 (
            .O(N__4054),
            .I(N__4034));
    CascadeMux I__717 (
            .O(N__4053),
            .I(N__4031));
    CascadeMux I__716 (
            .O(N__4052),
            .I(N__4028));
    CascadeMux I__715 (
            .O(N__4051),
            .I(N__4025));
    CascadeMux I__714 (
            .O(N__4050),
            .I(N__4022));
    CascadeMux I__713 (
            .O(N__4049),
            .I(N__4019));
    LocalMux I__712 (
            .O(N__4046),
            .I(N__4016));
    LocalMux I__711 (
            .O(N__4043),
            .I(N__4013));
    LocalMux I__710 (
            .O(N__4040),
            .I(N__4010));
    InMux I__709 (
            .O(N__4037),
            .I(N__4001));
    InMux I__708 (
            .O(N__4034),
            .I(N__4001));
    InMux I__707 (
            .O(N__4031),
            .I(N__4001));
    InMux I__706 (
            .O(N__4028),
            .I(N__4001));
    InMux I__705 (
            .O(N__4025),
            .I(N__3994));
    InMux I__704 (
            .O(N__4022),
            .I(N__3994));
    InMux I__703 (
            .O(N__4019),
            .I(N__3994));
    Span4Mux_h I__702 (
            .O(N__4016),
            .I(N__3991));
    Span4Mux_v I__701 (
            .O(N__4013),
            .I(N__3982));
    Span4Mux_v I__700 (
            .O(N__4010),
            .I(N__3982));
    LocalMux I__699 (
            .O(N__4001),
            .I(N__3982));
    LocalMux I__698 (
            .O(N__3994),
            .I(N__3982));
    Odrv4 I__697 (
            .O(N__3991),
            .I(CONSTANT_ONE_NET));
    Odrv4 I__696 (
            .O(N__3982),
            .I(CONSTANT_ONE_NET));
    InMux I__695 (
            .O(N__3977),
            .I(\ppm_encoder1.counter11_0_N_2 ));
    InMux I__694 (
            .O(N__3974),
            .I(N__3971));
    LocalMux I__693 (
            .O(N__3971),
            .I(\ppm_encoder1.pulses2countZ0Z_10 ));
    CascadeMux I__692 (
            .O(N__3968),
            .I(N__3965));
    InMux I__691 (
            .O(N__3965),
            .I(N__3962));
    LocalMux I__690 (
            .O(N__3962),
            .I(\ppm_encoder1.pulses2countZ0Z_11 ));
    InMux I__689 (
            .O(N__3959),
            .I(N__3956));
    LocalMux I__688 (
            .O(N__3956),
            .I(\ppm_encoder1.counter11_0_I_33_c_RNOZ0 ));
    InMux I__687 (
            .O(N__3953),
            .I(N__3950));
    LocalMux I__686 (
            .O(N__3950),
            .I(\ppm_encoder1.pulses2countZ0Z_6 ));
    CascadeMux I__685 (
            .O(N__3947),
            .I(N__3944));
    InMux I__684 (
            .O(N__3944),
            .I(N__3941));
    LocalMux I__683 (
            .O(N__3941),
            .I(\ppm_encoder1.pulses2countZ0Z_7 ));
    InMux I__682 (
            .O(N__3938),
            .I(N__3935));
    LocalMux I__681 (
            .O(N__3935),
            .I(\ppm_encoder1.counter11_0_I_21_c_RNOZ0 ));
    InMux I__680 (
            .O(N__3932),
            .I(N__3929));
    LocalMux I__679 (
            .O(N__3929),
            .I(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_12 ));
    CascadeMux I__678 (
            .O(N__3926),
            .I(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_2_cascade_ ));
    InMux I__677 (
            .O(N__3923),
            .I(N__3920));
    LocalMux I__676 (
            .O(N__3920),
            .I(\ppm_encoder1.pulses2countZ0Z_2 ));
    CascadeMux I__675 (
            .O(N__3917),
            .I(N__3914));
    InMux I__674 (
            .O(N__3914),
            .I(N__3911));
    LocalMux I__673 (
            .O(N__3911),
            .I(\ppm_encoder1.pulses2countZ0Z_3 ));
    InMux I__672 (
            .O(N__3908),
            .I(N__3905));
    LocalMux I__671 (
            .O(N__3905),
            .I(\ppm_encoder1.counter11_0_I_9_c_RNOZ0 ));
    CascadeMux I__670 (
            .O(N__3902),
            .I(N__3898));
    InMux I__669 (
            .O(N__3901),
            .I(N__3895));
    InMux I__668 (
            .O(N__3898),
            .I(N__3892));
    LocalMux I__667 (
            .O(N__3895),
            .I(\ppm_encoder1.N_35_i_i ));
    LocalMux I__666 (
            .O(N__3892),
            .I(\ppm_encoder1.N_35_i_i ));
    InMux I__665 (
            .O(N__3887),
            .I(N__3884));
    LocalMux I__664 (
            .O(N__3884),
            .I(\ppm_encoder1.counter11_0_I_15_c_RNOZ0 ));
    InMux I__663 (
            .O(N__3881),
            .I(N__3878));
    LocalMux I__662 (
            .O(N__3878),
            .I(\ppm_encoder1.counter11_0_I_27_c_RNOZ0 ));
    InMux I__661 (
            .O(N__3875),
            .I(N__3872));
    LocalMux I__660 (
            .O(N__3872),
            .I(N__3869));
    Odrv4 I__659 (
            .O(N__3869),
            .I(\ppm_encoder1.counter11_0_I_39_c_RNOZ0 ));
    InMux I__658 (
            .O(N__3866),
            .I(N__3863));
    LocalMux I__657 (
            .O(N__3863),
            .I(\ppm_encoder1.counter11_0_I_45_c_RNOZ0 ));
    InMux I__656 (
            .O(N__3860),
            .I(N__3857));
    LocalMux I__655 (
            .O(N__3857),
            .I(\ppm_encoder1.counter11_0_I_51_c_RNOZ0 ));
    InMux I__654 (
            .O(N__3854),
            .I(N__3849));
    InMux I__653 (
            .O(N__3853),
            .I(N__3846));
    InMux I__652 (
            .O(N__3852),
            .I(N__3843));
    LocalMux I__651 (
            .O(N__3849),
            .I(\uart1.count_pulses_neededZ0Z_5 ));
    LocalMux I__650 (
            .O(N__3846),
            .I(\uart1.count_pulses_neededZ0Z_5 ));
    LocalMux I__649 (
            .O(N__3843),
            .I(\uart1.count_pulses_neededZ0Z_5 ));
    InMux I__648 (
            .O(N__3836),
            .I(N__3831));
    InMux I__647 (
            .O(N__3835),
            .I(N__3826));
    InMux I__646 (
            .O(N__3834),
            .I(N__3826));
    LocalMux I__645 (
            .O(N__3831),
            .I(\uart1.count_pulses_neededZ0Z_1 ));
    LocalMux I__644 (
            .O(N__3826),
            .I(\uart1.count_pulses_neededZ0Z_1 ));
    CascadeMux I__643 (
            .O(N__3821),
            .I(\uart1.m9_i_o2_1_cascade_ ));
    InMux I__642 (
            .O(N__3818),
            .I(N__3815));
    LocalMux I__641 (
            .O(N__3815),
            .I(\uart1.m9_i_o2_0 ));
    InMux I__640 (
            .O(N__3812),
            .I(N__3808));
    InMux I__639 (
            .O(N__3811),
            .I(N__3805));
    LocalMux I__638 (
            .O(N__3808),
            .I(\uart1.count_pulses_neededZ0Z_6 ));
    LocalMux I__637 (
            .O(N__3805),
            .I(\uart1.count_pulses_neededZ0Z_6 ));
    InMux I__636 (
            .O(N__3800),
            .I(N__3796));
    InMux I__635 (
            .O(N__3799),
            .I(N__3793));
    LocalMux I__634 (
            .O(N__3796),
            .I(\uart1.count_pulses_neededZ0Z_0 ));
    LocalMux I__633 (
            .O(N__3793),
            .I(\uart1.count_pulses_neededZ0Z_0 ));
    InMux I__632 (
            .O(N__3788),
            .I(N__3784));
    InMux I__631 (
            .O(N__3787),
            .I(N__3781));
    LocalMux I__630 (
            .O(N__3784),
            .I(\uart1.count_pulses_neededZ0Z_8 ));
    LocalMux I__629 (
            .O(N__3781),
            .I(\uart1.count_pulses_neededZ0Z_8 ));
    InMux I__628 (
            .O(N__3776),
            .I(N__3773));
    LocalMux I__627 (
            .O(N__3773),
            .I(\uart1.m9_i_o2_0_2 ));
    InMux I__626 (
            .O(N__3770),
            .I(N__3765));
    InMux I__625 (
            .O(N__3769),
            .I(N__3760));
    InMux I__624 (
            .O(N__3768),
            .I(N__3760));
    LocalMux I__623 (
            .O(N__3765),
            .I(\uart1.count_pulses_neededZ0Z_3 ));
    LocalMux I__622 (
            .O(N__3760),
            .I(\uart1.count_pulses_neededZ0Z_3 ));
    CascadeMux I__621 (
            .O(N__3755),
            .I(N__3750));
    InMux I__620 (
            .O(N__3754),
            .I(N__3747));
    InMux I__619 (
            .O(N__3753),
            .I(N__3742));
    InMux I__618 (
            .O(N__3750),
            .I(N__3742));
    LocalMux I__617 (
            .O(N__3747),
            .I(\uart1.count_pulses_neededZ0Z_2 ));
    LocalMux I__616 (
            .O(N__3742),
            .I(\uart1.count_pulses_neededZ0Z_2 ));
    CascadeMux I__615 (
            .O(N__3737),
            .I(\uart1.m9_i_o2_0_2_cascade_ ));
    InMux I__614 (
            .O(N__3734),
            .I(N__3731));
    LocalMux I__613 (
            .O(N__3731),
            .I(\uart1.m9_i_o2_1_2 ));
    CascadeMux I__612 (
            .O(N__3728),
            .I(\uart1.N_23_cascade_ ));
    SRMux I__611 (
            .O(N__3725),
            .I(N__3722));
    LocalMux I__610 (
            .O(N__3722),
            .I(N__3719));
    Span4Mux_h I__609 (
            .O(N__3719),
            .I(N__3716));
    Span4Mux_s2_v I__608 (
            .O(N__3716),
            .I(N__3713));
    Odrv4 I__607 (
            .O(N__3713),
            .I(\uart1.N_5 ));
    InMux I__606 (
            .O(N__3710),
            .I(N__3707));
    LocalMux I__605 (
            .O(N__3707),
            .I(\ppm_encoder1.pulses2countZ0Z_8 ));
    CascadeMux I__604 (
            .O(N__3704),
            .I(N__3701));
    InMux I__603 (
            .O(N__3701),
            .I(N__3698));
    LocalMux I__602 (
            .O(N__3698),
            .I(\ppm_encoder1.pulses2countZ0Z_9 ));
    IoInMux I__601 (
            .O(N__3695),
            .I(N__3692));
    LocalMux I__600 (
            .O(N__3692),
            .I(N__3688));
    CascadeMux I__599 (
            .O(N__3691),
            .I(N__3685));
    Span12Mux_s7_v I__598 (
            .O(N__3688),
            .I(N__3682));
    InMux I__597 (
            .O(N__3685),
            .I(N__3679));
    Odrv12 I__596 (
            .O(N__3682),
            .I(ppm_output_c));
    LocalMux I__595 (
            .O(N__3679),
            .I(ppm_output_c));
    InMux I__594 (
            .O(N__3674),
            .I(N__3671));
    LocalMux I__593 (
            .O(N__3671),
            .I(\ppm_encoder1.pulses2countZ0Z_17 ));
    InMux I__592 (
            .O(N__3668),
            .I(N__3665));
    LocalMux I__591 (
            .O(N__3665),
            .I(N__3662));
    Odrv4 I__590 (
            .O(N__3662),
            .I(\ppm_encoder1.pulses2countZ0Z_16 ));
    CascadeMux I__589 (
            .O(N__3659),
            .I(N__3656));
    InMux I__588 (
            .O(N__3656),
            .I(N__3653));
    LocalMux I__587 (
            .O(N__3653),
            .I(\ppm_encoder1.pulses2countZ0Z_13 ));
    InMux I__586 (
            .O(N__3650),
            .I(N__3647));
    LocalMux I__585 (
            .O(N__3647),
            .I(N__3644));
    Span4Mux_h I__584 (
            .O(N__3644),
            .I(N__3640));
    InMux I__583 (
            .O(N__3643),
            .I(N__3637));
    Odrv4 I__582 (
            .O(N__3640),
            .I(\ppm_encoder1.init_pulsesZ0Z_12 ));
    LocalMux I__581 (
            .O(N__3637),
            .I(\ppm_encoder1.init_pulsesZ0Z_12 ));
    InMux I__580 (
            .O(N__3632),
            .I(N__3629));
    LocalMux I__579 (
            .O(N__3629),
            .I(\ppm_encoder1.pulses2countZ0Z_12 ));
    InMux I__578 (
            .O(N__3626),
            .I(N__3623));
    LocalMux I__577 (
            .O(N__3623),
            .I(\ppm_encoder1.pulses2countZ0Z_18 ));
    CascadeMux I__576 (
            .O(N__3620),
            .I(N__3616));
    InMux I__575 (
            .O(N__3619),
            .I(N__3612));
    InMux I__574 (
            .O(N__3616),
            .I(N__3607));
    InMux I__573 (
            .O(N__3615),
            .I(N__3607));
    LocalMux I__572 (
            .O(N__3612),
            .I(\uart1.count_pulses_neededZ0Z_7 ));
    LocalMux I__571 (
            .O(N__3607),
            .I(\uart1.count_pulses_neededZ0Z_7 ));
    InMux I__570 (
            .O(N__3602),
            .I(N__3597));
    InMux I__569 (
            .O(N__3601),
            .I(N__3592));
    InMux I__568 (
            .O(N__3600),
            .I(N__3592));
    LocalMux I__567 (
            .O(N__3597),
            .I(\uart1.count_pulses_neededZ0Z_4 ));
    LocalMux I__566 (
            .O(N__3592),
            .I(\uart1.count_pulses_neededZ0Z_4 ));
    CascadeMux I__565 (
            .O(N__3587),
            .I(N__3584));
    InMux I__564 (
            .O(N__3584),
            .I(N__3580));
    InMux I__563 (
            .O(N__3583),
            .I(N__3577));
    LocalMux I__562 (
            .O(N__3580),
            .I(N__3574));
    LocalMux I__561 (
            .O(N__3577),
            .I(\ppm_encoder1.init_pulsesZ0Z_6 ));
    Odrv4 I__560 (
            .O(N__3574),
            .I(\ppm_encoder1.init_pulsesZ0Z_6 ));
    InMux I__559 (
            .O(N__3569),
            .I(N__3566));
    LocalMux I__558 (
            .O(N__3566),
            .I(N__3563));
    Span4Mux_h I__557 (
            .O(N__3563),
            .I(N__3559));
    InMux I__556 (
            .O(N__3562),
            .I(N__3556));
    Odrv4 I__555 (
            .O(N__3559),
            .I(\ppm_encoder1.init_pulsesZ0Z_7 ));
    LocalMux I__554 (
            .O(N__3556),
            .I(\ppm_encoder1.init_pulsesZ0Z_7 ));
    InMux I__553 (
            .O(N__3551),
            .I(N__3548));
    LocalMux I__552 (
            .O(N__3548),
            .I(N__3545));
    Span4Mux_h I__551 (
            .O(N__3545),
            .I(N__3541));
    InMux I__550 (
            .O(N__3544),
            .I(N__3538));
    Odrv4 I__549 (
            .O(N__3541),
            .I(\ppm_encoder1.init_pulsesZ0Z_14 ));
    LocalMux I__548 (
            .O(N__3538),
            .I(\ppm_encoder1.init_pulsesZ0Z_14 ));
    InMux I__547 (
            .O(N__3533),
            .I(N__3530));
    LocalMux I__546 (
            .O(N__3530),
            .I(N__3526));
    InMux I__545 (
            .O(N__3529),
            .I(N__3523));
    Span4Mux_h I__544 (
            .O(N__3526),
            .I(N__3519));
    LocalMux I__543 (
            .O(N__3523),
            .I(N__3516));
    InMux I__542 (
            .O(N__3522),
            .I(N__3513));
    Odrv4 I__541 (
            .O(N__3519),
            .I(\ppm_encoder1.init_pulses39_2_0 ));
    Odrv4 I__540 (
            .O(N__3516),
            .I(\ppm_encoder1.init_pulses39_2_0 ));
    LocalMux I__539 (
            .O(N__3513),
            .I(\ppm_encoder1.init_pulses39_2_0 ));
    CascadeMux I__538 (
            .O(N__3506),
            .I(N__3503));
    InMux I__537 (
            .O(N__3503),
            .I(N__3499));
    CascadeMux I__536 (
            .O(N__3502),
            .I(N__3496));
    LocalMux I__535 (
            .O(N__3499),
            .I(N__3493));
    InMux I__534 (
            .O(N__3496),
            .I(N__3490));
    Odrv4 I__533 (
            .O(N__3493),
            .I(\ppm_encoder1.N_47 ));
    LocalMux I__532 (
            .O(N__3490),
            .I(\ppm_encoder1.N_47 ));
    InMux I__531 (
            .O(N__3485),
            .I(N__3482));
    LocalMux I__530 (
            .O(N__3482),
            .I(N__3478));
    InMux I__529 (
            .O(N__3481),
            .I(N__3475));
    Span4Mux_h I__528 (
            .O(N__3478),
            .I(N__3472));
    LocalMux I__527 (
            .O(N__3475),
            .I(N__3469));
    Odrv4 I__526 (
            .O(N__3472),
            .I(\ppm_encoder1.init_pulsesZ0Z_3 ));
    Odrv4 I__525 (
            .O(N__3469),
            .I(\ppm_encoder1.init_pulsesZ0Z_3 ));
    InMux I__524 (
            .O(N__3464),
            .I(N__3461));
    LocalMux I__523 (
            .O(N__3461),
            .I(N__3457));
    InMux I__522 (
            .O(N__3460),
            .I(N__3454));
    Odrv4 I__521 (
            .O(N__3457),
            .I(\ppm_encoder1.init_pulsesZ0Z_2 ));
    LocalMux I__520 (
            .O(N__3454),
            .I(\ppm_encoder1.init_pulsesZ0Z_2 ));
    CascadeMux I__519 (
            .O(N__3449),
            .I(N__3446));
    InMux I__518 (
            .O(N__3446),
            .I(N__3443));
    LocalMux I__517 (
            .O(N__3443),
            .I(\ppm_encoder1.pulses2count_8_0_iv_0_1_10_0 ));
    InMux I__516 (
            .O(N__3440),
            .I(N__3437));
    LocalMux I__515 (
            .O(N__3437),
            .I(N__3434));
    Span4Mux_h I__514 (
            .O(N__3434),
            .I(N__3430));
    InMux I__513 (
            .O(N__3433),
            .I(N__3427));
    Odrv4 I__512 (
            .O(N__3430),
            .I(\ppm_encoder1.init_pulsesZ0Z_11 ));
    LocalMux I__511 (
            .O(N__3427),
            .I(\ppm_encoder1.init_pulsesZ0Z_11 ));
    InMux I__510 (
            .O(N__3422),
            .I(N__3419));
    LocalMux I__509 (
            .O(N__3419),
            .I(\ppm_encoder1.pulses2countZ0Z_4 ));
    CascadeMux I__508 (
            .O(N__3416),
            .I(N__3413));
    InMux I__507 (
            .O(N__3413),
            .I(N__3410));
    LocalMux I__506 (
            .O(N__3410),
            .I(\ppm_encoder1.pulses2countZ0Z_5 ));
    InMux I__505 (
            .O(N__3407),
            .I(N__3404));
    LocalMux I__504 (
            .O(N__3404),
            .I(N__3401));
    Span4Mux_h I__503 (
            .O(N__3401),
            .I(N__3398));
    Odrv4 I__502 (
            .O(N__3398),
            .I(\ppm_encoder1.PPM_STATE_r_1_1 ));
    InMux I__501 (
            .O(N__3395),
            .I(N__3392));
    LocalMux I__500 (
            .O(N__3392),
            .I(\ppm_encoder1.pulses2countZ0Z_14 ));
    CascadeMux I__499 (
            .O(N__3389),
            .I(N__3386));
    InMux I__498 (
            .O(N__3386),
            .I(N__3383));
    LocalMux I__497 (
            .O(N__3383),
            .I(\ppm_encoder1.pulses2countZ0Z_15 ));
    InMux I__496 (
            .O(N__3380),
            .I(\uart1.un1_count_pulses_needed_6_cry_6 ));
    InMux I__495 (
            .O(N__3377),
            .I(bfn_9_29_0_));
    InMux I__494 (
            .O(N__3374),
            .I(N__3371));
    LocalMux I__493 (
            .O(N__3371),
            .I(N__3368));
    Span4Mux_h I__492 (
            .O(N__3368),
            .I(N__3364));
    InMux I__491 (
            .O(N__3367),
            .I(N__3361));
    Odrv4 I__490 (
            .O(N__3364),
            .I(\ppm_encoder1.init_pulsesZ0Z_9 ));
    LocalMux I__489 (
            .O(N__3361),
            .I(\ppm_encoder1.init_pulsesZ0Z_9 ));
    InMux I__488 (
            .O(N__3356),
            .I(N__3352));
    InMux I__487 (
            .O(N__3355),
            .I(N__3349));
    LocalMux I__486 (
            .O(N__3352),
            .I(N__3346));
    LocalMux I__485 (
            .O(N__3349),
            .I(N__3343));
    Odrv4 I__484 (
            .O(N__3346),
            .I(\ppm_encoder1.init_pulsesZ0Z_8 ));
    Odrv4 I__483 (
            .O(N__3343),
            .I(\ppm_encoder1.init_pulsesZ0Z_8 ));
    InMux I__482 (
            .O(N__3338),
            .I(N__3335));
    LocalMux I__481 (
            .O(N__3335),
            .I(\ppm_encoder1.PPM_STATE_e_1_0 ));
    CascadeMux I__480 (
            .O(N__3332),
            .I(N__3321));
    CascadeMux I__479 (
            .O(N__3331),
            .I(N__3318));
    CascadeMux I__478 (
            .O(N__3330),
            .I(N__3315));
    CascadeMux I__477 (
            .O(N__3329),
            .I(N__3312));
    CascadeMux I__476 (
            .O(N__3328),
            .I(N__3307));
    CascadeMux I__475 (
            .O(N__3327),
            .I(N__3304));
    CascadeMux I__474 (
            .O(N__3326),
            .I(N__3301));
    CascadeMux I__473 (
            .O(N__3325),
            .I(N__3298));
    CascadeMux I__472 (
            .O(N__3324),
            .I(N__3295));
    InMux I__471 (
            .O(N__3321),
            .I(N__3283));
    InMux I__470 (
            .O(N__3318),
            .I(N__3283));
    InMux I__469 (
            .O(N__3315),
            .I(N__3283));
    InMux I__468 (
            .O(N__3312),
            .I(N__3280));
    CascadeMux I__467 (
            .O(N__3311),
            .I(N__3276));
    CascadeMux I__466 (
            .O(N__3310),
            .I(N__3273));
    InMux I__465 (
            .O(N__3307),
            .I(N__3268));
    InMux I__464 (
            .O(N__3304),
            .I(N__3268));
    InMux I__463 (
            .O(N__3301),
            .I(N__3263));
    InMux I__462 (
            .O(N__3298),
            .I(N__3263));
    InMux I__461 (
            .O(N__3295),
            .I(N__3258));
    InMux I__460 (
            .O(N__3294),
            .I(N__3258));
    CascadeMux I__459 (
            .O(N__3293),
            .I(N__3255));
    CascadeMux I__458 (
            .O(N__3292),
            .I(N__3252));
    CascadeMux I__457 (
            .O(N__3291),
            .I(N__3249));
    CascadeMux I__456 (
            .O(N__3290),
            .I(N__3246));
    LocalMux I__455 (
            .O(N__3283),
            .I(N__3239));
    LocalMux I__454 (
            .O(N__3280),
            .I(N__3239));
    InMux I__453 (
            .O(N__3279),
            .I(N__3232));
    InMux I__452 (
            .O(N__3276),
            .I(N__3232));
    InMux I__451 (
            .O(N__3273),
            .I(N__3232));
    LocalMux I__450 (
            .O(N__3268),
            .I(N__3229));
    LocalMux I__449 (
            .O(N__3263),
            .I(N__3224));
    LocalMux I__448 (
            .O(N__3258),
            .I(N__3224));
    InMux I__447 (
            .O(N__3255),
            .I(N__3219));
    InMux I__446 (
            .O(N__3252),
            .I(N__3219));
    InMux I__445 (
            .O(N__3249),
            .I(N__3210));
    InMux I__444 (
            .O(N__3246),
            .I(N__3210));
    InMux I__443 (
            .O(N__3245),
            .I(N__3210));
    InMux I__442 (
            .O(N__3244),
            .I(N__3210));
    Span4Mux_v I__441 (
            .O(N__3239),
            .I(N__3205));
    LocalMux I__440 (
            .O(N__3232),
            .I(N__3205));
    Span4Mux_h I__439 (
            .O(N__3229),
            .I(N__3200));
    Span4Mux_h I__438 (
            .O(N__3224),
            .I(N__3200));
    LocalMux I__437 (
            .O(N__3219),
            .I(\ppm_encoder1.init_pulses_6_sqmuxa ));
    LocalMux I__436 (
            .O(N__3210),
            .I(\ppm_encoder1.init_pulses_6_sqmuxa ));
    Odrv4 I__435 (
            .O(N__3205),
            .I(\ppm_encoder1.init_pulses_6_sqmuxa ));
    Odrv4 I__434 (
            .O(N__3200),
            .I(\ppm_encoder1.init_pulses_6_sqmuxa ));
    InMux I__433 (
            .O(N__3191),
            .I(N__3188));
    LocalMux I__432 (
            .O(N__3188),
            .I(N__3185));
    Span4Mux_h I__431 (
            .O(N__3185),
            .I(N__3181));
    InMux I__430 (
            .O(N__3184),
            .I(N__3178));
    Odrv4 I__429 (
            .O(N__3181),
            .I(\ppm_encoder1.init_pulsesZ0Z_10 ));
    LocalMux I__428 (
            .O(N__3178),
            .I(\ppm_encoder1.init_pulsesZ0Z_10 ));
    InMux I__427 (
            .O(N__3173),
            .I(N__3169));
    InMux I__426 (
            .O(N__3172),
            .I(N__3166));
    LocalMux I__425 (
            .O(N__3169),
            .I(\ppm_encoder1.init_pulsesZ0Z_18 ));
    LocalMux I__424 (
            .O(N__3166),
            .I(\ppm_encoder1.init_pulsesZ0Z_18 ));
    InMux I__423 (
            .O(N__3161),
            .I(N__3157));
    InMux I__422 (
            .O(N__3160),
            .I(N__3154));
    LocalMux I__421 (
            .O(N__3157),
            .I(\ppm_encoder1.init_pulsesZ0Z_16 ));
    LocalMux I__420 (
            .O(N__3154),
            .I(\ppm_encoder1.init_pulsesZ0Z_16 ));
    InMux I__419 (
            .O(N__3149),
            .I(\uart1.un1_count_pulses_needed_6_cry_0 ));
    InMux I__418 (
            .O(N__3146),
            .I(\uart1.un1_count_pulses_needed_6_cry_1 ));
    InMux I__417 (
            .O(N__3143),
            .I(\uart1.un1_count_pulses_needed_6_cry_2 ));
    InMux I__416 (
            .O(N__3140),
            .I(\uart1.un1_count_pulses_needed_6_cry_3 ));
    InMux I__415 (
            .O(N__3137),
            .I(\uart1.un1_count_pulses_needed_6_cry_4 ));
    InMux I__414 (
            .O(N__3134),
            .I(\uart1.un1_count_pulses_needed_6_cry_5 ));
    CascadeMux I__413 (
            .O(N__3131),
            .I(\ppm_encoder1.init_pulses_0_sqmuxa_0_cascade_ ));
    InMux I__412 (
            .O(N__3128),
            .I(N__3125));
    LocalMux I__411 (
            .O(N__3125),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_2 ));
    InMux I__410 (
            .O(N__3122),
            .I(N__3119));
    LocalMux I__409 (
            .O(N__3119),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_5 ));
    InMux I__408 (
            .O(N__3116),
            .I(N__3096));
    InMux I__407 (
            .O(N__3115),
            .I(N__3096));
    InMux I__406 (
            .O(N__3114),
            .I(N__3096));
    InMux I__405 (
            .O(N__3113),
            .I(N__3085));
    InMux I__404 (
            .O(N__3112),
            .I(N__3085));
    InMux I__403 (
            .O(N__3111),
            .I(N__3085));
    InMux I__402 (
            .O(N__3110),
            .I(N__3085));
    InMux I__401 (
            .O(N__3109),
            .I(N__3085));
    InMux I__400 (
            .O(N__3108),
            .I(N__3082));
    CascadeMux I__399 (
            .O(N__3107),
            .I(N__3079));
    InMux I__398 (
            .O(N__3106),
            .I(N__3066));
    InMux I__397 (
            .O(N__3105),
            .I(N__3066));
    InMux I__396 (
            .O(N__3104),
            .I(N__3066));
    InMux I__395 (
            .O(N__3103),
            .I(N__3066));
    LocalMux I__394 (
            .O(N__3096),
            .I(N__3063));
    LocalMux I__393 (
            .O(N__3085),
            .I(N__3058));
    LocalMux I__392 (
            .O(N__3082),
            .I(N__3058));
    InMux I__391 (
            .O(N__3079),
            .I(N__3055));
    InMux I__390 (
            .O(N__3078),
            .I(N__3050));
    InMux I__389 (
            .O(N__3077),
            .I(N__3050));
    InMux I__388 (
            .O(N__3076),
            .I(N__3045));
    InMux I__387 (
            .O(N__3075),
            .I(N__3045));
    LocalMux I__386 (
            .O(N__3066),
            .I(N__3042));
    Span4Mux_v I__385 (
            .O(N__3063),
            .I(N__3037));
    Span4Mux_v I__384 (
            .O(N__3058),
            .I(N__3037));
    LocalMux I__383 (
            .O(N__3055),
            .I(\ppm_encoder1.init_pulses_0_sqmuxa_0 ));
    LocalMux I__382 (
            .O(N__3050),
            .I(\ppm_encoder1.init_pulses_0_sqmuxa_0 ));
    LocalMux I__381 (
            .O(N__3045),
            .I(\ppm_encoder1.init_pulses_0_sqmuxa_0 ));
    Odrv4 I__380 (
            .O(N__3042),
            .I(\ppm_encoder1.init_pulses_0_sqmuxa_0 ));
    Odrv4 I__379 (
            .O(N__3037),
            .I(\ppm_encoder1.init_pulses_0_sqmuxa_0 ));
    InMux I__378 (
            .O(N__3026),
            .I(N__3023));
    LocalMux I__377 (
            .O(N__3023),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_8 ));
    InMux I__376 (
            .O(N__3020),
            .I(N__3017));
    LocalMux I__375 (
            .O(N__3017),
            .I(N__3013));
    InMux I__374 (
            .O(N__3016),
            .I(N__3010));
    Odrv4 I__373 (
            .O(N__3013),
            .I(\ppm_encoder1.init_pulsesZ0Z_13 ));
    LocalMux I__372 (
            .O(N__3010),
            .I(\ppm_encoder1.init_pulsesZ0Z_13 ));
    InMux I__371 (
            .O(N__3005),
            .I(N__3002));
    LocalMux I__370 (
            .O(N__3002),
            .I(N__2998));
    InMux I__369 (
            .O(N__3001),
            .I(N__2995));
    Odrv4 I__368 (
            .O(N__2998),
            .I(\ppm_encoder1.init_pulsesZ0Z_15 ));
    LocalMux I__367 (
            .O(N__2995),
            .I(\ppm_encoder1.init_pulsesZ0Z_15 ));
    InMux I__366 (
            .O(N__2990),
            .I(N__2986));
    InMux I__365 (
            .O(N__2989),
            .I(N__2983));
    LocalMux I__364 (
            .O(N__2986),
            .I(\ppm_encoder1.init_pulsesZ0Z_5 ));
    LocalMux I__363 (
            .O(N__2983),
            .I(\ppm_encoder1.init_pulsesZ0Z_5 ));
    InMux I__362 (
            .O(N__2978),
            .I(N__2975));
    LocalMux I__361 (
            .O(N__2975),
            .I(N__2972));
    Span4Mux_v I__360 (
            .O(N__2972),
            .I(N__2968));
    InMux I__359 (
            .O(N__2971),
            .I(N__2965));
    Odrv4 I__358 (
            .O(N__2968),
            .I(\ppm_encoder1.init_pulsesZ0Z_4 ));
    LocalMux I__357 (
            .O(N__2965),
            .I(\ppm_encoder1.init_pulsesZ0Z_4 ));
    InMux I__356 (
            .O(N__2960),
            .I(N__2956));
    InMux I__355 (
            .O(N__2959),
            .I(N__2953));
    LocalMux I__354 (
            .O(N__2956),
            .I(\ppm_encoder1.init_pulsesZ0Z_17 ));
    LocalMux I__353 (
            .O(N__2953),
            .I(\ppm_encoder1.init_pulsesZ0Z_17 ));
    InMux I__352 (
            .O(N__2948),
            .I(N__2945));
    LocalMux I__351 (
            .O(N__2945),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_16 ));
    InMux I__350 (
            .O(N__2942),
            .I(N__2939));
    LocalMux I__349 (
            .O(N__2939),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_17 ));
    InMux I__348 (
            .O(N__2936),
            .I(N__2933));
    LocalMux I__347 (
            .O(N__2933),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_12 ));
    SRMux I__346 (
            .O(N__2930),
            .I(N__2927));
    LocalMux I__345 (
            .O(N__2927),
            .I(N__2924));
    Span4Mux_h I__344 (
            .O(N__2924),
            .I(N__2921));
    Span4Mux_h I__343 (
            .O(N__2921),
            .I(N__2918));
    Odrv4 I__342 (
            .O(N__2918),
            .I(\ppm_encoder1.N_39_i ));
    InMux I__341 (
            .O(N__2915),
            .I(N__2912));
    LocalMux I__340 (
            .O(N__2912),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_6 ));
    InMux I__339 (
            .O(N__2909),
            .I(N__2906));
    LocalMux I__338 (
            .O(N__2906),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_1 ));
    InMux I__337 (
            .O(N__2903),
            .I(N__2900));
    LocalMux I__336 (
            .O(N__2900),
            .I(\ppm_encoder1.un1_init_pulses_axb_0 ));
    CascadeMux I__335 (
            .O(N__2897),
            .I(\ppm_encoder1.pulses2count39_0_cascade_ ));
    InMux I__334 (
            .O(N__2894),
            .I(N__2891));
    LocalMux I__333 (
            .O(N__2891),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_11 ));
    InMux I__332 (
            .O(N__2888),
            .I(\ppm_encoder1.un1_init_pulses_cry_10 ));
    InMux I__331 (
            .O(N__2885),
            .I(\ppm_encoder1.un1_init_pulses_cry_11 ));
    CascadeMux I__330 (
            .O(N__2882),
            .I(N__2879));
    InMux I__329 (
            .O(N__2879),
            .I(N__2876));
    LocalMux I__328 (
            .O(N__2876),
            .I(\ppm_encoder1.PPM_STATE_RNIH6OE8Z0Z_0 ));
    InMux I__327 (
            .O(N__2873),
            .I(N__2870));
    LocalMux I__326 (
            .O(N__2870),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_13 ));
    InMux I__325 (
            .O(N__2867),
            .I(\ppm_encoder1.un1_init_pulses_cry_12 ));
    CascadeMux I__324 (
            .O(N__2864),
            .I(N__2860));
    CascadeMux I__323 (
            .O(N__2863),
            .I(N__2857));
    InMux I__322 (
            .O(N__2860),
            .I(N__2850));
    InMux I__321 (
            .O(N__2857),
            .I(N__2850));
    CascadeMux I__320 (
            .O(N__2856),
            .I(N__2847));
    CascadeMux I__319 (
            .O(N__2855),
            .I(N__2844));
    LocalMux I__318 (
            .O(N__2850),
            .I(N__2841));
    InMux I__317 (
            .O(N__2847),
            .I(N__2836));
    InMux I__316 (
            .O(N__2844),
            .I(N__2836));
    Odrv4 I__315 (
            .O(N__2841),
            .I(\ppm_encoder1.N_355_i ));
    LocalMux I__314 (
            .O(N__2836),
            .I(\ppm_encoder1.N_355_i ));
    InMux I__313 (
            .O(N__2831),
            .I(N__2828));
    LocalMux I__312 (
            .O(N__2828),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_14 ));
    InMux I__311 (
            .O(N__2825),
            .I(\ppm_encoder1.un1_init_pulses_cry_13 ));
    InMux I__310 (
            .O(N__2822),
            .I(N__2819));
    LocalMux I__309 (
            .O(N__2819),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_15 ));
    InMux I__308 (
            .O(N__2816),
            .I(\ppm_encoder1.un1_init_pulses_cry_14 ));
    InMux I__307 (
            .O(N__2813),
            .I(bfn_8_25_0_));
    InMux I__306 (
            .O(N__2810),
            .I(\ppm_encoder1.un1_init_pulses_cry_16 ));
    InMux I__305 (
            .O(N__2807),
            .I(\ppm_encoder1.un1_init_pulses_cry_17 ));
    CascadeMux I__304 (
            .O(N__2804),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_18_cascade_ ));
    CascadeMux I__303 (
            .O(N__2801),
            .I(N__2798));
    InMux I__302 (
            .O(N__2798),
            .I(N__2795));
    LocalMux I__301 (
            .O(N__2795),
            .I(\ppm_encoder1.PPM_STATE_RNIH6OE8_0Z0Z_0 ));
    InMux I__300 (
            .O(N__2792),
            .I(\ppm_encoder1.un1_init_pulses_cry_1 ));
    CascadeMux I__299 (
            .O(N__2789),
            .I(N__2786));
    InMux I__298 (
            .O(N__2786),
            .I(N__2783));
    LocalMux I__297 (
            .O(N__2783),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_3 ));
    InMux I__296 (
            .O(N__2780),
            .I(\ppm_encoder1.un1_init_pulses_cry_2 ));
    InMux I__295 (
            .O(N__2777),
            .I(N__2774));
    LocalMux I__294 (
            .O(N__2774),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_4 ));
    InMux I__293 (
            .O(N__2771),
            .I(\ppm_encoder1.un1_init_pulses_cry_3 ));
    InMux I__292 (
            .O(N__2768),
            .I(\ppm_encoder1.un1_init_pulses_cry_4 ));
    InMux I__291 (
            .O(N__2765),
            .I(N__2757));
    InMux I__290 (
            .O(N__2764),
            .I(N__2757));
    InMux I__289 (
            .O(N__2763),
            .I(N__2754));
    InMux I__288 (
            .O(N__2762),
            .I(N__2751));
    LocalMux I__287 (
            .O(N__2757),
            .I(\ppm_encoder1.un14_0_i_0_0 ));
    LocalMux I__286 (
            .O(N__2754),
            .I(\ppm_encoder1.un14_0_i_0_0 ));
    LocalMux I__285 (
            .O(N__2751),
            .I(\ppm_encoder1.un14_0_i_0_0 ));
    InMux I__284 (
            .O(N__2744),
            .I(\ppm_encoder1.un1_init_pulses_cry_5 ));
    InMux I__283 (
            .O(N__2741),
            .I(N__2738));
    LocalMux I__282 (
            .O(N__2738),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_7 ));
    InMux I__281 (
            .O(N__2735),
            .I(\ppm_encoder1.un1_init_pulses_cry_6 ));
    InMux I__280 (
            .O(N__2732),
            .I(bfn_8_24_0_));
    InMux I__279 (
            .O(N__2729),
            .I(N__2726));
    LocalMux I__278 (
            .O(N__2726),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_9 ));
    InMux I__277 (
            .O(N__2723),
            .I(\ppm_encoder1.un1_init_pulses_cry_8 ));
    InMux I__276 (
            .O(N__2720),
            .I(N__2717));
    LocalMux I__275 (
            .O(N__2717),
            .I(\ppm_encoder1.init_pulses_RNO_0Z0Z_10 ));
    InMux I__274 (
            .O(N__2714),
            .I(\ppm_encoder1.un1_init_pulses_cry_9 ));
    CascadeMux I__273 (
            .O(N__2711),
            .I(N__2706));
    InMux I__272 (
            .O(N__2710),
            .I(N__2702));
    InMux I__271 (
            .O(N__2709),
            .I(N__2699));
    InMux I__270 (
            .O(N__2706),
            .I(N__2694));
    InMux I__269 (
            .O(N__2705),
            .I(N__2694));
    LocalMux I__268 (
            .O(N__2702),
            .I(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_0 ));
    LocalMux I__267 (
            .O(N__2699),
            .I(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_0 ));
    LocalMux I__266 (
            .O(N__2694),
            .I(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_0 ));
    CascadeMux I__265 (
            .O(N__2687),
            .I(\ppm_encoder1.un14_0_iv_1_12_cascade_ ));
    CascadeMux I__264 (
            .O(N__2684),
            .I(\ppm_encoder1.un14_0_12_cascade_ ));
    CascadeMux I__263 (
            .O(N__2681),
            .I(N__2676));
    CascadeMux I__262 (
            .O(N__2680),
            .I(N__2673));
    CascadeMux I__261 (
            .O(N__2679),
            .I(N__2668));
    InMux I__260 (
            .O(N__2676),
            .I(N__2665));
    InMux I__259 (
            .O(N__2673),
            .I(N__2662));
    InMux I__258 (
            .O(N__2672),
            .I(N__2655));
    InMux I__257 (
            .O(N__2671),
            .I(N__2655));
    InMux I__256 (
            .O(N__2668),
            .I(N__2655));
    LocalMux I__255 (
            .O(N__2665),
            .I(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_3 ));
    LocalMux I__254 (
            .O(N__2662),
            .I(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_3 ));
    LocalMux I__253 (
            .O(N__2655),
            .I(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_3 ));
    InMux I__252 (
            .O(N__2648),
            .I(N__2641));
    InMux I__251 (
            .O(N__2647),
            .I(N__2638));
    InMux I__250 (
            .O(N__2646),
            .I(N__2631));
    InMux I__249 (
            .O(N__2645),
            .I(N__2631));
    InMux I__248 (
            .O(N__2644),
            .I(N__2631));
    LocalMux I__247 (
            .O(N__2641),
            .I(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_1 ));
    LocalMux I__246 (
            .O(N__2638),
            .I(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_1 ));
    LocalMux I__245 (
            .O(N__2631),
            .I(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_1 ));
    CascadeMux I__244 (
            .O(N__2624),
            .I(\ppm_encoder1.init_pulses39_2_0_cascade_ ));
    CascadeMux I__243 (
            .O(N__2621),
            .I(N__2615));
    InMux I__242 (
            .O(N__2620),
            .I(N__2609));
    InMux I__241 (
            .O(N__2619),
            .I(N__2609));
    InMux I__240 (
            .O(N__2618),
            .I(N__2602));
    InMux I__239 (
            .O(N__2615),
            .I(N__2602));
    InMux I__238 (
            .O(N__2614),
            .I(N__2602));
    LocalMux I__237 (
            .O(N__2609),
            .I(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_2 ));
    LocalMux I__236 (
            .O(N__2602),
            .I(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_2 ));
    InMux I__235 (
            .O(N__2597),
            .I(N__2594));
    LocalMux I__234 (
            .O(N__2594),
            .I(\ppm_encoder1.CHOOSE_CHANNEL_fast_RNIINM32Z0Z_2 ));
    InMux I__233 (
            .O(N__2591),
            .I(N__2587));
    InMux I__232 (
            .O(N__2590),
            .I(N__2584));
    LocalMux I__231 (
            .O(N__2587),
            .I(\ppm_encoder1.un14_0_12 ));
    LocalMux I__230 (
            .O(N__2584),
            .I(\ppm_encoder1.un14_0_12 ));
    InMux I__229 (
            .O(N__2579),
            .I(\ppm_encoder1.un1_init_pulses_cry_0 ));
    IoInMux I__228 (
            .O(N__2576),
            .I(N__2573));
    LocalMux I__227 (
            .O(N__2573),
            .I(N__2570));
    Span4Mux_s2_v I__226 (
            .O(N__2570),
            .I(N__2567));
    Sp12to4 I__225 (
            .O(N__2567),
            .I(N__2564));
    Span12Mux_s6_h I__224 (
            .O(N__2564),
            .I(N__2561));
    Span12Mux_v I__223 (
            .O(N__2561),
            .I(N__2558));
    Span12Mux_v I__222 (
            .O(N__2558),
            .I(N__2555));
    Odrv12 I__221 (
            .O(N__2555),
            .I(led_c));
    CascadeMux I__220 (
            .O(N__2552),
            .I(\ppm_encoder1.N_46_cascade_ ));
    defparam IN_MUX_bfv_11_24_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_11_24_0_ (
            .carryinitin(),
            .carryinitout(bfn_11_24_0_));
    defparam IN_MUX_bfv_11_25_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_11_25_0_ (
            .carryinitin(\ppm_encoder1.counter11_0_data_tmp_7 ),
            .carryinitout(bfn_11_25_0_));
    defparam IN_MUX_bfv_9_28_0_.C_INIT=2'b00;
    ICE_CARRY_IN_MUX IN_MUX_bfv_9_28_0_ (
            .carryinitin(),
            .carryinitout(bfn_9_28_0_));
    defparam IN_MUX_bfv_9_29_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_9_29_0_ (
            .carryinitin(\uart1.un1_count_pulses_needed_6_cry_7 ),
            .carryinitout(bfn_9_29_0_));
    defparam IN_MUX_bfv_8_23_0_.C_INIT=2'b00;
    ICE_CARRY_IN_MUX IN_MUX_bfv_8_23_0_ (
            .carryinitin(),
            .carryinitout(bfn_8_23_0_));
    defparam IN_MUX_bfv_8_24_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_8_24_0_ (
            .carryinitin(\ppm_encoder1.un1_init_pulses_cry_7 ),
            .carryinitout(bfn_8_24_0_));
    defparam IN_MUX_bfv_8_25_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_8_25_0_ (
            .carryinitin(\ppm_encoder1.un1_init_pulses_cry_15 ),
            .carryinitout(bfn_8_25_0_));
    defparam IN_MUX_bfv_11_26_0_.C_INIT=2'b00;
    ICE_CARRY_IN_MUX IN_MUX_bfv_11_26_0_ (
            .carryinitin(),
            .carryinitout(bfn_11_26_0_));
    defparam IN_MUX_bfv_11_27_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_11_27_0_ (
            .carryinitin(\ppm_encoder1.un1_counter_13_cry_7 ),
            .carryinitout(bfn_11_27_0_));
    defparam IN_MUX_bfv_11_28_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_11_28_0_ (
            .carryinitin(\ppm_encoder1.un1_counter_13_cry_15 ),
            .carryinitout(bfn_11_28_0_));
    ICE_GB \ppm_encoder1.counter11_0_I_57_c_RNI6HID2_0  (
            .USERSIGNALTOGLOBALBUFFER(N__4502),
            .GLOBALBUFFEROUTPUT(\ppm_encoder1.un1_PPM_STATE_0_sqmuxa_0_i_g ));
    VCC VCC (
            .Y(VCCG0));
    ICE_GB \ppm_encoder1.CHOOSE_CHANNEL_RNIN2AA1_1_3  (
            .USERSIGNALTOGLOBALBUFFER(N__4691),
            .GLOBALBUFFEROUTPUT(\ppm_encoder1.N_31_i_g ));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIAP4S1_0_LC_7_22_0 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIAP4S1_0_LC_7_22_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIAP4S1_0_LC_7_22_0 .LUT_INIT=16'b1010000010000000;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIAP4S1_0_LC_7_22_0  (
            .in0(N__2619),
            .in1(N__2709),
            .in2(N__2680),
            .in3(N__2647),
            .lcout(),
            .ltout(\ppm_encoder1.N_46_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.PPM_STATE_RNILLSE4_0_LC_7_22_1 .C_ON=1'b0;
    defparam \ppm_encoder1.PPM_STATE_RNILLSE4_0_LC_7_22_1 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.PPM_STATE_RNILLSE4_0_LC_7_22_1 .LUT_INIT=16'b0000000000000001;
    LogicCell40 \ppm_encoder1.PPM_STATE_RNILLSE4_0_LC_7_22_1  (
            .in0(N__5347),
            .in1(N__4439),
            .in2(N__2552),
            .in3(N__4389),
            .lcout(\ppm_encoder1.un14_0_i_0_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_2_LC_7_22_5 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_2_LC_7_22_5 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_2_LC_7_22_5 .LUT_INIT=16'b0000011110001000;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_fast_2_LC_7_22_5  (
            .in0(N__4957),
            .in1(N__5044),
            .in2(N__4775),
            .in3(N__2620),
            .lcout(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5986),
            .ce(N__5315),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.PPM_STATE_RNO_0_0_LC_7_22_7 .C_ON=1'b0;
    defparam \ppm_encoder1.PPM_STATE_RNO_0_0_LC_7_22_7 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.PPM_STATE_RNO_0_0_LC_7_22_7 .LUT_INIT=16'b0000000000110011;
    LogicCell40 \ppm_encoder1.PPM_STATE_RNO_0_0_LC_7_22_7  (
            .in0(_gnd_net_),
            .in1(N__4440),
            .in2(_gnd_net_),
            .in3(N__4390),
            .lcout(\ppm_encoder1.N_39_i ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_7_LC_7_23_0 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_7_LC_7_23_0 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_7_LC_7_23_0 .LUT_INIT=16'b1011101110110000;
    LogicCell40 \ppm_encoder1.init_pulses_7_LC_7_23_0  (
            .in0(N__4616),
            .in1(N__3115),
            .in2(N__3310),
            .in3(N__2741),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_7 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5984),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_9_LC_7_23_2 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_9_LC_7_23_2 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_9_LC_7_23_2 .LUT_INIT=16'b0000101100000000;
    LogicCell40 \ppm_encoder1.init_pulses_9_LC_7_23_2  (
            .in0(N__4617),
            .in1(N__3116),
            .in2(N__3311),
            .in3(N__2729),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_9 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5984),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.PPM_STATE_RNIH6OE8_0_LC_7_23_4 .C_ON=1'b0;
    defparam \ppm_encoder1.PPM_STATE_RNIH6OE8_0_LC_7_23_4 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.PPM_STATE_RNIH6OE8_0_LC_7_23_4 .LUT_INIT=16'b1100110000000000;
    LogicCell40 \ppm_encoder1.PPM_STATE_RNIH6OE8_0_LC_7_23_4  (
            .in0(_gnd_net_),
            .in1(N__2763),
            .in2(_gnd_net_),
            .in3(N__2591),
            .lcout(\ppm_encoder1.PPM_STATE_RNIH6OE8Z0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_3_LC_7_23_7 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_3_LC_7_23_7 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_3_LC_7_23_7 .LUT_INIT=16'b1111110001010100;
    LogicCell40 \ppm_encoder1.init_pulses_3_LC_7_23_7  (
            .in0(N__3114),
            .in1(N__3279),
            .in2(N__2789),
            .in3(N__4618),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_3 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5984),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_4_LC_7_24_5 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_4_LC_7_24_5 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_4_LC_7_24_5 .LUT_INIT=16'b0000110100000000;
    LogicCell40 \ppm_encoder1.init_pulses_4_LC_7_24_5  (
            .in0(N__3108),
            .in1(N__4619),
            .in2(N__3329),
            .in3(N__2777),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_4 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5982),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_10_LC_7_25_2 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_10_LC_7_25_2 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_10_LC_7_25_2 .LUT_INIT=16'b0000110100000000;
    LogicCell40 \ppm_encoder1.init_pulses_10_LC_7_25_2  (
            .in0(N__3109),
            .in1(N__4613),
            .in2(N__3330),
            .in3(N__2720),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_10 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5980),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_11_LC_7_25_3 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_11_LC_7_25_3 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_11_LC_7_25_3 .LUT_INIT=16'b0000101100000000;
    LogicCell40 \ppm_encoder1.init_pulses_11_LC_7_25_3  (
            .in0(N__4611),
            .in1(N__3112),
            .in2(N__3325),
            .in3(N__2894),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_11 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5980),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_13_LC_7_25_4 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_13_LC_7_25_4 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_13_LC_7_25_4 .LUT_INIT=16'b1101110111010000;
    LogicCell40 \ppm_encoder1.init_pulses_13_LC_7_25_4  (
            .in0(N__3110),
            .in1(N__4614),
            .in2(N__3331),
            .in3(N__2873),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_13 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5980),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_14_LC_7_25_6 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_14_LC_7_25_6 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_14_LC_7_25_6 .LUT_INIT=16'b1101110111010000;
    LogicCell40 \ppm_encoder1.init_pulses_14_LC_7_25_6  (
            .in0(N__3111),
            .in1(N__4615),
            .in2(N__3332),
            .in3(N__2831),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_14 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5980),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_15_LC_7_25_7 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_15_LC_7_25_7 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_15_LC_7_25_7 .LUT_INIT=16'b1011101110110000;
    LogicCell40 \ppm_encoder1.init_pulses_15_LC_7_25_7  (
            .in0(N__4612),
            .in1(N__3113),
            .in2(N__3326),
            .in3(N__2822),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_15 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5980),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_3_LC_8_21_1 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_3_LC_8_21_1 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_3_LC_8_21_1 .LUT_INIT=16'b1000100011110000;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_fast_3_LC_8_21_1  (
            .in0(N__5045),
            .in1(N__4973),
            .in2(N__2681),
            .in3(N__4851),
            .lcout(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_3 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5987),
            .ce(N__5313),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_0_LC_8_21_4 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_0_LC_8_21_4 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_0_LC_8_21_4 .LUT_INIT=16'b0000000001110111;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_fast_0_LC_8_21_4  (
            .in0(N__4850),
            .in1(N__4771),
            .in2(_gnd_net_),
            .in3(N__2710),
            .lcout(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5987),
            .ce(N__5313),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_1_LC_8_21_7 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_1_LC_8_21_7 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_1_LC_8_21_7 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_fast_1_LC_8_21_7  (
            .in0(_gnd_net_),
            .in1(N__4972),
            .in2(_gnd_net_),
            .in3(N__2648),
            .lcout(\ppm_encoder1.CHOOSE_CHANNEL_fastZ0Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5987),
            .ce(N__5313),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIAP4S1_1_0_LC_8_22_0 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIAP4S1_1_0_LC_8_22_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIAP4S1_1_0_LC_8_22_0 .LUT_INIT=16'b0000000000000001;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIAP4S1_1_0_LC_8_22_0  (
            .in0(N__2671),
            .in1(N__2705),
            .in2(N__2621),
            .in3(N__2645),
            .lcout(\ppm_encoder1.pulses2count22_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIAP4S1_0_0_LC_8_22_1 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIAP4S1_0_0_LC_8_22_1 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIAP4S1_0_0_LC_8_22_1 .LUT_INIT=16'b0000110000001110;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIAP4S1_0_0_LC_8_22_1  (
            .in0(N__2646),
            .in1(N__2618),
            .in2(N__2711),
            .in3(N__2672),
            .lcout(),
            .ltout(\ppm_encoder1.un14_0_iv_1_12_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNISGRV3_0_LC_8_22_2 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNISGRV3_0_LC_8_22_2 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNISGRV3_0_LC_8_22_2 .LUT_INIT=16'b1111101000001010;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_fast_RNISGRV3_0_LC_8_22_2  (
            .in0(N__4056),
            .in1(_gnd_net_),
            .in2(N__2687),
            .in3(N__2597),
            .lcout(\ppm_encoder1.un14_0_12 ),
            .ltout(\ppm_encoder1.un14_0_12_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNISGRV3_0_0_LC_8_22_3 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNISGRV3_0_0_LC_8_22_3 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNISGRV3_0_0_LC_8_22_3 .LUT_INIT=16'b0000111100001111;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_fast_RNISGRV3_0_0_LC_8_22_3  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__2684),
            .in3(_gnd_net_),
            .lcout(\ppm_encoder1.N_355_i ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIMD2U_1_LC_8_22_4 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIMD2U_1_LC_8_22_4 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIMD2U_1_LC_8_22_4 .LUT_INIT=16'b0000000000001111;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIMD2U_1_LC_8_22_4  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__2679),
            .in3(N__2644),
            .lcout(\ppm_encoder1.init_pulses39_2_0 ),
            .ltout(\ppm_encoder1.init_pulses39_2_0_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIINM32_2_LC_8_22_5 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIINM32_2_LC_8_22_5 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIINM32_2_LC_8_22_5 .LUT_INIT=16'b1110111111101110;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_fast_RNIINM32_2_LC_8_22_5  (
            .in0(N__4370),
            .in1(N__4437),
            .in2(N__2624),
            .in3(N__2614),
            .lcout(\ppm_encoder1.CHOOSE_CHANNEL_fast_RNIINM32Z0Z_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.PPM_STATE_1_LC_8_22_6 .C_ON=1'b0;
    defparam \ppm_encoder1.PPM_STATE_1_LC_8_22_6 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.PPM_STATE_1_LC_8_22_6 .LUT_INIT=16'b1111001110101010;
    LogicCell40 \ppm_encoder1.PPM_STATE_1_LC_8_22_6  (
            .in0(N__4438),
            .in1(N__4670),
            .in2(N__5043),
            .in3(N__3407),
            .lcout(\ppm_encoder1.PPM_STATEZ0Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5985),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.PPM_STATE_RNIH6OE8_0_0_LC_8_22_7 .C_ON=1'b0;
    defparam \ppm_encoder1.PPM_STATE_RNIH6OE8_0_0_LC_8_22_7 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.PPM_STATE_RNIH6OE8_0_0_LC_8_22_7 .LUT_INIT=16'b1010101000000000;
    LogicCell40 \ppm_encoder1.PPM_STATE_RNIH6OE8_0_0_LC_8_22_7  (
            .in0(N__2762),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__2590),
            .lcout(\ppm_encoder1.PPM_STATE_RNIH6OE8_0Z0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_0_LC_8_23_0 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_0_LC_8_23_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_0_LC_8_23_0 .LUT_INIT=16'b0011110000111100;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_0_LC_8_23_0  (
            .in0(_gnd_net_),
            .in1(N__2764),
            .in2(N__5431),
            .in3(_gnd_net_),
            .lcout(\ppm_encoder1.un1_init_pulses_axb_0 ),
            .ltout(),
            .carryin(bfn_8_23_0_),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_0 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_1_LC_8_23_1 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_1_LC_8_23_1 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_1_LC_8_23_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_1_LC_8_23_1  (
            .in0(_gnd_net_),
            .in1(N__5461),
            .in2(N__2855),
            .in3(N__2579),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_1 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_0 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_1 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_2_LC_8_23_2 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_2_LC_8_23_2 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_2_LC_8_23_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_2_LC_8_23_2  (
            .in0(_gnd_net_),
            .in1(N__3460),
            .in2(N__2801),
            .in3(N__2792),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_2 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_1 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_2 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_3_LC_8_23_3 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_3_LC_8_23_3 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_3_LC_8_23_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_3_LC_8_23_3  (
            .in0(_gnd_net_),
            .in1(N__3481),
            .in2(N__2856),
            .in3(N__2780),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_3 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_2 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_3 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_4_LC_8_23_4 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_4_LC_8_23_4 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_4_LC_8_23_4 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_4_LC_8_23_4  (
            .in0(_gnd_net_),
            .in1(N__2971),
            .in2(_gnd_net_),
            .in3(N__2771),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_4 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_3 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_4 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_5_LC_8_23_5 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_5_LC_8_23_5 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_5_LC_8_23_5 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_5_LC_8_23_5  (
            .in0(_gnd_net_),
            .in1(N__2989),
            .in2(_gnd_net_),
            .in3(N__2768),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_5 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_4 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_5 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_6_LC_8_23_6 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_6_LC_8_23_6 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_6_LC_8_23_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_6_LC_8_23_6  (
            .in0(_gnd_net_),
            .in1(N__2765),
            .in2(N__3587),
            .in3(N__2744),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_6 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_5 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_6 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_7_LC_8_23_7 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_7_LC_8_23_7 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_7_LC_8_23_7 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_7_LC_8_23_7  (
            .in0(_gnd_net_),
            .in1(N__3562),
            .in2(_gnd_net_),
            .in3(N__2735),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_7 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_6 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_7 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_8_LC_8_24_0 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_8_LC_8_24_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_8_LC_8_24_0 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_8_LC_8_24_0  (
            .in0(_gnd_net_),
            .in1(N__3355),
            .in2(_gnd_net_),
            .in3(N__2732),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_8 ),
            .ltout(),
            .carryin(bfn_8_24_0_),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_8 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_9_LC_8_24_1 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_9_LC_8_24_1 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_9_LC_8_24_1 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_9_LC_8_24_1  (
            .in0(_gnd_net_),
            .in1(N__3367),
            .in2(_gnd_net_),
            .in3(N__2723),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_9 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_8 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_9 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_10_LC_8_24_2 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_10_LC_8_24_2 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_10_LC_8_24_2 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_10_LC_8_24_2  (
            .in0(_gnd_net_),
            .in1(N__3184),
            .in2(_gnd_net_),
            .in3(N__2714),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_10 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_9 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_10 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_11_LC_8_24_3 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_11_LC_8_24_3 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_11_LC_8_24_3 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_11_LC_8_24_3  (
            .in0(_gnd_net_),
            .in1(N__3433),
            .in2(_gnd_net_),
            .in3(N__2888),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_11 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_10 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_11 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_12_LC_8_24_4 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_12_LC_8_24_4 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_12_LC_8_24_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_12_LC_8_24_4  (
            .in0(_gnd_net_),
            .in1(N__3643),
            .in2(N__2863),
            .in3(N__2885),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_12 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_11 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_12 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_13_LC_8_24_5 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_13_LC_8_24_5 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_13_LC_8_24_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_13_LC_8_24_5  (
            .in0(_gnd_net_),
            .in1(N__3016),
            .in2(N__2882),
            .in3(N__2867),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_13 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_12 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_13 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_14_LC_8_24_6 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_14_LC_8_24_6 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_14_LC_8_24_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_14_LC_8_24_6  (
            .in0(_gnd_net_),
            .in1(N__3544),
            .in2(N__2864),
            .in3(N__2825),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_14 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_13 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_14 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_15_LC_8_24_7 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_15_LC_8_24_7 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_15_LC_8_24_7 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_15_LC_8_24_7  (
            .in0(_gnd_net_),
            .in1(N__3001),
            .in2(_gnd_net_),
            .in3(N__2816),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_15 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_14 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_15 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_16_LC_8_25_0 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_16_LC_8_25_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_16_LC_8_25_0 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_16_LC_8_25_0  (
            .in0(_gnd_net_),
            .in1(N__3160),
            .in2(_gnd_net_),
            .in3(N__2813),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_16 ),
            .ltout(),
            .carryin(bfn_8_25_0_),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_16 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_17_LC_8_25_1 .C_ON=1'b1;
    defparam \ppm_encoder1.init_pulses_RNO_0_17_LC_8_25_1 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_17_LC_8_25_1 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_17_LC_8_25_1  (
            .in0(_gnd_net_),
            .in1(N__2959),
            .in2(_gnd_net_),
            .in3(N__2810),
            .lcout(\ppm_encoder1.init_pulses_RNO_0Z0Z_17 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_init_pulses_cry_16 ),
            .carryout(\ppm_encoder1.un1_init_pulses_cry_17 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_RNO_0_18_LC_8_25_2 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_RNO_0_18_LC_8_25_2 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.init_pulses_RNO_0_18_LC_8_25_2 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \ppm_encoder1.init_pulses_RNO_0_18_LC_8_25_2  (
            .in0(_gnd_net_),
            .in1(N__3172),
            .in2(_gnd_net_),
            .in3(N__2807),
            .lcout(),
            .ltout(\ppm_encoder1.init_pulses_RNO_0Z0Z_18_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_18_LC_8_25_3 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_18_LC_8_25_3 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_18_LC_8_25_3 .LUT_INIT=16'b0011000000010000;
    LogicCell40 \ppm_encoder1.init_pulses_18_LC_8_25_3  (
            .in0(N__3105),
            .in1(N__3294),
            .in2(N__2804),
            .in3(N__4604),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_18 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5977),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_16_LC_8_25_4 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_16_LC_8_25_4 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_16_LC_8_25_4 .LUT_INIT=16'b1011101110110000;
    LogicCell40 \ppm_encoder1.init_pulses_16_LC_8_25_4  (
            .in0(N__4601),
            .in1(N__3106),
            .in2(N__3324),
            .in3(N__2948),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_16 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5977),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_17_LC_8_25_5 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_17_LC_8_25_5 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_17_LC_8_25_5 .LUT_INIT=16'b1101110111010000;
    LogicCell40 \ppm_encoder1.init_pulses_17_LC_8_25_5  (
            .in0(N__3104),
            .in1(N__4603),
            .in2(N__3328),
            .in3(N__2942),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_17 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5977),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_12_LC_8_25_7 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_12_LC_8_25_7 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_12_LC_8_25_7 .LUT_INIT=16'b1101110111010000;
    LogicCell40 \ppm_encoder1.init_pulses_12_LC_8_25_7  (
            .in0(N__3103),
            .in1(N__4602),
            .in2(N__3327),
            .in3(N__2936),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_12 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5977),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.PPM_STATE_0_LC_9_22_2 .C_ON=1'b0;
    defparam \ppm_encoder1.PPM_STATE_0_LC_9_22_2 .SEQ_MODE=4'b1001;
    defparam \ppm_encoder1.PPM_STATE_0_LC_9_22_2 .LUT_INIT=16'b1011001110100000;
    LogicCell40 \ppm_encoder1.PPM_STATE_0_LC_9_22_2  (
            .in0(N__4666),
            .in1(N__3338),
            .in2(N__4969),
            .in3(N__4388),
            .lcout(\ppm_encoder1.PPM_STATEZ0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5983),
            .ce(),
            .sr(N__2930));
    defparam \ppm_encoder1.init_pulses_6_LC_9_23_0 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_6_LC_9_23_0 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_6_LC_9_23_0 .LUT_INIT=16'b0000110100000000;
    LogicCell40 \ppm_encoder1.init_pulses_6_LC_9_23_0  (
            .in0(N__3076),
            .in1(N__4607),
            .in2(N__3291),
            .in3(N__2915),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_6 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5981),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_1_LC_9_23_1 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_1_LC_9_23_1 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_1_LC_9_23_1 .LUT_INIT=16'b0010001100000000;
    LogicCell40 \ppm_encoder1.init_pulses_1_LC_9_23_1  (
            .in0(N__4605),
            .in1(N__3245),
            .in2(N__3107),
            .in3(N__2909),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5981),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_0_LC_9_23_2 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_0_LC_9_23_2 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_0_LC_9_23_2 .LUT_INIT=16'b0000110000000100;
    LogicCell40 \ppm_encoder1.init_pulses_0_LC_9_23_2  (
            .in0(N__3075),
            .in1(N__2903),
            .in2(N__3290),
            .in3(N__4608),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5981),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.PPM_STATE_RNI13JM_1_0_LC_9_23_4 .C_ON=1'b0;
    defparam \ppm_encoder1.PPM_STATE_RNI13JM_1_0_LC_9_23_4 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.PPM_STATE_RNI13JM_1_0_LC_9_23_4 .LUT_INIT=16'b0000000010101010;
    LogicCell40 \ppm_encoder1.PPM_STATE_RNI13JM_1_0_LC_9_23_4  (
            .in0(N__4382),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__4444),
            .lcout(\ppm_encoder1.pulses2count39_0 ),
            .ltout(\ppm_encoder1.pulses2count39_0_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIHVGU1_2_LC_9_23_5 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIHVGU1_2_LC_9_23_5 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIHVGU1_2_LC_9_23_5 .LUT_INIT=16'b0100000000000000;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_RNIHVGU1_2_LC_9_23_5  (
            .in0(N__4848),
            .in1(N__3522),
            .in2(N__2897),
            .in3(N__4963),
            .lcout(\ppm_encoder1.init_pulses_0_sqmuxa_0 ),
            .ltout(\ppm_encoder1.init_pulses_0_sqmuxa_0_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_2_LC_9_23_6 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_2_LC_9_23_6 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_2_LC_9_23_6 .LUT_INIT=16'b0100010100000000;
    LogicCell40 \ppm_encoder1.init_pulses_2_LC_9_23_6  (
            .in0(N__3244),
            .in1(N__4606),
            .in2(N__3131),
            .in3(N__3128),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5981),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_5_LC_9_24_0 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_5_LC_9_24_0 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_5_LC_9_24_0 .LUT_INIT=16'b0000110100000000;
    LogicCell40 \ppm_encoder1.init_pulses_5_LC_9_24_0  (
            .in0(N__3077),
            .in1(N__4609),
            .in2(N__3292),
            .in3(N__3122),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_5 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5978),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.init_pulses_8_LC_9_24_4 .C_ON=1'b0;
    defparam \ppm_encoder1.init_pulses_8_LC_9_24_4 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.init_pulses_8_LC_9_24_4 .LUT_INIT=16'b0000110100000000;
    LogicCell40 \ppm_encoder1.init_pulses_8_LC_9_24_4  (
            .in0(N__3078),
            .in1(N__4610),
            .in2(N__3293),
            .in3(N__3026),
            .lcout(\ppm_encoder1.init_pulsesZ0Z_8 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5978),
            .ce(),
            .sr(_gnd_net_));
    defparam CONSTANT_ONE_LUT4_LC_9_24_7.C_ON=1'b0;
    defparam CONSTANT_ONE_LUT4_LC_9_24_7.SEQ_MODE=4'b0000;
    defparam CONSTANT_ONE_LUT4_LC_9_24_7.LUT_INIT=16'b1111111111111111;
    LogicCell40 CONSTANT_ONE_LUT4_LC_9_24_7 (
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
    defparam \ppm_encoder1.pulses2count_13_LC_9_25_0 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_13_LC_9_25_0 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_13_LC_9_25_0 .LUT_INIT=16'b0000111100001011;
    LogicCell40 \ppm_encoder1.pulses2count_13_LC_9_25_0  (
            .in0(N__3020),
            .in1(N__3529),
            .in2(N__3506),
            .in3(N__4970),
            .lcout(\ppm_encoder1.pulses2countZ0Z_13 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5976),
            .ce(N__5317),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_15_LC_9_25_2 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_15_LC_9_25_2 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_15_LC_9_25_2 .LUT_INIT=16'b1100110000000000;
    LogicCell40 \ppm_encoder1.pulses2count_15_LC_9_25_2  (
            .in0(_gnd_net_),
            .in1(N__3005),
            .in2(_gnd_net_),
            .in3(N__5407),
            .lcout(\ppm_encoder1.pulses2countZ0Z_15 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5976),
            .ce(N__5317),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_5_LC_9_25_3 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_5_LC_9_25_3 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_5_LC_9_25_3 .LUT_INIT=16'b1000100010001000;
    LogicCell40 \ppm_encoder1.pulses2count_5_LC_9_25_3  (
            .in0(N__5410),
            .in1(N__2990),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(\ppm_encoder1.pulses2countZ0Z_5 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5976),
            .ce(N__5317),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_4_LC_9_25_6 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_4_LC_9_25_6 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_4_LC_9_25_6 .LUT_INIT=16'b1100110000000000;
    LogicCell40 \ppm_encoder1.pulses2count_4_LC_9_25_6  (
            .in0(_gnd_net_),
            .in1(N__2978),
            .in2(_gnd_net_),
            .in3(N__5409),
            .lcout(\ppm_encoder1.pulses2countZ0Z_4 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5976),
            .ce(N__5317),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_17_LC_9_25_7 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_17_LC_9_25_7 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_17_LC_9_25_7 .LUT_INIT=16'b1010101000000000;
    LogicCell40 \ppm_encoder1.pulses2count_17_LC_9_25_7  (
            .in0(N__5408),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__2960),
            .lcout(\ppm_encoder1.pulses2countZ0Z_17 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5976),
            .ce(N__5317),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_18_LC_9_26_3 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_18_LC_9_26_3 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_18_LC_9_26_3 .LUT_INIT=16'b1100110000000000;
    LogicCell40 \ppm_encoder1.pulses2count_18_LC_9_26_3  (
            .in0(_gnd_net_),
            .in1(N__3173),
            .in2(_gnd_net_),
            .in3(N__5412),
            .lcout(\ppm_encoder1.pulses2countZ0Z_18 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5972),
            .ce(N__5318),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_16_LC_9_26_5 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_16_LC_9_26_5 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_16_LC_9_26_5 .LUT_INIT=16'b1100110000000000;
    LogicCell40 \ppm_encoder1.pulses2count_16_LC_9_26_5  (
            .in0(_gnd_net_),
            .in1(N__3161),
            .in2(_gnd_net_),
            .in3(N__5411),
            .lcout(\ppm_encoder1.pulses2countZ0Z_16 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5972),
            .ce(N__5318),
            .sr(_gnd_net_));
    defparam \uart1.count_pulses_needed_0_LC_9_28_0 .C_ON=1'b1;
    defparam \uart1.count_pulses_needed_0_LC_9_28_0 .SEQ_MODE=4'b1000;
    defparam \uart1.count_pulses_needed_0_LC_9_28_0 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \uart1.count_pulses_needed_0_LC_9_28_0  (
            .in0(_gnd_net_),
            .in1(N__3800),
            .in2(N__5540),
            .in3(N__5539),
            .lcout(\uart1.count_pulses_neededZ0Z_0 ),
            .ltout(),
            .carryin(bfn_9_28_0_),
            .carryout(\uart1.un1_count_pulses_needed_6_cry_0 ),
            .clk(N__5969),
            .ce(),
            .sr(N__3725));
    defparam \uart1.count_pulses_needed_1_LC_9_28_1 .C_ON=1'b1;
    defparam \uart1.count_pulses_needed_1_LC_9_28_1 .SEQ_MODE=4'b1000;
    defparam \uart1.count_pulses_needed_1_LC_9_28_1 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \uart1.count_pulses_needed_1_LC_9_28_1  (
            .in0(_gnd_net_),
            .in1(N__3836),
            .in2(_gnd_net_),
            .in3(N__3149),
            .lcout(\uart1.count_pulses_neededZ0Z_1 ),
            .ltout(),
            .carryin(\uart1.un1_count_pulses_needed_6_cry_0 ),
            .carryout(\uart1.un1_count_pulses_needed_6_cry_1 ),
            .clk(N__5969),
            .ce(),
            .sr(N__3725));
    defparam \uart1.count_pulses_needed_2_LC_9_28_2 .C_ON=1'b1;
    defparam \uart1.count_pulses_needed_2_LC_9_28_2 .SEQ_MODE=4'b1000;
    defparam \uart1.count_pulses_needed_2_LC_9_28_2 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \uart1.count_pulses_needed_2_LC_9_28_2  (
            .in0(_gnd_net_),
            .in1(N__3754),
            .in2(_gnd_net_),
            .in3(N__3146),
            .lcout(\uart1.count_pulses_neededZ0Z_2 ),
            .ltout(),
            .carryin(\uart1.un1_count_pulses_needed_6_cry_1 ),
            .carryout(\uart1.un1_count_pulses_needed_6_cry_2 ),
            .clk(N__5969),
            .ce(),
            .sr(N__3725));
    defparam \uart1.count_pulses_needed_3_LC_9_28_3 .C_ON=1'b1;
    defparam \uart1.count_pulses_needed_3_LC_9_28_3 .SEQ_MODE=4'b1000;
    defparam \uart1.count_pulses_needed_3_LC_9_28_3 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \uart1.count_pulses_needed_3_LC_9_28_3  (
            .in0(_gnd_net_),
            .in1(N__3770),
            .in2(_gnd_net_),
            .in3(N__3143),
            .lcout(\uart1.count_pulses_neededZ0Z_3 ),
            .ltout(),
            .carryin(\uart1.un1_count_pulses_needed_6_cry_2 ),
            .carryout(\uart1.un1_count_pulses_needed_6_cry_3 ),
            .clk(N__5969),
            .ce(),
            .sr(N__3725));
    defparam \uart1.count_pulses_needed_4_LC_9_28_4 .C_ON=1'b1;
    defparam \uart1.count_pulses_needed_4_LC_9_28_4 .SEQ_MODE=4'b1000;
    defparam \uart1.count_pulses_needed_4_LC_9_28_4 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \uart1.count_pulses_needed_4_LC_9_28_4  (
            .in0(_gnd_net_),
            .in1(N__3602),
            .in2(_gnd_net_),
            .in3(N__3140),
            .lcout(\uart1.count_pulses_neededZ0Z_4 ),
            .ltout(),
            .carryin(\uart1.un1_count_pulses_needed_6_cry_3 ),
            .carryout(\uart1.un1_count_pulses_needed_6_cry_4 ),
            .clk(N__5969),
            .ce(),
            .sr(N__3725));
    defparam \uart1.count_pulses_needed_5_LC_9_28_5 .C_ON=1'b1;
    defparam \uart1.count_pulses_needed_5_LC_9_28_5 .SEQ_MODE=4'b1000;
    defparam \uart1.count_pulses_needed_5_LC_9_28_5 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \uart1.count_pulses_needed_5_LC_9_28_5  (
            .in0(_gnd_net_),
            .in1(N__3854),
            .in2(_gnd_net_),
            .in3(N__3137),
            .lcout(\uart1.count_pulses_neededZ0Z_5 ),
            .ltout(),
            .carryin(\uart1.un1_count_pulses_needed_6_cry_4 ),
            .carryout(\uart1.un1_count_pulses_needed_6_cry_5 ),
            .clk(N__5969),
            .ce(),
            .sr(N__3725));
    defparam \uart1.count_pulses_needed_6_LC_9_28_6 .C_ON=1'b1;
    defparam \uart1.count_pulses_needed_6_LC_9_28_6 .SEQ_MODE=4'b1000;
    defparam \uart1.count_pulses_needed_6_LC_9_28_6 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \uart1.count_pulses_needed_6_LC_9_28_6  (
            .in0(_gnd_net_),
            .in1(N__3812),
            .in2(_gnd_net_),
            .in3(N__3134),
            .lcout(\uart1.count_pulses_neededZ0Z_6 ),
            .ltout(),
            .carryin(\uart1.un1_count_pulses_needed_6_cry_5 ),
            .carryout(\uart1.un1_count_pulses_needed_6_cry_6 ),
            .clk(N__5969),
            .ce(),
            .sr(N__3725));
    defparam \uart1.count_pulses_needed_7_LC_9_28_7 .C_ON=1'b1;
    defparam \uart1.count_pulses_needed_7_LC_9_28_7 .SEQ_MODE=4'b1000;
    defparam \uart1.count_pulses_needed_7_LC_9_28_7 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \uart1.count_pulses_needed_7_LC_9_28_7  (
            .in0(_gnd_net_),
            .in1(N__3619),
            .in2(_gnd_net_),
            .in3(N__3380),
            .lcout(\uart1.count_pulses_neededZ0Z_7 ),
            .ltout(),
            .carryin(\uart1.un1_count_pulses_needed_6_cry_6 ),
            .carryout(\uart1.un1_count_pulses_needed_6_cry_7 ),
            .clk(N__5969),
            .ce(),
            .sr(N__3725));
    defparam \uart1.count_pulses_needed_8_LC_9_29_0 .C_ON=1'b0;
    defparam \uart1.count_pulses_needed_8_LC_9_29_0 .SEQ_MODE=4'b1000;
    defparam \uart1.count_pulses_needed_8_LC_9_29_0 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \uart1.count_pulses_needed_8_LC_9_29_0  (
            .in0(_gnd_net_),
            .in1(N__3788),
            .in2(_gnd_net_),
            .in3(N__3377),
            .lcout(\uart1.count_pulses_neededZ0Z_8 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5966),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_9_LC_10_22_5 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_9_LC_10_22_5 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_9_LC_10_22_5 .LUT_INIT=16'b1010101000000000;
    LogicCell40 \ppm_encoder1.pulses2count_9_LC_10_22_5  (
            .in0(N__5367),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__3374),
            .lcout(\ppm_encoder1.pulses2countZ0Z_9 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5979),
            .ce(N__5311),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_8_LC_10_22_6 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_8_LC_10_22_6 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_8_LC_10_22_6 .LUT_INIT=16'b1100110000000000;
    LogicCell40 \ppm_encoder1.pulses2count_8_LC_10_22_6  (
            .in0(_gnd_net_),
            .in1(N__3356),
            .in2(_gnd_net_),
            .in3(N__5366),
            .lcout(\ppm_encoder1.pulses2countZ0Z_8 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5979),
            .ce(N__5311),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIMVMJ_0_1_LC_10_23_1 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIMVMJ_0_1_LC_10_23_1 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIMVMJ_0_1_LC_10_23_1 .LUT_INIT=16'b0000000000010100;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_RNIMVMJ_0_1_LC_10_23_1  (
            .in0(N__4763),
            .in1(N__5035),
            .in2(N__4852),
            .in3(N__4961),
            .lcout(\ppm_encoder1.N_47 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.PPM_STATE_RNO_1_0_LC_10_23_3 .C_ON=1'b0;
    defparam \ppm_encoder1.PPM_STATE_RNO_1_0_LC_10_23_3 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.PPM_STATE_RNO_1_0_LC_10_23_3 .LUT_INIT=16'b0000000000110011;
    LogicCell40 \ppm_encoder1.PPM_STATE_RNO_1_0_LC_10_23_3  (
            .in0(_gnd_net_),
            .in1(N__4564),
            .in2(_gnd_net_),
            .in3(N__4471),
            .lcout(\ppm_encoder1.PPM_STATE_e_1_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIN2AA1_0_3_LC_10_23_6 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIN2AA1_0_3_LC_10_23_6 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIN2AA1_0_3_LC_10_23_6 .LUT_INIT=16'b0000100000000000;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_RNIN2AA1_0_3_LC_10_23_6  (
            .in0(N__4762),
            .in1(N__4867),
            .in2(N__4706),
            .in3(N__4844),
            .lcout(\ppm_encoder1.init_pulses_6_sqmuxa ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_RNO_0_11_LC_10_23_7 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_RNO_0_11_LC_10_23_7 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.pulses2count_RNO_0_11_LC_10_23_7 .LUT_INIT=16'b0001010101010101;
    LogicCell40 \ppm_encoder1.pulses2count_RNO_0_11_LC_10_23_7  (
            .in0(N__4764),
            .in1(N__5036),
            .in2(N__4853),
            .in3(N__4962),
            .lcout(\ppm_encoder1.pulses2count_8_0_iv_0_1_10_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_10_LC_10_24_0 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_10_LC_10_24_0 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_10_LC_10_24_0 .LUT_INIT=16'b1100110000000000;
    LogicCell40 \ppm_encoder1.pulses2count_10_LC_10_24_0  (
            .in0(_gnd_net_),
            .in1(N__3191),
            .in2(_gnd_net_),
            .in3(N__5401),
            .lcout(\ppm_encoder1.pulses2countZ0Z_10 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5974),
            .ce(N__5314),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_6_LC_10_24_1 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_6_LC_10_24_1 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_6_LC_10_24_1 .LUT_INIT=16'b1111111101010101;
    LogicCell40 \ppm_encoder1.pulses2count_6_LC_10_24_1  (
            .in0(N__5404),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__3583),
            .lcout(\ppm_encoder1.pulses2countZ0Z_6 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5974),
            .ce(N__5314),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_7_LC_10_24_2 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_7_LC_10_24_2 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_7_LC_10_24_2 .LUT_INIT=16'b1100110000000000;
    LogicCell40 \ppm_encoder1.pulses2count_7_LC_10_24_2  (
            .in0(_gnd_net_),
            .in1(N__3569),
            .in2(_gnd_net_),
            .in3(N__5405),
            .lcout(\ppm_encoder1.pulses2countZ0Z_7 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5974),
            .ce(N__5314),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_14_LC_10_24_3 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_14_LC_10_24_3 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_14_LC_10_24_3 .LUT_INIT=16'b1111000011111000;
    LogicCell40 \ppm_encoder1.pulses2count_14_LC_10_24_3  (
            .in0(N__3551),
            .in1(N__3533),
            .in2(N__3502),
            .in3(N__4971),
            .lcout(\ppm_encoder1.pulses2countZ0Z_14 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5974),
            .ce(N__5314),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_3_LC_10_24_4 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_3_LC_10_24_4 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_3_LC_10_24_4 .LUT_INIT=16'b1000100011001100;
    LogicCell40 \ppm_encoder1.pulses2count_3_LC_10_24_4  (
            .in0(N__3485),
            .in1(N__5484),
            .in2(_gnd_net_),
            .in3(N__5403),
            .lcout(\ppm_encoder1.pulses2countZ0Z_3 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5974),
            .ce(N__5314),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_2_LC_10_24_6 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_2_LC_10_24_6 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_2_LC_10_24_6 .LUT_INIT=16'b1011101100110011;
    LogicCell40 \ppm_encoder1.pulses2count_2_LC_10_24_6  (
            .in0(N__3464),
            .in1(N__5483),
            .in2(_gnd_net_),
            .in3(N__5402),
            .lcout(\ppm_encoder1.pulses2countZ0Z_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5974),
            .ce(N__5314),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_11_LC_10_24_7 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_11_LC_10_24_7 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_11_LC_10_24_7 .LUT_INIT=16'b0100111100001111;
    LogicCell40 \ppm_encoder1.pulses2count_11_LC_10_24_7  (
            .in0(N__4849),
            .in1(N__4871),
            .in2(N__3449),
            .in3(N__3440),
            .lcout(\ppm_encoder1.pulses2countZ0Z_11 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5974),
            .ce(N__5314),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_15_c_RNO_LC_10_25_0 .C_ON=1'b0;
    defparam \ppm_encoder1.counter11_0_I_15_c_RNO_LC_10_25_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_15_c_RNO_LC_10_25_0 .LUT_INIT=16'b0111101111011110;
    LogicCell40 \ppm_encoder1.counter11_0_I_15_c_RNO_LC_10_25_0  (
            .in0(N__4488),
            .in1(N__3422),
            .in2(N__3416),
            .in3(N__4143),
            .lcout(\ppm_encoder1.counter11_0_I_15_c_RNOZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.PPM_STATE_RNO_0_1_LC_10_25_1 .C_ON=1'b0;
    defparam \ppm_encoder1.PPM_STATE_RNO_0_1_LC_10_25_1 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.PPM_STATE_RNO_0_1_LC_10_25_1 .LUT_INIT=16'b0101000001011010;
    LogicCell40 \ppm_encoder1.PPM_STATE_RNO_0_1_LC_10_25_1  (
            .in0(N__4396),
            .in1(_gnd_net_),
            .in2(N__4472),
            .in3(N__4535),
            .lcout(\ppm_encoder1.PPM_STATE_r_1_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_45_c_RNO_LC_10_25_5 .C_ON=1'b0;
    defparam \ppm_encoder1.counter11_0_I_45_c_RNO_LC_10_25_5 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_45_c_RNO_LC_10_25_5 .LUT_INIT=16'b0111110110111110;
    LogicCell40 \ppm_encoder1.counter11_0_I_45_c_RNO_LC_10_25_5  (
            .in0(N__3395),
            .in1(N__5285),
            .in2(N__3389),
            .in3(N__5189),
            .lcout(\ppm_encoder1.counter11_0_I_45_c_RNOZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.PPM_STATE_RNI13JM_0_0_LC_10_25_6 .C_ON=1'b0;
    defparam \ppm_encoder1.PPM_STATE_RNI13JM_0_0_LC_10_25_6 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.PPM_STATE_RNI13JM_0_0_LC_10_25_6 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \ppm_encoder1.PPM_STATE_RNI13JM_0_0_LC_10_25_6  (
            .in0(_gnd_net_),
            .in1(N__4467),
            .in2(_gnd_net_),
            .in3(N__4395),
            .lcout(\ppm_encoder1.N_35_i_i ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_51_c_RNO_LC_10_25_7 .C_ON=1'b0;
    defparam \ppm_encoder1.counter11_0_I_51_c_RNO_LC_10_25_7 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_51_c_RNO_LC_10_25_7 .LUT_INIT=16'b0110111111110110;
    LogicCell40 \ppm_encoder1.counter11_0_I_51_c_RNO_LC_10_25_7  (
            .in0(N__4180),
            .in1(N__3674),
            .in2(N__4211),
            .in3(N__3668),
            .lcout(\ppm_encoder1.counter11_0_I_51_c_RNOZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_39_c_RNO_LC_10_26_0 .C_ON=1'b0;
    defparam \ppm_encoder1.counter11_0_I_39_c_RNO_LC_10_26_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_39_c_RNO_LC_10_26_0 .LUT_INIT=16'b0111110110111110;
    LogicCell40 \ppm_encoder1.counter11_0_I_39_c_RNO_LC_10_26_0  (
            .in0(N__3632),
            .in1(N__4233),
            .in2(N__3659),
            .in3(N__4254),
            .lcout(\ppm_encoder1.counter11_0_I_39_c_RNOZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_12_LC_10_26_1 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_12_LC_10_26_1 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_12_LC_10_26_1 .LUT_INIT=16'b1000100010101010;
    LogicCell40 \ppm_encoder1.pulses2count_12_LC_10_26_1  (
            .in0(N__5495),
            .in1(N__3650),
            .in2(_gnd_net_),
            .in3(N__5406),
            .lcout(\ppm_encoder1.pulses2countZ0Z_12 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5971),
            .ce(N__5316),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter_RNIG8G3_11_LC_10_26_6 .C_ON=1'b0;
    defparam \ppm_encoder1.counter_RNIG8G3_11_LC_10_26_6 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter_RNIG8G3_11_LC_10_26_6 .LUT_INIT=16'b0000000000000100;
    LogicCell40 \ppm_encoder1.counter_RNIG8G3_11_LC_10_26_6  (
            .in0(N__4207),
            .in1(N__4281),
            .in2(N__4103),
            .in3(N__4234),
            .lcout(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_12 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_57_c_RNO_LC_10_27_0 .C_ON=1'b0;
    defparam \ppm_encoder1.counter11_0_I_57_c_RNO_LC_10_27_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_57_c_RNO_LC_10_27_0 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \ppm_encoder1.counter11_0_I_57_c_RNO_LC_10_27_0  (
            .in0(_gnd_net_),
            .in1(N__3626),
            .in2(_gnd_net_),
            .in3(N__5238),
            .lcout(\ppm_encoder1.counter11_0_I_57_c_RNOZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.position_RNIFHNB3_3_LC_10_28_0 .C_ON=1'b0;
    defparam \uart1.position_RNIFHNB3_3_LC_10_28_0 .SEQ_MODE=4'b0000;
    defparam \uart1.position_RNIFHNB3_3_LC_10_28_0 .LUT_INIT=16'b0000000000010001;
    LogicCell40 \uart1.position_RNIFHNB3_3_LC_10_28_0  (
            .in0(N__5770),
            .in1(N__5522),
            .in2(_gnd_net_),
            .in3(N__5850),
            .lcout(\uart1.un1_state_bus_1_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_14_1_0__m9_i_o2_1_2_LC_10_28_1 .C_ON=1'b0;
    defparam \uart1.state_bus_14_1_0__m9_i_o2_1_2_LC_10_28_1 .SEQ_MODE=4'b0000;
    defparam \uart1.state_bus_14_1_0__m9_i_o2_1_2_LC_10_28_1 .LUT_INIT=16'b1111111111011111;
    LogicCell40 \uart1.state_bus_14_1_0__m9_i_o2_1_2_LC_10_28_1  (
            .in0(N__3600),
            .in1(N__3852),
            .in2(N__3620),
            .in3(N__3834),
            .lcout(\uart1.m9_i_o2_1_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_14_1_0__m9_i_o2_0_3_LC_10_28_2 .C_ON=1'b0;
    defparam \uart1.state_bus_14_1_0__m9_i_o2_0_3_LC_10_28_2 .SEQ_MODE=4'b0000;
    defparam \uart1.state_bus_14_1_0__m9_i_o2_0_3_LC_10_28_2 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \uart1.state_bus_14_1_0__m9_i_o2_0_3_LC_10_28_2  (
            .in0(_gnd_net_),
            .in1(N__3615),
            .in2(_gnd_net_),
            .in3(N__3601),
            .lcout(\uart1.m9_i_o2_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_14_1_0__m9_i_o2_1_0_LC_10_28_3 .C_ON=1'b0;
    defparam \uart1.state_bus_14_1_0__m9_i_o2_1_0_LC_10_28_3 .SEQ_MODE=4'b0000;
    defparam \uart1.state_bus_14_1_0__m9_i_o2_1_0_LC_10_28_3 .LUT_INIT=16'b0111111111111111;
    LogicCell40 \uart1.state_bus_14_1_0__m9_i_o2_1_0_LC_10_28_3  (
            .in0(N__3853),
            .in1(N__3835),
            .in2(N__3755),
            .in3(N__5769),
            .lcout(),
            .ltout(\uart1.m9_i_o2_1_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_14_1_0__m9_i_o2_LC_10_28_4 .C_ON=1'b0;
    defparam \uart1.state_bus_14_1_0__m9_i_o2_LC_10_28_4 .SEQ_MODE=4'b0000;
    defparam \uart1.state_bus_14_1_0__m9_i_o2_LC_10_28_4 .LUT_INIT=16'b1111111111111101;
    LogicCell40 \uart1.state_bus_14_1_0__m9_i_o2_LC_10_28_4  (
            .in0(N__3769),
            .in1(N__3776),
            .in2(N__3821),
            .in3(N__3818),
            .lcout(\uart1.N_29 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_14_1_0__m9_i_o2_0_2_LC_10_28_5 .C_ON=1'b0;
    defparam \uart1.state_bus_14_1_0__m9_i_o2_0_2_LC_10_28_5 .SEQ_MODE=4'b0000;
    defparam \uart1.state_bus_14_1_0__m9_i_o2_0_2_LC_10_28_5 .LUT_INIT=16'b1111111111011101;
    LogicCell40 \uart1.state_bus_14_1_0__m9_i_o2_0_2_LC_10_28_5  (
            .in0(N__3811),
            .in1(N__3799),
            .in2(_gnd_net_),
            .in3(N__3787),
            .lcout(\uart1.m9_i_o2_0_2 ),
            .ltout(\uart1.m9_i_o2_0_2_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_14_1_0__m9_i_o2_1_LC_10_28_6 .C_ON=1'b0;
    defparam \uart1.state_bus_14_1_0__m9_i_o2_1_LC_10_28_6 .SEQ_MODE=4'b0000;
    defparam \uart1.state_bus_14_1_0__m9_i_o2_1_LC_10_28_6 .LUT_INIT=16'b1111111111110111;
    LogicCell40 \uart1.state_bus_14_1_0__m9_i_o2_1_LC_10_28_6  (
            .in0(N__3768),
            .in1(N__3753),
            .in2(N__3737),
            .in3(N__3734),
            .lcout(\uart1.N_23 ),
            .ltout(\uart1.N_23_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_RNI9EKQ5_1_LC_10_28_7 .C_ON=1'b0;
    defparam \uart1.state_bus_RNI9EKQ5_1_LC_10_28_7 .SEQ_MODE=4'b0000;
    defparam \uart1.state_bus_RNI9EKQ5_1_LC_10_28_7 .LUT_INIT=16'b0000111100110011;
    LogicCell40 \uart1.state_bus_RNI9EKQ5_1_LC_10_28_7  (
            .in0(_gnd_net_),
            .in1(N__5824),
            .in2(N__3728),
            .in3(N__5717),
            .lcout(\uart1.N_5 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.PPM_STATE_RNI13JM_0_LC_11_22_6 .C_ON=1'b0;
    defparam \ppm_encoder1.PPM_STATE_RNI13JM_0_LC_11_22_6 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.PPM_STATE_RNI13JM_0_LC_11_22_6 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \ppm_encoder1.PPM_STATE_RNI13JM_0_LC_11_22_6  (
            .in0(_gnd_net_),
            .in1(N__4457),
            .in2(_gnd_net_),
            .in3(N__4394),
            .lcout(\ppm_encoder1.N_39 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_27_c_RNO_LC_11_23_0 .C_ON=1'b0;
    defparam \ppm_encoder1.counter11_0_I_27_c_RNO_LC_11_23_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_27_c_RNO_LC_11_23_0 .LUT_INIT=16'b0111110110111110;
    LogicCell40 \ppm_encoder1.counter11_0_I_27_c_RNO_LC_11_23_0  (
            .in0(N__3710),
            .in1(N__5138),
            .in2(N__3704),
            .in3(N__5222),
            .lcout(\ppm_encoder1.counter11_0_I_27_c_RNOZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIMVMJ_1_LC_11_23_4 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIMVMJ_1_LC_11_23_4 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIMVMJ_1_LC_11_23_4 .LUT_INIT=16'b1100101000111111;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_RNIMVMJ_1_LC_11_23_4  (
            .in0(N__4745),
            .in1(N__5009),
            .in2(N__4835),
            .in3(N__4923),
            .lcout(\ppm_encoder1.un1_init_pulses39_2_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.ppm_output_reg_LC_11_23_6 .C_ON=1'b0;
    defparam \ppm_encoder1.ppm_output_reg_LC_11_23_6 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.ppm_output_reg_LC_11_23_6 .LUT_INIT=16'b0101101000011110;
    LogicCell40 \ppm_encoder1.ppm_output_reg_LC_11_23_6  (
            .in0(N__4654),
            .in1(N__4642),
            .in2(N__3691),
            .in3(N__4565),
            .lcout(ppm_output_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5975),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_1_c_LC_11_24_0 .C_ON=1'b1;
    defparam \ppm_encoder1.counter11_0_I_1_c_LC_11_24_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_1_c_LC_11_24_0 .LUT_INIT=16'b0000000000000000;
    LogicCell40 \ppm_encoder1.counter11_0_I_1_c_LC_11_24_0  (
            .in0(_gnd_net_),
            .in1(N__5441),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(bfn_11_24_0_),
            .carryout(\ppm_encoder1.counter11_0_data_tmp_0 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_9_c_LC_11_24_1 .C_ON=1'b1;
    defparam \ppm_encoder1.counter11_0_I_9_c_LC_11_24_1 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_9_c_LC_11_24_1 .LUT_INIT=16'b0000000000000000;
    LogicCell40 \ppm_encoder1.counter11_0_I_9_c_LC_11_24_1  (
            .in0(_gnd_net_),
            .in1(N__3908),
            .in2(N__4055),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(\ppm_encoder1.counter11_0_data_tmp_0 ),
            .carryout(\ppm_encoder1.counter11_0_data_tmp_1 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_15_c_LC_11_24_2 .C_ON=1'b1;
    defparam \ppm_encoder1.counter11_0_I_15_c_LC_11_24_2 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_15_c_LC_11_24_2 .LUT_INIT=16'b0000000000000000;
    LogicCell40 \ppm_encoder1.counter11_0_I_15_c_LC_11_24_2  (
            .in0(_gnd_net_),
            .in1(N__3887),
            .in2(N__4049),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(\ppm_encoder1.counter11_0_data_tmp_1 ),
            .carryout(\ppm_encoder1.counter11_0_data_tmp_2 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_21_c_LC_11_24_3 .C_ON=1'b1;
    defparam \ppm_encoder1.counter11_0_I_21_c_LC_11_24_3 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_21_c_LC_11_24_3 .LUT_INIT=16'b0000000000000000;
    LogicCell40 \ppm_encoder1.counter11_0_I_21_c_LC_11_24_3  (
            .in0(_gnd_net_),
            .in1(N__3938),
            .in2(N__4052),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(\ppm_encoder1.counter11_0_data_tmp_2 ),
            .carryout(\ppm_encoder1.counter11_0_data_tmp_3 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_27_c_LC_11_24_4 .C_ON=1'b1;
    defparam \ppm_encoder1.counter11_0_I_27_c_LC_11_24_4 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_27_c_LC_11_24_4 .LUT_INIT=16'b0000000000000000;
    LogicCell40 \ppm_encoder1.counter11_0_I_27_c_LC_11_24_4  (
            .in0(_gnd_net_),
            .in1(N__3881),
            .in2(N__4050),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(\ppm_encoder1.counter11_0_data_tmp_3 ),
            .carryout(\ppm_encoder1.counter11_0_data_tmp_4 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_33_c_LC_11_24_5 .C_ON=1'b1;
    defparam \ppm_encoder1.counter11_0_I_33_c_LC_11_24_5 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_33_c_LC_11_24_5 .LUT_INIT=16'b0000000000000000;
    LogicCell40 \ppm_encoder1.counter11_0_I_33_c_LC_11_24_5  (
            .in0(_gnd_net_),
            .in1(N__3959),
            .in2(N__4053),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(\ppm_encoder1.counter11_0_data_tmp_4 ),
            .carryout(\ppm_encoder1.counter11_0_data_tmp_5 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_39_c_LC_11_24_6 .C_ON=1'b1;
    defparam \ppm_encoder1.counter11_0_I_39_c_LC_11_24_6 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_39_c_LC_11_24_6 .LUT_INIT=16'b0000000000000000;
    LogicCell40 \ppm_encoder1.counter11_0_I_39_c_LC_11_24_6  (
            .in0(_gnd_net_),
            .in1(N__3875),
            .in2(N__4051),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(\ppm_encoder1.counter11_0_data_tmp_5 ),
            .carryout(\ppm_encoder1.counter11_0_data_tmp_6 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_45_c_LC_11_24_7 .C_ON=1'b1;
    defparam \ppm_encoder1.counter11_0_I_45_c_LC_11_24_7 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_45_c_LC_11_24_7 .LUT_INIT=16'b0000000000000000;
    LogicCell40 \ppm_encoder1.counter11_0_I_45_c_LC_11_24_7  (
            .in0(_gnd_net_),
            .in1(N__3866),
            .in2(N__4054),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(\ppm_encoder1.counter11_0_data_tmp_6 ),
            .carryout(\ppm_encoder1.counter11_0_data_tmp_7 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_51_c_LC_11_25_0 .C_ON=1'b1;
    defparam \ppm_encoder1.counter11_0_I_51_c_LC_11_25_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_51_c_LC_11_25_0 .LUT_INIT=16'b0000000000000000;
    LogicCell40 \ppm_encoder1.counter11_0_I_51_c_LC_11_25_0  (
            .in0(_gnd_net_),
            .in1(N__3860),
            .in2(N__4063),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(bfn_11_25_0_),
            .carryout(\ppm_encoder1.counter11_0_data_tmp_8 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_57_c_LC_11_25_1 .C_ON=1'b1;
    defparam \ppm_encoder1.counter11_0_I_57_c_LC_11_25_1 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_57_c_LC_11_25_1 .LUT_INIT=16'b0000000000000000;
    LogicCell40 \ppm_encoder1.counter11_0_I_57_c_LC_11_25_1  (
            .in0(_gnd_net_),
            .in1(N__4073),
            .in2(N__4064),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(\ppm_encoder1.counter11_0_data_tmp_8 ),
            .carryout(\ppm_encoder1.counter11_0_N_2 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_N_2_THRU_LUT4_0_LC_11_25_2 .C_ON=1'b0;
    defparam \ppm_encoder1.counter11_0_N_2_THRU_LUT4_0_LC_11_25_2 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_N_2_THRU_LUT4_0_LC_11_25_2 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \ppm_encoder1.counter11_0_N_2_THRU_LUT4_0_LC_11_25_2  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__3977),
            .lcout(\ppm_encoder1.counter11_0_N_2_THRU_CO ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_33_c_RNO_LC_11_25_3 .C_ON=1'b0;
    defparam \ppm_encoder1.counter11_0_I_33_c_RNO_LC_11_25_3 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_33_c_RNO_LC_11_25_3 .LUT_INIT=16'b0111110110111110;
    LogicCell40 \ppm_encoder1.counter11_0_I_33_c_RNO_LC_11_25_3  (
            .in0(N__3974),
            .in1(N__4283),
            .in2(N__3968),
            .in3(N__5098),
            .lcout(\ppm_encoder1.counter11_0_I_33_c_RNOZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_21_c_RNO_LC_11_25_4 .C_ON=1'b0;
    defparam \ppm_encoder1.counter11_0_I_21_c_RNO_LC_11_25_4 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_21_c_RNO_LC_11_25_4 .LUT_INIT=16'b0111101111011110;
    LogicCell40 \ppm_encoder1.counter11_0_I_21_c_RNO_LC_11_25_4  (
            .in0(N__4098),
            .in1(N__3953),
            .in2(N__3947),
            .in3(N__4119),
            .lcout(\ppm_encoder1.counter11_0_I_21_c_RNOZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter_RNI4452_17_LC_11_25_5 .C_ON=1'b0;
    defparam \ppm_encoder1.counter_RNI4452_17_LC_11_25_5 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter_RNI4452_17_LC_11_25_5 .LUT_INIT=16'b0000000001010101;
    LogicCell40 \ppm_encoder1.counter_RNI4452_17_LC_11_25_5  (
            .in0(N__4120),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__4184),
            .lcout(),
            .ltout(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_2_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter_RNIH9Q7_12_LC_11_25_6 .C_ON=1'b0;
    defparam \ppm_encoder1.counter_RNIH9Q7_12_LC_11_25_6 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter_RNIH9Q7_12_LC_11_25_6 .LUT_INIT=16'b0000000001000000;
    LogicCell40 \ppm_encoder1.counter_RNIH9Q7_12_LC_11_25_6  (
            .in0(N__4259),
            .in1(N__3932),
            .in2(N__3926),
            .in3(N__4144),
            .lcout(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_16 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_9_c_RNO_LC_11_25_7 .C_ON=1'b0;
    defparam \ppm_encoder1.counter11_0_I_9_c_RNO_LC_11_25_7 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_9_c_RNO_LC_11_25_7 .LUT_INIT=16'b0111101111011110;
    LogicCell40 \ppm_encoder1.counter11_0_I_9_c_RNO_LC_11_25_7  (
            .in0(N__5115),
            .in1(N__3923),
            .in2(N__3917),
            .in3(N__5073),
            .lcout(\ppm_encoder1.counter11_0_I_9_c_RNOZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter_0_LC_11_26_0 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_0_LC_11_26_0 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_0_LC_11_26_0 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_0_LC_11_26_0  (
            .in0(_gnd_net_),
            .in1(N__5168),
            .in2(N__3902),
            .in3(N__3901),
            .lcout(\ppm_encoder1.counterZ0Z_0 ),
            .ltout(),
            .carryin(bfn_11_26_0_),
            .carryout(\ppm_encoder1.un1_counter_13_cry_0 ),
            .clk(N__5968),
            .ce(),
            .sr(N__4328));
    defparam \ppm_encoder1.counter_1_LC_11_26_1 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_1_LC_11_26_1 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_1_LC_11_26_1 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_1_LC_11_26_1  (
            .in0(_gnd_net_),
            .in1(N__5264),
            .in2(_gnd_net_),
            .in3(N__4154),
            .lcout(\ppm_encoder1.counterZ0Z_1 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_0 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_1 ),
            .clk(N__5968),
            .ce(),
            .sr(N__4328));
    defparam \ppm_encoder1.counter_2_LC_11_26_2 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_2_LC_11_26_2 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_2_LC_11_26_2 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_2_LC_11_26_2  (
            .in0(_gnd_net_),
            .in1(N__5075),
            .in2(_gnd_net_),
            .in3(N__4151),
            .lcout(\ppm_encoder1.counterZ0Z_2 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_1 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_2 ),
            .clk(N__5968),
            .ce(),
            .sr(N__4328));
    defparam \ppm_encoder1.counter_3_LC_11_26_3 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_3_LC_11_26_3 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_3_LC_11_26_3 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_3_LC_11_26_3  (
            .in0(_gnd_net_),
            .in1(N__5117),
            .in2(_gnd_net_),
            .in3(N__4148),
            .lcout(\ppm_encoder1.counterZ0Z_3 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_2 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_3 ),
            .clk(N__5968),
            .ce(),
            .sr(N__4328));
    defparam \ppm_encoder1.counter_4_LC_11_26_4 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_4_LC_11_26_4 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_4_LC_11_26_4 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_4_LC_11_26_4  (
            .in0(_gnd_net_),
            .in1(N__4145),
            .in2(_gnd_net_),
            .in3(N__4127),
            .lcout(\ppm_encoder1.counterZ0Z_4 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_3 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_4 ),
            .clk(N__5968),
            .ce(),
            .sr(N__4328));
    defparam \ppm_encoder1.counter_5_LC_11_26_5 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_5_LC_11_26_5 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_5_LC_11_26_5 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_5_LC_11_26_5  (
            .in0(_gnd_net_),
            .in1(N__4492),
            .in2(_gnd_net_),
            .in3(N__4124),
            .lcout(\ppm_encoder1.counterZ0Z_5 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_4 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_5 ),
            .clk(N__5968),
            .ce(),
            .sr(N__4328));
    defparam \ppm_encoder1.counter_6_LC_11_26_6 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_6_LC_11_26_6 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_6_LC_11_26_6 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_6_LC_11_26_6  (
            .in0(_gnd_net_),
            .in1(N__4121),
            .in2(_gnd_net_),
            .in3(N__4106),
            .lcout(\ppm_encoder1.counterZ0Z_6 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_5 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_6 ),
            .clk(N__5968),
            .ce(),
            .sr(N__4328));
    defparam \ppm_encoder1.counter_7_LC_11_26_7 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_7_LC_11_26_7 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_7_LC_11_26_7 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_7_LC_11_26_7  (
            .in0(_gnd_net_),
            .in1(N__4102),
            .in2(_gnd_net_),
            .in3(N__4082),
            .lcout(\ppm_encoder1.counterZ0Z_7 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_6 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_7 ),
            .clk(N__5968),
            .ce(),
            .sr(N__4328));
    defparam \ppm_encoder1.counter_8_LC_11_27_0 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_8_LC_11_27_0 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_8_LC_11_27_0 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_8_LC_11_27_0  (
            .in0(_gnd_net_),
            .in1(N__5221),
            .in2(_gnd_net_),
            .in3(N__4079),
            .lcout(\ppm_encoder1.counterZ0Z_8 ),
            .ltout(),
            .carryin(bfn_11_27_0_),
            .carryout(\ppm_encoder1.un1_counter_13_cry_8 ),
            .clk(N__5965),
            .ce(),
            .sr(N__4327));
    defparam \ppm_encoder1.counter_9_LC_11_27_1 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_9_LC_11_27_1 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_9_LC_11_27_1 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_9_LC_11_27_1  (
            .in0(_gnd_net_),
            .in1(N__5137),
            .in2(_gnd_net_),
            .in3(N__4076),
            .lcout(\ppm_encoder1.counterZ0Z_9 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_8 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_9 ),
            .clk(N__5965),
            .ce(),
            .sr(N__4327));
    defparam \ppm_encoder1.counter_10_LC_11_27_2 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_10_LC_11_27_2 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_10_LC_11_27_2 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_10_LC_11_27_2  (
            .in0(_gnd_net_),
            .in1(N__5097),
            .in2(_gnd_net_),
            .in3(N__4286),
            .lcout(\ppm_encoder1.counterZ0Z_10 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_9 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_10 ),
            .clk(N__5965),
            .ce(),
            .sr(N__4327));
    defparam \ppm_encoder1.counter_11_LC_11_27_3 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_11_LC_11_27_3 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_11_LC_11_27_3 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_11_LC_11_27_3  (
            .in0(_gnd_net_),
            .in1(N__4282),
            .in2(_gnd_net_),
            .in3(N__4262),
            .lcout(\ppm_encoder1.counterZ0Z_11 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_10 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_11 ),
            .clk(N__5965),
            .ce(),
            .sr(N__4327));
    defparam \ppm_encoder1.counter_12_LC_11_27_4 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_12_LC_11_27_4 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_12_LC_11_27_4 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_12_LC_11_27_4  (
            .in0(_gnd_net_),
            .in1(N__4258),
            .in2(_gnd_net_),
            .in3(N__4238),
            .lcout(\ppm_encoder1.counterZ0Z_12 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_11 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_12 ),
            .clk(N__5965),
            .ce(),
            .sr(N__4327));
    defparam \ppm_encoder1.counter_13_LC_11_27_5 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_13_LC_11_27_5 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_13_LC_11_27_5 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_13_LC_11_27_5  (
            .in0(_gnd_net_),
            .in1(N__4235),
            .in2(_gnd_net_),
            .in3(N__4220),
            .lcout(\ppm_encoder1.counterZ0Z_13 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_12 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_13 ),
            .clk(N__5965),
            .ce(),
            .sr(N__4327));
    defparam \ppm_encoder1.counter_14_LC_11_27_6 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_14_LC_11_27_6 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_14_LC_11_27_6 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_14_LC_11_27_6  (
            .in0(_gnd_net_),
            .in1(N__5188),
            .in2(_gnd_net_),
            .in3(N__4217),
            .lcout(\ppm_encoder1.counterZ0Z_14 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_13 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_14 ),
            .clk(N__5965),
            .ce(),
            .sr(N__4327));
    defparam \ppm_encoder1.counter_15_LC_11_27_7 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_15_LC_11_27_7 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_15_LC_11_27_7 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_15_LC_11_27_7  (
            .in0(_gnd_net_),
            .in1(N__5284),
            .in2(_gnd_net_),
            .in3(N__4214),
            .lcout(\ppm_encoder1.counterZ0Z_15 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_14 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_15 ),
            .clk(N__5965),
            .ce(),
            .sr(N__4327));
    defparam \ppm_encoder1.counter_16_LC_11_28_0 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_16_LC_11_28_0 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_16_LC_11_28_0 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_16_LC_11_28_0  (
            .in0(_gnd_net_),
            .in1(N__4206),
            .in2(_gnd_net_),
            .in3(N__4187),
            .lcout(\ppm_encoder1.counterZ0Z_16 ),
            .ltout(),
            .carryin(bfn_11_28_0_),
            .carryout(\ppm_encoder1.un1_counter_13_cry_16 ),
            .clk(N__5964),
            .ce(),
            .sr(N__4326));
    defparam \ppm_encoder1.counter_17_LC_11_28_1 .C_ON=1'b1;
    defparam \ppm_encoder1.counter_17_LC_11_28_1 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_17_LC_11_28_1 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \ppm_encoder1.counter_17_LC_11_28_1  (
            .in0(_gnd_net_),
            .in1(N__4179),
            .in2(_gnd_net_),
            .in3(N__4157),
            .lcout(\ppm_encoder1.counterZ0Z_17 ),
            .ltout(),
            .carryin(\ppm_encoder1.un1_counter_13_cry_16 ),
            .carryout(\ppm_encoder1.un1_counter_13_cry_17 ),
            .clk(N__5964),
            .ce(),
            .sr(N__4326));
    defparam \ppm_encoder1.counter_18_LC_11_28_2 .C_ON=1'b0;
    defparam \ppm_encoder1.counter_18_LC_11_28_2 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.counter_18_LC_11_28_2 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \ppm_encoder1.counter_18_LC_11_28_2  (
            .in0(_gnd_net_),
            .in1(N__5242),
            .in2(_gnd_net_),
            .in3(N__4331),
            .lcout(\ppm_encoder1.counterZ0Z_18 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5964),
            .ce(),
            .sr(N__4326));
    defparam \uart1.data_reg_0_LC_11_29_0 .C_ON=1'b0;
    defparam \uart1.data_reg_0_LC_11_29_0 .SEQ_MODE=4'b1000;
    defparam \uart1.data_reg_0_LC_11_29_0 .LUT_INIT=16'b1010101011001100;
    LogicCell40 \uart1.data_reg_0_LC_11_29_0  (
            .in0(N__5654),
            .in1(N__6241),
            .in2(_gnd_net_),
            .in3(N__4306),
            .lcout(data_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5962),
            .ce(),
            .sr(N__5813));
    defparam \uart1.data_reg_6_LC_11_29_1 .C_ON=1'b0;
    defparam \uart1.data_reg_6_LC_11_29_1 .SEQ_MODE=4'b1000;
    defparam \uart1.data_reg_6_LC_11_29_1 .LUT_INIT=16'b1101110110001000;
    LogicCell40 \uart1.data_reg_6_LC_11_29_1  (
            .in0(N__4312),
            .in1(N__5788),
            .in2(_gnd_net_),
            .in3(N__5803),
            .lcout(data_6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5962),
            .ce(),
            .sr(N__5813));
    defparam \uart1.data_reg_4_LC_11_29_2 .C_ON=1'b0;
    defparam \uart1.data_reg_4_LC_11_29_2 .SEQ_MODE=4'b1000;
    defparam \uart1.data_reg_4_LC_11_29_2 .LUT_INIT=16'b1010101011001100;
    LogicCell40 \uart1.data_reg_4_LC_11_29_2  (
            .in0(N__6260),
            .in1(N__5671),
            .in2(_gnd_net_),
            .in3(N__4310),
            .lcout(data_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5962),
            .ce(),
            .sr(N__5813));
    defparam \uart1.data_reg_1_LC_11_29_3 .C_ON=1'b0;
    defparam \uart1.data_reg_1_LC_11_29_3 .SEQ_MODE=4'b1000;
    defparam \uart1.data_reg_1_LC_11_29_3 .LUT_INIT=16'b1111010110100000;
    LogicCell40 \uart1.data_reg_1_LC_11_29_3  (
            .in0(N__4307),
            .in1(_gnd_net_),
            .in2(N__6188),
            .in3(N__5653),
            .lcout(data_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5962),
            .ce(),
            .sr(N__5813));
    defparam \uart1.data_reg_3_LC_11_29_4 .C_ON=1'b0;
    defparam \uart1.data_reg_3_LC_11_29_4 .SEQ_MODE=4'b1000;
    defparam \uart1.data_reg_3_LC_11_29_4 .LUT_INIT=16'b1100110010101010;
    LogicCell40 \uart1.data_reg_3_LC_11_29_4  (
            .in0(N__6082),
            .in1(N__5672),
            .in2(_gnd_net_),
            .in3(N__4309),
            .lcout(data_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5962),
            .ce(),
            .sr(N__5813));
    defparam \uart1.data_reg_5_LC_11_29_5 .C_ON=1'b0;
    defparam \uart1.data_reg_5_LC_11_29_5 .SEQ_MODE=4'b1000;
    defparam \uart1.data_reg_5_LC_11_29_5 .LUT_INIT=16'b1110111001000100;
    LogicCell40 \uart1.data_reg_5_LC_11_29_5  (
            .in0(N__4311),
            .in1(N__6259),
            .in2(_gnd_net_),
            .in3(N__5804),
            .lcout(data_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5962),
            .ce(),
            .sr(N__5813));
    defparam \uart1.data_reg_2_LC_11_29_6 .C_ON=1'b0;
    defparam \uart1.data_reg_2_LC_11_29_6 .SEQ_MODE=4'b1000;
    defparam \uart1.data_reg_2_LC_11_29_6 .LUT_INIT=16'b1010101011001100;
    LogicCell40 \uart1.data_reg_2_LC_11_29_6  (
            .in0(N__6083),
            .in1(N__6182),
            .in2(_gnd_net_),
            .in3(N__4308),
            .lcout(data_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5962),
            .ce(),
            .sr(N__5813));
    defparam \uart1.data_reg_7_LC_11_29_7 .C_ON=1'b0;
    defparam \uart1.data_reg_7_LC_11_29_7 .SEQ_MODE=4'b1000;
    defparam \uart1.data_reg_7_LC_11_29_7 .LUT_INIT=16'b1101110110001000;
    LogicCell40 \uart1.data_reg_7_LC_11_29_7  (
            .in0(N__4313),
            .in1(N__5584),
            .in2(_gnd_net_),
            .in3(N__5787),
            .lcout(data_7),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5962),
            .ce(),
            .sr(N__5813));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_3_LC_12_22_2 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_3_LC_12_22_2 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_3_LC_12_22_2 .LUT_INIT=16'b1011001110000000;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_3_LC_12_22_2  (
            .in0(N__4927),
            .in1(N__4821),
            .in2(N__5034),
            .in3(N__4748),
            .lcout(\ppm_encoder1.CHOOSE_CHANNELZ0Z_3 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5973),
            .ce(N__5310),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_1_LC_12_22_3 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_1_LC_12_22_3 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_1_LC_12_22_3 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_1_LC_12_22_3  (
            .in0(_gnd_net_),
            .in1(N__5013),
            .in2(_gnd_net_),
            .in3(N__4925),
            .lcout(\ppm_encoder1.CHOOSE_CHANNELZ0Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5973),
            .ce(N__5310),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_2_LC_12_22_4 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_2_LC_12_22_4 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_2_LC_12_22_4 .LUT_INIT=16'b0010000001101100;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_2_LC_12_22_4  (
            .in0(N__4926),
            .in1(N__4820),
            .in2(N__5033),
            .in3(N__4747),
            .lcout(\ppm_encoder1.CHOOSE_CHANNELZ0Z_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5973),
            .ce(N__5310),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_0_LC_12_22_7 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_0_LC_12_22_7 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_0_LC_12_22_7 .LUT_INIT=16'b0000000001110111;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_0_LC_12_22_7  (
            .in0(N__4819),
            .in1(N__4746),
            .in2(_gnd_net_),
            .in3(N__4924),
            .lcout(\ppm_encoder1.CHOOSE_CHANNELZ0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5973),
            .ce(N__5310),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIPDR9_1_LC_12_23_1 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIPDR9_1_LC_12_23_1 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIPDR9_1_LC_12_23_1 .LUT_INIT=16'b0000000000110011;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_RNIPDR9_1_LC_12_23_1  (
            .in0(_gnd_net_),
            .in1(N__5003),
            .in2(_gnd_net_),
            .in3(N__4915),
            .lcout(\ppm_encoder1.N_146_1 ),
            .ltout(\ppm_encoder1.N_146_1_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIN2AA1_3_LC_12_23_2 .C_ON=1'b0;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIN2AA1_3_LC_12_23_2 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.CHOOSE_CHANNEL_RNIN2AA1_3_LC_12_23_2 .LUT_INIT=16'b0000000011110111;
    LogicCell40 \ppm_encoder1.CHOOSE_CHANNEL_RNIN2AA1_3_LC_12_23_2  (
            .in0(N__4805),
            .in1(N__4737),
            .in2(N__4709),
            .in3(N__4702),
            .lcout(\ppm_encoder1.N_31_i ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter_RNIK9FB1_10_LC_12_24_0 .C_ON=1'b0;
    defparam \ppm_encoder1.counter_RNIK9FB1_10_LC_12_24_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter_RNIK9FB1_10_LC_12_24_0 .LUT_INIT=16'b1000000000000000;
    LogicCell40 \ppm_encoder1.counter_RNIK9FB1_10_LC_12_24_0  (
            .in0(N__4676),
            .in1(N__5057),
            .in2(N__5201),
            .in3(N__4337),
            .lcout(\ppm_encoder1.PPM_STATE_0_sqmuxa_1 ),
            .ltout(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_57_c_RNI6HID2_LC_12_24_1 .C_ON=1'b0;
    defparam \ppm_encoder1.counter11_0_I_57_c_RNI6HID2_LC_12_24_1 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_57_c_RNI6HID2_LC_12_24_1 .LUT_INIT=16'b1111000011111100;
    LogicCell40 \ppm_encoder1.counter11_0_I_57_c_RNI6HID2_LC_12_24_1  (
            .in0(_gnd_net_),
            .in1(N__4643),
            .in2(N__4622),
            .in3(N__4534),
            .lcout(\ppm_encoder1.un1_PPM_STATE_0_sqmuxa_0_i ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter_RNIK97Q_5_LC_12_24_6 .C_ON=1'b0;
    defparam \ppm_encoder1.counter_RNIK97Q_5_LC_12_24_6 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter_RNIK97Q_5_LC_12_24_6 .LUT_INIT=16'b0000000001000000;
    LogicCell40 \ppm_encoder1.counter_RNIK97Q_5_LC_12_24_6  (
            .in0(N__4493),
            .in1(N__4466),
            .in2(N__5150),
            .in3(N__4397),
            .lcout(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_15 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_1_LC_12_25_1 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_1_LC_12_25_1 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_1_LC_12_25_1 .LUT_INIT=16'b1000100010101010;
    LogicCell40 \ppm_encoder1.pulses2count_1_LC_12_25_1  (
            .in0(N__5491),
            .in1(N__5468),
            .in2(_gnd_net_),
            .in3(N__5414),
            .lcout(\ppm_encoder1.pulses2countZ0Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5967),
            .ce(N__5312),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter11_0_I_1_c_RNO_LC_12_25_2 .C_ON=1'b0;
    defparam \ppm_encoder1.counter11_0_I_1_c_RNO_LC_12_25_2 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter11_0_I_1_c_RNO_LC_12_25_2 .LUT_INIT=16'b0111110110111110;
    LogicCell40 \ppm_encoder1.counter11_0_I_1_c_RNO_LC_12_25_2  (
            .in0(N__5324),
            .in1(N__5262),
            .in2(N__5450),
            .in3(N__5166),
            .lcout(\ppm_encoder1.counter11_0_I_1_c_RNOZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.pulses2count_0_LC_12_25_3 .C_ON=1'b0;
    defparam \ppm_encoder1.pulses2count_0_LC_12_25_3 .SEQ_MODE=4'b1000;
    defparam \ppm_encoder1.pulses2count_0_LC_12_25_3 .LUT_INIT=16'b1100110011111111;
    LogicCell40 \ppm_encoder1.pulses2count_0_LC_12_25_3  (
            .in0(_gnd_net_),
            .in1(N__5435),
            .in2(_gnd_net_),
            .in3(N__5413),
            .lcout(\ppm_encoder1.pulses2countZ0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5967),
            .ce(N__5312),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter_RNI44A4_18_LC_12_26_0 .C_ON=1'b0;
    defparam \ppm_encoder1.counter_RNI44A4_18_LC_12_26_0 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter_RNI44A4_18_LC_12_26_0 .LUT_INIT=16'b0000000000000100;
    LogicCell40 \ppm_encoder1.counter_RNI44A4_18_LC_12_26_0  (
            .in0(N__5283),
            .in1(N__5263),
            .in2(N__5246),
            .in3(N__5220),
            .lcout(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_14 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter_RNIRQ42_14_LC_12_26_4 .C_ON=1'b0;
    defparam \ppm_encoder1.counter_RNIRQ42_14_LC_12_26_4 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter_RNIRQ42_14_LC_12_26_4 .LUT_INIT=16'b0000000000110011;
    LogicCell40 \ppm_encoder1.counter_RNIRQ42_14_LC_12_26_4  (
            .in0(_gnd_net_),
            .in1(N__5187),
            .in2(_gnd_net_),
            .in3(N__5167),
            .lcout(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \ppm_encoder1.counter_RNIBI35_10_LC_12_26_6 .C_ON=1'b0;
    defparam \ppm_encoder1.counter_RNIBI35_10_LC_12_26_6 .SEQ_MODE=4'b0000;
    defparam \ppm_encoder1.counter_RNIBI35_10_LC_12_26_6 .LUT_INIT=16'b1000000000000000;
    LogicCell40 \ppm_encoder1.counter_RNIBI35_10_LC_12_26_6  (
            .in0(N__5136),
            .in1(N__5116),
            .in2(N__5099),
            .in3(N__5074),
            .lcout(\ppm_encoder1.PPM_STATE_0_sqmuxa_1_13 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.position_RNO_0_1_LC_12_27_1 .C_ON=1'b0;
    defparam \uart1.position_RNO_0_1_LC_12_27_1 .SEQ_MODE=4'b0000;
    defparam \uart1.position_RNO_0_1_LC_12_27_1 .LUT_INIT=16'b1100100111001100;
    LogicCell40 \uart1.position_RNO_0_1_LC_12_27_1  (
            .in0(N__5764),
            .in1(N__5632),
            .in2(N__5876),
            .in3(N__5599),
            .lcout(),
            .ltout(\uart1.position_RNO_0Z0Z_1_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.position_1_LC_12_27_2 .C_ON=1'b0;
    defparam \uart1.position_1_LC_12_27_2 .SEQ_MODE=4'b1000;
    defparam \uart1.position_1_LC_12_27_2 .LUT_INIT=16'b0101000001010000;
    LogicCell40 \uart1.position_1_LC_12_27_2  (
            .in0(N__5558),
            .in1(_gnd_net_),
            .in2(N__5048),
            .in3(_gnd_net_),
            .lcout(\uart1.positionZ1Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5963),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.position_2_LC_12_27_3 .C_ON=1'b0;
    defparam \uart1.position_2_LC_12_27_3 .SEQ_MODE=4'b1000;
    defparam \uart1.position_2_LC_12_27_3 .LUT_INIT=16'b0001000100100010;
    LogicCell40 \uart1.position_2_LC_12_27_3  (
            .in0(N__5614),
            .in1(N__5555),
            .in2(_gnd_net_),
            .in3(N__5621),
            .lcout(\uart1.positionZ0Z_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5963),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.position_RNI5N4Q3_1_LC_12_27_4 .C_ON=1'b0;
    defparam \uart1.position_RNI5N4Q3_1_LC_12_27_4 .SEQ_MODE=4'b0000;
    defparam \uart1.position_RNI5N4Q3_1_LC_12_27_4 .LUT_INIT=16'b0000000000100000;
    LogicCell40 \uart1.position_RNI5N4Q3_1_LC_12_27_4  (
            .in0(N__5598),
            .in1(N__5871),
            .in2(N__5633),
            .in3(N__5763),
            .lcout(\uart1.un1_position_c2 ),
            .ltout(\uart1.un1_position_c2_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.position_3_LC_12_27_5 .C_ON=1'b0;
    defparam \uart1.position_3_LC_12_27_5 .SEQ_MODE=4'b1000;
    defparam \uart1.position_3_LC_12_27_5 .LUT_INIT=16'b0000000001101100;
    LogicCell40 \uart1.position_3_LC_12_27_5  (
            .in0(N__5615),
            .in1(N__5518),
            .in2(N__5606),
            .in3(N__5556),
            .lcout(\uart1.positionZ0Z_3 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5963),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.position_0_LC_12_27_6 .C_ON=1'b0;
    defparam \uart1.position_0_LC_12_27_6 .SEQ_MODE=4'b1000;
    defparam \uart1.position_0_LC_12_27_6 .LUT_INIT=16'b0101000001000001;
    LogicCell40 \uart1.position_0_LC_12_27_6  (
            .in0(N__5557),
            .in1(N__5875),
            .in2(N__5603),
            .in3(N__5765),
            .lcout(\uart1.positionZ1Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5963),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_14_1_0__N_9_i_N_2L1_LC_12_28_1 .C_ON=1'b0;
    defparam \uart1.state_bus_14_1_0__N_9_i_N_2L1_LC_12_28_1 .SEQ_MODE=4'b0000;
    defparam \uart1.state_bus_14_1_0__N_9_i_N_2L1_LC_12_28_1 .LUT_INIT=16'b0100101101001111;
    LogicCell40 \uart1.state_bus_14_1_0__N_9_i_N_2L1_LC_12_28_1  (
            .in0(N__5868),
            .in1(N__5708),
            .in2(N__5771),
            .in3(N__5517),
            .lcout(),
            .ltout(\uart1.N_9_i_N_2L1_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_0_LC_12_28_2 .C_ON=1'b0;
    defparam \uart1.state_bus_0_LC_12_28_2 .SEQ_MODE=4'b1000;
    defparam \uart1.state_bus_0_LC_12_28_2 .LUT_INIT=16'b0001111100001010;
    LogicCell40 \uart1.state_bus_0_LC_12_28_2  (
            .in0(N__5709),
            .in1(N__5588),
            .in2(N__5561),
            .in3(N__5830),
            .lcout(\uart1.state_busZ0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5961),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_RNIR5T6_0_1_LC_12_28_3 .C_ON=1'b0;
    defparam \uart1.state_bus_RNIR5T6_0_1_LC_12_28_3 .SEQ_MODE=4'b0000;
    defparam \uart1.state_bus_RNIR5T6_0_1_LC_12_28_3 .LUT_INIT=16'b0000000000110011;
    LogicCell40 \uart1.state_bus_RNIR5T6_0_1_LC_12_28_3  (
            .in0(_gnd_net_),
            .in1(N__5707),
            .in2(_gnd_net_),
            .in3(N__5758),
            .lcout(\uart1.data_rdy_reg13_0 ),
            .ltout(\uart1.data_rdy_reg13_0_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_RNIR5T6_1_1_LC_12_28_4 .C_ON=1'b0;
    defparam \uart1.state_bus_RNIR5T6_1_1_LC_12_28_4 .SEQ_MODE=4'b0000;
    defparam \uart1.state_bus_RNIR5T6_1_1_LC_12_28_4 .LUT_INIT=16'b0000111100001111;
    LogicCell40 \uart1.state_bus_RNIR5T6_1_1_LC_12_28_4  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__5543),
            .in3(_gnd_net_),
            .lcout(\uart1.data_rdy_reg13_i_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.flag_reg_RNO_0_LC_12_28_5 .C_ON=1'b0;
    defparam \uart1.flag_reg_RNO_0_LC_12_28_5 .SEQ_MODE=4'b0000;
    defparam \uart1.flag_reg_RNO_0_LC_12_28_5 .LUT_INIT=16'b0000000000110011;
    LogicCell40 \uart1.flag_reg_RNO_0_LC_12_28_5  (
            .in0(_gnd_net_),
            .in1(N__5516),
            .in2(_gnd_net_),
            .in3(N__5759),
            .lcout(),
            .ltout(\uart1.flag_reg_0_sqmuxa_0_a2_0_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.flag_reg_LC_12_28_6 .C_ON=1'b0;
    defparam \uart1.flag_reg_LC_12_28_6 .SEQ_MODE=4'b1000;
    defparam \uart1.flag_reg_LC_12_28_6 .LUT_INIT=16'b1100110001101100;
    LogicCell40 \uart1.flag_reg_LC_12_28_6  (
            .in0(N__5710),
            .in1(N__5887),
            .in2(N__5894),
            .in3(N__5869),
            .lcout(data_debug_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5961),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_1_LC_12_28_7 .C_ON=1'b0;
    defparam \uart1.state_bus_1_LC_12_28_7 .SEQ_MODE=4'b1000;
    defparam \uart1.state_bus_1_LC_12_28_7 .LUT_INIT=16'b1000101011001111;
    LogicCell40 \uart1.state_bus_1_LC_12_28_7  (
            .in0(N__5870),
            .in1(N__5711),
            .in2(N__5834),
            .in3(N__5760),
            .lcout(\uart1.state_busZ0Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5961),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.state_bus_RNIR5T6_1_LC_12_29_0 .C_ON=1'b0;
    defparam \uart1.state_bus_RNIR5T6_1_LC_12_29_0 .SEQ_MODE=4'b0000;
    defparam \uart1.state_bus_RNIR5T6_1_LC_12_29_0 .LUT_INIT=16'b0000000000110011;
    LogicCell40 \uart1.state_bus_RNIR5T6_1_LC_12_29_0  (
            .in0(_gnd_net_),
            .in1(N__5712),
            .in2(_gnd_net_),
            .in3(N__5761),
            .lcout(\uart1.un1_state_bus_0_a2_iso ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \KeyPress1.source_data_reg_cnst_0_0_45_i_i_x2_LC_12_29_1 .C_ON=1'b0;
    defparam \KeyPress1.source_data_reg_cnst_0_0_45_i_i_x2_LC_12_29_1 .SEQ_MODE=4'b0000;
    defparam \KeyPress1.source_data_reg_cnst_0_0_45_i_i_x2_LC_12_29_1 .LUT_INIT=16'b0101101001011010;
    LogicCell40 \KeyPress1.source_data_reg_cnst_0_0_45_i_i_x2_LC_12_29_1  (
            .in0(N__5651),
            .in1(_gnd_net_),
            .in2(N__6187),
            .in3(_gnd_net_),
            .lcout(\KeyPress1.N_11_i ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \KeyPress1.source_data_ready_reg_4_i_0_o3_0_LC_12_29_2 .C_ON=1'b0;
    defparam \KeyPress1.source_data_ready_reg_4_i_0_o3_0_LC_12_29_2 .SEQ_MODE=4'b0000;
    defparam \KeyPress1.source_data_ready_reg_4_i_0_o3_0_LC_12_29_2 .LUT_INIT=16'b0000000110000000;
    LogicCell40 \KeyPress1.source_data_ready_reg_4_i_0_o3_0_LC_12_29_2  (
            .in0(N__5670),
            .in1(N__6078),
            .in2(N__6242),
            .in3(N__6257),
            .lcout(\KeyPress1.N_44 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \KeyPress1.source_data_reg_RNO_0_2_LC_12_29_3 .C_ON=1'b0;
    defparam \KeyPress1.source_data_reg_RNO_0_2_LC_12_29_3 .SEQ_MODE=4'b0000;
    defparam \KeyPress1.source_data_reg_RNO_0_2_LC_12_29_3 .LUT_INIT=16'b0000000011011101;
    LogicCell40 \KeyPress1.source_data_reg_RNO_0_2_LC_12_29_3  (
            .in0(N__5652),
            .in1(N__6240),
            .in2(_gnd_net_),
            .in3(N__6080),
            .lcout(\KeyPress1.N_54 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \KeyPress1.source_data_ready_reg_4_i_0_a3_2_1_LC_12_29_4 .C_ON=1'b0;
    defparam \KeyPress1.source_data_ready_reg_4_i_0_a3_2_1_LC_12_29_4 .SEQ_MODE=4'b0000;
    defparam \KeyPress1.source_data_ready_reg_4_i_0_a3_2_1_LC_12_29_4 .LUT_INIT=16'b0000000010000000;
    LogicCell40 \KeyPress1.source_data_ready_reg_4_i_0_a3_2_1_LC_12_29_4  (
            .in0(N__5678),
            .in1(N__5802),
            .in2(N__6053),
            .in3(N__5789),
            .lcout(\KeyPress1.source_data_ready_reg_4_i_0_a3_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \uart1.data_rdy_reg_LC_12_29_5 .C_ON=1'b0;
    defparam \uart1.data_rdy_reg_LC_12_29_5 .SEQ_MODE=4'b1000;
    defparam \uart1.data_rdy_reg_LC_12_29_5 .LUT_INIT=16'b1010101000000000;
    LogicCell40 \uart1.data_rdy_reg_LC_12_29_5  (
            .in0(N__5762),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__5716),
            .lcout(data_rdy),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5960),
            .ce(),
            .sr(_gnd_net_));
    defparam \KeyPress1.source_data_ready_reg_4_i_0_o3_LC_12_29_6 .C_ON=1'b0;
    defparam \KeyPress1.source_data_ready_reg_4_i_0_o3_LC_12_29_6 .SEQ_MODE=4'b0000;
    defparam \KeyPress1.source_data_ready_reg_4_i_0_o3_LC_12_29_6 .LUT_INIT=16'b1010101000010001;
    LogicCell40 \KeyPress1.source_data_ready_reg_4_i_0_o3_LC_12_29_6  (
            .in0(N__5669),
            .in1(N__6178),
            .in2(_gnd_net_),
            .in3(N__5650),
            .lcout(),
            .ltout(\KeyPress1.N_42_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \KeyPress1.source_data_ready_reg_4_i_0_a3_0_LC_12_29_7 .C_ON=1'b0;
    defparam \KeyPress1.source_data_ready_reg_4_i_0_a3_0_LC_12_29_7 .SEQ_MODE=4'b0000;
    defparam \KeyPress1.source_data_ready_reg_4_i_0_a3_0_LC_12_29_7 .LUT_INIT=16'b0000000010000000;
    LogicCell40 \KeyPress1.source_data_ready_reg_4_i_0_a3_0_LC_12_29_7  (
            .in0(N__6258),
            .in1(N__6236),
            .in2(N__6221),
            .in3(N__6079),
            .lcout(\KeyPress1.N_62 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \KeyPress1.source_data_reg_2_LC_12_30_0 .C_ON=1'b0;
    defparam \KeyPress1.source_data_reg_2_LC_12_30_0 .SEQ_MODE=4'b1000;
    defparam \KeyPress1.source_data_reg_2_LC_12_30_0 .LUT_INIT=16'b0100000011001000;
    LogicCell40 \KeyPress1.source_data_reg_2_LC_12_30_0  (
            .in0(N__6014),
            .in1(N__6048),
            .in2(N__6208),
            .in3(N__6218),
            .lcout(source_data_c_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5959),
            .ce(),
            .sr(_gnd_net_));
    defparam \KeyPress1.source_data_ready_reg_4_i_0_a3_LC_12_30_2 .C_ON=1'b0;
    defparam \KeyPress1.source_data_ready_reg_4_i_0_a3_LC_12_30_2 .SEQ_MODE=4'b0000;
    defparam \KeyPress1.source_data_ready_reg_4_i_0_a3_LC_12_30_2 .LUT_INIT=16'b1111000010000000;
    LogicCell40 \KeyPress1.source_data_ready_reg_4_i_0_a3_LC_12_30_2  (
            .in0(N__6093),
            .in1(N__6139),
            .in2(N__6130),
            .in3(N__6115),
            .lcout(\KeyPress1.N_43_0 ),
            .ltout(\KeyPress1.N_43_0_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \KeyPress1.source_data_reg_0_LC_12_30_3 .C_ON=1'b0;
    defparam \KeyPress1.source_data_reg_0_LC_12_30_3 .SEQ_MODE=4'b1000;
    defparam \KeyPress1.source_data_reg_0_LC_12_30_3 .LUT_INIT=16'b1010100000001000;
    LogicCell40 \KeyPress1.source_data_reg_0_LC_12_30_3  (
            .in0(N__6046),
            .in1(N__6151),
            .in2(N__6191),
            .in3(N__6186),
            .lcout(source_data_c_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5959),
            .ce(),
            .sr(_gnd_net_));
    defparam \KeyPress1.source_data_ready_reg_LC_12_30_4 .C_ON=1'b0;
    defparam \KeyPress1.source_data_ready_reg_LC_12_30_4 .SEQ_MODE=4'b1000;
    defparam \KeyPress1.source_data_ready_reg_LC_12_30_4 .LUT_INIT=16'b1111000010000000;
    LogicCell40 \KeyPress1.source_data_ready_reg_LC_12_30_4  (
            .in0(N__6095),
            .in1(N__6140),
            .in2(N__6131),
            .in3(N__6116),
            .lcout(source_data_rdy_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5959),
            .ce(),
            .sr(_gnd_net_));
    defparam \KeyPress1.source_data_reg_RNO_0_1_LC_12_30_6 .C_ON=1'b0;
    defparam \KeyPress1.source_data_reg_RNO_0_1_LC_12_30_6 .SEQ_MODE=4'b0000;
    defparam \KeyPress1.source_data_reg_RNO_0_1_LC_12_30_6 .LUT_INIT=16'b1111111101110111;
    LogicCell40 \KeyPress1.source_data_reg_RNO_0_1_LC_12_30_6  (
            .in0(N__6094),
            .in1(N__6049),
            .in2(_gnd_net_),
            .in3(N__6081),
            .lcout(),
            .ltout(\KeyPress1.N_15_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \KeyPress1.source_data_reg_1_LC_12_30_7 .C_ON=1'b0;
    defparam \KeyPress1.source_data_reg_1_LC_12_30_7 .SEQ_MODE=4'b1000;
    defparam \KeyPress1.source_data_reg_1_LC_12_30_7 .LUT_INIT=16'b0000111110001101;
    LogicCell40 \KeyPress1.source_data_reg_1_LC_12_30_7  (
            .in0(N__6047),
            .in1(N__5998),
            .in2(N__6017),
            .in3(N__6013),
            .lcout(source_data_c_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5959),
            .ce(),
            .sr(_gnd_net_));
endmodule // drones_kids
