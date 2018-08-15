transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/alist/OneDrive/Electrickery/Phased Array Radio Telescope/WiFi Tele/FPGA Firmware/adc_spi.vhd}
vcom -2008 -work work {C:/Users/alist/OneDrive/Electrickery/Phased Array Radio Telescope/WiFi Tele/FPGA Firmware/clk_div8vhd.vhd}

vcom -2008 -work work {C:/Users/alist/OneDrive/Electrickery/Phased Array Radio Telescope/WiFi Tele/FPGA Firmware/simulation/modelsim/adc_spi.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclone10lp -L rtl_work -L work -voptargs="+acc"  adc_spi_vhd_tst

add wave *
view structure
view signals
run 1000 ns
