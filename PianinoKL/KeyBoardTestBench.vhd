--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:21:10 03/31/2020
-- Design Name:   
-- Module Name:   D:/UCISW2/LisKot/Ucisw2_P/PianinoKL/KeyBoardTestBench.vhd
-- Project Name:  PianinoKotLis
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: KeyBoard
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY KeyBoardTestBench IS
END KeyBoardTestBench;
 
ARCHITECTURE behavior OF KeyBoardTestBench IS
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT KeyBoard
    PORT(
         Clk : IN  std_logic;
         E0 : IN  std_logic;
         F0 : IN  std_logic;
         Rdy : IN  std_logic;
         DO : IN  std_logic_vector(7 downto 0);
         key_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal E0 : std_logic := '0';
   signal F0 : std_logic := '0';
   signal Rdy : std_logic := '0';
   signal DO : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal key_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: KeyBoard PORT MAP (
          Clk => Clk,
          E0 => E0,
          F0 => F0,
          Rdy => Rdy,
          DO => DO,
          key_out => key_out
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 
	keyBoard_process: process
	begin
		F0 <= '1';
		Rdy <= '1';		
		wait for 200ns;
		DO <= X"26"; -- dis^3 3, 0100 na key_out
		wait for 200ns;
		DO <= X"1D"; -- d^3  W, 0011 na key_out
		wait for 200ns;
		F0 <= '0';
		wait for 200ns;
		DO <= X"15"; -- c^3  Q, 0001 na key_out
		wait for 200ns;		
		--Rdy <= '0';
		DO <= X"2E"; -- fis^3 5, 0111 na key_out
		wait for 200ns;
		DO <= X"2C"; -- g^3 T, 1000 na key_out
		wait for 200ns;		
		--Rdy <= '1';
		DO <= X"35"; -- a^3 Y, 1010 na key_out
		wait for 200ns;
		DO <= X"43"; -- h^3 I, 1100 na key_out
		wait for 200ns;
		DO <= X"1E"; -- cis^3 2, 0010 na key_out
		wait for 200ns;
		DO <= X"1D"; -- d^3 W, 0011 na key_out
		wait for 200ns;
		DO <= X"11"; -- nie ma takiego
		wait;
	end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
