-- Debug_ST_Source.vhd

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

entity Debug_ST_Source is
	port (
		avalon_streaming_source_data          : out std_logic_vector(7 downto 0);        -- avalon_streaming_source.data
		avalon_streaming_source_endofpacket   : out std_logic;                           --                        .endofpacket
		avalon_streaming_source_startofpacket : out std_logic;                           --                        .startofpacket
		clk                                   : in  std_logic                    := '0'  --                     clk.clk
	);
end entity Debug_ST_Source;

architecture rtl of Debug_ST_Source is
begin

	-- TODO: Auto-generated HDL template

	avalon_streaming_source_data <= "00000000";

	avalon_streaming_source_startofpacket <= '0';

	avalon_streaming_source_endofpacket <= '0';

end architecture rtl; -- of Debug_ST_Source
