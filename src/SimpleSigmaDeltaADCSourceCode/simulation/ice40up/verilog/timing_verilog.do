#set SIM_DIR "ENTER simulation DIRECTORY PATH HERE"
set SIM_DIR "C:\Users\jcortez\Documents\RD_for_Porting\SimpleSigmaDeltaADCSourceCode\simulation\ice40up\verilog"
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

vlib "work"
set worklib work

adel -all

# Set the path for the generated Timing Simulation Files here:

vlog -work work "C:/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/FA2.v"
vlog -work work "C:/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/LUT4.v"
vlog -work work "C:/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/LUT4_SIM.v"
vlog -work work "C:/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/VLO.v"
vlog -work work "C:/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/VHI.v"
vlog -work work "C:/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/FD1P3XZ.v"
vlog -work work "C:/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/IOL_B.v"
vlog -work work "C:/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/IOLOGIC.v"
vlog -work work "C:/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/BB_B.v"
vlog -work work "C:/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/PIO.v"
vlog -dbg $SIM_DIR/../../../project/ice40up/verilog/ice40up_verilog.vo
vlog -dbg $SIM_DIR/../../../testbench/ice40up_verilog/adc_tf.v

vsim +access +r ADC_tf -PL work -L ovi_ice40up

add wave *
run