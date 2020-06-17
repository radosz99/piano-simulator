----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:42:13 03/31/2020 
-- Design Name: 
-- Module Name:    KeyBoard - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity KeyBoard is
port ( Clk: in  STD_LOGIC;
		 E0: in STD_LOGIC;
		 F0: in  STD_LOGIC;
		 Rdy : in  STD_LOGIC; 		 
		 DO : in  STD_LOGIC_VECTOR(7 downto 0):="00000000";
	    key_out : out  STD_LOGIC_VECTOR(3 downto 0):="0000");
end KeyBoard;

architecture Behavioral of KeyBoard is
type state_type is ( A, B, C, D, E, F, G, H, I, J, K, L, S );
signal state, next_state: state_type;
--signal byte : STD_LOGIC_VECTOR (7 downto 0);
begin

process2 : process( Clk )
begin
--byte <= DO;
	if rising_edge( Clk ) then
		if Rdy ='1' then		
				state <= next_state;
		end if;
	end if;
end process process2;

process3 : process( state, DO, F0 )
begin next_state <= state;
case state is
	when S => if DO = X"15" and F0 = '0' then next_state <= A; -- Q
				 elsif DO = X"1E" and F0 = '0' then next_state <= B; -- 2
				 elsif DO = X"1D" and F0 = '0' then next_state <= C; -- W 
				 elsif DO = X"26" and F0 = '0' then next_state <= D; -- 3
				 elsif DO = X"24" and F0 = '0' then next_state <= E; -- E
				 elsif DO = X"2D" and F0 = '0' then next_state <= F; -- R
				 elsif DO = X"2E" and F0 = '0' then next_state <= G; -- 5
				 elsif DO = X"2C" and F0 = '0'  then next_state <= H; -- T
				 elsif DO = X"36" and F0 = '0'  then next_state <= I; -- 6
				 elsif DO = X"35" and F0 = '0'  then next_state <= J; -- Y
				 elsif DO = X"3C" and F0 = '0'  then next_state <= K; -- U
				 elsif DO = X"43" and F0 = '0'  then next_state <= L; -- I
				 else next_state <= S; end if;
	when A => if DO = X"15" and F0 = '0'  then next_state <= A; -- Q
				 elsif DO = X"1E" and F0 = '0'  then next_state <= B; -- 2
				 elsif DO = X"1D" and F0 = '0'  then next_state <= C; -- W 
				 elsif DO = X"26" and F0 = '0'  then next_state <= D; -- 3
				 elsif DO = X"24" and F0 = '0'  then next_state <= E; -- E
				 elsif DO = X"2D" and F0 = '0'  then next_state <= F; -- R
				 elsif DO = X"2E" and F0 = '0'  then next_state <= G; -- 5
				 elsif DO = X"2C" and F0 = '0'  then next_state <= H; -- T
				 elsif DO = X"36" and F0 = '0'  then next_state <= I; -- 6
				 elsif DO = X"35" and F0 = '0'  then next_state <= J; -- Y
				 elsif DO = X"3C" and F0 = '0'  then next_state <= K; -- U
				 elsif DO = X"43" and F0 = '0'  then next_state <= L; -- I
				 else next_state <= S; end if;
	when B => if DO = X"15" and F0 = '0'  then next_state <= A; -- Q
				 elsif DO = X"1E" and F0 = '0'  then next_state <= B; -- 2
				 elsif DO = X"1D" and F0 = '0'  then next_state <= C; -- W 
				 elsif DO = X"26" and F0 = '0'  then next_state <= D; -- 3
				 elsif DO = X"24" and F0 = '0'  then next_state <= E; -- E
				 elsif DO = X"2D" and F0 = '0'  then next_state <= F; -- R
				 elsif DO = X"2E" and F0 = '0'  then next_state <= G; -- 5
				 elsif DO = X"2C" and F0 = '0'  then next_state <= H; -- T
				 elsif DO = X"36" and F0 = '0'  then next_state <= I; -- 6
				 elsif DO = X"35" and F0 = '0'  then next_state <= J; -- Y
				 elsif DO = X"3C" and F0 = '0'  then next_state <= K; -- U
				 elsif DO = X"43" and F0 = '0'  then next_state <= L; -- I
				 else next_state <= S; end if;
	when C => if DO = X"15" and F0 = '0'  then next_state <= A; -- Q
				 elsif DO = X"1E" and F0 = '0'  then next_state <= B; -- 2
				 elsif DO = X"1D" and F0 = '0'  then next_state <= C; -- W 
				 elsif DO = X"26" and F0 = '0'  then next_state <= D; -- 3
				 elsif DO = X"24" and F0 = '0'  then next_state <= E; -- E
				 elsif DO = X"2D" and F0 = '0'  then next_state <= F; -- R
				 elsif DO = X"2E" and F0 = '0'  then next_state <= G; -- 5
				 elsif DO = X"2C" and F0 = '0'  then next_state <= H; -- T
				 elsif DO = X"36" and F0 = '0'  then next_state <= I; -- 6
				 elsif DO = X"35" and F0 = '0'  then next_state <= J; -- Y
				 elsif DO = X"3C" and F0 = '0'  then next_state <= K; -- U
				 elsif DO = X"43" and F0 = '0'  then next_state <= L; -- I
				 else next_state <= S; end if;
	when D => if DO = X"15" and F0 = '0'  then next_state <= A; -- Q
				 elsif DO = X"1E" and F0 = '0'  then next_state <= B; -- 2
				 elsif DO = X"1D" and F0 = '0'  then next_state <= C; -- W 
				 elsif DO = X"26" and F0 = '0'  then next_state <= D; -- 3
				 elsif DO = X"24" and F0 = '0'  then next_state <= E; -- E
				 elsif DO = X"2D" and F0 = '0'  then next_state <= F; -- R
				 elsif DO = X"2E" and F0 = '0'  then next_state <= G; -- 5
				 elsif DO = X"2C" and F0 = '0'  then next_state <= H; -- T
				 elsif DO = X"36" and F0 = '0'  then next_state <= I; -- 6
				 elsif DO = X"35" and F0 = '0'  then next_state <= J; -- Y
				 elsif DO = X"3C" and F0 = '0'  then next_state <= K; -- U
				 elsif DO = X"43" and F0 = '0'  then next_state <= L; -- I
				 else next_state <= S; end if;
	when E => if DO = X"15" and F0 = '0'  then next_state <= A; -- Q
				 elsif DO = X"1E"  and F0 = '0' then next_state <= B; -- 2
				 elsif DO = X"1D" and F0 = '0'  then next_state <= C; -- W 
				 elsif DO = X"26" and F0 = '0'  then next_state <= D; -- 3
				 elsif DO = X"24" and F0 = '0'  then next_state <= E; -- E
				 elsif DO = X"2D" and F0 = '0'  then next_state <= F; -- R
				 elsif DO = X"2E" and F0 = '0'  then next_state <= G; -- 5
				 elsif DO = X"2C" and F0 = '0'  then next_state <= H; -- T
				 elsif DO = X"36" and F0 = '0'  then next_state <= I; -- 6
				 elsif DO = X"35" and F0 = '0'  then next_state <= J; -- Y
				 elsif DO = X"3C" and F0 = '0'  then next_state <= K; -- U
				 elsif DO = X"43" and F0 = '0'  then next_state <= L; -- I
				 else next_state <= S; end if;
	when F => if DO = X"15" and  F0 = '0'  then next_state <= A; -- Q
				 elsif DO = X"1E" and  F0 = '0'  then next_state <= B; -- 2
				 elsif DO = X"1D" and  F0 = '0'  then next_state <= C; -- W 
				 elsif DO = X"26" and  F0 = '0'  then next_state <= D; -- 3
				 elsif DO = X"24" and  F0 = '0'  then next_state <= E; -- E
				 elsif DO = X"2D"  and  F0 = '0' then next_state <= F; -- R
				 elsif DO = X"2E"  and  F0 = '0' then next_state <= G; -- 5
				 elsif DO = X"2C" and  F0 = '0'  then next_state <= H; -- T
				 elsif DO = X"36"  and  F0 = '0' then next_state <= I; -- 6
				 elsif DO = X"35" and  F0 = '0'  then next_state <= J; -- Y
				 elsif DO = X"3C"  and  F0 = '0' then next_state <= K; -- U
				 elsif DO = X"43" and  F0 = '0'  then next_state <= L; -- I
				 else next_state <= S; end if;
	when G => if DO = X"15"  and F0 = '0' then next_state <= A; -- Q
				 elsif DO = X"1E"  and  F0 = '0' then next_state <= B; -- 2
				 elsif DO = X"1D" and F0 = '0'  then next_state <= C; -- W 
				 elsif DO = X"26"  and  F0 = '0' then next_state <= D; -- 3
				 elsif DO = X"24" and F0 = '0'  then next_state <= E; -- E
				 elsif DO = X"2D" and F0 = '0' then next_state <= F; -- R
				 elsif DO = X"2E"  and  F0 = '0' then next_state <= G; -- 5
				 elsif DO = X"2C"  and  F0 = '0' then next_state <= H; -- T
				 elsif DO = X"36"  and  F0 = '0' then next_state <= I; -- 6
				 elsif DO = X"35"  and  F0 = '0' then next_state <= J; -- Y
				 elsif DO = X"3C"  and  F0 = '0' then next_state <= K; -- U
				 elsif DO = X"43"  and  F0 = '0' then next_state <= L; -- I
				 else next_state <= S; end if;
	when H => if DO = X"15" and  F0 = '0'  then next_state <= A; -- Q
				 elsif DO = X"1E" and  F0 = '0'  then next_state <= B; -- 2
				 elsif DO = X"1D" and  F0 = '0'  then next_state <= C; -- W 
				 elsif DO = X"26" and  F0 = '0'  then next_state <= D; -- 3
				 elsif DO = X"24" and  F0 = '0'  then next_state <= E; -- E
				 elsif DO = X"2D"  and  F0 = '0' then next_state <= F; -- R
				 elsif DO = X"2E" and  F0 = '0'  then next_state <= G; -- 5
				 elsif DO = X"2C"  and F0 = '0' then next_state <= H; -- T
				 elsif DO = X"36" and  F0 = '0'  then next_state <= I; -- 6
				 elsif DO = X"35"  and  F0 = '0' then next_state <= J; -- Y
				 elsif DO = X"3C" and  F0 = '0'  then next_state <= K; -- U
				 elsif DO = X"43" and  F0 = '0'  then next_state <= L; -- I
				 else next_state <= S; end if;
	when I => if DO = X"15"  and  F0 = '0' then next_state <= A; -- Q
				 elsif DO = X"1E"  and  F0 = '0' then next_state <= B; -- 2
				 elsif DO = X"1D"  and  F0 = '0' then next_state <= C; -- W 
				 elsif DO = X"26"  and  F0 = '0' then next_state <= D; -- 3
				 elsif DO = X"24"  and  F0 = '0' then next_state <= E; -- E
				 elsif DO = X"2D" and F0 = '0'  then next_state <= F; -- R
				 elsif DO = X"2E"  and  F0 = '0' then next_state <= G; -- 5
				 elsif DO = X"2C"  and  F0 = '0' then next_state <= H; -- T
				 elsif DO = X"36"  and  F0 = '0' then next_state <= I; -- 6
				 elsif DO = X"35" and  F0 = '0'  then next_state <= J; -- Y
				 elsif DO = X"3C"  and  F0 = '0' then next_state <= K; -- U
				 elsif DO = X"43"  and  F0 = '0' then next_state <= L; -- I
				 else next_state <= S; end if;
	when J => if DO = X"15"  and F0 = '0' then next_state <= A; -- Q
				 elsif DO = X"1E" and  F0 = '0'  then next_state <= B; -- 2
				 elsif DO = X"1D" and  F0 = '0'  then next_state <= C; -- W 
				 elsif DO = X"26"  and  F0 = '0' then next_state <= D; -- 3
				 elsif DO = X"24"  and  F0 = '0' then next_state <= E; -- E
				 elsif DO = X"2D"  and  F0 = '0' then next_state <= F; -- R
				 elsif DO = X"2E"  and  F0 = '0' then next_state <= G; -- 5
				 elsif DO = X"2C"  and  F0 = '0' then next_state <= H; -- T
				 elsif DO = X"36"  and  F0 = '0' then next_state <= I; -- 6
				 elsif DO = X"35"  and  F0 = '0' then next_state <= J; -- Y
				 elsif DO = X"3C"  and F0 = '0' then next_state <= K; -- U
				 elsif DO = X"43" and  F0 = '0'  then next_state <= L; -- I
				 else next_state <= S; end if;
	when K => if DO = X"15"  and  F0 = '0' then next_state <= A; -- Q
				 elsif DO = X"1E" and  F0 = '0'  then next_state <= B; -- 2
				 elsif DO = X"1D"  and  F0 = '0' then next_state <= C; -- W 
				 elsif DO = X"26" and  F0 = '0'  then next_state <= D; -- 3
				 elsif DO = X"24"  and  F0 = '0' then next_state <= E; -- E
				 elsif DO = X"2D"  and  F0 = '0' then next_state <= F; -- R
				 elsif DO = X"2E"  and  F0 = '0' then next_state <= G; -- 5
				 elsif DO = X"2C"  and  F0 = '0' then next_state <= H; -- T
				 elsif DO = X"36"  and  F0 = '0' then next_state <= I; -- 6
				 elsif DO = X"35" and  F0 = '0'  then next_state <= J; -- Y
				 elsif DO = X"3C"  and F0 = '0' then next_state <= K; -- U
				 elsif DO = X"43"  and  F0 = '0' then next_state <= L; -- I
				 else next_state <= S; end if;
	when L => if DO = X"15"  and  F0 = '0' then next_state <= A; -- Q
				 elsif DO = X"1E"  and F0 = '0' then next_state <= B; -- 2
				 elsif DO = X"1D"  and  F0 = '0' then next_state <= C; -- W 
				 elsif DO = X"26" and  F0 = '0'  then next_state <= D; -- 3
				 elsif DO = X"24" and  F0 = '0'  then next_state <= E; -- E
				 elsif DO = X"2D"  and  F0 = '0' then next_state <= F; -- R
				 elsif DO = X"2E"  and  F0 = '0' then next_state <= G; -- 5
				 elsif DO = X"2C"  and  F0 = '0' then next_state <= H; -- T
				 elsif DO = X"36"  and  F0 = '0' then next_state <= I; -- 6
				 elsif DO = X"35"  and  F0 = '0' then next_state <= J; -- Y
				 elsif DO = X"3C"  and  F0 = '0' then next_state <= K; -- U
				 elsif DO = X"43"  and  F0 = '0' then next_state <= L; -- I
				 else next_state <= S; end if;
	when others => next_state <= S;
end case;
end process process3;

process4 : process( state )
begin
	case state is
				when S =>
					key_out <= "1111"; -- nic
            when A =>
					key_out <= "0001"; -- c^3 Q
            when B =>
            	key_out <= "0010"; -- cis^3 2          		
            when C => 
            	key_out <= "0011"; -- d^3 W
            when D =>
					key_out <= "0100"; -- dis^3  3	
            when E =>
            	key_out <= "0101"; -- e^3 E
            when F =>
            	key_out <= "0110"; -- f^3 R
            when G =>
            	key_out <= "0111"; -- fis^3 5
            when H =>
            	key_out <= "1000"; -- g^3 T
            when I =>
            	key_out <= "1001"; -- gis^3 6
            when J =>
            	key_out <= "1010"; -- a^3 Y
            when K =>
            	key_out <= "1011"; -- b^3 U
            when L =>
            	key_out <= "1100"; -- h^3 I	
            when others => key_out <= "1111"; -- nic            	
	end case; 
end process process4;


--with byte select
--    key_out <= "0001" when X"15",
--          "0010" when X"1E",
--          "0011" when X"1D",
--          "0100" when X"26",
--          "0101" when X"24",
--          "0110" when X"2D",
--          "0111" when X"2E",
--          "1000" when X"2C",
--          "1001" when X"36",
--          "1010" when X"35",
--          "1011" when X"3C",
--          "1100" when X"43",
--          "1111" when others;
--		out_rdy <='1' when state = dont_send
--					else '0';

end Behavioral;

