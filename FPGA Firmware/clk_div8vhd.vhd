library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clk_div8 is

port(
	clk_in : in std_logic;
	divider : in unsigned(7 downto 0);
	clk_out : out std_logic
);

end entity;

architecture arch of clk_div8 is

signal cnt : integer range 0 to 255;
signal clk_o : std_logic := '0';

begin
	process(clk_in)
		begin
			if(rising_edge(clk_in)) then
				if(cnt < divider-1) then
					cnt <= cnt + 1;
				else 
					cnt <= 0;
					clk_o <= not clk_o;
				end if;
				
			end if;
	end process;
	

	clk_out <= clk_o;
	
end arch;