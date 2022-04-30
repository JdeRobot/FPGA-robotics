import os
import sys

# exec(open("./regs2vrlg.py").read())

filepath = os.getcwd()
sys.path.append(filepath +  "./../../../../../utils/")
from vhdlrom2vrl import vhdlrom2vrl

vhdlrom2vrl  (vhdlfilename = "./../../ov7670_rgb_yuv_320x240_filter/vhd/ov7670_ctrl_reg_linux.vhd",
             constant_name = "reg_rgb444",
             addr_name = "cnt_reg",
             outfilename = "linux_regs.v",
             dest_path = './',
             blocking = True,
             clk = False)
