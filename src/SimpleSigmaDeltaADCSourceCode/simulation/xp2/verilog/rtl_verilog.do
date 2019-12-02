#set SIM_DIR "ENTER simulation DIRECTORY PATH HERE"
set SIM_DIR "D:/RD_Project/RD1066/simulation/xp2/verilog"
# Example:
# set SIM_DIR "D:/RD_Project/RD1066/simulation/xp2/verilog" 

cd $SIM_DIR

if {![file exists rtl_verilog]} {
    vlib rtl_verilog 
}
endif

design create rtl_verilog .
design open rtl_verilog
adel -all

cd $SIM_DIR

adel -all
# Library contents cleared.
vlog -dbg  $SIM_DIR/../../../source/verilog/box_ave.v
vlog -dbg  $SIM_DIR/../../../source/verilog/sigmadelta_adc.v
vlog -dbg  $SIM_DIR/../../../source/verilog/adc_top.v
vlog -dbg  $SIM_DIR/../../../testbench/verilog/adc_tf_rtl.v
module ADC_tf
vsim +access +r ADC_tf -PL pmi_work -L ovi_xp2

add wave *
run
