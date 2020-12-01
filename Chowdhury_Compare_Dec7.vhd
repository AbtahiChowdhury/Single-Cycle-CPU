LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_Compare_Dec7 IS
	COMPONENT Chowdhury_Compare_Dec7 IS
		PORT(RS : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  EQUAL : OUT STD_LOGIC);
	END COMPONENT Chowdhury_Compare_Dec7;
END PACKAGE Chowdhury_Package_Compare_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Chowdhury_Compare_Dec7 IS
	PORT(RS : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  EQUAL : OUT STD_LOGIC);
END Chowdhury_Compare_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_Compare_Dec7 IS
BEGIN
	
	PROCESS (RS,RT) BEGIN
		IF (RS = RT) THEN
			EQUAL <= '1';
		ELSE
			EQUAL <= '0';
		END IF;
	END PROCESS;
	
END Chowdhury_Behaviour;