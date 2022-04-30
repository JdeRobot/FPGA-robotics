package jderobot

import spinal.core._
import spinal.lib._
import spinal.lib.graphic.{Rgb, RgbConfig}

case class ColorFilterPixelProcessorIO(rgbConfig: RgbConfig) extends Bundle {
  val pixel_in: Stream[Rgb] = slave Stream (Rgb(rgbConfig))
  val pixel_out: Stream[Rgb] = master Stream (Rgb(rgbConfig))
  val filter: Rgb = in (Rgb(rgbConfig))
}

case class ColorFilterPixelProcessor(rgbConfig: RgbConfig) extends Component {
  val io: ColorFilterPixelProcessorIO = ColorFilterPixelProcessorIO(rgbConfig)

  val filter_reg = RegNext(io.filter)

  def isFilteredColor(px: Rgb): Bool = {
    px.r === filter_reg.r && px.g === filter_reg.g && px.b === filter_reg.b
  }

  io.pixel_out.translateFrom(io.pixel_in)((to, from) => {
    to := from
    when(isFilteredColor(from)) {
      to.clear()
    }
  })
}


object ColorFilterPixelProcessor {
  def main(args: Array[String]): Unit = {
    val outRtlDir = if (!args.isEmpty) args(0) else "rtl"
    SpinalConfig(
      targetDirectory = outRtlDir
    ).generateVerilog(ColorFilterPixelProcessor(RgbConfig(8, 8, 8)))
  }
}