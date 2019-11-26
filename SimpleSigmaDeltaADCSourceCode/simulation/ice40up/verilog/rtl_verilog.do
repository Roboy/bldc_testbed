#set SIM_DIR "ENTER simulation DIRECTORY PATH HERE"
set SIM_DIR "C:\Users\jcortez\Documents\RD_for_Porting\SimpleSigmaDeltaADCSourceCode\simulation\ice40up\verilog"
# Example:
# set SIM_DIR "D:/RD_Project/RD1066/simulation/xo2/verilog" 

cd $SIM_DIR

if {![file exists rtl_verilog]} {
    vlib rtl_verilog 
}
endif

design create rtl_verilog .
design open rtl_verilog
adel -all

cd $SIM_DIR

vlib "work"
set worklib work

cd $SIM_DIR

adel -all
# Library contents cleared.
vcom -work work "C:/lscc/radiant/1.0/ip/pmi/pmi.vhd"
vlog -dbg -work work "C:/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/IOLOGIC.v"
vlog -dbg -work work "C:/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/IOL_B.v"
vlog -dbg -work work  "C:/lscc/radiant/1.0/ip/pmi/pmi.v"
vlog -dbg  $SIM_DIR/../../../source/ice40up_verilog/box_ave.v
vlog -dbg  $SIM_DIR/../../../source/ice40up_verilog/sigmadelta_adc_ice40.v
vlog -dbg  $SIM_DIR/../../../source/ice40up_verilog/adc_top.v
vlog -dbg  $SIM_DIR/../../../testbench/ice40up_verilog/adc_tf_rtl.v
module ADC_tf
vsim +access +r ADC_tf -PL work -L ovi_ice40up

add wave *
run