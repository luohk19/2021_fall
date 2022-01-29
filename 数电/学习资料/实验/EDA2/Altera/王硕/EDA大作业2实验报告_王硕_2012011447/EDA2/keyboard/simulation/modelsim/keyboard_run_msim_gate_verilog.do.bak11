transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {keyboard_fast.vo}

vlog -vlog01compat -work work +incdir+C:/Users/wangshuo/Desktop/EDA2/keyboard {C:/Users/wangshuo/Desktop/EDA2/keyboard/keyboard1_tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  keyboard1_tb

add wave *
view structure
view signals
run -all
