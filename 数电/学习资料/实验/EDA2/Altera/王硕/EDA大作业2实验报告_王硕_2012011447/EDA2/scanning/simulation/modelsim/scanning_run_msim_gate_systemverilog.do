transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {scanning_fast.svo}

vlog -vlog01compat -work work +incdir+C:/Users/wangshuo/Desktop/EDA2/scanning {C:/Users/wangshuo/Desktop/EDA2/scanning/scanning_tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  scanning_tb

add wave *
view structure
view signals
run -all
