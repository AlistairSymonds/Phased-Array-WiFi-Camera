-- cyclone_10_lp_eval_leds.vhd

-- This file was auto-generated as a prototype implementation of a module
-- created in component editor.  It ties off all outputs to ground and
-- ignores all inputs.  It needs to be edited to make it do something
-- useful.
-- 
-- This file will not be automatically regenerated.  You should check it in
-- to your version control system if you want to keep it.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cyclone_10_lp_eval_leds is
	port (
		clk                     : in  std_logic                    := '0';             --          clk.clk
		avalon_slave_address    : in  std_logic_vector(1 downto 0) := (others => '0'); -- avalon_slave.address
		mm_write_data           : in  std_logic_vector(7 downto 0) := (others => '0'); --             .writedata
		mm_write                : in  std_logic                    := '0';             --             .write
		avalon_slave_chipselect : in  std_logic                    := '0';             --             .chipselect
		reset                   : in  std_logic                    := '0';             --   reset_sink.reset
		Q                       : out std_logic_vector(7 downto 0)                     --  led_conduit.std_logic_vector
	);
end entity cyclone_10_lp_eval_leds;

architecture rtl of cyclone_10_lp_eval_leds is
begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			if(avalon_slave_chipselect = '1' and mm_write = '1') then
				Q <= mm_write_data;
			end if;
		end if;
	end process;
	
end architecture rtl; -- of cyclone_10_lp_eval_leds
