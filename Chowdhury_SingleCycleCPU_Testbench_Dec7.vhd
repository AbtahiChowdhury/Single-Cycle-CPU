LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Chowdhury_SingleCycleCPU_Testbench_Dec7 IS
END Chowdhury_SingleCycleCPU_Testbench_Dec7;

ARCHITECTURE Chowdhury_Test OF Chowdhury_SingleCycleCPU_Testbench_Dec7 IS

	COMPONENT Chowdhury_SingleCycleCPU_Dec7 IS
		PORT(CLK : IN STD_LOGIC);
	END COMPONENT;
	
	--Inputs
	SIGNAL CLK : STD_LOGIC := '0';
	
	--Outputs
	
	--Clock Period
	CONSTANT CLK_PERIOD : TIME := 10 ns;
	
	--Error
	SIGNAL error : STD_LOGIC := '0';
	
	
	BEGIN
		uut: Chowdhury_SingleCycleCPU_Dec7 PORT MAP(CLK=>CLK);
		
		CLK_PROCESS: PROCESS BEGIN
			CLK <= '0';
			WAIT FOR CLK_PERIOD/2;
			CLK <= '1';
			WAIT FOR CLK_PERIOD/2;
		END PROCESS;
		
		stim_proc: PROCESS BEGIN
			
			WAIT FOR 500 ns;
			
			IF (error = '0') THEN
				REPORT "No errors detected. Simulation successful." SEVERITY failure;
			ELSE
				REPORT "Error detected." SEVERITY failure;
			END IF;
			
		END process;
END Chowdhury_Test;