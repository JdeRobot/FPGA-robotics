package fpga_robotics.video.input

import spinal.core._
import spinal.lib._
import spinal.lib.fsm._

case class CamCapture(dataWidth: Int = 8 ) extends Component {
  val io = new Bundle {
    val camif: CamIF = slave(CamIF(dataWidth))
    val read = master(Flow(camif.data))
    val startOfFrame = out Bool()
    val endOfFrame = out Bool()
  }

  val fsm = new StateMachine {
    io.read.setIdle()
    io.startOfFrame := False
    io.endOfFrame := False

    val idleState = new State with EntryPoint
    val captureState = new State

    idleState
      .whenIsActive {
        when(io.camif.vsync.fall()) {
          goto(captureState)
        }
      }
      .onExit(io.startOfFrame := True)

    captureState
      .whenIsActive {
        when(io.camif.href) {
          io.read.push(io.camif.data)
        }
        when(io.camif.vsync) {
          goto(idleState)
        }
      }
      .onExit(io.endOfFrame := True)
  }
}

object CamCapture {
  def main(args: Array[String]): Unit = {
    val outRtlDir = if (!args.isEmpty) args(0) else  "gateware/main/verilog/video/input"
    SpinalConfig(
      targetDirectory = outRtlDir,
    ).generateVerilog(CamCapture())
  }
}