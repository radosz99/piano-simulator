----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:01:03 03/06/2020 
-- Design Name: 
-- Module Name:    Sawtooth - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sawtooth is
    Port ( clk : in  STD_LOGIC;
           wout : out  STD_LOGIC_VECTOR(11 downto 0);
			  cmm : out STD_LOGIC_VECTOR(3 downto 0);
			  add : out STD_LOGIC_VECTOR(3 downto 0);
			  Start : out STD_LOGIC;
			  key_in : in STD_LOGIC_VECTOR(3 downto 0)
			  );
end Sawtooth;

architecture Behavioral of Sawtooth is

signal steps : integer :=0;
signal numberCyclesProcessorPerOneStep : integer := 0;
signal data : UNSIGNED(4 downto 0) := "00000";
signal tempIt : UNSIGNED(11 downto 0) := "000000000000";

begin

frequency_out : process(key_in, numberCyclesProcessorPerOneStep)
begin

if key_in = "0001" then
	numberCyclesProcessorPerOneStep <= 1493; --c^3 50 000 000 : 32 : 1046,5 /////1562500?
elsif key_in = "0010" then
	numberCyclesProcessorPerOneStep <= 1409; --cis^3 50 000 000 : 32 : 1108,7
elsif key_in = "0011" then
	numberCyclesProcessorPerOneStep <= 1330; --d^3 50 000 000 : 32 : 1174,7
elsif key_in = "0100" then
	numberCyclesProcessorPerOneStep <= 1256; --dis^3 50 000 000 : 32 : 1244,5
elsif key_in = "0101" then
	numberCyclesProcessorPerOneStep <= 1185; --e^3 50 000 000 : 32 : 1318,5
elsif key_in = "0110" then
	numberCyclesProcessorPerOneStep <= 1119; --f^3 50 000 000 : 32 : 1396,9
elsif key_in = "0111" then
	numberCyclesProcessorPerOneStep <= 1056; --fis^3 50 000 000 : 32 : 1480,0
elsif key_in = "1000" then
	numberCyclesProcessorPerOneStep <= 997; --g^3 50 000 000 : 32 : 1568,0
elsif key_in = "1001" then
	numberCyclesProcessorPerOneStep <= 941; --gis^3 50 000 000 : 32 : 1661,2
elsif key_in = "1010" then
	numberCyclesProcessorPerOneStep <= 888; --a^3 50 000 000 : 32 : 1760
elsif key_in = "1011" then
	numberCyclesProcessorPerOneStep <= 838; --b^3 50 000 000 : 32 : 1865
elsif key_in = "1100" then
	numberCyclesProcessorPerOneStep <= 791; --h^3 50 000 000 : 32 : 1976
else
	numberCyclesProcessorPerOneStep <= 0;

end if;
	
end process;

oneStepIteration : process(clk, data)
	begin
	if(rising_edge(clk)) then
	tempIt <= tempIt + 1;
	Start <= '0';
	if(tempIt = numberCyclesProcessorPerOneStep and numberCyclesProcessorPerOneStep /=0 ) then
		tempIt <= "000000000000";
		data <= data + 1;
		Start <= '1';
		end if;
	end if;
	
	wout <= STD_LOGIC_VECTOR (data)&"0000000";
	add<="1111";
	cmm<="0011";
	
	end process;

sawtoothIteration : process(clk)

begin
if(rising_edge(clk)) then
    if(steps = 31) then
        steps <= 0;
    else
        steps <= steps + 1;
    end if;
end if;

end process;



end Behavioral;