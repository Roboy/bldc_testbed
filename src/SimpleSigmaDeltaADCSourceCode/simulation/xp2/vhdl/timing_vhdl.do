#set SIM_DIR "ENTER simulation DIRECTORY PATH HERE"
set SIM_DIR "C:\Users\mbevinam\Desktop\rd1066_simple_sigma_delta_adc_rev01.4\rd1066_simple_sigma_delta_adc_rev01.4\rd1066\simulation\xp2\vhdl"
# Example:
# set SIM_DIR "D:/RD_Project/RD1066/simulation/xp2/vhdl" 

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
# Set the path for the generated Timing Simulation Files here:
acom -dbg $SIM_DIR/../../../project/xp2/vhdl/xp2_vhdl/xp2_vhdl_xp2_vhdl_vho.vho
acom -dbg $SIM_DIR/../../../testbench/vhdl/adc_tf.vhd

asim +access +r ADC_tf -sdfmax /ADC_tf/UUT="$SIM_DIR/../../../project/xp2/vhdl/xp2_vhdl/xp2_vhdl_xp2_vhdl_vho.sdf" -PL pmi_work -L xp2 -noglitch -ieee_nowarn +transport_path_delays +transport_int_delays

add wave *
run 2173800 ns

