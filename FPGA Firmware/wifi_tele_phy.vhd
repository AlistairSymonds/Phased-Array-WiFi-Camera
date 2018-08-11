library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wifi_tele_phy is

	port(
	
		--
		C10_clk50M : in std_logic;
	
	
		--spi lines
		adc_cs : out std_logic;
		vga_cs : out std_logic;
		dac_cs : out std_logic;
		mosi : out std_logic;
		sclk : out std_logic;
	
	
	
		--HMC AD1511 diff pairs
		sample_pll_out : out std_logic;
		
		
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

	type adc_data is array (0 to 3) of unsigned(7 downto 0);
	
	
	-- hmcad1511 signals
	component hmcad1511_controller is
		port(
			clk : in std_logic;
		
		
		
			--data out
			ch1 : out unsigned(7 downto 0);
			ch2 : out unsigned(7 downto 0);
			ch3 : out unsigned(7 downto 0);
			ch4 : out unsigned(7 downto 0);
			
			
			
			--LVDS Inputs
			fclk : in std_logic;
			lclk : in std_logic;
				
			
			-- dxA = dx(0), dXB = dx(1)
			d1 : in std_logic_vector(1 downto 0);
			d2 : in std_logic_vector(1 downto 0);
			d3 : in std_logic_vector(1 downto 0);
			d4 : in std_logic_vector(1 downto 0)
		);
		
	end component;
	
	
begin
	
	
	adc : hmcad1511_controller
	port map(
	
		fclk =>
		lclk =>
		
		d1=>
		d2=>
		d3=>
		d4=>
	
		ch1 => ad_data(0);
		ch2 => ad_data(1);
		ch3 => ad_data(2);
		ch4 => ad_data(3);
		
	
	);
	
	
	
	
end arch;