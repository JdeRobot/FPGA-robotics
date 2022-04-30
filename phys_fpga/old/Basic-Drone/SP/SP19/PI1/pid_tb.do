# Add actually existing "work" library
vlib ./work

# Add + compile *.v files and testbench to work library
vlog "+incdir+../hdl" -work work -incr {pid.v}
vlog "+incdir+../hdl" -work work -incr {pid_tb.v}

# Simulate testbench
vsim -t 100ps -novopt work.pid_tb

# Launch Graph

do wave_pid_tv.do

# Run test
run 2 us