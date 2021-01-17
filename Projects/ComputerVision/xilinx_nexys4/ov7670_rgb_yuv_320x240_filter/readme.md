SW1:
  0: RGB444
  1: YUV422

SW2:
  0: Normal video
  1: 8-color test bar

SW3:
  0: Normal
  1: swap Red-Blue (it works)

SW5:
  0: No red filter
  1: Red filter

SW6:
  0: No green filter
  1: Green filter

SW7:
  0: No blue filter
  1: Blue filter

SW15:
  1: Reset

---

 * ov7670_ctrl_reg_linux.vhd: similar to ov7670_ctrl_reg.vhd but using ov7670 registers from linux driver: https://github.com/yandex/smart/blob/master/drivers/media/i2c/ov7670.c

It works better at night, but in daylight it seems that is better the older one:

Left: old
Right: linux

![old_linux.jpg](old_linux.jpg)

---
[Nexys4 DDR configuration file using old registers for ov7670 camera](top_ov7670_nexys4ddr_oldregs.bit)

[Nexys4 DDR configuration file using linux registers for ov7670 camera](top_ov7670_nexys4ddr_linuxregs.bit)


