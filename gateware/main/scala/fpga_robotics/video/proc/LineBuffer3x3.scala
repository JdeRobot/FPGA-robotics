package fpga_robotics.video.proc

import spinal.core._
import spinal.lib._

case class LineBuffer3x3Generics(elementWidth: Int = 8, maxRowWidth: Int = 256) {
  def maxDelayValue(): Int  = maxRowWidth*2 + 2
}

case class LineBuffer3x3(generics: LineBuffer3x3Generics) extends Component {
  require(generics.maxRowWidth >= 1)
  require(isPow2(generics.maxRowWidth))

  val io = new Bundle {
    val init = in Bool()
    val rowWidth = in UInt (log2Up(generics.maxRowWidth + 1) bit)
    val initialDelay = in UInt (log2Up((generics.maxDelayValue()) + 1) bit)

    val input = slave Stream(Bits(generics.elementWidth bits))
    val output = master Stream(Vec(Bits(generics.elementWidth bits), 9))
  }

  val delayValueNext = UInt(log2Up((generics.maxDelayValue()) + 1) bit)
  val delay = RegNext(delayValueNext) init(0)
  val delayWillDecrement = False
  val pendingRsp = RegInit(False)

  val rowShifter = new Area {
    val row0 = new Mem(Bits(generics.elementWidth bits), generics.maxRowWidth)
    val row1 = new Mem(Bits(generics.elementWidth bits), generics.maxRowWidth)
    val readPtr = Counter(generics.maxRowWidth)
    val writePtr = UInt(log2Up(generics.maxRowWidth) bit)
    val writeOffset = Reg(io.rowWidth) init(0)

    val row0Front = row0(readPtr.value)
    val row1Front = row1(readPtr.value)

    writePtr := (readPtr.value + writeOffset).resized

    when(io.input.fire) {
      row0(writePtr) := io.input.payload
      row1(writePtr) := row0Front
      readPtr.increment()
    }

    when(io.init) {
      readPtr.clear()
      writeOffset := io.rowWidth
    }
  }

  val window3x3 = new Area {
    val input0 = io.input.payload
    val input1 = rowShifter.row0Front
    val input2 = rowShifter.row1Front

    val shift = io.input.fire

    val row0_0 = RegNextWhen(input0, shift) init(0)
    val row0_1 = RegNextWhen(row0_0, shift) init(0)
    val row0_2 = RegNextWhen(row0_1, shift) init(0)

    val row1_0 = RegNextWhen(input1, shift) init(0)
    val row1_1 = RegNextWhen(row1_0, shift) init(0)
    val row1_2 = RegNextWhen(row1_1, shift) init(0)

    val row2_0 = RegNextWhen(input2, shift) init(0)
    val row2_1 = RegNextWhen(row2_0, shift) init(0)
    val row2_2 = RegNextWhen(row2_1, shift) init(0)

    val output = Vec(row0_0, row0_1, row0_2, row1_0, row1_1, row1_2, row2_0, row2_1, row2_2)
  }

  delayValueNext := (delay - U(delayWillDecrement)).resized

  when(io.input.fire) {
    delayWillDecrement := (delay =/= 0)
  }

  when(io.init) {
    delayValueNext := io.initialDelay
  }

  when(io.input.fire && (delay === 0)) {
    pendingRsp := True
  } elsewhen(io.output.fire) {
    pendingRsp := False
  }

  io.input.ready := ((delay =/= 0) || io.output.ready)
  io.output.valid :=  pendingRsp
  io.output.payload := Vec(window3x3.output.reverse)
}

object LineBuffer3x3 {
  def main(args: Array[String]) {
    val outRtlDir = if (!args.isEmpty) args(0) else  "gateware/main/verilog/video/proc"
    SpinalConfig(
      targetDirectory = outRtlDir
    ).generateVerilog(LineBuffer3x3(LineBuffer3x3Generics()))
  }
}