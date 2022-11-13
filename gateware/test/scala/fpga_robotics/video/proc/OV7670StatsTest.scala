package fpga_robotics.video.proc

import org.scalatest.funsuite.AnyFunSuite
import spinal.core.ClockDomain
import spinal.core.sim._

class OV7670StatsTest extends AnyFunSuite {
  val compiled: SimCompiled[OV7670Stats] = SimConfig.withWave.compile(OV7670Stats(ClockDomain.external("pclk")))

  test("test stats") {
    compiled.doSim { dut =>
      dut.clockDomain.forkStimulus(10)
      dut.captureClk.forkStimulus(40)
      dut.io.camif.vsync #= false
      dut.io.camif.href #= false

      dut.captureClk.waitSampling(8)

      dut.io.camif.vsync #= true
      dut.captureClk.waitSampling()

      for (i <- 0 until 4) { //frames
        dut.io.camif.vsync #= false
        dut.captureClk.waitSampling()

        for (j <- 0 until 2) { //rows
          dut.io.camif.href #= true
          for (k <- 0 until 16) { //data
            dut.io.camif.data #= k
            dut.captureClk.waitSampling()
          }
          dut.io.camif.href #= false
          dut.captureClk.waitSampling()
        }

        dut.io.camif.vsync #= true
        dut.captureClk.waitSampling()
      }

      dut.io.camif.vsync #= false
      dut.captureClk.waitSampling()
    }
  }
}
