LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_And_Dec7 IS
	COMPONENT Chowdhury_And_Dec7 IS
		PORT(RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT Chowdhury_And_Dec7;
END PACKAGE Chowdhury_Package_And_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Chowdhury_And_Dec7 IS
	PORT(RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Chowdhury_And_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_And_Dec7 IS
BEGIN
	
	RD <= RS AND RT;
	
END Chowdhury_Behaviour;