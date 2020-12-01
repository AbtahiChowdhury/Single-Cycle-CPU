LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_32BitInstructionRegister_Dec7 IS
	COMPONENT Chowdhury_32BitInstructionRegister_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  EN : IN STD_LOGIC;
			  D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT Chowdhury_32BitInstructionRegister_Dec7;
END PACKAGE Chowdhury_Package_32BitInstructionRegister_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Chowdhury_32BitInstructionRegister_Dec7 IS
	PORT(CLK : IN STD_LOGIC;
		  EN : IN STD_LOGIC;
		  D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Chowdhury_32BitInstructionRegister_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_32BitInstructionRegister_Dec7 IS
	
	SIGNAL Q_BUFF : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"FFFFFFFF";
	
BEGIN
	
	PROCESS (CLK) BEGIN
		IF (RISING_EDGE(CLK)) THEN
			IF (EN = '1') THEN
				Q_BUFF <= D;
			END IF;
		END IF;
	END PROCESS;
	
	Q <= Q_BUFF;
	
END Chowdhury_Behaviour;