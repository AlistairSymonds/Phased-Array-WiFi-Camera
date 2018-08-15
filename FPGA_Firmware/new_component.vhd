-- new_component.vhd

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

entity new_component is
	port (
		clk                  : in std_logic                    := '0';             --          clk.clk
		avalon_slave_address : in std_logic_vector(1 downto 0) := (others => '0'); -- avalon_slave.address
		mm_write_data        : in std_logic_vector(7 downto 0) := (others => '0'); --             .writedata
		mm_write             : in std_logic                    := '0';             --             .write
		reset                : in std_logic                    := '0'              --   reset_sink.reset
	);
end entity new_component;

architecture rtl of new_component is
begin

	-- TODO: Auto-generated HDL template

end architecture rtl; -- of new_component
