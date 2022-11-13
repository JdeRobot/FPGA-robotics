package fpga_robotics.video.proc

import fpga_robotics.video.input.{CamIF, OV7670}
import spinal.core._
import spinal.lib._

case class OV7670Stats(captureClk: ClockDomain) extends Component {
  val io = new Bundle {
    val camif: CamIF = slave(CamIF())
    val frame_counter: UInt = out UInt(32 bits)
    val frame_size: UInt = out UInt(32 bits)
  }

  val ov7670 = OV7670(captureClk)

  val frame_counter = Counter(32 bit)
  val frame_size_counter = Counter(32 bit)
  val frame_size = Reg(io.frame_size) init(0)

  when(ov7670.io.startOfFrame.rise()) {
    frame_counter.increment()
    frame_size_counter.clear()
  }

  when(ov7670.io.endOfFrame.rise()) {
    frame_size := frame_size_counter.value
  }

  when(ov7670.io.read.fire) {
    frame_size_counter.increment()
  }

  io.camif <> ov7670.io.camif
  io.frame_counter := frame_counter.value
  io.frame_size := frame_size
}

object OV7670Stats {
  def main(args: Array[String]): Unit = {
    val outRtlDir = if (!args.isEmpty) args(0) else  "gateware/main/verilog/video/proc"
    SpinalConfig(
      targetDirectory = outRtlDir,
      defaultClockDomainFrequency = FixedFrequency(100 MHz)
    ).generateVerilog(OV7670Stats(ClockDomain.external("pclk"))).printPruned()
  }
}