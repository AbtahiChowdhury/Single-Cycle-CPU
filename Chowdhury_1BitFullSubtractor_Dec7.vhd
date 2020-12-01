LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_1BitFullSubtractor_Dec7 IS
	COMPONENT Chowdhury_1BitFullSubtractor_Dec7 IS
		PORT(M,S,BI : IN STD_LOGIC;
			  BO,D : OUT STD_LOGIC);
	END COMPONENT Chowdhury_1BitFullSubtractor_Dec7;
END PACKAGE Chowdhury_Package_1BitFullSubtractor_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Chowdhury_1BitFullSubtractor_Dec7 IS
	PORT(M,S,BI : IN STD_LOGIC;
		  BO,D : OUT STD_LOGIC);
END Chowdhury_1BitFullSubtractor_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_1BitFullSubtractor_Dec7 IS	
BEGIN
	
	D <= M XOR S XOR BI;
	BO <= ((NOT M) AND S) OR ((NOT (M XOR S)) AND BI);
	
END Chowdhury_Behaviour;