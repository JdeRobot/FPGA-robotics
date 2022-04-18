Get litex:

https://github.com/enjoy-digital/litex#quick-start-guide

Build sim:

```
$> ./sim.py 
....
....
        __   _ __      _  __
       / /  (_) /____ | |/_/
      / /__/ / __/ -_)>  <
     /____/_/\__/\__/_/|_|
   Build your hardware, easily!

 (c) Copyright 2012-2022 Enjoy-Digital
 (c) Copyright 2007-2015 M-Labs

 BIOS built on Apr 18 2022 18:55:09
 BIOS CRC passed (3989ae1b)

 Migen git sha1: ac70301
 LiteX git sha1: dd7a04a5

--=============== SoC ==================--
CPU:		VexRiscv @ 1MHz
BUS:		WISHBONE 32-bit @ 4GiB
CSR:		32-bit data
ROM:		128KiB
SRAM:		8KiB


--============== Boot ==================--
Booting from serial...
Press Q or ESC to abort boot completely.
sL5DdSMmkekro
Timeout
No boot medium found

--============= Console ================--

litex>
```


Build and load for ULX3S 85F:
```
$> ./radiona_ulx3s.py --device LFE5U-85F --build
$> openFPGALoader -b ulx3s build/radiona_ulx3s/gateware/radiona_ulx3s.bit
``` 

Open serial terminal with screen:
```
$> screen /dev/ttyUSB0 115200
(hit enter)
litex> 
litex> 
litex> reboot
        __   _ __      _  __
       / /  (_) /____ | |/_/
      / /__/ / __/ -_)>  <
     /____/_/\__/\__/_/|_|
   Build your hardware, easily!

 (c) Copyright 2012-2022 Enjoy-Digital
 (c) Copyright 2007-2015 M-Labs

 BIOS built on Apr 18 2022 18:46:46
 BIOS CRC passed (6edd9776)

 Migen git sha1: ac70301
 LiteX git sha1: dd7a04a5

--=============== SoC ==================--
CPU:            VexRiscv @ 50MHz
BUS:            WISHBONE 32-bit @ 4GiB
CSR:            32-bit data
ROM:            128KiB
SRAM:           8KiB
L2:             8KiB
SDRAM:          32768KiB 16-bit @ 50MT/s (CL-2 CWL-2)

--========== Initialization ============--
Initializing SDRAM @0x40000000...
Switching SDRAM to software control.
Switching SDRAM to hardware control.
Memtest at 0x40000000 (2.0MiB)...
  Write: 0x40000000-0x40200000 2.0MiB     
   Read: 0x40000000-0x40200000 2.0MiB     
Memtest OK
Memspeed at 0x40000000 (Sequential, 2.0MiB)...
  Write speed: 15.6MiB/s
   Read speed: 22.1MiB/s

--============== Boot ==================--
Booting from serial...
Press Q or ESC to abort boot completely.
sL5DdSMmkekro
             Timeout
No boot medium found

--============= Console ================--

```
(kill window with Ctrl+a k)

Check usb serial device. For instance on linux dmesg would show something like:
```
[1234621.768202] ftdi_sio 1-4.4.1:1.0: FTDI USB Serial Device converter detected
[1234621.768346] usb 1-4.4.1: Detected FT-X
[1234621.769181] usb 1-4.4.1: FTDI USB Serial Device converter now attached to ttyUSB0
```

