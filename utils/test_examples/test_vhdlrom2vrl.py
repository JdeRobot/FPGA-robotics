import os
import sys

#exec(open("./test_vhdlrom2vrl.py").read())

filepath = os.getcwd()
sys.path.append(filepath +  "./../")
from vhdlrom2vrl import vhdlrom2vrl

vhdlrom2vrl(vhdlfilename = "ov7670_ctrl_reg.vhd",
             constant_name = "reg_rgb444",
             addr_name = "cnt_reg",
             outfilename = "reg_rgb444.v",
             dest_path = './',
             blocking = False,
             clk = True)

vhdlrom2vrl(vhdlfilename = "ov7670_ctrl_reg.vhd",
             constant_name = "reg_rgb444",
             addr_name = "cnt_reg",
             outfilename = "reg_rgb444_noclk.v",
             dest_path = './',
             blocking = True,
             clk = False)


vhdlrom2vrl(vhdlfilename = "rom_red_square_80x60_rgb_8b.vhd",
             constant_name = "filaimg",
             addr_name = "addr",
             outfilename = "rom_red_square_80x60_rgb_8b_noclk.v",
             dest_path = './',
             blocking = True,
             clk = False)

vhdlrom2vrl(vhdlfilename = "rom_red_square_80x60_rgb_9b.vhd",
             constant_name = "filaimg",
             addr_name = "addr",
             outfilename = "rom_red_square_80x60_rgb_9b.v",
             dest_path = './',
             blocking = False,
             clk = True)

vhdlrom2vrl(vhdlfilename = "ov7670_ctrl_reg.vhd",
             constant_name = "reg_rgb444",
             data_name = "dout",
             gen_module = False,
             addr_name = "cnt_reg",
             outfilename = "reg_rgb444_nomodule.v",
             dest_path = './',
             blocking = False,
             clk = True)

vhdlrom2vrl(vhdlfilename = "ov7670_ctrl_reg.vhd",
             constant_name = "reg_rgb444",
             data_name = "dout",
             gen_module = True,
             addr_name = "cnt_reg",
             outfilename = "reg_rgb444_wmodule.v",
             dest_path = './',
             blocking = False,
             clk = True)
