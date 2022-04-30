# Add actually existing "work" library
vlib ./work

# Add + compile *.v files and testbench to work library
vlog "+incdir+../hdl" -work work -incr {frame_decoder.v}
vlog "+incdir+../hdl" -work work -incr {frame_decoder_tb.v}

# Simulate testbench
vsim -t 100ps -novopt work.frame_decoder_tb

# Launch Graph

do frame_decoder_wave.do

# Run test
run 300 us