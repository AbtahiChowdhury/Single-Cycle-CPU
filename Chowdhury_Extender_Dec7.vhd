LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_Extender_Dec7 IS
	COMPONENT Chowdhury_Extender_Dec7 IS
		PORT(EXTOP : IN STD_LOGIC;
			  WORD16 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			  WORD32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT Chowdhury_Extender_Dec7;
END PACKAGE Chowdhury_Package_Extender_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Chowdhury_Extender_Dec7 IS
	PORT(EXTOP : IN STD_LOGIC;
		  WORD16 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		  WORD32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Chowdhury_Extender_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_Extender_Dec7 IS
	
	COMPONENT Chowdhury_LPM_32Bit2x1Mux_Dec7 IS
		PORT(data0x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data1x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  sel : IN STD_LOGIC ;
			  result : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	SIGNAL SEP,SEN,ZE,SE : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";

BEGIN
	
	ZE <= x"0000" & WORD16;
	SEP <= x"0000" & WORD16;
	SEN <= x"1111" & WORD16;
	
	SignExtend: Chowdhury_LPM_32Bit2x1Mux_Dec7 PORT MAP(
		data0x=>SEP,
		data1x=>SEN,
		sel=>WORD16(15),
		result=>SE
	);
	
	Extend: Chowdhury_LPM_32Bit2x1Mux_Dec7 PORT MAP(
		data0x=>ZE,
		data1x=>SE,
		sel=>EXTOP,
		result=>WORD32
	);
	
END Chowdhury_Behaviour;