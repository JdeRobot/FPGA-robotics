package fpga_robotics.video.input

import spinal.core._
import spinal.lib._

case class OV7670(captureClk: ClockDomain) extends Component {
  val io = new Bundle {
    val camif: CamIF = slave(CamIF())
    val read = master(Flow(camif.data))
    val startOfFrame = out Bool()
    val endOfFrame = out Bool()
  }

  var captureClockingArea = new ClockingArea(captureClk) {
    val capture = CamCapture()
    val startOfFrame = RegNext(capture.io.startOfFrame) init(False)
    val endOfFrameReg = RegNext(capture.io.endOfFrame) init(False)
  }

  io.camif <> captureClockingArea.capture.io.camif
  io.startOfFrame := BufferCC(captureClockingArea.startOfFrame, init = False)
  io.endOfFrame := BufferCC(captureClockingArea.endOfFrameReg, init = False)

  val fifo = StreamFifoCC(
    dataType = io.read.payload,
    depth = 4,
    pushClock = captureClk,
    popClock = ClockDomain.current
  )

  fifo.io.push << captureClockingArea.capture.io.read.toStream(False)
  fifo.io.pop.toFlow >> io.read
}

object OV7670 {
  def main(args: Array[String]): Unit = {
    val outRtlDir = if (!args.isEmpty) args(0) else  "gateware/main/verilog/video/input"
    SpinalConfig(
      targetDirectory = outRtlDir,
    ).generateVerilog(OV7670(ClockDomain.external("pclk"))).printPruned()
  }
}