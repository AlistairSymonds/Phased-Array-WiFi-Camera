library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity hmcad1511_controller is
	
	

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
		d1_in : in std_logic_vector(1 downto 0);
		d2_in : in std_logic_vector(1 downto 0);
		d3_in : in std_logic_vector(1 downto 0);
		d4_in : in std_logic_vector(1 downto 0)
	);
	
end entity;


architecture arch of hmcad1511_controller is

	component adc_lvds is 
		PORT
		(
			rx_in		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			rx_inclock		: IN STD_LOGIC ;
			rx_out		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	end component;

	signal d1val : std_logic_vector(7 downto 0);
	signal d2val : std_logic_vector(7 downto 0);
	signal d3val : std_logic_vector(7 downto 0);
	signal d4val : std_logic_vector(7 downto 0);
	
	
begin
	
	
	
	
	
	
	d1lvds : adc_lvds
	port map(
		rx_in => d1_in,
		rx_inclock => lclk,
		rx_out => d1val
	);
	
	d2lvds : adc_lvds
	port map(
		rx_in => d2_in,
		rx_inclock => lclk,
		rx_out => d2val
	);
	
	d3lvds : adc_lvds
	port map(
		rx_in => d3_in,
		rx_inclock => lclk,
		rx_out => d3val
	);
	
	d4lvds : adc_lvds
	port map(
		rx_in => d4_in,
		rx_inclock => lclk,
		rx_out => d4val
	);
	
	framing : process(fclk)
		begin
		
			if(rising_edge(fclk)) then
				ch1 <= unsigned(d1val);
				ch2 <= unsigned(d2val);
				ch3 <= unsigned(d3val);
				ch4 <= unsigned(d4val);
			
			end if;
	end process;
	

end arch;