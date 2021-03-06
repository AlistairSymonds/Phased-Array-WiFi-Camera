# TCL File Generated by Component Editor 17.1
# Wed Sep 26 19:48:16 EST 2018
# DO NOT MODIFY


# 
# Hmcad1511_rx "Hmcad1511_rx" v1.0
#  2018.09.26.19:48:16
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module Hmcad1511_rx
# 
set_module_property DESCRIPTION ""
set_module_property NAME Hmcad1511_rx
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME Hmcad1511_rx
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL hmcad1511_controller
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file hmcad1511_controller.vhd VHDL PATH hmcad1511_controller.vhd TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point lvds_bit_clk
# 
add_interface lvds_bit_clk clock end
set_interface_property lvds_bit_clk clockRate 0
set_interface_property lvds_bit_clk ENABLED true
set_interface_property lvds_bit_clk EXPORT_OF ""
set_interface_property lvds_bit_clk PORT_NAME_MAP ""
set_interface_property lvds_bit_clk CMSIS_SVD_VARIABLES ""
set_interface_property lvds_bit_clk SVD_ADDRESS_GROUP ""

add_interface_port lvds_bit_clk lclk clk Input 1


# 
# connection point lvds_frame_clk
# 
add_interface lvds_frame_clk clock end
set_interface_property lvds_frame_clk clockRate 0
set_interface_property lvds_frame_clk ENABLED true
set_interface_property lvds_frame_clk EXPORT_OF ""
set_interface_property lvds_frame_clk PORT_NAME_MAP ""
set_interface_property lvds_frame_clk CMSIS_SVD_VARIABLES ""
set_interface_property lvds_frame_clk SVD_ADDRESS_GROUP ""

add_interface_port lvds_frame_clk fclk clk Input 1


# 
# connection point ch2
# 
add_interface ch2 avalon_streaming start
set_interface_property ch2 associatedClock clock
set_interface_property ch2 dataBitsPerSymbol 8
set_interface_property ch2 errorDescriptor ""
set_interface_property ch2 firstSymbolInHighOrderBits true
set_interface_property ch2 maxChannel 0
set_interface_property ch2 readyLatency 0
set_interface_property ch2 ENABLED true
set_interface_property ch2 EXPORT_OF ""
set_interface_property ch2 PORT_NAME_MAP ""
set_interface_property ch2 CMSIS_SVD_VARIABLES ""
set_interface_property ch2 SVD_ADDRESS_GROUP ""

add_interface_port ch2 ch2_data data Output 8


# 
# connection point ch3
# 
add_interface ch3 avalon_streaming start
set_interface_property ch3 associatedClock clock
set_interface_property ch3 dataBitsPerSymbol 8
set_interface_property ch3 errorDescriptor ""
set_interface_property ch3 firstSymbolInHighOrderBits true
set_interface_property ch3 maxChannel 0
set_interface_property ch3 readyLatency 0
set_interface_property ch3 ENABLED true
set_interface_property ch3 EXPORT_OF ""
set_interface_property ch3 PORT_NAME_MAP ""
set_interface_property ch3 CMSIS_SVD_VARIABLES ""
set_interface_property ch3 SVD_ADDRESS_GROUP ""

add_interface_port ch3 ch3_data data Output 8


# 
# connection point lvds_in
# 
add_interface lvds_in conduit end
set_interface_property lvds_in associatedClock clock
set_interface_property lvds_in associatedReset ""
set_interface_property lvds_in ENABLED true
set_interface_property lvds_in EXPORT_OF ""
set_interface_property lvds_in PORT_NAME_MAP ""
set_interface_property lvds_in CMSIS_SVD_VARIABLES ""
set_interface_property lvds_in SVD_ADDRESS_GROUP ""

add_interface_port lvds_in d1_in new_signal Input 2
add_interface_port lvds_in d2_in new_signal_1 Input 2
add_interface_port lvds_in d3_in new_signal_2 Input 2
add_interface_port lvds_in d4_in new_signal_3 Input 2


# 
# connection point ch4
# 
add_interface ch4 avalon_streaming start
set_interface_property ch4 associatedClock clock
set_interface_property ch4 dataBitsPerSymbol 8
set_interface_property ch4 errorDescriptor ""
set_interface_property ch4 firstSymbolInHighOrderBits true
set_interface_property ch4 maxChannel 0
set_interface_property ch4 readyLatency 0
set_interface_property ch4 ENABLED true
set_interface_property ch4 EXPORT_OF ""
set_interface_property ch4 PORT_NAME_MAP ""
set_interface_property ch4 CMSIS_SVD_VARIABLES ""
set_interface_property ch4 SVD_ADDRESS_GROUP ""

add_interface_port ch4 ch4_data data Output 8


# 
# connection point ch1
# 
add_interface ch1 avalon_streaming start
set_interface_property ch1 associatedClock clock
set_interface_property ch1 dataBitsPerSymbol 8
set_interface_property ch1 errorDescriptor ""
set_interface_property ch1 firstSymbolInHighOrderBits true
set_interface_property ch1 maxChannel 0
set_interface_property ch1 readyLatency 0
set_interface_property ch1 ENABLED true
set_interface_property ch1 EXPORT_OF ""
set_interface_property ch1 PORT_NAME_MAP ""
set_interface_property ch1 CMSIS_SVD_VARIABLES ""
set_interface_property ch1 SVD_ADDRESS_GROUP ""

add_interface_port ch1 ch1_data data Output 8
set_interface_assignment ch1 ch1 ch1

