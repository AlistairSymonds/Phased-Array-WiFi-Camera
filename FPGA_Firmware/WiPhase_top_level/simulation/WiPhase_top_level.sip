set_global_assignment -entity "WiPhase_top_level" -library "lib_WiPhase_top_level" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "WiPhase_top_level" -library "lib_WiPhase_top_level" -name IP_TOOL_VERSION "17.1"
set_global_assignment -entity "WiPhase_top_level" -library "lib_WiPhase_top_level" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_WiPhase_top_level" -name SPD_FILE [file join $::quartus(sip_path) "../WiPhase_top_level.spd"]
set_global_assignment -library "lib_WiPhase_top_level" -name MISC_FILE [file join $::quartus(sip_path) "../../WiPhase_top_level.qsys"]

set_global_assignment -library "lib_WiPhase_top_level" -name MISC_FILE [file join $::quartus(sip_path) "WiPhase_top_level.vhd"]
set_global_assignment -library "lib_WiPhase_top_level" -name MISC_FILE [file join $::quartus(sip_path) "submodules/WiPhase_top_level_sysid.v"]
set_global_assignment -library "lib_WiPhase_top_level" -name MISC_FILE [file join $::quartus(sip_path) "submodules/WiPhase_top_level_spi.v"]
set_global_assignment -library "lib_WiPhase_top_level" -name MISC_FILE [file join $::quartus(sip_path) "submodules/WiPhase_top_level_sample_pll.vho"]
set_global_assignment -library "lib_WiPhase_top_level" -name MISC_FILE [file join $::quartus(sip_path) "submodules/WiPhase_top_level_ram_onchip.hex"]
set_global_assignment -library "lib_WiPhase_top_level" -name MISC_FILE [file join $::quartus(sip_path) "submodules/WiPhase_top_level_ram_onchip.v"]
set_global_assignment -library "lib_WiPhase_top_level" -name MISC_FILE [file join $::quartus(sip_path) "submodules/WiPhase_top_level_jtag_uart.v"]
set_global_assignment -library "lib_WiPhase_top_level" -name MISC_FILE [file join $::quartus(sip_path) "submodules/WiPhase_top_level_eth.vhd"]
set_global_assignment -library "lib_WiPhase_top_level" -name MISC_FILE [file join $::quartus(sip_path) "submodules/WiPhase_top_level_cpu_v2.v"]
set_global_assignment -library "lib_WiPhase_top_level" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Debug_ST_Sink.vhd"]
