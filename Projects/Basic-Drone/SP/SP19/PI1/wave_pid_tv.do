onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider System
add wave -noupdate /pid_tb/MUT/reset
add wave -noupdate /pid_tb/MUT/clk
add wave -noupdate -divider {Inputs to MUT}
add wave -noupdate /pid_tb/MUT/sink_data_valid
add wave -noupdate /pid_tb/MUT/sink_command
add wave -noupdate /pid_tb/MUT/sink_data
add wave -noupdate /pid_tb/MUT/sink_kp
add wave -noupdate -divider {Outputs from MUT}
add wave -noupdate /pid_tb/MUT/source_data_valid
add wave -noupdate /pid_tb/MUT/source_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2058200 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 202
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
WaveRestoreZoom {0 ps} {2100 ns}
