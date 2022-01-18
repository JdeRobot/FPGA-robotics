package jderobot

import org.scalatest.funsuite.AnyFunSuite
import spinal.core.sim._
import spinal.lib.graphic.RgbConfig

class PixelReaderTest extends AnyFunSuite {
  val compiled: SimCompiled[PixelReader] = SimConfig.withWave.compile(PixelReader(RgbConfig(8, 8, 8)))

  test("addr increments when consuming pixels") {
    compiled.doSim{ dut =>
      dut.clockDomain.forkStimulus(10)

      dut.io.pixel_out.ready #= true

      dut.clockDomain.waitSampling(10)
    }
  }
}
