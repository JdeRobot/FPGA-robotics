onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix ascii /uart_rx_tb/NombreTest
add wave -noupdate -divider Inputs
add wave -noupdate /uart_rx_tb/reset
add wave -noupdate /uart_rx_tb/clk
add wave -noupdate /uart_rx_tb/sdin
add wave -noupdate -divider Outputs
add wave -noupdate /uart_rx_tb/MUT/data_rdy
add wave -noupdate -radix unsigned /uart_rx_tb/MUT/data
add wave -noupdate -divider {Internal variables}
add wave -noupdate -radix unsigned /uart_rx_tb/MUT/state_bus
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 3} {762838400 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 186
configure wave -valuecolwidth 69
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {685648900 ps} {816898900 ps}
