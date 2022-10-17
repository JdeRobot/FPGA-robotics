package fpga_robotics.video.input

import org.scalatest.funsuite.AnyFunSuite
import spinal.core.sim._

class CamCaptureTest extends AnyFunSuite {
  val compiled: SimCompiled[CamCapture] = SimConfig.withWave.compile(CamCapture())

  test("test read data") {
    compiled.doSim{ dut =>
      dut.clockDomain.forkStimulus(10)

      dut.io.camif.vsync #= false
      dut.io.camif.href #= false

      dut.clockDomain.waitSampling()

      dut.io.camif.vsync #= true
      dut.clockDomain.waitSampling()

      for(i <- 0 until 4) { //frames
        dut.io.camif.vsync #= false
        dut.clockDomain.waitSampling()
        assert(dut.io.startOfFrame.toBoolean)

        for(j <- 0 until 2) { //rows
          dut.io.camif.href #= true
          val readThread = fork {
            for (k <- 0 until 16) { //data
              dut.clockDomain.waitSamplingWhere(dut.io.read.valid.toBoolean)
              assert(dut.io.read.payload.toInt == k)
            }
          }
          for(k <- 0 until 16) { //data
            dut.io.camif.data #= k
            dut.clockDomain.waitSampling()
          }
          dut.io.camif.href #= false
          dut.clockDomain.waitSampling()
          readThread.join()
        }

        dut.io.camif.vsync #= true
        dut.clockDomain.waitSampling()
        assert(dut.io.endOfFrame.toBoolean)
      }

      dut.io.camif.vsync #= false
      dut.clockDomain.waitSampling()
    }
  }
}
