#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology SBTICE40UP
set_option -part iCE40UP5K
set_option -package SG48
#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog 2001 standard option
set_option -vlog_std v2001

#map options
set_option -frequency auto
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -retiming false; set_option -pipe true
set_option -force_gsr false
set_option -compiler_compatible 0

set_option -default_enum_encoding default

#timing analysis options



#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 0
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0

#-- set any command lines input by customer

set_option -dup false
set_option -disable_io_insertion false
add_file -verilog {C:/lscc/radiant/1.0/ip/pmi/pmi.v}
add_file -vhdl -lib pmi {C:/lscc/radiant/1.0/ip/pmi/pmi.vhd}
add_file -verilog {D:/Radiant_porting/ADC_deltaSigma/SimpleSigmaDeltaADCSourceCode/source/verilog/radiant/adc_top.v}
add_file -verilog {D:/Radiant_porting/ADC_deltaSigma/SimpleSigmaDeltaADCSourceCode/source/verilog/radiant/sigmadelta_adc_ice40.v}
add_file -verilog {D:/Radiant_porting/ADC_deltaSigma/SimpleSigmaDeltaADCSourceCode/source/verilog/radiant/box_ave.v}
set_option -include_path {D:/Radiant_porting/ADC_deltaSigma/SimpleSigmaDeltaADCSourceCode/project/ice40up/verilog}
#-- top module name
set_option -top_module ADC_top

#-- set result format/file last
project -result_format "vm"
project -result_file {D:/Radiant_porting/ADC_deltaSigma/SimpleSigmaDeltaADCSourceCode/project/ice40up/verilog/impl_1/ice40up_simple_adc_impl_1.vm}

#-- error message log file
project -log_file {ice40up_simple_adc_impl_1.srf}
project -run
