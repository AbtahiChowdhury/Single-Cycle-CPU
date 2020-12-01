LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_1BitDiv_Dec7 IS
	COMPONENT Chowdhury_1BitDiv_Dec7 IS
		PORT(M,SI,BI,OKI : IN STD_LOGIC;
			  BO,OKO,D,SO : OUT STD_LOGIC);
	END COMPONENT Chowdhury_1BitDiv_Dec7;
END PACKAGE Chowdhury_Package_1BitDiv_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Chowdhury_1BitDiv_Dec7 IS
	PORT(M,SI,BI,OKI : IN STD_LOGIC;
		  BO,OKO,D,SO : OUT STD_LOGIC);
END Chowdhury_1BitDiv_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_1BitDiv_Dec7 IS
	
	COMPONENT Chowdhury_1BitFullSubtractor_Dec7 IS
		PORT(M,S,BI : IN STD_LOGIC;
			  BO,D : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL DIFF : STD_LOGIC := '0';
	
BEGIN
	
	FS: Chowdhury_1BitFullSubtractor_Dec7 PORT MAP(
		M=>M,
		S=>SI,
		BI=>BI,
		BO=>BO,
		D=>DIFF
	);
	
	D <= DIFF WHEN (OKI = '1') ELSE M;
	SO <= SI;
	OKO <= OKI;
	
END Chowdhury_Behaviour;