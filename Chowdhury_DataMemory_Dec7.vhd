LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_DataMemory_Dec7 IS
	COMPONENT Chowdhury_DataMemory_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  MEMWR : IN STD_LOGIC;
			  ADR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  DATAIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  DATAOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT Chowdhury_DataMemory_Dec7;
END PACKAGE Chowdhury_Package_DataMemory_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Chowdhury_DataMemory_Dec7 IS
	PORT(CLK : IN STD_LOGIC;
		  MEMWR : IN STD_LOGIC;
		  ADR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  DATAIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  DATAOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Chowdhury_DataMemory_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_DataMemory_Dec7 IS
	
	COMPONENT Chowdhury_LPM_DataMemory_Dec7 IS
		PORT(address : IN STD_LOGIC_VECTOR (19 DOWNTO 0);
			  clock : IN STD_LOGIC  := '1';
			  data : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  wren : IN STD_LOGIC ;
			  q : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
BEGIN
	
	DataMemory: Chowdhury_LPM_DataMemory_Dec7 PORT MAP(
		address=>ADR(19 DOWNTO 0),
		clock=>CLK,
		data=>DATAIN,
		wren=>MEMWR,
		q=>DATAOUT
	);
	
END Chowdhury_Behaviour;