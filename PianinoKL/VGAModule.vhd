----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:37:17 05/05/2020 
-- Design Name: 
-- Module Name:    VGAModule - Behavioral 
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

entity VGAModule is
    Port ( Clk: in  STD_LOGIC;
			  key_in : in  STD_LOGIC_VECTOR(3 downto 0):="0000";
			  E0: in STD_LOGIC;
			  F0: in  STD_LOGIC;
			  Rdy : in  STD_LOGIC;
           char_out : out  STD_LOGIC_VECTOR(7 downto 0):="00000000";
           char_wy : out  STD_LOGIC:='0');
end VGAModule;

architecture Behavioral of VGAModule is
type state_type is ( S, A, B, C, D, E, F, G, H, I, J, K, L, M, X, Y, Z, W );
--constant const_val : unsigned(9 downto 0) := to_unsigned(102,10);
--signal val_in 					 : unsigned( 7 downto 0);
--signal valIn_x_const_val    : unsigned( 17 downto 0);
--signal val_out              : unsigned( 7 downto 0);
signal state, next_state: state_type;
signal temp : UNSIGNED(23 downto 0) := "000000000000000000000000";

SIGNAL decimalCounterOld, unityCounter, unityCounterToDisplay, decimalCounter, decimalCounterToDisplay: unsigned(3 DOWNTO 0) := "0000";

begin

process1 : process( Clk )
begin
	if rising_edge( Clk ) then
			if Rdy ='1' then		
				state <= next_state;
			end if;
	end if;
end process process1;

process2 : process( state, key_in, F0 )
begin next_state <= state;
case state is
	when S => if key_in = "0001" and  F0 = '0' then next_state <= B;
				 elsif key_in = "0010" and  F0 = '0' then next_state <= C;
				 elsif key_in = "0011" and  F0 = '0' then next_state <= D;
				 elsif key_in = "0100" and  F0 = '0' then next_state <= E;
				 elsif key_in = "0101" and  F0 = '0' then next_state <= F;
				 elsif key_in = "0110" and  F0 = '0' then next_state <= G;
				 elsif key_in = "0111" and  F0 = '0' then next_state <= H;
				 elsif key_in = "1000" and  F0 = '0' then next_state <= I;
				 elsif key_in = "1001" and  F0 = '0' then next_state <= J;
				 elsif key_in = "1010" and  F0 = '0' then next_state <= K;
				 elsif key_in = "1011" and  F0 = '0' then next_state <= L;
				 elsif key_in = "1100" and  F0 = '0' then next_state <= M;
				 else next_state <= S; end if;
	when A => next_state <= X;
	when B => next_state <= A;
	when C => next_state <= A;
	when D => next_state <= A;
	when E => next_state <= A;
	when F => next_state <= A;
	when G => next_state <= A;
	when H => next_state <= A;
	when I => next_state <= A;
	when J => next_state <= A;
	when K => next_state <= A;
	when L => next_state <= A;
	when M => next_state <= A;	
	when X => next_state <= Y;
	when Y => next_state <= Z;
	when Z => next_state <= W;
	when W => next_state <= S;
	when others => next_state <= S;
end case;
end process process2;

process3 : process( state, decimalCounterToDisplay, unityCounterToDisplay )
begin
	case state is
				when S =>
					char_out <= "00000000"; -- nic
				when A =>
					char_out <= "00100000"; -- spacja
            when B =>
					char_out <= "01100011"; -- c
				when C =>
					char_out <= "01000011"; -- cis DUZE C
				when D =>
            	char_out <= "01100100"; -- d
				when E =>
            	char_out <= "01000100"; -- dis DUZE D
				when F =>
            	char_out <= "01100101"; -- e
				when G =>
            	char_out <= "01100110"; -- f
				when H =>
            	char_out <= "01000110"; -- fis DUZE F
				when I =>
            	char_out <= "01100111"; -- g
				when J =>
            	char_out <= "01000111"; -- gis DUZE G
				when K =>
            	char_out <= "01100001"; -- a
				when L =>
            	char_out <= "01100010"; -- b
				when M =>
            	char_out <= "01101000"; -- h
				when X =>
					char_out <= std_logic_vector(X"3" & unityCounterToDisplay(3 downto 0));
--					char_out <= std_logic_vector(to_unsigned(globalWynik + 48, char_out'length));
--					char_out <= globalWynik; -- pierwsza cyfra przed kropka (Czesc calkowita)
				when Y =>
					char_out <= "00101110"; -- kropka pomiedzy cyframi
				when Z =>
					char_out <= std_logic_vector(X"3" & decimalCounterToDisplay(3 downto 0));
--					char_out <= std_logic_vector(to_unsigned(globalReszta + 48, char_out'length));
--					char_out <= globalReszta; -- pierwsze cyfra po kropce (czesc dziesietna)
				when W =>
					char_out <= "00100000"; -- spacja
            when others => char_out <= "00000000"; -- nic           	
	end case; 
end process process3;

char_wy_process : process(Rdy)
begin

if Rdy = '0' then
	char_wy <= '0';	
else
	char_wy <= '1';

end if;
	
end process char_wy_process;

cyclesProcessor : process( Clk, F0 )
begin

	if(rising_edge(Clk)) then
		if F0 = '0' then
			temp <= temp + 1;
			if(temp = "010011000100101101000000") then
				temp <= "000000000000000000000000";	
			end if;
			elsif (F0 = '1') then
				temp <= "000000000000000000000000";
		end if;
	end if;

end process cyclesProcessor;


count : process (Clk, temp, F0, Rdy)
begin

if(rising_edge(Clk)) then
	if temp = "010011000100101101000000" then	
		if decimalCounter = "1001" then
			decimalCounter <= "0000";
		else
			decimalCounter <= decimalCounter + 1;
		end if;
	elsif temp = "000000000000000000000000" and F0 = '1' then
		if (decimalCounterToDisplay = "0000") then
				decimalCounterToDisplay <= decimalCounter;
		end if;
		decimalCounter <= "0000";
	elsif temp /= "000000000000000000000000" and F0 = '0' and Rdy = '0' then
		decimalCounterToDisplay <= "0000";
	end if;	
end if;

end process count;

count2 : process (Clk, decimalCounter, F0, Rdy)
begin

if(rising_edge(Clk)) then
	if (decimalCounter="1001" and decimalCounterOld /= decimalCounter) then
		unityCounter <= unityCounter + 1;
		unityCounterToDisplay <= unityCounterToDisplay + 1;
		decimalCounterOld <= decimalCounter;
	elsif temp = "000000000000000000000000" and F0 = '1' and Rdy = '0' then
		unityCounterToDisplay <= "0000";
		decimalCounterOld <= "0000";
	elsif temp = "000000000000000000000000" and F0 = '1' then
		if (unityCounterToDisplay = "0000") then
				unityCounterToDisplay <= unityCounter;
		end if;
		unityCounter <= "0000";
	end if;	
end if;

end process count2;

--decimalCounter : process (Clk, temp, F0)
--begin
--
--	if( F0 = '1' ) then
--		d10Curr  <= (OTHERS =>'0');
--      d1Curr   <= (OTHERS =>'0');
--	elsif ( rising_edge( Clk ) and temp = "010011000100101101000000" and F0 = '0' ) then
--		if d1Curr = 9 then
--			d10Next <= d10Curr + 1;
--			d1Next <= "0000";
--		else
--			d10Next <= d10Curr;
--			d1Next <= d1Curr + 1;
--		end if;
--		
--		d10Curr  <= d10Next;
--   d1Curr   <= d1Next;
--		
--	end if;	
--	
--end process decimalCounter;

	

--	d10Next <= d10Curr + 1 when (d1Curr = 9) else
--				  d10Curr;			  
--		d1Next <= "0000" when (d1Curr = 9) else
--				 d1Curr + 1;
	

--while(F0==1)
--temp++ 5mln licznik
--if(temp=5mln)
--temp=0;
--licznik2=licznik2 + 1;
--
--if(f0 == 0)
--temp=0;

--cyclesProcessor : process(clk, F0)
--	begin
--	while (F0 = '0') loop
----		wynik <= licznikPrzekrecen / 10;
----		valIn_x_const_val <= val_in * const_val;
----		val_out           <= valIn_x_const_val(17 downto 10);
----		wynik <= to_integer(val_out);
--
--		tempWynik <= 0;
--		
--		while(licznikPrzekrecen >= 10) loop
--		licznikPrzekrecen <= licznikPrzekrecen - 10;
--		tempWynik <= tempWynik + 1; -- rejestr musi byc
--		end loop;
--		
--		wynik <= tempWynik;
--		reszta <= licznikPrzekrecen;
--		
--		if(wynik /= 0) then
--			globalWynik <= wynik;
--		end if;
--		
--		-- while licznikprzekrecen>= 10
--		-- licznikprzekrecen = licznikprzekrecen-10
--		-- wynik = wynik + 1
--		-- po za while
--		-- koncowywynik = wynik
--		-- modulo = licznikprzekrecen
--		
----		reszta <= licznikPrzekrecen mod 10;
--		
--		if(reszta /= 0) then
--			globalReszta <= reszta;
--		end if;
--		temp <= "000000000000000000000000";
--		licznikPrzekrecen <= 0;
----		val_in <= "00000000";
--	exit;
--	end loop;
--
--	while (F0 = '1') loop
--		if(rising_edge(clk)) then
--			temp <= temp + 1;
--			if(temp = "010011000100101101000000") then
--			temp <= "000000000000000000000000";
--			licznikPrzekrecen <= licznikPrzekrecen + 1;
----			val_in <= val_in + 1;
--			end if;
--		end if;
--	exit;
--	end loop;
--	
--end process;

--cyclesProcessor : process(clk, F0)
--	begin
--	while (F0 = '0') loop
--		wynik <= licznikPrzekrecen/10;
--		if(wynik /= 0) then
--			globalWynik <= wynik;
--		end if;
--		
--		reszta <= licznikPrzekrecen mod 10;
--		
--		if(reszta /= 0) then
--			globalReszta <= reszta;
--		end if;
--		temp <= "000000000000000000000000";
--		licznikPrzekrecen <= 0;
--	exit;
--	end loop;
--
--	while (F0 = '1') loop
--		if(rising_edge(clk)) then
--			temp <= temp + 1;
--			if(temp = "010011000100101101000000") then
--			temp <= "000000000000000000000000";
--			licznikPrzekrecen <= licznikPrzekrecen + 1;
--			end if;
--		end if;
--	exit;
--	end loop;
--	
--end process;

-- Dziala, zakomentowalismy zeby bawic sie z wyswietlaniem czasu na vgatxt
--process2 : process( state, key_in )
--begin next_state <= state;
--case state is
--	when S => if key_in = "0001" then next_state <= B;
--				 elsif key_in = "0010" then next_state <= C;
--				 elsif key_in = "0011" then next_state <= D;
--				 elsif key_in = "0100" then next_state <= E;
--				 elsif key_in = "0101" then next_state <= F;
--				 elsif key_in = "0110" then next_state <= G;
--				 elsif key_in = "0111" then next_state <= H;
--				 elsif key_in = "1000" then next_state <= I;
--				 elsif key_in = "1001" then next_state <= J;
--				 elsif key_in = "1010" then next_state <= K;
--				 elsif key_in = "1011" then next_state <= L;
--				 elsif key_in = "1100" then next_state <= M;
--				 else next_state <= S; end if;
--	when A => next_state <= S;
--	when B => next_state <= A;
--	when C => next_state <= A;
--	when D => next_state <= A;
--	when E => next_state <= A;
--	when F => next_state <= A;
--	when G => next_state <= A;
--	when H => next_state <= A;
--	when I => next_state <= A;
--	when J => next_state <= A;
--	when K => next_state <= A;
--	when L => next_state <= A;
--	when M => next_state <= A;	
--	when others => next_state <= S;
--end case;
--end process process2;
--
--process3 : process( state )
--begin
--	case state is
--				when S =>
--					char_out <= "00000000"; -- nic
--				when A =>
--					char_out <= "00100000"; -- spacja
--            when B =>
--					char_out <= "01100011"; -- c
--				when C =>
--					char_out <= "01000011"; -- cis DUZE C
--				when D =>
--            	char_out <= "01100100"; -- d
--				when E =>
--            	char_out <= "01000100"; -- dis DUZE D
--				when F =>
--            	char_out <= "01100101"; -- e
--				when G =>
--            	char_out <= "01100110"; -- f
--				when H =>
--            	char_out <= "01000110"; -- fis DUZE F
--				when I =>
--            	char_out <= "01100111"; -- g
--				when J =>
--            	char_out <= "01000111"; -- gis DUZE G
--				when K =>
--            	char_out <= "01100001"; -- a
--				when L =>
--            	char_out <= "01100010"; -- b
--				when M =>
--            	char_out <= "01101000"; -- h
--            when others => char_out <= "00000000"; -- nic           	
--	end case; 
--end process process3;


--process2 : process( state, key_in )
--begin next_state <= state;
--case state is
--	when A => if key_in = "0001" then next_state <= B;
--				 elsif key_in = "0010" then next_state <= D;
--				 elsif key_in = "0011" then next_state <= G;
--				 elsif key_in = "0100" then next_state <= H;
--				 elsif key_in = "0101" then next_state <= I;
--				 elsif key_in = "0110" then next_state <= J;
--				 elsif key_in = "0111" then next_state <= K;
--				 elsif key_in = "1000" then next_state <= L;
--				 elsif key_in = "1001" then next_state <= M;
--				 elsif key_in = "1010" then next_state <= N;
--				 elsif key_in = "1011" then next_state <= O;
--				 elsif key_in = "1100" then next_state <= P;
--				 else next_state <= A; end if;
--	when B => next_state <= C;
--	when C => next_state <= A;
--	when D => next_state <= E;
--	when E => next_state <= F;
--	when F => next_state <= C;
--	when G => next_state <= C;
--	when H => next_state <= E;
--	when I => next_state <= C;
--	when J => next_state <= C;
--	when K => next_state <= E;
--	when L => next_state <= C;
--	when M => next_state <= E;
--	when N => next_state <= C;
--	when O => next_state <= C;
--	when P => next_state <= C;
--	when others => next_state <= A;
--end case;
--end process process2;
--
--process3 : process( state )
--begin
--	case state is
--				when A =>
--					char_out <= "00100000"; -- spacja
--            when B =>
--					char_out <= "01100011"; -- c
--            when C =>
--            	char_out <= "00110011"; -- 3          		
--            when D => 
--            	char_out <= "01100011"; -- c
--            when E =>
--					char_out <= "01101001"; -- i	
--            when F =>
--            	char_out <= "01110011"; -- s
--            when G =>
--            	char_out <= "01100100"; -- d
--				when H =>
--            	char_out <= "01100100"; -- d
--				when I =>
--            	char_out <= "01100101"; -- e
--				when J =>
--            	char_out <= "01100110"; -- f
--				when K =>
--            	char_out <= "01100110"; -- f
--				when L =>
--            	char_out <= "01100111"; -- g
--				when M =>
--            	char_out <= "01100111"; -- g
--				when N =>
--            	char_out <= "01100001"; -- a
--				when O =>
--            	char_out <= "01100010"; -- b
--				when P =>
--            	char_out <= "01101000"; -- h
--            when others => char_out <= "00000000"; -- nic           	
--	end case; 
--end process process3;


--char_wy_process : process(state)
--begin
--
--if state = A or state = B or state = C or state = D or state = E or state = F or state = G or state = H or state = I or state = J or state = K or state = L or state = M or state = N or state = O or state = P then
--	char_wy <= '1';	
--else
--	char_wy <= '0';
--
--end if;
--	
--end process;

--char_out_process : process(key_in)
--begin

-- a 97  110 0001?
-- b 98  110 0010?
-- c 99  110 0011?
-- d 100 110 0100
-- e 101 110 0101
-- f 102 110 0110
-- g 103 110 0111
-- h 104 110 1000
-- i 105 110 1001
-- s 115 111 0011?
-- 3 51  011 0011
-- spacja 32 010 0000

--if key_in = "0001" then
--	char_out <= "01100011"; --c3
--	char_out <= "00110011";
--	char_out <= "00100000";
--elsif key_in = "0010" then
--	char_out <= "01100011"; --cis3
--	char_out <= "01101001";
--	char_out <= "01110011";
--	char_out <= "00110011";
--	char_out <= "00100000";	
--elsif key_in = "0011" then
--	char_out <= "01100100";
--	char_out <= "00110011"; --d3
--	char_out <= "00100000";
--elsif key_in = "0100" then
--	char_out <= "01100100";
--	char_out <= "01101001";
--	char_out <= "01110011";
--	char_out <= "00110011"; --dis3
--	char_out <= "00100000";
--elsif key_in = "0101" then
--	char_out <= "01100101";
--	char_out <= "00110011"; --e3
--	char_out <= "00100000";
--elsif key_in = "0110" then
--	char_out <= "01100110";
--	char_out <= "00110011"; --f3
--	char_out <= "00100000";
--elsif key_in = "0111" then
--	char_out <= "01100110";
--	char_out <= "01101001";
--	char_out <= "01110011";
--	char_out <= "00110011"; --fis3
--	char_out <= "00100000";
--elsif key_in = "1000" then
--	char_out <= "01100111";
--	char_out <= "00110011"; --g3
--	char_out <= "00100000";
--elsif key_in = "1001" then
--	char_out <= "01100111";
--	char_out <= "01101001";
--	char_out <= "01110011";
--	char_out <= "00110011"; --gis3
--	char_out <= "00100001";
--elsif key_in = "1010" then
--	char_out <= "01100001";
--	char_out <= "00110011"; --a3
--	char_out <= "00100000";
--elsif key_in = "1011" then
--	char_out <= "01100010";
--	char_out <= "00110011"; --b3
--	char_out <= "00100000";
--elsif key_in = "1100" then
--	char_out <= "01101000";
--	char_out <= "00110011"; --h3
--	char_out <= "00100000";
--else
--	char_out <= "11111111"; --nie wysylaj nic
--
--end if;
--	
--end process;
--
--char_wy_process : process(key_in)
--begin
--
--if key_in = "0001" or key_in = "0010" or key_in = "0011" or key_in = "0100" or key_in = "0101" or key_in = "0110" or key_in = "0111" or key_in = "1000" or key_in = "1001" or key_in = "1010" or key_in = "1011" or key_in = "1100" then
--	char_wy <= '1';	
--else
--	char_wy <= '0';
--
--end if;
--	
--end process;

end Behavioral;

