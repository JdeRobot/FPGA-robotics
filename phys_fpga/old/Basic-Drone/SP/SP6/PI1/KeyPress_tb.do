# Add actually existing "work" library
vlib ./work


# Add + compile *.v files and testbench to work library
vlog "+incdir+../hdl" -work work -incr {KeyPress.v}
vlog "+incdir+../hdl" -work work -incr {KeyPress_tb.v}


# Simulate testbench
vsim -t 100ps -novopt work.KeyPress_tb


# Launch Graph
do KeyPress_wave.do


# Run test
run 1.5 us
