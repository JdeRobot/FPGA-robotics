# Add actually existing "work" library
vlib ./work

# Add + compile *.v files and testbench to work library
vlog "+incdir+../hdl" -work work -incr {uart_rx.v}
vlog "+incdir+../hdl" -work work -incr {uart_rx_tb.v}

# Simulate testbench
vsim -t 100ps -novopt work.uart_rx_tb

# Launch Graph

do uart_rx_wave.do

# Run test
run 1000 us