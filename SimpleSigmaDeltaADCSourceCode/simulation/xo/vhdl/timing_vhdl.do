#set SIM_DIR "ENTER simulation DIRECTORY PATH HERE"
set SIM_DIR "D:/RD_Project/rd1066/simulation/xo/vhdl"
# Example:
# set SIM_DIR "D:/RD_Project/rd1066/simulation/xo/vhdl" 

cd $SIM_DIR

if {![file exists timing_vhdl]} {
    vlib timing_vhdl 
}
endif

design create timing_vhdl .
design open timing_vhdl
adel -all

cd $SIM_DIR

adel -all

# Add the timing Simulation File Paths below accurately

acom -dbg $SIM_DIR/../../../project/xo/vhdl/xo_vhdl/xo_vhdl_xo_vhdl_vho.vho
acom -dbg $SIM_DIR/../../../testbench/vhdl/adc_tf.vhd
asim +access +r ADC_tf -sdfmax /ADC_tf/UUT="$SIM_DIR/../../../project/xo/vhdl/xo_vhdl/xo_vhdl_xo_vhdl_vho.sdf" -PL pmi_work -L machxo -noglitch -ieee_nowarn +transport_path_delays +transport_int_delays

add wave *
run 2173800 ns

