onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider System
add wave -noupdate /ppm_encoder_tb/MUT/clk
add wave -noupdate -divider Output
add wave -noupdate /ppm_encoder_tb/MUT/ppm_output
add wave -noupdate -divider {MUT Variables}
add wave -noupdate -radix unsigned /ppm_encoder_tb/MUT/counter
add wave -noupdate -radix unsigned /ppm_encoder_tb/MUT/pulses2count
add wave -noupdate -divider States
add wave -noupdate -radix unsigned /ppm_encoder_tb/MUT/PPM_STATE
add wave -noupdate -radix unsigned /ppm_encoder_tb/MUT/CHOOSE_CHANNEL
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20580000000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 265
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
WaveRestoreZoom {0 ps} {21 ms}
