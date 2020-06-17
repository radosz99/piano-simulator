--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:06:38 05/06/2020
-- Design Name:   
-- Module Name:   D:/UCISW2/LisKot/Ucisw2_P/PianinoKL/VGAModuleTestBench.vhd
-- Project Name:  PianinoKotLis
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGAModule
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
 
ENTITY VGAModuleTestBench IS
END VGAModuleTestBench;
 
ARCHITECTURE behavior OF VGAModuleTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGAModule
    PORT(
         Clk : IN  std_logic;
         key_in : IN  std_logic_vector(3 downto 0);
         E0 : IN  std_logic;
         F0 : IN  std_logic;
         Rdy : IN  std_logic;
         char_out : OUT  std_logic_vector(7 downto 0);
         char_wy : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal key_in : std_logic_vector(3 downto 0) := (others => '0');
   signal E0 : std_logic := '0';
   signal F0 : std_logic := '0';
   signal Rdy : std_logic := '0';

 	--Outputs
   signal char_out : std_logic_vector(7 downto 0);
   signal char_wy : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGAModule PORT MAP (
          Clk => Clk,
          key_in => key_in,
          E0 => E0,
          F0 => F0,
          Rdy => Rdy,
          char_out => char_out,
          char_wy => char_wy
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 
--	VGAModule_process: process
--	begin
--		F0 <= '1';
--		Rdy <= '1';
--		key_in <= "0001"; -- Q
--		wait for 25 ns;
--		key_in <= "1001"; -- 6
--		wait for 25 ns;
--		key_in <= "0011"; -- W
--		wait for 25 ns;
--		key_in <= "1100"; -- I
--		wait for 25 ns;
--		key_in <= "1111"; -- nic
--		wait for 25 ns;
--		key_in <= "1100"; -- I
--		wait for 25 ns;
--		key_in <= "1111"; -- nic
--		wait;
--	end process;
	
	VGAModule_process: process
	begin
		F0 <= '1';
		Rdy <= '1';
		key_in <= "0001"; -- Q
		wait for 125 ms;
		F0 <= '0';
		wait for 25 ms;
		F0 <= '1';
		key_in <= "1001"; -- 6
		wait for 260 ms;
		F0 <= '0';
		wait for 10 ns;
		F0 <= '1';
		key_in <= "0011"; -- W
		wait for 510 ms;
		F0 <= '0';
		wait for 25 ms;
		F0 <= '1';
		key_in <= "1100"; -- I
		wait for 1010 ms;
		F0 <= '0';
		wait for 25 ms;
		F0 <= '1';
		key_in <= "1111"; -- nic
		wait for 25 ms;
		F0 <= '0';
		wait for 25 ms;
		F0 <= '1';
		key_in <= "1100"; -- I
		wait for 25 ms;
		F0 <= '0';
		wait for 25 ms;
		F0 <= '1';
		key_in <= "1111"; -- nic
		wait for 25 ms;
		F0 <= '0';
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
