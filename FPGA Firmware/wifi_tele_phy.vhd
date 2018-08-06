library ieee;
use ieee.std_logic_1164.all;

entity wifi_tele_phy is

	port(
	
		--
		C10_clk50M : in std_logic;
	
		--HMC AD1511 diff pairs
		hmcad1511_fclk : in std_logic;
		hmcad1511_lclk : in std_logic;
	
		hmcad1511_d1a : in std_logic;
		hmcad1511_d1b : in std_logic;
		
		hmcad1511_d2a : in std_logic;
		hmcad1511_d2b : in std_logic;
		
		hmcad1511_d3a : in std_logic;
		hmcad1511_d3b : in std_logic;
		
		hmcad1511_d4a : in std_logic;
		hmcad1511_d4b : in std_logic
	);

	

end entity;


architecture arch of wifi_tele_phy is

	
	
	
	-- hmcad1511 signals
	
	
	
begin
	
end arch;