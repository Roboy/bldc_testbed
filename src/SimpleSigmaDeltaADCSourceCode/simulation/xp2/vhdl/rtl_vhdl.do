#set SIM_DIR "ENTER simulation DIRECTORY PATH HERE"
set SIM_DIR "D:/RD_Project/RD1066/simulation/xp2/vhdl"
# Example:
# set SIM_DIR "D:/RD_Project/RD1066/simulation/xp2/vhdl" 

cd $SIM_DIR

if {![file exists rtl_vhdl]} {
    vlib rtl_vhdl 
}
endif

design create rtl_vhdl .
design open rtl_vhdl
adel -all

cd $SIM_DIR


adel -all
acom -dbg -reorder -O3 -2008 $SIM_DIR/../../../source/vhdl/adc_top.vhd 
acom -dbg -reorder -O3 -2008 $SIM_DIR/../../../source/vhdl/box_ave.vhd 
acom -dbg -reorder -O3 -2008 $SIM_DIR/../../../source/vhdl/sigmadelta_adc.vhd 
acom -dbg -reorder -O3 -2008 $SIM_DIR/../../../testbench/vhdl/adc_tf_rtl.vhd

asim -O5 +access +r +m+ADC_tf ADC_tf behavioral

add wave *
run 2173800 ns

