--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:37:14 03/30/2020
-- Design Name:   
-- Module Name:   D:/UCISW2/LisKot/Ucisw2_P/PianinoKL/sawToothTestBench.vhd
-- Project Name:  PianinoKotLis
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sawtooth
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
 
ENTITY sawToothTestBench IS
END sawToothTestBench;
 
ARCHITECTURE behavior OF sawToothTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sawtooth
    PORT(
         clk : IN  std_logic;
         wout : OUT  std_logic_vector(11 downto 0);
         cmm : OUT  std_logic_vector(3 downto 0);
         add : OUT  std_logic_vector(3 downto 0);
         Start : OUT  std_logic;
         key_in : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal key_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal wout : std_logic_vector(11 downto 0);
   signal cmm : std_logic_vector(3 downto 0);
   signal add : std_logic_vector(3 downto 0);
   signal Start : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sawtooth PORT MAP (
          clk => clk,
          wout => wout,
          cmm => cmm,
          add => add,
          Start => Start,
          key_in => key_in
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	key_in_process :process
	begin
		key_in <= "0001"; -- Q
		wait for 10 ms;
		key_in <= "1001"; -- 6
		wait for 10 ms;
		key_in <= "0011"; -- W
		wait for 10 ms;
		key_in <= "1100"; -- I
		wait for 10 ms;
		key_in <= "1111"; -- nic
		wait;
	end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;