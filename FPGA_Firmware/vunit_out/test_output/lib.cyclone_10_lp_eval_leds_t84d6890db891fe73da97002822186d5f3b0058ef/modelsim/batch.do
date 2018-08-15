onerror {quit -code 1}
source "C:/Users/alist/OneDrive/Electrickery/Phased\ Array\ Radio\ Telescope/Phased-Array-WiFi-Camera/FPGA\ Firmware/vunit_out/test_output/lib.cyclone_10_lp_eval_leds_t84d6890db891fe73da97002822186d5f3b0058ef/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
