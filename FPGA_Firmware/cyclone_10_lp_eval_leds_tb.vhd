-- cyclone_10_lp_eval_leds.vhd

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

library vunit_lib;
context vunit_lib.vunit_context;

entity cyclone_10_lp_eval_leds_tb is
generic (runner_cfg : string);
end cyclone_10_lp_eval_leds_tb;
architecture arch of cyclone_10_lp_eval_leds_tb is

component cyclone_10_lp_eval_leds is
	port (
		clk                  : in  std_logic                    := '0';             --          clk.clk
		avalon_slave_address : in  std_logic_vector(1 downto 0) := (others => '0'); -- avalon_slave.address
		mm_write_data        : in  std_logic_vector(7 downto 0) := (others => '0'); --             .writedata
		mm_write             : in  std_logic                    := '0';             --             .write
		reset                : in  std_logic                    := '0';             --   reset_sink.reset
		leds                 : out std_logic_vector(3 downto 0)                     --  led_conduit.std_logic_vector
	);
end component;

signal clk : std_logic;
signal slave_addr : std_logic_vector( 1 downto 0);
signal mm_write_data : std_logic_vector(7 downto 0);
signal mm_write : std_logic;
signal reset : std_logic := '1';
signal leds : std_logic_vector(3 downto 0);


begin

leds_comp : cyclone_10_lp_eval_leds
	port map(
		clk => clk,
		avalon_slave_address => slave_addr,
		mm_write => mm_write,
		mm_write_data => mm_write_data,
		reset => reset,
		leds => leds
	);



clk_proc : process
begin
	clk <= '0';
	wait for 10ns;
	clk <='1';
	wait for 10ns;
end process;


main : process
  begin
    test_runner_setup(runner, runner_cfg);
	
    reset <= '1';
	report "Hello world!";
	wait until falling_edge(clk);
	assert leds = "0000" report "reset incorrect" severity failure;
	reset <= '0';
	
	slave_addr <= "01";
	mm_write_data <= x"01";
	wait until falling_edge(clk);
	assert leds = "0000" report "reset incorrect" severity failure;

	mm_write <= '1';
	wait until falling_edge(clk);
	assert leds = "0010" report "reset incorrect" severity failure;

	wait until falling_edge(clk);

	mm_write <= '1';
	mm_write_data <= x"00";
	wait until falling_edge(clk);
	assert leds = "0000" report "reset incorrect" severity failure;

    test_runner_cleanup(runner); -- Simulation ends here
  end process;

end architecture;