package jderobot

import spinal.core._
import spinal.lib.{Flow, _}
import spinal.lib.graphic.{Rgb, RgbConfig}

case class PixelWriter(rgbConfig: RgbConfig, pixelTotal: Int = 32) extends Component {
  val io = new Bundle {
    val pixel_in: Stream[Rgb] = slave Stream(Rgb(rgbConfig))
    val pixel_out: Flow[Rgb] = master Flow(Rgb(rgbConfig))
    val pixel_out_addr: UInt = out UInt(log2Up(pixelTotal) bit)
  }

  val addrCounter: Counter = Counter(pixelTotal)
  when(io.pixel_in.fire) {
    addrCounter.increment()
  }

  io.pixel_out_addr := addrCounter.value
  io.pixel_out << io.pixel_in.toFlow
}

object PixelWriter {
  def main(args: Array[String]): Unit = {
    val outRtlDir = if (!args.isEmpty) args(0) else  "rtl"
    SpinalConfig(
      targetDirectory = outRtlDir,
      removePruned = true
    ).generateVerilog(PixelWriter(RgbConfig(8, 8, 8)))
  }
}

