package fpga_robotics.video.input

import org.scalatest.funsuite.AnyFunSuite
import spinal.core.ClockDomain
import spinal.core.sim._

class OV7670Test extends AnyFunSuite {
  val compiled: SimCompiled[OV7670] = SimConfig.withWave.compile(OV7670(ClockDomain.external("pclk")))

  test("test read data") {
    compiled.doSim { dut =>
      dut.clockDomain.forkStimulus(10)
      dut.captureClk.forkStimulus(40)
      dut.io.camif.vsync #= false
      dut.io.camif.href #= false

      dut.captureClk.waitSampling(8)

      val readThread = fork {
        for (i <- 0 until 4) { //frames
          dut.clockDomain.waitSamplingWhere(dut.io.startOfFrame.toBoolean)
          for (j <- 0 until 2) { //rows
            for (k <- 0 until 16) { //data
              dut.clockDomain.waitSamplingWhere(dut.io.read.valid.toBoolean)
              assert(dut.io.read.payload.toInt == k)
            }
          }
          dut.clockDomain.waitSamplingWhere(dut.io.endOfFrame.toBoolean)
        }
      }

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

      readThread.join()
    }
  }
}
