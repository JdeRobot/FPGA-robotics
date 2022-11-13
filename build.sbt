ThisBuild / version := "1.0"
ThisBuild / scalaVersion := "2.12.16"
ThisBuild / organization := "org.jderobot"

val spinalVersion = "1.7.3"
val spinalCore = "com.github.spinalhdl" %% "spinalhdl-core" % spinalVersion
val spinalLib = "com.github.spinalhdl" %% "spinalhdl-lib" % spinalVersion
val spinalIdslPlugin = compilerPlugin("com.github.spinalhdl" %% "spinalhdl-idsl-plugin" % spinalVersion)
val scalatest = "org.scalatest" %% "scalatest-funsuite" % "3.2.14" % "test"

lazy val mylib = (project in file("."))
  .settings(
    name := "fpga-robotics",
    Compile / scalaSource := baseDirectory.value / "gateware" / "main" / "scala",
    Test / scalaSource := baseDirectory.value / "gateware" / "test" / "scala",
    libraryDependencies ++= Seq(spinalCore, spinalLib, spinalIdslPlugin)
  )

fork := true
