#set SIM_DIR "ENTER simulation DIRECTORY PATH HERE"
set SIM_DIR "D:/RD_Project/RD1066/simulation/xo2/verilog"
# Example:
# set SIM_DIR "D:/RD_Project/RD1066/simulation/xo2/verilog" 

cd $SIM_DIR

if {![file exists timing_verilog]} {
    vlib timing_verilog 
}
endif

design create timing_verilog .
design open timing_verilog
adel -all

cd $SIM_DIR
adel -all

# Set the path for the generated Timing Simulation Files here:

vlog -dbg $SIM_DIR/../../../project/xo2/verilog/xo2_verilog/xo2_verilog_xo2_verilog_vo.vo
vlog -dbg $SIM_DIR/../../../testbench/verilog/adc_tf.v

vsim +access +r ADC_tf -PL pmi_work -L ovi_machxo2

add wave *
run