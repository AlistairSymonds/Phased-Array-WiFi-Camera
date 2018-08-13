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
	
	
	
		
		sample_pll_out : out std_logic;
		
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

	type adc_data_t is array (0 to 3) of unsigned(7 downto 0);
	signal adc_data : adc_data_t;
	
	
	
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
	
	
	--pll stuff
	signal pll_locked, pll_scandataout, pll_scandone, pll_c0 : std_logic;
	
	component pll_controller IS
	PORT
	(
		configupdate		: IN STD_LOGIC  := '0';
		inclk0		: IN STD_LOGIC  := '0';
		scanclk		: IN STD_LOGIC  := '1';
		scanclkena		: IN STD_LOGIC  := '0';
		scandata		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC ;
		scandataout		: OUT STD_LOGIC ;
		scandone		: OUT STD_LOGIC 
	);
	END component;
	
	
	
begin
	
	
	adc : hmcad1511_controller
	port map(
		clk => C10_clk50M,
		
		fclk => hmcad1511_fclk,
		lclk => hmcad1511_lclk,
		
		d1 => (hmcad1511_d1a & hmcad1511_d1b),
		d2 => (hmcad1511_d2a & hmcad1511_d2b),
		d3 => (hmcad1511_d3a & hmcad1511_d3b),
		d4 => (hmcad1511_d4a & hmcad1511_d4b),
	
		ch1 => adc_data(0),
		ch2 => adc_data(1),
		ch3 => adc_data(2),
		ch4 => adc_data(3)
	);
	
	pll : pll_controller
	port map(
		configupdate => '0',
		inclk0 => C10_clk50M,
		c0 => pll_c0,
		locked => pll_locked
		
	
	);
	
	sample_pll_out <= pll_c0;
end arch;