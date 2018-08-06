library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adc_spi is
	port(
		clk : in std_logic;
		
		begin_tx : in std_logic;
		
		clk_div : in unsigned(7 downto 0);
		spi_data_in : std_logic_vector(23 downto 0);
		sclk : out std_logic;
		sdata : out std_logic;
		csn : out std_logic
	);
	
end entity;

architecture arch of adc_spi is


component clk_div8 is

port(
	clk_in : in std_logic;
	divider : in unsigned(7 downto 0);
	clk_out : out std_logic
);

end component;



signal bit_pos : integer range 0 to 23 := 23;
type spi_state is (idle, saving, tx);
signal state : spi_state;

signal internal_buffer : std_logic_vector(23 downto 0);
signal clk_div_internal : unsigned(7 downto 0);
signal spi_clk : std_logic;


begin
	spi_clk_divider : clk_div8
	port map(
		clk_in => clk,
		divider => clk_div_internal,
		clk_out => spi_clk
	
	);

	set_state : process(clk)
	begin
		if(rising_edge(clk)) then
			
			case(state) is
				when idle =>
					if(begin_tx = '1') then
						state <= saving;
					else 
						state <= idle;
					end if;
					
				when saving =>
					internal_buffer <= spi_data_in;
					clk_div_internal <= clk_div;
					state <= tx;
				when tx =>
					if(bit_pos > 0) then
						state <= tx;
					else
						state <= idle;
					end if;
				when others =>
					state <= idle;
			end case;
		
		end if;
	end process;
	
	
	
	
	set_outputs : process(state, bit_pos)
	begin
			
			case(state) is
				when idle =>
					sclk <= '0';
					sdata <= '0';
					csn <= '1';
					
				when saving =>
					
					sclk <= '0';
					sdata <= '0';
					csn <= '0';
					
				when tx =>
					sdata <= internal_buffer(bit_pos);
					sclk <= spi_clk;
					csn <= '0';
				when others =>
					sclk <= '0';
					sdata <= '0';
					csn <= '1';
			end case;
	
	end process;
	
	process(spi_clk)
		begin
			if(rising_edge(spi_clk)) then
				if(state = tx)then
					if(bit_pos > 0) then
						bit_pos <= bit_pos - 1;
					else
						bit_pos <= 0;
					end if;
				else
					bit_pos <= 23;
				end if;
			end if;
	end process;
	
	
end architecture;

