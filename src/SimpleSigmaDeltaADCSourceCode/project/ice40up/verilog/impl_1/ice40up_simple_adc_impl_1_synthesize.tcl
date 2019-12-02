if {[catch {

# define run engine funtion
source [file join {C:/lscc/radiant/1.0} scripts tcl flow run_engine.tcl]
# define global variables
global para
set para(gui_mode) 1
set para(prj_dir) "D:/Radiant_porting/ADC_deltaSigma/SimpleSigmaDeltaADCSourceCode/project/ice40up/verilog"
# synthesize IPs
# synthesize VMs
# synthesize top design
file delete -force -- ice40up_simple_adc_impl_1.vm ice40up_simple_adc_impl_1.ldc
run_engine synpwrap -prj "ice40up_simple_adc_impl_1_synplify.tcl" -log "ice40up_simple_adc_impl_1.srf"
run_postsyn [list -a iCE40UP -p iCE40UP5K -t SG48 -sp High-Performance_1.2V -oc Industrial -top -w -o ice40up_simple_adc_impl_1.udb ice40up_simple_adc_impl_1.vm] "D:/Radiant_porting/ADC_deltaSigma/SimpleSigmaDeltaADCSourceCode/project/ice40up/verilog/impl_1/ice40up_simple_adc_impl_1.ldc"

} out]} {
   runtime_log $out
   exit 1
}
