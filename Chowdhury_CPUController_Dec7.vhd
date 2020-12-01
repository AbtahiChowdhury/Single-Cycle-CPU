LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_CPUController_Dec7 IS
	COMPONENT Chowdhury_CPUController_Dec7 IS
		PORT(IR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  ALUCTR : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
			  PCSRC : OUT STD_LOGIC;
			  REGDST : OUT STD_LOGIC;
			  REGWR : OUT STD_LOGIC;
			  MEMTOREG : OUT STD_LOGIC;
			  MEMWR : OUT STD_LOGIC;
			  ALUSRC : OUT STD_LOGIC;
			  EXTOP : OUT STD_LOGIC);
	END COMPONENT Chowdhury_CPUController_Dec7;
END PACKAGE Chowdhury_Package_CPUController_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Chowdhury_CPUController_Dec7 IS
	PORT(IR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  ALUCTR : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		  PCSRC : OUT STD_LOGIC;
		  REGDST : OUT STD_LOGIC;
		  REGWR : OUT STD_LOGIC;
		  MEMTOREG : OUT STD_LOGIC;
		  MEMWR : OUT STD_LOGIC;
		  ALUSRC : OUT STD_LOGIC;
		  EXTOP : OUT STD_LOGIC);
END Chowdhury_CPUController_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_CPUController_Dec7 IS
BEGIN
	
	PROCESS (IR) BEGIN
		IF (IR(31 DOWNTO 26) = "001111") THEN --LI
			ALUCTR <= "100000";
			PCSRC <= '0';
			REGDST <= '0';
			REGWR <= '1';
			MEMTOREG <= '0';
			MEMWR <= '0';
			ALUSRC <= '1';
			EXTOP <= '1';
		ELSIF (IR(31 DOWNTO 26) = "100011") THEN --LW
			ALUCTR <= "100000";
			PCSRC <= '0';
			REGDST <= '0';
			REGWR <= '1';
			MEMTOREG <= '1';
			MEMWR <= '0';
			ALUSRC <= '1';
			EXTOP <= '1';
		ELSIF (IR(31 DOWNTO 26) = "101011") THEN --SW
			ALUCTR <= "100000";
			PCSRC <= '0';
			REGDST <= '0';
			REGWR <= '0';
			MEMTOREG <= '1';
			MEMWR <= '1';
			ALUSRC <= '1';
			EXTOP <= '1';
		ELSIF (IR(31 DOWNTO 26) = "001000") THEN --ADDI
			ALUCTR <= "100000";
			PCSRC <= '0';
			REGDST <= '0';
			REGWR <= '1';
			MEMTOREG <= '0';
			MEMWR <= '0';
			ALUSRC <= '1';
			EXTOP <= '1';
		ELSIF (IR(31 DOWNTO 26) = "001001") THEN --ADDIU
			ALUCTR <= "100001";
			PCSRC <= '0';
			REGDST <= '0';
			REGWR <= '1';
			MEMTOREG <= '0';
			MEMWR <= '0';
			ALUSRC <= '1';
			EXTOP <= '1';
		ELSIF (IR(31 DOWNTO 26) = "001100") THEN --ANDI
			ALUCTR <= "100100";
			PCSRC <= '0';
			REGDST <= '0';
			REGWR <= '1';
			MEMTOREG <= '0';
			MEMWR <= '0';
			ALUSRC <= '1';
			EXTOP <= '0';
		ELSIF (IR(31 DOWNTO 26) = "001101") THEN --ORI
			ALUCTR <= "100101";
			PCSRC <= '0';
			REGDST <= '0';
			REGWR <= '1';
			MEMTOREG <= '0';
			MEMWR <= '0';
			ALUSRC <= '1';
			EXTOP <= '0';
		ELSIF (IR(31 DOWNTO 26) = "001010") THEN --SLTI
			ALUCTR <= "101010";
			PCSRC <= '0';
			REGDST <= '0';
			REGWR <= '1';
			MEMTOREG <= '0';
			MEMWR <= '0';
			ALUSRC <= '1';
			EXTOP <= '1';
		ELSIF (IR(31 DOWNTO 26) = "001011") THEN --SLTIU
			ALUCTR <= "101011";
			PCSRC <= '0';
			REGDST <= '0';
			REGWR <= '1';
			MEMTOREG <= '0';
			MEMWR <= '0';
			ALUSRC <= '1';
			EXTOP <= '1';
		ELSIF (IR(31 DOWNTO 26) = "000000") THEN --ALU
			ALUCTR <= IR(5 DOWNTO 0);
			PCSRC <= '0';
			REGDST <= '1';
			REGWR <= '1';
			MEMTOREG <= '0';
			MEMWR <= '0';
			ALUSRC <= '0';
			EXTOP <= '1';
		ELSIF (IR(31 DOWNTO 26) = "000100") THEN --BEQ
			ALUCTR <= "100000";
			PCSRC <= '1';
			REGDST <= '0';
			REGWR <= '0';
			MEMTOREG <= '0';
			MEMWR <= '0';
			ALUSRC <= '0';
			EXTOP <= '1';
		ELSIF (IR(31 DOWNTO 26) = "000101") THEN --BNE
			ALUCTR <= "100000";
			PCSRC <= '1';
			REGDST <= '0';
			REGWR <= '0';
			MEMTOREG <= '0';
			MEMWR <= '0';
			ALUSRC <= '0';
			EXTOP <= '1';
		ELSIF (IR(31 DOWNTO 26) = "000010") THEN --J
			ALUCTR <= "100000";
			PCSRC <= '1';
			REGDST <= '0';
			REGWR <= '0';
			MEMTOREG <= '0';
			MEMWR <= '0';
			ALUSRC <= '0';
			EXTOP <= '1';
		ELSE
			ALUCTR <= "111111";
			PCSRC <= '0';
			REGDST <= '0';
			REGWR <= '0';
			MEMTOREG <= '0';
			MEMWR <= '0';
			ALUSRC <= '0';
			EXTOP <= '0';
		END IF;
	END PROCESS;
	
END Chowdhury_Behaviour;