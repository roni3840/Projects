library ieee , my_func;
use ieee.std_logic_1164.all;
use work.basic_func.all;

entity prob1 is
	port (x1,x2,x3,x4,x5 : in std_logic; h : out std_logic);
end prob1;

architecture structural of prob1 is
	
	--declaration of signals used to inerconnect gates
	signal x1_NOT, x2_NOT, x3_NOT, x4_NOT, x5_NOT, B1, B2, B3, B4, B5 : std_logic;
	
begin 
		--component instantiations statements
		U0: myNOT1 port map (x1,x1_NOT);
		U1: myNOT1 port map (x2,x2_NOT);
		U2: myNOT1 port map (x3,x3_NOT);
		U3: myNOT1 port map (x4,x4_NOT);
		U4: myNOT1 port map (x5,x5_NOT);
		U5: myAND2 port map (x3_NOT,x5_NOT,B1);
		U6: myAND3 port map (x3,x4_NOT,x5_NOT,B2);
		U7: myAND3 port map (x2,x4,x5,B3);
		U8: myAND3 port map (x1_NOT,x2,x5_NOT,B4);
		U9: myAND4 port map (x1_NOT,x2_NOT,x4_NOT,x5,B5);
		U10: myOR5 port map (B1,B2,B3,B4,B5,h);
end structural;