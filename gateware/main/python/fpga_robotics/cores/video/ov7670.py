import math
import os

from litex.build.generic_platform import GenericPlatform, Pins, Subsignal
from litex.soc.interconnect import stream
from litex.soc.interconnect.csr import AutoCSR, CSRStorage, CSRStatus
from litex.soc.interconnect.stream import Endpoint
from migen import *
from migen.genlib.cdc import MultiReg
from migen.genlib.resetsync import AsyncResetSynchronizer

# max resolution is 640*480
hbits = 10
vbits = 10

class OV7670Capture(Module):
    def __init__(self, pads, clock_domain="sys"):
        self.vsync = Signal()
        self.href = Signal()
        self.data = Signal(8)

        self.specials += [
            MultiReg(pads.vsync, self.vsync, clock_domain, 3),
            MultiReg(pads.href, self.href, clock_domain, 3),
            MultiReg(pads.data, self.data, clock_domain, 3),
        ]

        # self.source = source = Endpoint([("vsync", 1), ("href", 1), ("data", 8)])
        #
        # row_count = Signal(vbits)
        #
        # # frame edge detection
        # vsync_d = Signal()
        # vsync_rise = Signal()
        # self.sync += vsync_d.eq(pads.vsync)
        # self.comb += vsync_rise.eq(pads.vsync & ~vsync_d)
        #
        # # row edge detection
        # href_d = Signal()
        # href_rise = Signal()
        # self.sync += href_d.eq(pads.href)
        # self.comb += href_rise.eq(pads.href & ~href_d)
        #
        # self.submodules.fsm = fsm = ResetInserter()(FSM(reset_state="IDLE"))
        # fsm.act("IDLE",
        #         source.valid.eq(0),
        #         NextValue(row_count, 0),
        #         If(pads.vsync, NextState("CAPTURE"))
        # )
        # fsm.act("CAPTURE",
        #         source.valid.eq(pads.href),
        #         source.data.eq(pads.data),
        #         If(vsync_rise, NextState("IDLE")),
        #         If(href_rise, NextValue(row_count, row_count + 1))
        # )
        # self.comb += source.first.eq(row_count == 1)

# class OV7670CRG(Module):
#     def __init__(self, pads, clock_domain="sys"):
        #self.clock_domains.cd_pixel = ClockDomain()
        # self.comb += self.cd_pixel.clk.eq(pads.pclk)
        # self.specials += AsyncResetSynchronizer(self.cd_pixel, ResetSignal(clock_domain))

class OV7670FrameCounter(Module):
    def __init__(self):
        self.vsync = Signal()
        self.counter = Signal(32)

        self.sync += If(self.vsync, self.counter.eq(self.counter + 1))



class OV7670(Module, AutoCSR):
    def __init__(self, pads, clock_domain="sys"):
        self.vsync = Signal()
        self.href = Signal()
        self.data = Signal(8)

        self.specials += [
            MultiReg(pads.vsync, self.vsync, clock_domain, 3),
            MultiReg(pads.href, self.href, clock_domain, 3),
            MultiReg(pads.data, self.data, clock_domain, 3),
        ]

        self.submodules.frame_counter = frame_counter = ClockDomainsRenamer(clock_domain)(OV7670FrameCounter())
        self.comb += frame_counter.vsync.eq(self.vsync)

        self._frame_counter = CSRStatus(32)
        self.specials += MultiReg(frame_counter.counter, self._frame_counter.status)

        #self.submodules.capture = capture = OV7670Capture(pads, clock_domain)




        #self.submodules.crg = OV7670CRG(pads, clock_domain)

        # Capture
        # self.submodules.capture = capture = ClockDomainsRenamer("pixel")(OV7670Capture(pads))
        # self.submodules.cdc = cdc = stream.ClockDomainCrossing(
        #     layout=[("data", 8)],
        #     cd_from="pixel",
        #     cd_to=clock_domain
        # )
        #
        # self.comb += capture.source.connect(cdc.sink)
        #
        # self.source = cdc.source


# Video Timings ------------------------------------------------------------------------------------

class OV7670Emulator(Module):
    def __init__(self):
        self.pads = pads = Record([
            ("pclk", 1),
            ("vsync", 1),
            ("href", 1),
            ("data", 4),
        ])

        # self.enable = enable = Signal()
        # self.hres = hres = Signal(hbits)
        # self.hsync_start = hsync_start = Signal(hbits)
        # self.hsync_end = hsync_end = Signal(hbits)
        # self.hscan = hscan = Signal(hbits)
        #
        # self.vres = vres = Signal(vbits)
        # self.vsync_start = vsync_start = Signal(vbits)
        # self.vsync_end = vsync_end = Signal(vbits)
        # self.vscan = vscan = Signal(vbits)
        #
        # # Generate timings.
        # hactive = Signal()
        # vactive = Signal()
        # fsm = FSM(reset_state="IDLE")
        # fsm = ResetInserter()(fsm)
        # self.submodules.fsm = fsm
        # self.comb += fsm.reset.eq(~enable)
        # fsm.act("IDLE",
        #         NextValue(hactive, 0),
        #         NextValue(vactive, 0),
        #         NextValue(source.hres, hres),
        #         NextValue(source.vres, vres),
        #         NextValue(source.hcount, 0),
        #         NextValue(source.vcount, 0),
        #         NextState("RUN")
        #         )
        # self.comb += source.de.eq(hactive & vactive)  # DE when both HActive and VActive.
        # self.sync += source.first.eq((source.hcount == 0) & (source.vcount == 0)),
        # self.sync += source.last.eq((source.hcount == hscan) & (source.vcount == vscan)),
        # fsm.act("RUN",
        #         source.valid.eq(1),
        #         If(source.ready,
        #            # Increment HCount.
        #            NextValue(source.hcount, source.hcount + 1),
        #            # Generate HActive / HSync.
        #            If(source.hcount == 0, NextValue(hactive, 1)),  # Start of HActive.
        #            If(source.hcount == hres, NextValue(hactive, 0)),  # End of HActive.
        #            If(source.hcount == hsync_start, NextValue(source.hsync, 1)),
        #            If(source.hcount == hsync_end, NextValue(source.hsync, 0)),  # End of HSync.
        #            If(source.hcount == hscan, NextValue(source.hcount, 0)),  # End of HScan.
        #
        #            If(source.hcount == hsync_start,
        #               # Increment VCount.
        #               NextValue(source.vcount, source.vcount + 1),
        #               # Generate VActive / VSync.
        #               If(source.vcount == 0, NextValue(vactive, 1)),  # Start of VActive.
        #               If(source.vcount == vres, NextValue(vactive, 0)),  # End of VActive.
        #               If(source.vcount == vsync_start, NextValue(source.vsync, 1)),
        #               If(source.vcount == vsync_end, NextValue(source.vsync, 0)),  # End of VSync.
        #               If(source.vcount == vscan, NextValue(source.vcount, 0))  # End of VScan.
        #               )
        #            )
        #         )

        self.comb += pads.pclk.eq(ClockSignal())
