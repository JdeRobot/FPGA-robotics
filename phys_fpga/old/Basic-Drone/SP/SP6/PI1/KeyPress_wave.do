onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Master Inputs}
add wave -noupdate /KeyPress_tb/reset
add wave -noupdate /KeyPress_tb/clk
add wave -noupdate -divider {MUT Inputs}
add wave -noupdate /KeyPress_tb/sink_data_ready
add wave -noupdate -radix unsigned /KeyPress_tb/sink_data
add wave -noupdate -divider {MUT Outputs}
add wave -noupdate /KeyPress_tb/source_data_ready
add wave -noupdate -radix unsigned /KeyPress_tb/source_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {957900 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 214
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
WaveRestoreZoom {0 ps} {1968800 ps}
