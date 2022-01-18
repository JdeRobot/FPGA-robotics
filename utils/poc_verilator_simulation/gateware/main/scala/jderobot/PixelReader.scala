package jderobot

import spinal.core._
import spinal.lib._
import spinal.lib.graphic.{Rgb, RgbConfig}

case class PixelReader(rgbConfig: RgbConfig, pixelTotal: Int = 32) extends Component {
  val io = new Bundle {
    val pixel_in_payload: Rgb = in(Rgb(rgbConfig))
    val pixel_in_addr: UInt = out UInt(log2Up(pixelTotal) bit)
    val pixel_out: Stream[Rgb] = master Stream (Rgb(rgbConfig))
  }

  val addrCounter: Counter = Counter(pixelTotal)
  when(io.pixel_out.fire) {
    addrCounter.increment()
  }

  io.pixel_in_addr := addrCounter.value
  io.pixel_out.payload := io.pixel_in_payload
  io.pixel_out.valid := True
}

object PixelReader {
  def main(args: Array[String]): Unit = {
    val outRtlDir = if (!args.isEmpty) args(0) else  "rtl"
    SpinalConfig(
      targetDirectory = outRtlDir
    ).generateVerilog(PixelReader(RgbConfig(8, 8, 8)))
  }
}