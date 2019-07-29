onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {System Signals}
add wave -noupdate /frame_decoder_tb/reset
add wave -noupdate /frame_decoder_tb/clk
add wave -noupdate -divider {Input Signals}
add wave -noupdate /frame_decoder_tb/MUT/sink_data_valid
add wave -noupdate -radix hexadecimal /frame_decoder_tb/MUT/sink_data
add wave -noupdate -divider {Output Signals}
add wave -noupdate /frame_decoder_tb/MUT/source_data_valid
add wave -noupdate -radix unsigned /frame_decoder_tb/MUT/source_CH1data
add wave -noupdate -radix unsigned /frame_decoder_tb/MUT/source_CH2data
add wave -noupdate -radix unsigned /frame_decoder_tb/MUT/source_CH3data
add wave -noupdate -radix unsigned /frame_decoder_tb/MUT/source_CH4data
add wave -noupdate -radix unsigned /frame_decoder_tb/MUT/source_offset1data
add wave -noupdate -radix unsigned /frame_decoder_tb/MUT/source_offset2data
add wave -noupdate -radix unsigned /frame_decoder_tb/MUT/source_offset3data
add wave -noupdate -radix unsigned /frame_decoder_tb/MUT/source_offset4data
add wave -noupdate -radix unsigned /frame_decoder_tb/MUT/state
add wave -noupdate -radix unsigned /frame_decoder_tb/MUT/count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {309560400 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 268
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
WaveRestoreZoom {0 ps} {315 us}
