transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/wangshuo/Desktop/EDA2/keyboard {C:/Users/wangshuo/Desktop/EDA2/keyboard/Divider.v}
vlog -vlog01compat -work work +incdir+C:/Users/wangshuo/Desktop/EDA2/keyboard {C:/Users/wangshuo/Desktop/EDA2/keyboard/monitor.v}
vlog -vlog01compat -work work +incdir+C:/Users/wangshuo/Desktop/EDA2/keyboard {C:/Users/wangshuo/Desktop/EDA2/keyboard/divider_mon.v}
vlog -vlog01compat -work work +incdir+C:/Users/wangshuo/Desktop/EDA2/keyboard {C:/Users/wangshuo/Desktop/EDA2/keyboard/scanning.v}

vlog -vlog01compat -work work +incdir+C:/Users/wangshuo/Desktop/EDA2/keyboard {C:/Users/wangshuo/Desktop/EDA2/keyboard/keyboard1_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  keyboard1_tb

add wave *
view structure
view signals
run -all
