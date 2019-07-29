onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix ascii /uart_rx_tb/NombreTest
add wave -noupdate -divider Inputs
add wave -noupdate /uart_rx_tb/reset
add wave -noupdate /uart_rx_tb/clk
add wave -noupdate /uart_rx_tb/sdin
add wave -noupdate -divider Outputs
add wave -noupdate /uart_rx_tb/MUT/data_rdy
add wave -noupdate /uart_rx_tb/MUT/data
add wave -noupdate /uart_rx_tb/source_ber_framing_error
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 3} {744972100 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 250
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {1050 us}
