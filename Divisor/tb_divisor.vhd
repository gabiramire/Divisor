library ieee;
use ieee.std_logic_1164.all;

Entity tb_divisor is -- entidade vazia 
end tb_divisor;

architecture behavior of tb_divisor  is
    signal clk, reset, inicio, pronto, erro : std_logic;  -- 
    signal entA, entB: std_logic_vector(3 downto 0);  -- 
	 signal quoc,resto,conteudoA,conteudoB  : std_logic_vector(3 downto 0); 
begin
    -- connecting testbench signals with testbanch_multi1
    UUT : entity work.divisor port map (clk =>clk,reset=>reset,inicio=>inicio,entA=>entA,entB=>entB,pronto=>pronto,erro=>erro,quoc=>quoc,resto=>resto,conteudoA=>conteudoA,conteudoB=>conteudoB);--clk,reset,inicio,entA,entB,pronto,erro,quoc,resto,conteudoA,conteudoB

    -- inputs
    entA <= "0000", "1010" after 20 ns;     --
    entB  <= "0000", "1111" after 20 ns;    --
    reset <= '1', '0' after 10 ns;
    inicio <= '1', '0' after 60 ns;

Multi : process
constant period: time := 20 ns;
begin
	clk <= '0';
	wait for period/2;
	clk <= '1';
	wait for period/2;
end process;
       
end behavior ;

