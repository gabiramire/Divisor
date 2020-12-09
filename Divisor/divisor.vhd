LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY divisor IS
GENERIC (N: INTEGER := 4);

PORT (clk : IN STD_LOGIC;
      reset, inicio: IN STD_LOGIC;
      entA, entB : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
      pronto, erro : OUT STD_LOGIC;
      quoc, resto, conteudoA, conteudoB : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END divisor;

ARCHITECTURE estrutura OF divisor IS

COMPONENT bo IS
PORT (clk : IN STD_LOGIC;
      m1, cA, cB, cquoc: IN STD_LOGIC;
      entA, entB : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
      AmaiorigualB, Bz : OUT STD_LOGIC;
      quoc, resto, conteudoA, conteudoB : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)); --clk,m1,cA,cB,cquoc,entA,entB,AmaiorigualB,Bz,quoc,resto,conteudoA,conteudoB
END COMPONENT;

COMPONENT bc IS
PORT (Reset, clk, inicio : IN STD_LOGIC;
      AmaiorigualB, Bz : IN STD_LOGIC;
      pronto, erro : OUT STD_LOGIC;
      CA, CB, m1, cquoc: OUT STD_LOGIC); --reset,clk,inicio,AmaiorigualB,Bz,pronto,erro,CA,CB,m1,cquoc
END COMPONENT;

--SIGNAL inii, cpp, caa, decc, azz, bzz : STD_LOGIC;
--SIGNAL contA, contB : STD_LOGIC_VECTOR(N-1 downto 0);

signal AmBi,Bzi : std_logic; --internal signals
signal m1i : std_logic; --mux
signal cAi,cBi,cquoci: std_logic; --registradores


BEGIN
	controle: bc PORT MAP (reset,clk,inicio,AmBi,Bzi,pronto,erro,cAi,cBi,m1i,cquoci);--reset,clk,inicio,AmaiorigualB,Bz,pronto,erro,CA,CB,m1,cquoc
	datapath: bo PORT MAP (clk,m1i,cAi,cBi,cquoci,entA,entB,AmBi,Bzi,quoc,resto,conteudoA,conteudoB);--clk, ini, m1,m2,cA,cB,ccont,cresto,cquoc,entA,entB,AmaiorigualB,Bz,quoc,resto,conteudoA,conteudoB

END estrutura;

