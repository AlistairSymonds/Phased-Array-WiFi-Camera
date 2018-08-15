library ieee;
use ieee.std_logic_1164.all;

entity clock_divider is
	generic (divisor : in integer);
	port(
		clk_in : in std_logic;
		reset : in std_logic;
		clk_out : out std_logic
	);
end entity;

architecture arch of clock_divider is
	signal count : integer  range 0 to divisor+1:= 0;
	signal clk_temp : std_logic := '0';
	
	begin
	
	counter_proc : process(clk_in, reset)
	begin
		if (reset = '1') then
            clk_temp <= '0';
            count <= 0;
				
      elsif rising_edge(clk_in) then
			
			
			if count >= divisor then
				count <= 0;
				clk_temp <= NOT clk_temp;
			else
				count <= count + 1;
			end if;
			
		end if;
		
	end process;
	
	clk_out <= clk_temp;
end architecture;