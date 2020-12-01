LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_ShiftLeftLogical_Dec7 IS
	COMPONENT Chowdhury_ShiftLeftLogical_Dec7 IS
		PORT(RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  SHAMT : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			  OVERFLOW : OUT STD_LOGIC;
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT Chowdhury_ShiftLeftLogical_Dec7;
END PACKAGE Chowdhury_Package_ShiftLeftLogical_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Chowdhury_ShiftLeftLogical_Dec7 IS
	PORT(RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  SHAMT : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		  OVERFLOW : OUT STD_LOGIC;
		  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Chowdhury_ShiftLeftLogical_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_ShiftLeftLogical_Dec7 IS
	
	COMPONENT Chowdhury_LPM_32BitShiftLogical_Dec7 IS
		PORT(data : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  direction : IN STD_LOGIC ;
			  distance : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			  overflow : OUT STD_LOGIC ;
			  result : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;

BEGIN
	
	Shifter: Chowdhury_LPM_32BitShiftLogical_Dec7 PORT MAP(
		data=>RT,
		direction=>'0',
		distance=>SHAMT,
		overflow=>OVERFLOW,
		result=>RD
	);
	
END Chowdhury_Behaviour;