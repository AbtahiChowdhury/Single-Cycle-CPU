LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_SignedSetLessThan_Dec7 IS
	COMPONENT Chowdhury_SignedSetLessThan_Dec7 IS
		PORT(RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT Chowdhury_SignedSetLessThan_Dec7;
END PACKAGE Chowdhury_Package_SignedSetLessThan_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Chowdhury_SignedSetLessThan_Dec7 IS
	PORT(RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Chowdhury_SignedSetLessThan_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_SignedSetLessThan_Dec7 IS

	COMPONENT Chowdhury_LPM_32BitSignedComparator_Dec7 IS
		PORT(dataa : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  datab : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  aeb : OUT STD_LOGIC;
			  alb : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL COMP_OUT : STD_LOGIC;
	
BEGIN
	
	COMPARE: Chowdhury_LPM_32BitSignedComparator_Dec7 PORT MAP(
		dataa=>RS,
		datab=>RT,
		alb=>COMP_OUT
	);
	
	RD <= "0000000000000000000000000000000" & COMP_OUT;
	
END Chowdhury_Behaviour;