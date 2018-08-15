-- Debug_ST_Sink.vhd

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

entity Debug_ST_Sink is
	port (
		ST_sink_connection_data          : in std_logic_vector(7 downto 0) := (others => '0'); -- ST_sink_connection.data
		ST_sink_connection_endofpacket   : in std_logic                    := '0';             --                   .endofpacket
		ST_sink_connection_startofpacket : in std_logic                    := '0';             --                   .startofpacket
		clk                              : in std_logic                    := '0'              --                clk.clk
	);
end entity Debug_ST_Sink;

architecture rtl of Debug_ST_Sink is
begin

	-- TODO: Auto-generated HDL template

end architecture rtl; -- of Debug_ST_Sink
