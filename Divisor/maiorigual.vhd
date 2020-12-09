LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY maiorigual IS
GENERIC (N: INTEGER := 4);

PORT (a, b : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		maior : OUT STD_LOGIC);
END maiorigual;

ARCHITECTURE estrutura OF maiorigual IS
BEGIN
	maior <= '1' WHEN a >= b ELSE '0';
END estrutura;

