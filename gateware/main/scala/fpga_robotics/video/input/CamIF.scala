package fpga_robotics.video.input

import spinal.core._
import spinal.lib._

case class CamIF(dataWidth: Int = 8) extends Bundle with IMasterSlave {
  //val pclk = Bool()
  val vsync = Bool()
  val href = Bool()
  val data = Bits(dataWidth bits)

  override def asMaster(): Unit = {
    //out(pclk)
    out(vsync)
    out(href)
    out(data)
  }
}