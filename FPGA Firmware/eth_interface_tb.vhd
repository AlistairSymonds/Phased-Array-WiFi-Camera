library vunit_lib;
context vunit_lib.vunit_context;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity eth_tb is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_example is

component eth_interface is
	port(
		clk : in std_logic;
		enet_clk_125M : in std_logic;
		
		
		ready : out std_logic;
		
		
		
		--physical outputs
		Enet_rg_txclk_o : out std_logic;
		enet_rg_txd_o : out std_logic_vector(3 downto 0);
		enet_rg_txctl_o : out std_logic;
		
		enet_rg_rxclk_o : out std_logic;
		enet_rg_rxd_o : out std_logic_vector(3 downto 0);
		enet_rg_rxctl_o : out std_logic
	);
	
end component;




begin

  clk_proc : process
  begin
    clk <= '0'
    wait for 10ns;
    clk <= '1';
    wait for 10ns;
  end process;

  main : process
  begin
    test_runner_setup(runner, runner_cfg);
    
    




    test_runner_cleanup(runner); -- Simulation ends here
  end process;
end architecture;