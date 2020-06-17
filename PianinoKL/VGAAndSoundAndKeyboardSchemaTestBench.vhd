-- Vhdl test bench created from schematic D:\UCISW2\LisKot\Ucisw2_P\PianinoKL\VGAAndSoundAndKeyboardSchema.sch - Sat May 16 11:38:29 2020
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY VGAAndSoundAndKeyboardSchema_VGAAndSoundAndKeyboardSchema_sch_tb IS
END VGAAndSoundAndKeyboardSchema_VGAAndSoundAndKeyboardSchema_sch_tb;
ARCHITECTURE behavioral OF 
      VGAAndSoundAndKeyboardSchema_VGAAndSoundAndKeyboardSchema_sch_tb IS 

   COMPONENT VGAAndSoundAndKeyboardSchema
   PORT( Clk	:	IN	STD_LOGIC; 
          E0	:	IN	STD_LOGIC; 
          F0	:	IN	STD_LOGIC; 
          Rdy	:	IN	STD_LOGIC; 
          DO	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          char_wy	:	OUT	STD_LOGIC; 
          char_out	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Start	:	OUT	STD_LOGIC; 
          wout	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0); 
          cmm	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          add	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0));
   END COMPONENT;

   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL E0	:	STD_LOGIC;
   SIGNAL F0	:	STD_LOGIC;
   SIGNAL Rdy	:	STD_LOGIC;
   SIGNAL DO	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL char_wy	:	STD_LOGIC;
   SIGNAL char_out	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Start	:	STD_LOGIC;
   SIGNAL wout	:	STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL cmm	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL add	:	STD_LOGIC_VECTOR (3 DOWNTO 0);

	constant Clk_period : time := 10 ns;
	
	TYPE stdlogic_table IS ARRAY(0 to 19) OF std_logic_vector(7 downto 0);
	
	CONSTANT signal_table : stdlogic_table := (
       X"31",X"15",X"1E",X"1D",X"26",X"24",X"2D", X"2E", X"2C", X"36",X"35",X"3C", X"43",X"21",X"22",X"15",X"1E",X"1D",X"3B",X"42"
		);
		
BEGIN

   UUT: VGAAndSoundAndKeyboardSchema PORT MAP(
		Clk => Clk, 
		E0 => E0, 
		F0 => F0, 
		Rdy => Rdy, 
		DO => DO, 
		char_wy => char_wy, 
		char_out => char_out, 
		Start => Start, 
		wout => wout, 
		cmm => cmm, 
		add => add
   );

-- *** Test Bench - User Defined Section ***

   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
	
	DO_Rdy: process
	begin
		Rdy <= '1';
		wait for 20 ns;
		Rdy <= '0';
		wait for 609999980 ns; 
	end process;
	
		DO_F0: process
	begin
		F0 <= '0';
		wait for 610 ms;
		F0 <= '1';
		wait for 610 ms; 
	end process;
	
	sygnal: process
	begin
		for i in 0 to 16 loop
			DO <= signal_table(i);
		wait until F0='0';
		end loop;
	end process;
	
	-- *** End Test Bench - User Defined Section ***

END;
