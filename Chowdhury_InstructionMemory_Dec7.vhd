LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_InstructionMemory_Dec7 IS
	COMPONENT Chowdhury_InstructionMemory_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  ADR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  DATAOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT Chowdhury_InstructionMemory_Dec7;
END PACKAGE Chowdhury_Package_InstructionMemory_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Chowdhury_InstructionMemory_Dec7 IS
	PORT(CLK : IN STD_LOGIC;
		  ADR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  DATAOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Chowdhury_InstructionMemory_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_InstructionMemory_Dec7 IS
	
	COMPONENT Chowdhury_LPM_InstructionMemory_Dec7 IS
		PORT(address : IN STD_LOGIC_VECTOR (19 DOWNTO 0);
			  clock : IN STD_LOGIC  := '1';
			  data : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  wren : IN STD_LOGIC ;
			  q : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_32BitRegister_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  EN : IN STD_LOGIC;
			  D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;

	SIGNAL DATAOUT_BUFF : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"FFFFFFFF";
	
BEGIN
	
	InstructionMemory: Chowdhury_LPM_InstructionMemory_Dec7 PORT MAP(
		address=>ADR(19 DOWNTO 0),
		clock=>CLK,
		data=>x"00000000",
		wren=>'0',
		q=>DATAOUT_BUFF
	);
	
	PROCESS (DATAOUT_BUFF) BEGIN
		IF (DATAOUT_BUFF = x"00000000") THEN
			DATAOUT <= x"FFFFFFFF";
		ELSE
			DATAOUT <= DATAOUT_BUFF;
		END IF;
	END PROCESS;
	
END Chowdhury_Behaviour;