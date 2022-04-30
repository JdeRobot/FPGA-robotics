# Add actually existing "work" library
vlib ./work

# Add + compile *.v files and testbench to work library
vlog "+incdir+../hdl" -work work -incr {ppm_encoder.v}
vlog "+incdir+../hdl" -work work -incr {ppm_encoder_tb.v}

# Simulate testbench
vsim -t 100ps -novopt work.ppm_encoder_tb

# Launch Graph

do ppm_encoder_wave.do

# Run test
run 20 ms