LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_3PortRegisterFile_Dec7 IS
	COMPONENT Chowdhury_3PortRegisterFile_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  REGWR : IN STD_LOGIC;
			  RW,RA,RB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			  DATAW : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  DATAA,DATAB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT Chowdhury_3PortRegisterFile_Dec7;
END PACKAGE Chowdhury_Package_3PortRegisterFile_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Chowdhury_3PortRegisterFile_Dec7 IS
	PORT(CLK : IN STD_LOGIC;
		  REGWR : IN STD_LOGIC;
		  RW,RA,RB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		  DATAW : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  DATAA,DATAB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Chowdhury_3PortRegisterFile_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_3PortRegisterFile_Dec7 IS
	
	COMPONENT Chowdhury_32BitRegister_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  EN : IN STD_LOGIC;
			  D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_LPM_5x32Decoder_Dec7 IS
		PORT(data : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			  eq0 : OUT STD_LOGIC;
			  eq1 : OUT STD_LOGIC;
			  eq2 : OUT STD_LOGIC;
			  eq3 : OUT STD_LOGIC;
			  eq4 : OUT STD_LOGIC;
			  eq5 : OUT STD_LOGIC;
			  eq6 : OUT STD_LOGIC;
			  eq7 : OUT STD_LOGIC;
			  eq8 : OUT STD_LOGIC;
			  eq9 : OUT STD_LOGIC;
			  eq10 : OUT STD_LOGIC;
			  eq11 : OUT STD_LOGIC;
			  eq12 : OUT STD_LOGIC;
			  eq13 : OUT STD_LOGIC;
			  eq14 : OUT STD_LOGIC;
			  eq15 : OUT STD_LOGIC;
			  eq16 : OUT STD_LOGIC;
			  eq17 : OUT STD_LOGIC;
			  eq18 : OUT STD_LOGIC;
			  eq19 : OUT STD_LOGIC;
			  eq20 : OUT STD_LOGIC;
			  eq21 : OUT STD_LOGIC;
			  eq22 : OUT STD_LOGIC;
			  eq23 : OUT STD_LOGIC;
			  eq24 : OUT STD_LOGIC;
			  eq25 : OUT STD_LOGIC;
			  eq26 : OUT STD_LOGIC;
			  eq27 : OUT STD_LOGIC;
			  eq28 : OUT STD_LOGIC;
			  eq29 : OUT STD_LOGIC;
			  eq30 : OUT STD_LOGIC;
			  eq31 : OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT Chowdhury_LPM_32Bit32x1Mux_Dec7 IS
		PORT(data0x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data1x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data2x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data3x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data4x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data5x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data6x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data7x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data8x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data9x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data10x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data11x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data12x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data13x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data14x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data15x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data16x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data17x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data18x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data19x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data20x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data21x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data22x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data23x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data24x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data25x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data26x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data27x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data28x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data29x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data30x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  data31x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			  result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	SIGNAL DECODER_OUTPUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	
	TYPE REGISTER_OUTPUT IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL REG_OUT : REGISTER_OUTPUT := (OTHERS=>(OTHERS=>'0'));
	
	TYPE REGISTER_ENABLES IS ARRAY (0 TO 31) OF STD_LOGIC;
	SIGNAL REGEN : REGISTER_ENABLES;
	
BEGIN
	
	Decoder: Chowdhury_LPM_5x32Decoder_Dec7 PORT MAP(
		data=>RW,
		eq0=>DECODER_OUTPUT(0),
		eq1=>DECODER_OUTPUT(1),
		eq2=>DECODER_OUTPUT(2),
		eq3=>DECODER_OUTPUT(3),
		eq4=>DECODER_OUTPUT(4),
		eq5=>DECODER_OUTPUT(5),
		eq6=>DECODER_OUTPUT(6),
		eq7=>DECODER_OUTPUT(7),
		eq8=>DECODER_OUTPUT(8),
		eq9=>DECODER_OUTPUT(9),
		eq10=>DECODER_OUTPUT(10),
		eq11=>DECODER_OUTPUT(11),
		eq12=>DECODER_OUTPUT(12),
		eq13=>DECODER_OUTPUT(13),
		eq14=>DECODER_OUTPUT(14),
		eq15=>DECODER_OUTPUT(15),
		eq16=>DECODER_OUTPUT(16),
		eq17=>DECODER_OUTPUT(17),
		eq18=>DECODER_OUTPUT(18),
		eq19=>DECODER_OUTPUT(19),
		eq20=>DECODER_OUTPUT(20),
		eq21=>DECODER_OUTPUT(21),
		eq22=>DECODER_OUTPUT(22),
		eq23=>DECODER_OUTPUT(23),
		eq24=>DECODER_OUTPUT(24),
		eq25=>DECODER_OUTPUT(25),
		eq26=>DECODER_OUTPUT(26),
		eq27=>DECODER_OUTPUT(27),
		eq28=>DECODER_OUTPUT(28),
		eq29=>DECODER_OUTPUT(29),
		eq30=>DECODER_OUTPUT(30),
		eq31=>DECODER_OUTPUT(31)
	);
	
	REGEN(0) <= REGWR AND DECODER_OUTPUT(0);
	REGEN(1) <= REGWR AND DECODER_OUTPUT(1);
	REGEN(2) <= REGWR AND DECODER_OUTPUT(2);
	REGEN(3) <= REGWR AND DECODER_OUTPUT(3);
	REGEN(4) <= REGWR AND DECODER_OUTPUT(4);
	REGEN(5) <= REGWR AND DECODER_OUTPUT(5);
	REGEN(6) <= REGWR AND DECODER_OUTPUT(6);
	REGEN(7) <= REGWR AND DECODER_OUTPUT(7);
	REGEN(8) <= REGWR AND DECODER_OUTPUT(8);
	REGEN(9) <= REGWR AND DECODER_OUTPUT(9);
	REGEN(10) <= REGWR AND DECODER_OUTPUT(10);
	REGEN(11) <= REGWR AND DECODER_OUTPUT(11);
	REGEN(12) <= REGWR AND DECODER_OUTPUT(12);
	REGEN(13) <= REGWR AND DECODER_OUTPUT(13);
	REGEN(14) <= REGWR AND DECODER_OUTPUT(14);
	REGEN(15) <= REGWR AND DECODER_OUTPUT(15);
	REGEN(16) <= REGWR AND DECODER_OUTPUT(16);
	REGEN(17) <= REGWR AND DECODER_OUTPUT(17);
	REGEN(18) <= REGWR AND DECODER_OUTPUT(18);
	REGEN(19) <= REGWR AND DECODER_OUTPUT(19);
	REGEN(20) <= REGWR AND DECODER_OUTPUT(20);
	REGEN(21) <= REGWR AND DECODER_OUTPUT(21);
	REGEN(22) <= REGWR AND DECODER_OUTPUT(22);
	REGEN(23) <= REGWR AND DECODER_OUTPUT(23);
	REGEN(24) <= REGWR AND DECODER_OUTPUT(24);
	REGEN(25) <= REGWR AND DECODER_OUTPUT(25);
	REGEN(26) <= REGWR AND DECODER_OUTPUT(26);
	REGEN(27) <= REGWR AND DECODER_OUTPUT(27);
	REGEN(28) <= REGWR AND DECODER_OUTPUT(28);
	REGEN(29) <= REGWR AND DECODER_OUTPUT(29);
	REGEN(30) <= REGWR AND DECODER_OUTPUT(30);
	REGEN(31) <= REGWR AND DECODER_OUTPUT(31);
	
	Register0: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(0), D=>DATAW, Q=>REG_OUT(0));
	Register1: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(1), D=>DATAW, Q=>REG_OUT(1));
	Register2: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(2), D=>DATAW, Q=>REG_OUT(2));
	Register3: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(3), D=>DATAW, Q=>REG_OUT(3));
	Register4: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(4), D=>DATAW, Q=>REG_OUT(4));
	Register5: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(5), D=>DATAW, Q=>REG_OUT(5));
	Register6: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(6), D=>DATAW, Q=>REG_OUT(6));
	Register7: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(7), D=>DATAW, Q=>REG_OUT(7));
	Register8: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(8), D=>DATAW, Q=>REG_OUT(8));
	Register9: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(9), D=>DATAW, Q=>REG_OUT(9));
	Register10: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(10), D=>DATAW, Q=>REG_OUT(10));
	Register11: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(11), D=>DATAW, Q=>REG_OUT(11));
	Register12: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(12), D=>DATAW, Q=>REG_OUT(12));
	Register13: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(13), D=>DATAW, Q=>REG_OUT(13));
	Register14: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(14), D=>DATAW, Q=>REG_OUT(14));
	Register15: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(15), D=>DATAW, Q=>REG_OUT(15));
	Register16: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(16), D=>DATAW, Q=>REG_OUT(16));
	Register17: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(17), D=>DATAW, Q=>REG_OUT(17));
	Register18: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(18), D=>DATAW, Q=>REG_OUT(18));
	Register19: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(19), D=>DATAW, Q=>REG_OUT(19));
	Register20: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(20), D=>DATAW, Q=>REG_OUT(20));
	Register21: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(21), D=>DATAW, Q=>REG_OUT(21));
	Register22: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(22), D=>DATAW, Q=>REG_OUT(22));
	Register23: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(23), D=>DATAW, Q=>REG_OUT(23));
	Register24: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(24), D=>DATAW, Q=>REG_OUT(24));
	Register25: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(25), D=>DATAW, Q=>REG_OUT(25));
	Register26: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(26), D=>DATAW, Q=>REG_OUT(26));
	Register27: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(27), D=>DATAW, Q=>REG_OUT(27));
	Register28: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(28), D=>DATAW, Q=>REG_OUT(28));
	Register29: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(29), D=>DATAW, Q=>REG_OUT(29));
	Register30: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(30), D=>DATAW, Q=>REG_OUT(30));
	Register31: Chowdhury_32BitRegister_Dec7 PORT MAP(CLK=>CLK, EN=>REGEN(31), D=>DATAW, Q=>REG_OUT(31));
	
	DataAMux: Chowdhury_LPM_32Bit32x1Mux_Dec7 PORT MAP(
		data0x=>REG_OUT(0),
		data1x=>REG_OUT(1),
		data2x=>REG_OUT(2),
		data3x=>REG_OUT(3),
		data4x=>REG_OUT(4),
		data5x=>REG_OUT(5),
		data6x=>REG_OUT(6),
		data7x=>REG_OUT(7),
		data8x=>REG_OUT(8),
		data9x=>REG_OUT(9),
		data10x=>REG_OUT(10),
		data11x=>REG_OUT(11),
		data12x=>REG_OUT(12),
		data13x=>REG_OUT(13),
		data14x=>REG_OUT(14),
		data15x=>REG_OUT(15),
		data16x=>REG_OUT(16),
		data17x=>REG_OUT(17),
		data18x=>REG_OUT(18),
		data19x=>REG_OUT(19),
		data20x=>REG_OUT(20),
		data21x=>REG_OUT(21),
		data22x=>REG_OUT(22),
		data23x=>REG_OUT(23),
		data24x=>REG_OUT(24),
		data25x=>REG_OUT(25),
		data26x=>REG_OUT(26),
		data27x=>REG_OUT(27),
		data28x=>REG_OUT(28),
		data29x=>REG_OUT(29),
		data30x=>REG_OUT(30),
		data31x=>REG_OUT(31),
		sel=>RA,
		result=>DATAA
	);
	
	DataBMux: Chowdhury_LPM_32Bit32x1Mux_Dec7 PORT MAP(
		data0x=>REG_OUT(0),
		data1x=>REG_OUT(1),
		data2x=>REG_OUT(2),
		data3x=>REG_OUT(3),
		data4x=>REG_OUT(4),
		data5x=>REG_OUT(5),
		data6x=>REG_OUT(6),
		data7x=>REG_OUT(7),
		data8x=>REG_OUT(8),
		data9x=>REG_OUT(9),
		data10x=>REG_OUT(10),
		data11x=>REG_OUT(11),
		data12x=>REG_OUT(12),
		data13x=>REG_OUT(13),
		data14x=>REG_OUT(14),
		data15x=>REG_OUT(15),
		data16x=>REG_OUT(16),
		data17x=>REG_OUT(17),
		data18x=>REG_OUT(18),
		data19x=>REG_OUT(19),
		data20x=>REG_OUT(20),
		data21x=>REG_OUT(21),
		data22x=>REG_OUT(22),
		data23x=>REG_OUT(23),
		data24x=>REG_OUT(24),
		data25x=>REG_OUT(25),
		data26x=>REG_OUT(26),
		data27x=>REG_OUT(27),
		data28x=>REG_OUT(28),
		data29x=>REG_OUT(29),
		data30x=>REG_OUT(30),
		data31x=>REG_OUT(31),
		sel=>RB,
		result=>DATAB
	);
	
END Chowdhury_Behaviour;