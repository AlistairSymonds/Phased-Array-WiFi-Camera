-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "08/05/2018 00:59:40"
                                                            
-- Vhdl Test Bench template for design  :  adc_spi
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;   
use ieee.numeric_std.all;                             

ENTITY adc_spi_vhd_tst IS
END adc_spi_vhd_tst;
ARCHITECTURE adc_spi_arch OF adc_spi_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL begin_tx : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL clk_div : unsigned(7 DOWNTO 0);
SIGNAL csn : STD_LOGIC;
SIGNAL sclk : STD_LOGIC;
SIGNAL sdata : STD_LOGIC;
SIGNAL spi_data_in : STD_LOGIC_VECTOR(23 DOWNTO 0);
COMPONENT adc_spi
	PORT (
	begin_tx : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	clk_div : IN unsigned(7 DOWNTO 0);
	csn : OUT STD_LOGIC;
	sclk : OUT STD_LOGIC;
	sdata : OUT STD_LOGIC;
	spi_data_in : IN STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

signal clk_cnt : integer := 0;

BEGIN
	i1 : adc_spi
	PORT MAP (
-- list connections between master ports and signals
	begin_tx => begin_tx,
	clk => clk,
	clk_div => clk_div,
	csn => csn,
	sclk => sclk,
	sdata => sdata,
	spi_data_in => spi_data_in
	);


clk_proc: process 
	begin
		
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		clk_cnt <= clk_cnt + 1;
		
		
		
		
	end process;    

stuff_proc : process(clk_cnt)
	begin
			case (clk_cnt) is
				when 1 =>
					begin_tx <= '1';
				
				when others =>
					begin_tx <= '0';
			end case;
end process;
	
	
	
	spi_data_in <= x"55" & x"FF" & x"01";
	clk_div <= x"02";
	
	
END adc_spi_arch;
