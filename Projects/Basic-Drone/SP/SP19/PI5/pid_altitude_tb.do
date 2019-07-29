# Add actually existing "work" library
vlib ./work

# Add + compile *.v files and testbench to work library
vlog "+incdir+../hdl" -work work -incr {pid_altitude.v}
vlog "+incdir+../hdl" -work work -incr {pid_altitude_tb.v}

# Simulate testbench
vsim -t 100ps -novopt work.pid_altitude_tb

# Launch Graph

do pid_altitude_wave.do

# Run test
run 3.5 us