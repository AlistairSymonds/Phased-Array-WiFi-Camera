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
-- Generated on "08/04/2018 23:46:52"
                                                            
-- Vhdl Test Bench template for design  :  hmcad1511_controller
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hmcad1511_controller_vhd_tst IS
END hmcad1511_controller_vhd_tst;
ARCHITECTURE hmcad1511_controller_arch OF hmcad1511_controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL csn : STD_LOGIC;
SIGNAL d1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL d2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL d3 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL d4 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL fclk : STD_LOGIC;
SIGNAL lclk : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL sclk : STD_LOGIC;
SIGNAL sdata : STD_LOGIC;

signal clk_cnt : integer := 0;

COMPONENT hmcad1511_controller
	PORT (
	clk : IN STD_LOGIC;
	csn : BUFFER STD_LOGIC;
	d1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	d2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	d3 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	d4 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	fclk : IN STD_LOGIC := '0';
	lclk : IN STD_LOGIC := '0';
	resetn : BUFFER STD_LOGIC;
	sclk : BUFFER STD_LOGIC;
	sdata : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : hmcad1511_controller
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	csn => csn,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	d4 => d4,
	fclk => fclk,
	lclk => lclk,
	resetn => resetn,
	sclk => sclk,
	sdata => sdata
	);
	
	
external_clks_proc: process 
	begin
	
		wait for 2.5 ns;
		lclk <= '0';
		wait for 1.25 ns;
		fclk <= '0';
		wait for 1.25 ns;
		lclk <= '1';
		clk_cnt <= clk_cnt + 1;
		
		wait for 2.5 ns;
		lclk <= '0';
		wait for 2.5 ns;
		lclk <= '1';
		clk_cnt <= clk_cnt + 1;
		
		wait for 2.5 ns;
		lclk <= '0';
		wait for 1.25 ns;
		fclk <= '1';
		wait for 1.25 ns;
		lclk <= '1';
		clk_cnt <= clk_cnt + 1;
		
		wait for 2.5 ns;
		lclk <= '0';
		wait for 2.5 ns;
		lclk <= '1';
		clk_cnt <= clk_cnt + 1;
		
		
		
		
	end process;    


	stim_proc : process(lclk)
		begin
			if(rising_edge(lclk)) then
				
				case (clk_cnt) is
				
					when 0 =>
						d1 <= "01";
					
					when 1 => 
						d1 <= "11";
					when 2 =>
						d1 <= "00";
					when 3 =>
						d1 <= "10";
				
					when others =>
						d1 <= "00";
				end case;
			
			end if;
		end process;                                        
END hmcad1511_controller_arch;
