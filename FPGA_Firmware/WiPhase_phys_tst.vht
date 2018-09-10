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
-- Generated on "09/09/2018 00:13:19"
                                                            
-- Vhdl Test Bench template for design  :  WiPhase_phys
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY WiPhase_phys_vhd_tst IS
END WiPhase_phys_vhd_tst;
ARCHITECTURE WiPhase_phys_arch OF WiPhase_phys_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C10_CLK50M : STD_LOGIC;
SIGNAL ENET_CLK_125M : STD_LOGIC;
SIGNAL ENET_INT : STD_LOGIC;
SIGNAL ENET_MDC : STD_LOGIC;
SIGNAL ENET_MDIO : STD_LOGIC;
SIGNAL ENET_RG_RXCLK : STD_LOGIC;
SIGNAL ENET_RG_RXCTL : STD_LOGIC;
SIGNAL ENET_RG_RXD : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ENET_RG_TXCLK : STD_LOGIC;
SIGNAL ENET_RG_TXCTL : STD_LOGIC;
SIGNAL ENET_RG_TXD : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL hmcad1511_d1a : STD_LOGIC;
SIGNAL hmcad1511_d1b : STD_LOGIC;
SIGNAL hmcad1511_d2a : STD_LOGIC;
SIGNAL hmcad1511_d2b : STD_LOGIC;
SIGNAL hmcad1511_d3a : STD_LOGIC;
SIGNAL hmcad1511_d3b : STD_LOGIC;
SIGNAL hmcad1511_d4a : STD_LOGIC;
SIGNAL hmcad1511_d4b : STD_LOGIC;
SIGNAL hmcad1511_fclk : STD_LOGIC;
SIGNAL hmcad1511_lclk : STD_LOGIC;
SIGNAL sample_pll_out : STD_LOGIC;
SIGNAL spi_adc_cs_pin : STD_LOGIC;
SIGNAL spi_dac_cs_pin : STD_LOGIC;
SIGNAL spi_mosi_pin : STD_LOGIC;
SIGNAL spi_sclk_pin : STD_LOGIC;
SIGNAL spi_vga_cs_pin : STD_LOGIC;
SIGNAL USER_LED : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT WiPhase_phys
	PORT (
	C10_CLK50M : IN STD_LOGIC;
	ENET_CLK_125M : IN STD_LOGIC;
	ENET_INT : IN STD_LOGIC;
	ENET_MDC : OUT STD_LOGIC;
	ENET_MDIO : INOUT STD_LOGIC;
	ENET_RG_RXCLK : IN STD_LOGIC;
	ENET_RG_RXCTL : IN STD_LOGIC;
	ENET_RG_RXD : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ENET_RG_TXCLK : OUT STD_LOGIC;
	ENET_RG_TXCTL : OUT STD_LOGIC;
	ENET_RG_TXD : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	hmcad1511_d1a : IN STD_LOGIC;
	hmcad1511_d1b : IN STD_LOGIC;
	hmcad1511_d2a : IN STD_LOGIC;
	hmcad1511_d2b : IN STD_LOGIC;
	hmcad1511_d3a : IN STD_LOGIC;
	hmcad1511_d3b : IN STD_LOGIC;
	hmcad1511_d4a : IN STD_LOGIC;
	hmcad1511_d4b : IN STD_LOGIC;
	hmcad1511_fclk : IN STD_LOGIC;
	hmcad1511_lclk : IN STD_LOGIC;
	sample_pll_out : OUT STD_LOGIC;
	spi_adc_cs_pin : OUT STD_LOGIC;
	spi_dac_cs_pin : OUT STD_LOGIC;
	spi_mosi_pin : OUT STD_LOGIC;
	spi_sclk_pin : OUT STD_LOGIC;
	spi_vga_cs_pin : OUT STD_LOGIC;
	USER_LED : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : WiPhase_phys
	PORT MAP (
-- list connections between master ports and signals
	C10_CLK50M => C10_CLK50M,
	ENET_CLK_125M => ENET_CLK_125M,
	ENET_INT => ENET_INT,
	ENET_MDC => ENET_MDC,
	ENET_MDIO => ENET_MDIO,
	ENET_RG_RXCLK => ENET_RG_RXCLK,
	ENET_RG_RXCTL => ENET_RG_RXCTL,
	ENET_RG_RXD => ENET_RG_RXD,
	ENET_RG_TXCLK => ENET_RG_TXCLK,
	ENET_RG_TXCTL => ENET_RG_TXCTL,
	ENET_RG_TXD => ENET_RG_TXD,
	hmcad1511_d1a => hmcad1511_d1a,
	hmcad1511_d1b => hmcad1511_d1b,
	hmcad1511_d2a => hmcad1511_d2a,
	hmcad1511_d2b => hmcad1511_d2b,
	hmcad1511_d3a => hmcad1511_d3a,
	hmcad1511_d3b => hmcad1511_d3b,
	hmcad1511_d4a => hmcad1511_d4a,
	hmcad1511_d4b => hmcad1511_d4b,
	hmcad1511_fclk => hmcad1511_fclk,
	hmcad1511_lclk => hmcad1511_lclk,
	sample_pll_out => sample_pll_out,
	spi_adc_cs_pin => spi_adc_cs_pin,
	spi_dac_cs_pin => spi_dac_cs_pin,
	spi_mosi_pin => spi_mosi_pin,
	spi_sclk_pin => spi_sclk_pin,
	spi_vga_cs_pin => spi_vga_cs_pin,
	USER_LED => USER_LED
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN      
	C10_CLK50M <= '0';
	WAIT for 10ns;
	C10_CLK50M <= '1';
	WAIT for 10ns;
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END WiPhase_phys_arch;
