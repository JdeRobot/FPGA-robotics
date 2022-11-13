import unittest

from litex.gen.sim import run_simulation,passive

from fpga_robotics.cores.video.ov7670 import OV7670Capture


class TestOV7670Capture(unittest.TestCase):
    def test_ov7670_capture(self):
        data = []

        @passive
        def consumer_generator(dut):
            while True:
                if (yield dut.source.valid):
                    data.append((yield dut.source.data))
                yield
        def generator(dut, nframes, nrows, row_data):
            yield dut.vsync.eq(0)
            yield dut.href.eq(0)
            yield dut.data.eq(0)
            yield

            for f in range(nframes):
                yield dut.vsync.eq(1)
                yield
                yield dut.vsync.eq(1)
                yield
                yield dut.vsync.eq(1)
                yield
                yield dut.vsync.eq(0)
                yield
                for r in range(nrows):
                    for d in row_data:
                        yield dut.data.eq(d)
                        yield dut.href.eq(1)
                        yield
                    yield dut.href.eq(0)
                    yield
            yield dut.vsync.eq(1)
            yield

            # check data
            self.assertEqual(len(data), nframes * nrows * len(row_data))
            self.assertEqual(data, nframes * nrows * row_data)


        row_data = [0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff]
        dut = OV7670Capture()

        generators = {
            "sys": [
                generator(dut, 2, 8, row_data),
                consumer_generator(dut)
            ]
        }

        run_simulation(dut, generators, vcd_name="sim.vcd")
