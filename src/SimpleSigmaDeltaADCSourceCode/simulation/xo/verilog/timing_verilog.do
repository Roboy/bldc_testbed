#set SIM_DIR "ENTER simulation DIRECTORY PATH HERE"
set SIM_DIR "D:/RD_Project/rd1066/simulation/xo/verilog"
# Example:
# set SIM_DIR "D:/RD_Project/rd1066/simulation/xo/verilog" 

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

vlog -dbg $SIM_DIR/../../../project/xo/verilog/xo_verilog/xo_verilog_xo_verilog_vo.vo
vlog -dbg $SIM_DIR/../../../testbench/verilog/adc_tf.v

vsim +access +r ADC_tf -sdfmax /ADC_tf/UUT="$SIM_DIR/../../../project/xo/verilog/xo_verilog/xo_verilog_xo_verilog_vo.sdf" -PL pmi_work -L ovi_machxo +transport_path_delays +transport_int_delays

add wave *
run