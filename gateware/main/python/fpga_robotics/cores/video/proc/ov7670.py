import os

from litex.soc.interconnect.csr import AutoCSR, CSRStatus
from migen import *
from migen.genlib.cdc import MultiReg


class OV7670Stats(Module, AutoCSR):
    def __init__(self, platform, pads, clock_domain="sys", capture_clock_domain="pclk"):
        self.pclk = Signal()
        self.vsync = Signal()
        self.href = Signal()
        self.data = Signal(8)

        self._frame_counter = CSRStatus(32, description="Frame counter")
        self._frame_size = CSRStatus(32, description="Frame size")
        frame_counter = Signal(32)
        frame_size = Signal(32)
        self.specials += [
            MultiReg(frame_counter, self._frame_counter.status),
            MultiReg(frame_size, self._frame_size.status),
        ]

        self.ov7670_stats_params = dict(
            i_rst=ResetSignal(clock_domain),
            i_clk=ClockSignal(clock_domain),
            i_pclk_clk=ClockSignal(capture_clock_domain),
            i_pclk_reset=ResetSignal(capture_clock_domain),
            i_io_camif_vsync=self.vsync,
            i_io_camif_href=self.href,
            i_io_camif_data=self.data,
            o_io_frame_counter=frame_counter,
            o_io_frame_size=frame_size
        )

        self.add_sources(platform)

    @staticmethod
    def add_sources(platform):
        vdir = "gateware/rtl/jt51"
        platform.add_source_dir(os.path.join(vdir, "hdl"), recursive=False)
        platform.add_verilog_include_path(os.path.join(vdir, "hdl"))

    def do_finalize(self):
        self.specials += Instance("OV7670Stats", **self.ov7670_stats_params)
