ThisBuild / version := "1.0"
ThisBuild / scalaVersion := "2.11.12"
ThisBuild / organization := "org.jderobot"

val spinalVersion = "1.6.0"
val spinalCore = "com.github.spinalhdl" %% "spinalhdl-core" % spinalVersion
val spinalLib = "com.github.spinalhdl" %% "spinalhdl-lib" % spinalVersion
val spinalIdslPlugin = compilerPlugin("com.github.spinalhdl" %% "spinalhdl-idsl-plugin" % spinalVersion)
val scalatest = "org.scalatest" %% "scalatest-funsuite" % "3.2.10" % "test"

lazy val mylib = (project in file("."))
  .settings(
    name := "pixelProcessor",
    Compile / scalaSource := baseDirectory.value / "gateware" / "main" / "scala",
    Test / scalaSource := baseDirectory.value / "gateware" / "test" / "scala",
    libraryDependencies ++= Seq(spinalCore, spinalLib, spinalIdslPlugin, scalatest)
  )

fork := true
