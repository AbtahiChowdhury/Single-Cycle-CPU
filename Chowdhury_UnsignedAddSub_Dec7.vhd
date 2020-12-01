LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_UnsignedAddSub_Dec7 IS
	COMPONENT Chowdhury_UnsignedAddSub_Dec7 IS
		PORT(ADDSUB : IN STD_LOGIC;
			  RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  OVERFLOW : OUT STD_LOGIC;
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT Chowdhury_UnsignedAddSub_Dec7;
END PACKAGE Chowdhury_Package_UnsignedAddSub_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Chowdhury_UnsignedAddSub_Dec7 IS
	PORT(ADDSUB : IN STD_LOGIC;
		  RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  OVERFLOW : OUT STD_LOGIC;
		  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Chowdhury_UnsignedAddSub_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_UnsignedAddSub_Dec7 IS
	
	COMPONENT Chowdhury_LPM_32BitUnsignedAddSub_Dec7 IS
		PORT(add_sub : IN STD_LOGIC ;
			  dataa : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  datab : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  overflow : OUT STD_LOGIC ;
			  result : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
BEGIN

	AdderSubtractor: Chowdhury_LPM_32BitUnsignedAddSub_Dec7 PORT MAP(
		add_sub=>ADDSUB,
		dataa=>RS,
		datab=>RT,
		overflow=>OVERFLOW,
		result=>RD
	);
	
END Chowdhury_Behaviour;