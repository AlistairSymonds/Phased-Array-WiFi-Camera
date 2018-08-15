## Generated SDC file "Phased_WiFi_Telescope_FW.out.sdc"

## Copyright (C) 2017  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

## DATE    "Mon Aug 13 17:19:50 2018"

##
## DEVICE  "10CL025YU256C8G"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 100.000 -waveform { 0.000 50.000 } [get_ports {altera_reserved_tck}]
create_clock -name {C10_clk50M} -period 20.000 -waveform { 0.000 10.000 } [get_ports {C10_clk50M}]
create_clock -name {hmcad1511_lclk} -period 10.000 -waveform { 0.000 5.000 } [get_ports { hmcad1511_lclk }]
create_clock -name {ENET_CLK_125M} -period 8.000 -waveform { 0.000 4.000 } [get_ports {ENET_CLK_125M}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_keepers {altera_reserved_tdi}] -to [get_keepers {pzdyqx*}]


#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -end -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_altsyncram_dpm_fifo:U_RTSM|altsyncram*}] -to [all_registers] 5
set_multicycle_path -setup -end -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_retransmit_cntl:U_RETR|*}] -to [all_registers] 5
set_multicycle_path -setup -end -from [all_registers] -to [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_retransmit_cntl:U_RETR|*}] 5
set_multicycle_path -hold -end -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_altsyncram_dpm_fifo:U_RTSM|altsyncram*}] -to [all_registers] 5
set_multicycle_path -hold -end -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_retransmit_cntl:U_RETR|*}] -to [all_registers] 5
set_multicycle_path -hold -end -from [all_registers] -to [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_retransmit_cntl:U_RETR|*}] 5


#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [all_registers] -to [get_registers {*altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1}] 100.000
set_max_delay -from [get_registers {WiPhase_top_level:u1|WiPhase_top_level_eth_tse_0:eth_tse_0|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_opt_1246:TX_DATA|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_3|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 100.000
set_max_delay -from [get_registers {WiPhase_top_level:u1|WiPhase_top_level_eth_tse_0:eth_tse_0|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_13:TX_STATUS|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_13:TX_STATUS|altera_eth_tse_std_synchronizer_bundle:U_SYNC_2|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 100.000
set_max_delay -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|dout_reg_sft*}] -to [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_top_1geth:U_GETH|altera_tse_mac_tx:U_TX|*}] 7.000
set_max_delay -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|eop_sft*}] -to [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_top_1geth:U_GETH|altera_tse_mac_tx:U_TX|*}] 7.000
set_max_delay -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|sop_reg*}] -to [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_top_1geth:U_GETH|altera_tse_mac_tx:U_TX|*}] 7.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [all_registers] -to [get_registers {*altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1}] -100.000
set_min_delay -from [get_registers {WiPhase_top_level:u1|WiPhase_top_level_eth_tse_0:eth_tse_0|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_opt_1246:TX_DATA|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_3|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] -100.000
set_min_delay -from [get_registers {WiPhase_top_level:u1|WiPhase_top_level_eth_tse_0:eth_tse_0|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_13:TX_STATUS|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_13:TX_STATUS|altera_eth_tse_std_synchronizer_bundle:U_SYNC_2|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] -100.000


#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Net Delay
#**************************************************************

set_net_delay -max 6.000 -from [get_pins -compatibility_mode {*|q}] -to [get_registers {*altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1}]
set_net_delay -max 6.000 -from [get_pins -compatibility_mode {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_tse_gray_cnt:U_WRT|g_out[*]|q}] -to [get_registers {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_3|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}]
set_net_delay -max 6.000 -from [get_pins -compatibility_mode {*altera_tse_a_fifo_13:TX_STATUS|altera_tse_gray_cnt:U_WRT|g_out[*]|q}] -to [get_registers {*altera_tse_a_fifo_13:TX_STATUS|altera_eth_tse_std_synchronizer_bundle:U_SYNC_2|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}]


#**************************************************************
# Set Max Skew
#**************************************************************

set_max_skew -from [get_registers {WiPhase_top_level:u1|WiPhase_top_level_eth_tse_0:eth_tse_0|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_opt_1246:TX_DATA|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_3|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 7.500 
set_max_skew -from [get_registers {WiPhase_top_level:u1|WiPhase_top_level_eth_tse_0:eth_tse_0|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_13:TX_STATUS|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_13:TX_STATUS|altera_eth_tse_std_synchronizer_bundle:U_SYNC_2|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 7.500 


#**************************************************************
# Set Disable Timing
#**************************************************************

set_disable_timing -from * -to * [get_cells -hierarchical {QXXQ6833_0}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_0}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_1}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_2}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_3}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_4}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_5}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_6}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_7}]
set_disable_timing -from * -to * [get_cells -hierarchical {BITP7563_0}]
