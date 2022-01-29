onerror {quit -f}
vlib work
vlog -work work MyClock.vo
vlog -work work MyClock.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MyClock_vlg_vec_tst
vcd file -direction MyClock.msim.vcd
vcd add -internal MyClock_vlg_vec_tst/*
vcd add -internal MyClock_vlg_vec_tst/i1/*
add wave /*
run -all
