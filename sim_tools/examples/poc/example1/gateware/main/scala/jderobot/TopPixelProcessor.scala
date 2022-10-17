package jderobot

import spinal.core._
import spinal.lib._
import spinal.lib.graphic.{Rgb, RgbConfig}

case class TopPixelProcessor(rgbConfig: RgbConfig, pixelTotal: Int = 32) extends Component {
  val io = new Bundle {
    val pixel_in_payload: Rgb = in(Rgb(rgbConfig))
    val pixel_in_addr: UInt = out UInt(log2Up(pixelTotal) bit)

    val pixel_out: Flow[Rgb] = master Flow(Rgb(rgbConfig))
    val pixel_out_addr: UInt = out UInt(log2Up(pixelTotal) bit)

    val filter: Rgb = in(Rgb(rgbConfig))
  }

  val pixelReader: PixelReader = PixelReader(rgbConfig, pixelTotal)
  val pixelProcessor: ColorFilterPixelProcessor = ColorFilterPixelProcessor(rgbConfig)
  val pixelWriter: PixelWriter = PixelWriter(rgbConfig, pixelTotal)

  pixelReader.io.pixel_out >-> pixelProcessor.io.pixel_in
  pixelProcessor.io.pixel_out >-> pixelWriter.io.pixel_in

  io.pixel_in_payload <> pixelReader.io.pixel_in_payload
  io.pixel_in_addr <> pixelReader.io.pixel_in_addr
  io.pixel_out <> pixelWriter.io.pixel_out
  io.pixel_out_addr <> pixelWriter.io.pixel_out_addr
  io.filter <> pixelProcessor.io.filter
}

object TopPixelProcessor {
  def main(args: Array[String]): Unit = {
    val outRtlDir = if (!args.isEmpty) args(0) else "rtl"
    SpinalConfig(
      targetDirectory = outRtlDir,
      removePruned = true
    ).generateVerilog(TopPixelProcessor(RgbConfig(8, 8, 8), 96*72))
  }
}
