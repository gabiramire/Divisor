LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY bo IS
GENERIC (N : INTEGER := 4);

PORT (clk : IN STD_LOGIC;
      m1, cA, cB, cquoc: IN STD_LOGIC;
      entA, entB : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
      AmaiorigualB, Bz : OUT STD_LOGIC;
      quoc, resto, conteudoA, conteudoB : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END bo;

-- Sinais de comando
-- ini = RstP = mA = CB  => ini=1 somente em S1
-- CA=1 em S1 e em S4
-- dec = op = m1 = m2  => dec=1 somente em S4 (estado no qual ocorre A <= A - 1 )
-- CP=1 somente em S3 (estado no qual ocorre P <= P + B )

ARCHITECTURE estrutura OF bo IS
	
	COMPONENT registrador IS
	PORT (clk, carga : IN STD_LOGIC;
		  d : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		  q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT mux2para1 IS
	PORT ( a, b : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
           sel: IN STD_LOGIC;
           y : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT somador IS
	PORT (a, b : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		  s : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT subtrator IS
	PORT (a, b : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		  s : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	END COMPONENT;
	
   COMPONENT igualazero IS
	PORT (a : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
         igual : OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT maiorigual IS
	PORT (a, b : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
        maior : OUT STD_LOGIC);
	END COMPONENT;
		
	SIGNAL saimux1, saimux2, sairesto, sairegA, sairegB, saisoma, saisub, saicont, saiquoc: STD_LOGIC_VECTOR (N-1 DOWNTO 0);

BEGIN
	mux1: mux2para1 PORT MAP (saisub, entA, m1, saimux1);
	regA: registrador PORT MAP (clk, cA, saimux1, sairegA);
	regB: registrador PORT MAP (clk, cB, entB, sairegB);
	regresto: registrador PORT MAP (clk, cquoc, sairegA, sairesto);
	sub: subtrator PORT MAP(sairegA, sairegB, saisub);
	geraBz: igualazero PORT MAP (sairegB, Bz);
	
	mux2: mux2para1 PORT MAP (saisoma, "0000", m1, saimux2);
	regcont: registrador PORT MAP (clk, cA, saimux2, saicont);
	soma: somador PORT MAP (saicont, "0001", saisoma);
	regquoc: registrador PORT MAP (clk, cquoc, saicont, saiquoc);
	AmaiorB: maiorigual PORT MAP (sairegA, sairegB, AmaiorigualB);
	
	quoc <= saiquoc;
	resto <= sairesto;
	conteudoA <= sairegA;
	conteudoB <= sairegB;

END estrutura;

