LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_UnsignedMultiplier_Dec7 IS
	COMPONENT Chowdhury_UnsignedMultiplier_Dec7 IS
		PORT(A,B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  PH,PL : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT Chowdhury_UnsignedMultiplier_Dec7;
END PACKAGE Chowdhury_Package_UnsignedMultiplier_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.math_real.all;

ENTITY Chowdhury_UnsignedMultiplier_Dec7 IS
	PORT(A,B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  PH,PL : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Chowdhury_UnsignedMultiplier_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_UnsignedMultiplier_Dec7 IS
	
	COMPONENT Chowdhury_LPM_32BitAdder_Dec7 IS
		PORT(cin : IN STD_LOGIC ;
			  dataa : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  datab : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  cout : OUT STD_LOGIC ;
			  result : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	SIGNAL A_BUFFER,B_BUFFER : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL PH_BUFFER,PL_BUFFER : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	
	SIGNAL P : STD_LOGIC_VECTOR(63 DOWNTO 0) := x"0000000000000000";
	
	TYPE BVAL IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL BV : BVAL;
	
	TYPE ANDOPVAL IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL ANDOP : ANDOPVAL;
	
	TYPE DATAAVAL IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL DATAAV : DATAAVAL;
	
	TYPE ADDER_SUM IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL ADDERS_SUM : ADDER_SUM;
	
	TYPE ADDER_COUT IS ARRAY (0 TO 31) OF STD_LOGIC;
	SIGNAL ADDERS_COUT : ADDER_COUT;
	
BEGIN
	
	BV(0) <= (OTHERS => B(0));
	BV(1) <= (OTHERS => B(1));
	BV(2) <= (OTHERS => B(2));
	BV(3) <= (OTHERS => B(3));
	BV(4) <= (OTHERS => B(4));
	BV(5) <= (OTHERS => B(5));
	BV(6) <= (OTHERS => B(6));
	BV(7) <= (OTHERS => B(7));
	BV(8) <= (OTHERS => B(8));
	BV(9) <= (OTHERS => B(9));
	BV(10) <= (OTHERS => B(10));
	BV(11) <= (OTHERS => B(11));
	BV(12) <= (OTHERS => B(12));
	BV(13) <= (OTHERS => B(13));
	BV(14) <= (OTHERS => B(14));
	BV(15) <= (OTHERS => B(15));
	BV(16) <= (OTHERS => B(16));
	BV(17) <= (OTHERS => B(17));
	BV(18) <= (OTHERS => B(18));
	BV(19) <= (OTHERS => B(19));
	BV(20) <= (OTHERS => B(20));
	BV(21) <= (OTHERS => B(21));
	BV(22) <= (OTHERS => B(22));
	BV(23) <= (OTHERS => B(23));
	BV(24) <= (OTHERS => B(24));
	BV(25) <= (OTHERS => B(25));
	BV(26) <= (OTHERS => B(26));
	BV(27) <= (OTHERS => B(27));
	BV(28) <= (OTHERS => B(28));
	BV(29) <= (OTHERS => B(29));
	BV(30) <= (OTHERS => B(30));
	BV(31) <= (OTHERS => B(31));
	
	ANDOP(0) <= A AND BV(0);
	ANDOP(1) <= A AND BV(1);
	ANDOP(2) <= A AND BV(2);
	ANDOP(3) <= A AND BV(3);
	ANDOP(4) <= A AND BV(4);
	ANDOP(5) <= A AND BV(5);
	ANDOP(6) <= A AND BV(6);
	ANDOP(7) <= A AND BV(7);
	ANDOP(8) <= A AND BV(8);
	ANDOP(9) <= A AND BV(9);
	ANDOP(10) <= A AND BV(10);
	ANDOP(11) <= A AND BV(11);
	ANDOP(12) <= A AND BV(12);
	ANDOP(13) <= A AND BV(13);
	ANDOP(14) <= A AND BV(14);
	ANDOP(15) <= A AND BV(15);
	ANDOP(16) <= A AND BV(16);
	ANDOP(17) <= A AND BV(17);
	ANDOP(18) <= A AND BV(18);
	ANDOP(19) <= A AND BV(19);
	ANDOP(20) <= A AND BV(20);
	ANDOP(21) <= A AND BV(21);
	ANDOP(22) <= A AND BV(22);
	ANDOP(23) <= A AND BV(23);
	ANDOP(24) <= A AND BV(24);
	ANDOP(25) <= A AND BV(25);
	ANDOP(26) <= A AND BV(26);
	ANDOP(27) <= A AND BV(27);
	ANDOP(28) <= A AND BV(28);
	ANDOP(29) <= A AND BV(29);
	ANDOP(30) <= A AND BV(30);
	ANDOP(31) <= A AND BV(31);
	
	DATAAV(0) <= '0' & ANDOP(0)(31 DOWNTO 1);
	DATAAV(1) <= ADDERS_COUT(0) & ADDERS_SUM(0)(31 DOWNTO 1);
	DATAAV(2) <= ADDERS_COUT(1) & ADDERS_SUM(1)(31 DOWNTO 1);
	DATAAV(3) <= ADDERS_COUT(2) & ADDERS_SUM(2)(31 DOWNTO 1);
	DATAAV(4) <= ADDERS_COUT(3) & ADDERS_SUM(3)(31 DOWNTO 1);
	DATAAV(5) <= ADDERS_COUT(4) & ADDERS_SUM(4)(31 DOWNTO 1);
	DATAAV(6) <= ADDERS_COUT(5) & ADDERS_SUM(5)(31 DOWNTO 1);
	DATAAV(7) <= ADDERS_COUT(6) & ADDERS_SUM(6)(31 DOWNTO 1);
	DATAAV(8) <= ADDERS_COUT(7) & ADDERS_SUM(7)(31 DOWNTO 1);
	DATAAV(9) <= ADDERS_COUT(8) & ADDERS_SUM(8)(31 DOWNTO 1);
	DATAAV(10) <= ADDERS_COUT(9) & ADDERS_SUM(9)(31 DOWNTO 1);
	DATAAV(11) <= ADDERS_COUT(10) & ADDERS_SUM(10)(31 DOWNTO 1);
	DATAAV(12) <= ADDERS_COUT(11) & ADDERS_SUM(11)(31 DOWNTO 1);
	DATAAV(13) <= ADDERS_COUT(12) & ADDERS_SUM(12)(31 DOWNTO 1);
	DATAAV(14) <= ADDERS_COUT(13) & ADDERS_SUM(13)(31 DOWNTO 1);
	DATAAV(15) <= ADDERS_COUT(14) & ADDERS_SUM(14)(31 DOWNTO 1);
	DATAAV(16) <= ADDERS_COUT(15) & ADDERS_SUM(15)(31 DOWNTO 1);
	DATAAV(17) <= ADDERS_COUT(16) & ADDERS_SUM(16)(31 DOWNTO 1);
	DATAAV(18) <= ADDERS_COUT(17) & ADDERS_SUM(17)(31 DOWNTO 1);
	DATAAV(19) <= ADDERS_COUT(18) & ADDERS_SUM(18)(31 DOWNTO 1);
	DATAAV(20) <= ADDERS_COUT(19) & ADDERS_SUM(19)(31 DOWNTO 1);
	DATAAV(21) <= ADDERS_COUT(20) & ADDERS_SUM(20)(31 DOWNTO 1);
	DATAAV(22) <= ADDERS_COUT(21) & ADDERS_SUM(21)(31 DOWNTO 1);
	DATAAV(23) <= ADDERS_COUT(22) & ADDERS_SUM(22)(31 DOWNTO 1);
	DATAAV(24) <= ADDERS_COUT(23) & ADDERS_SUM(23)(31 DOWNTO 1);
	DATAAV(25) <= ADDERS_COUT(24) & ADDERS_SUM(24)(31 DOWNTO 1);
	DATAAV(26) <= ADDERS_COUT(25) & ADDERS_SUM(25)(31 DOWNTO 1);
	DATAAV(27) <= ADDERS_COUT(26) & ADDERS_SUM(26)(31 DOWNTO 1);
	DATAAV(28) <= ADDERS_COUT(27) & ADDERS_SUM(27)(31 DOWNTO 1);
	DATAAV(29) <= ADDERS_COUT(28) & ADDERS_SUM(28)(31 DOWNTO 1);
	DATAAV(30) <= ADDERS_COUT(29) & ADDERS_SUM(29)(31 DOWNTO 1);
	DATAAV(31) <= ADDERS_COUT(30) & ADDERS_SUM(30)(31 DOWNTO 1);

	ADDER0: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(0), datab=>ANDOP(1), cout=>ADDERS_COUT(0), result=>ADDERS_SUM(0));
	ADDER1: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(1), datab=>ANDOP(2), cout=>ADDERS_COUT(1), result=>ADDERS_SUM(1));
	ADDER2: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(2), datab=>ANDOP(3), cout=>ADDERS_COUT(2), result=>ADDERS_SUM(2));
	ADDER3: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(3), datab=>ANDOP(4), cout=>ADDERS_COUT(3), result=>ADDERS_SUM(3));
	ADDER4: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(4), datab=>ANDOP(5), cout=>ADDERS_COUT(4), result=>ADDERS_SUM(4));
	ADDER5: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(5), datab=>ANDOP(6), cout=>ADDERS_COUT(5), result=>ADDERS_SUM(5));
	ADDER6: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(6), datab=>ANDOP(7), cout=>ADDERS_COUT(6), result=>ADDERS_SUM(6));
	ADDER7: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(7), datab=>ANDOP(8), cout=>ADDERS_COUT(7), result=>ADDERS_SUM(7));
	ADDER8: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(8), datab=>ANDOP(9), cout=>ADDERS_COUT(8), result=>ADDERS_SUM(8));
	ADDER9: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(9), datab=>ANDOP(10), cout=>ADDERS_COUT(9), result=>ADDERS_SUM(9));
	ADDER10: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(10), datab=>ANDOP(11), cout=>ADDERS_COUT(10), result=>ADDERS_SUM(10));
	ADDER11: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(11), datab=>ANDOP(12), cout=>ADDERS_COUT(11), result=>ADDERS_SUM(11));
	ADDER12: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(12), datab=>ANDOP(13), cout=>ADDERS_COUT(12), result=>ADDERS_SUM(12));
	ADDER13: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(13), datab=>ANDOP(14), cout=>ADDERS_COUT(13), result=>ADDERS_SUM(13));
	ADDER14: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(14), datab=>ANDOP(15), cout=>ADDERS_COUT(14), result=>ADDERS_SUM(14));
	ADDER15: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(15), datab=>ANDOP(16), cout=>ADDERS_COUT(15), result=>ADDERS_SUM(15));
	ADDER16: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(16), datab=>ANDOP(17), cout=>ADDERS_COUT(16), result=>ADDERS_SUM(16));
	ADDER17: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(17), datab=>ANDOP(18), cout=>ADDERS_COUT(17), result=>ADDERS_SUM(17));
	ADDER18: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(18), datab=>ANDOP(19), cout=>ADDERS_COUT(18), result=>ADDERS_SUM(18));
	ADDER19: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(19), datab=>ANDOP(20), cout=>ADDERS_COUT(19), result=>ADDERS_SUM(19));
	ADDER20: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(20), datab=>ANDOP(21), cout=>ADDERS_COUT(20), result=>ADDERS_SUM(20));
	ADDER21: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(21), datab=>ANDOP(22), cout=>ADDERS_COUT(21), result=>ADDERS_SUM(21));
	ADDER22: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(22), datab=>ANDOP(23), cout=>ADDERS_COUT(22), result=>ADDERS_SUM(22));
	ADDER23: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(23), datab=>ANDOP(24), cout=>ADDERS_COUT(23), result=>ADDERS_SUM(23));
	ADDER24: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(24), datab=>ANDOP(25), cout=>ADDERS_COUT(24), result=>ADDERS_SUM(24));
	ADDER25: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(25), datab=>ANDOP(26), cout=>ADDERS_COUT(25), result=>ADDERS_SUM(25));
	ADDER26: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(26), datab=>ANDOP(27), cout=>ADDERS_COUT(26), result=>ADDERS_SUM(26));
	ADDER27: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(27), datab=>ANDOP(28), cout=>ADDERS_COUT(27), result=>ADDERS_SUM(27));
	ADDER28: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(28), datab=>ANDOP(29), cout=>ADDERS_COUT(28), result=>ADDERS_SUM(28));
	ADDER29: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(29), datab=>ANDOP(30), cout=>ADDERS_COUT(29), result=>ADDERS_SUM(29));
	ADDER30: Chowdhury_LPM_32BitAdder_Dec7 PORT MAP(cin=>'0', dataa=>DATAAV(30), datab=>ANDOP(31), cout=>ADDERS_COUT(30), result=>ADDERS_SUM(30));
	
	P(0) <= ANDOP(0)(0);
	P(1) <= ADDERS_SUM(0)(0);
	P(2) <= ADDERS_SUM(1)(0);
	P(3) <= ADDERS_SUM(2)(0);
	P(4) <= ADDERS_SUM(3)(0);
	P(5) <= ADDERS_SUM(4)(0);
	P(6) <= ADDERS_SUM(5)(0);
	P(7) <= ADDERS_SUM(6)(0);
	P(8) <= ADDERS_SUM(7)(0);
	P(9) <= ADDERS_SUM(8)(0);
	P(10) <= ADDERS_SUM(9)(0);
	P(11) <= ADDERS_SUM(10)(0);
	P(12) <= ADDERS_SUM(11)(0);
	P(13) <= ADDERS_SUM(12)(0);
	P(14) <= ADDERS_SUM(13)(0);
	P(15) <= ADDERS_SUM(14)(0);
	P(16) <= ADDERS_SUM(15)(0);
	P(17) <= ADDERS_SUM(16)(0);
	P(18) <= ADDERS_SUM(17)(0);
	P(19) <= ADDERS_SUM(18)(0);
	P(20) <= ADDERS_SUM(19)(0);
	P(21) <= ADDERS_SUM(20)(0);
	P(22) <= ADDERS_SUM(21)(0);
	P(23) <= ADDERS_SUM(22)(0);
	P(24) <= ADDERS_SUM(23)(0);
	P(25) <= ADDERS_SUM(24)(0);
	P(26) <= ADDERS_SUM(25)(0);
	P(27) <= ADDERS_SUM(26)(0);
	P(28) <= ADDERS_SUM(27)(0);
	P(29) <= ADDERS_SUM(28)(0);
	P(30) <= ADDERS_SUM(29)(0);
	P(31) <= ADDERS_SUM(30)(0);
	P(32) <= ADDERS_SUM(30)(1);
	P(33) <= ADDERS_SUM(30)(2);
	P(34) <= ADDERS_SUM(30)(3);
	P(35) <= ADDERS_SUM(30)(4);
	P(36) <= ADDERS_SUM(30)(5);
	P(37) <= ADDERS_SUM(30)(6);
	P(38) <= ADDERS_SUM(30)(7);
	P(39) <= ADDERS_SUM(30)(8);
	P(40) <= ADDERS_SUM(30)(9);
	P(41) <= ADDERS_SUM(30)(10);
	P(42) <= ADDERS_SUM(30)(11);
	P(43) <= ADDERS_SUM(30)(12);
	P(44) <= ADDERS_SUM(30)(13);
	P(45) <= ADDERS_SUM(30)(14);
	P(46) <= ADDERS_SUM(30)(15);
	P(47) <= ADDERS_SUM(30)(16);
	P(48) <= ADDERS_SUM(30)(17);
	P(49) <= ADDERS_SUM(30)(18);
	P(50) <= ADDERS_SUM(30)(19);
	P(51) <= ADDERS_SUM(30)(20);
	P(52) <= ADDERS_SUM(30)(21);
	P(53) <= ADDERS_SUM(30)(22);
	P(54) <= ADDERS_SUM(30)(23);
	P(55) <= ADDERS_SUM(30)(24);
	P(56) <= ADDERS_SUM(30)(25);
	P(57) <= ADDERS_SUM(30)(26);
	P(58) <= ADDERS_SUM(30)(27);
	P(59) <= ADDERS_SUM(30)(28);
	P(60) <= ADDERS_SUM(30)(29);
	P(61) <= ADDERS_SUM(30)(30);
	P(62) <= ADDERS_SUM(30)(31);
	P(63) <= ADDERS_COUT(30);
	
	PH <= P(63 DOWNTO 32);
	PL <= P(31 DOWNTO 0);
	
END Chowdhury_Behaviour;