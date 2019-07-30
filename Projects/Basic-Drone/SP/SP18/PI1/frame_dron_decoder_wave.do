onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider System
add wave -noupdate /frame_dron_decoder_tb/MUT/reset
add wave -noupdate /frame_dron_decoder_tb/MUT/clk
add wave -noupdate -divider {Inputs to MUT}
add wave -noupdate /frame_dron_decoder_tb/MUT/sink_data_valid
add wave -noupdate -radix unsigned /frame_dron_decoder_tb/MUT/sink_data
add wave -noupdate -divider {MUT Regs}
add wave -noupdate -radix unsigned /frame_dron_decoder_tb/MUT/state
add wave -noupdate -divider {Outputs from MUT}
add wave -noupdate /frame_dron_decoder_tb/MUT/source_data_valid
add wave -noupdate -radix decimal /frame_dron_decoder_tb/MUT/source_H_disp_front
add wave -noupdate -radix decimal -childformat {{{/frame_dron_decoder_tb/MUT/source_H_disp_side[15]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[14]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[13]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[12]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[11]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[10]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[9]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[8]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[7]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[6]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[5]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[4]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[3]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[2]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[1]} -radix decimal} {{/frame_dron_decoder_tb/MUT/source_H_disp_side[0]} -radix decimal}} -subitemconfig {{/frame_dron_decoder_tb/MUT/source_H_disp_side[15]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[14]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[13]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[12]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[11]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[10]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[9]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[8]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[7]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[6]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[5]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[4]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[3]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[2]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[1]} {-height 15 -radix decimal} {/frame_dron_decoder_tb/MUT/source_H_disp_side[0]} {-height 15 -radix decimal}} /frame_dron_decoder_tb/MUT/source_H_disp_side
add wave -noupdate -radix decimal /frame_dron_decoder_tb/MUT/source_Altitude
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {15145200 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 306
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
WaveRestoreZoom {0 ps} {21 us}
