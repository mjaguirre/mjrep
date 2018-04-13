----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.04.2018 20:05:33
-- Design Name: 
-- Module Name: multip - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multip is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           mout : out STD_LOGIC_VECTOR (15 downto 0);
           n : out STD_LOGIC;
           c : out STD_LOGIC;
           z : out STD_LOGIC);
end multip;

architecture Behavioral of multip is

component submult
    Port ( m: in STD_LOGIC_VECTOR (15 downto 0);
           q: in STD_LOGIC;
           sr : in STD_LOGIC_VECTOR (14 downto 0);
           carryin1 : in STD_LOGIC;
           carryin2 : in STD_LOGIC;
           auxresult1 : out STD_LOGIC_VECTOR (14 downto 0);
           carryout : out STD_LOGIC;
           ult : out STD_LOGIC);
end component;

signal result : STD_LOGIC_VECTOR(15 downto 0);
signal ar1 : STD_LOGIC_VECTOR(14 downto 0);
signal ar2 : STD_LOGIC_VECTOR(14 downto 0);

signal c1: std_logic;
signal c2: std_logic;
signal c3: std_logic;

signal and1 :std_logic :='0';


signal zv : STD_LOGIC_VECTOR(14 downto 0);

signal zs: std_logic;
signal ns: std_logic :='0';

begin
zv <= "000000000000000";

sm0 : submult port map(m => a, q=>b(0), sr=>zv, carryin1=>'0', carryin2=>'0', auxresult1=>ar1, carryout=>c1, ult=>result(0));
sm1 : submult port map(m => a, q=>b(1), sr=>ar1, carryin1=>'0', carryin2=>c1, auxresult1=>ar2, carryout=>c2, ult=>result(1));
sm2 : submult port map(m => a, q=>b(2), sr=>ar2, carryin1=>'0', carryin2=>c2, auxresult1=>ar1, carryout=>c1, ult=>result(2));
sm3 : submult port map(m => a, q=>b(3), sr=>ar1, carryin1=>'0', carryin2=>c1, auxresult1=>ar2, carryout=>c2, ult=>result(3));
sm4 : submult port map(m => a, q=>b(4), sr=>ar2, carryin1=>'0', carryin2=>c2, auxresult1=>ar1, carryout=>c1, ult=>result(4));
sm5 : submult port map(m => a, q=>b(5), sr=>ar1, carryin1=>'0', carryin2=>c1, auxresult1=>ar2, carryout=>c2, ult=>result(5));
sm6 : submult port map(m => a, q=>b(6), sr=>ar2, carryin1=>'0', carryin2=>c2, auxresult1=>ar1, carryout=>c1, ult=>result(6));
sm7 : submult port map(m => a, q=>b(7), sr=>ar1, carryin1=>'0', carryin2=>c1, auxresult1=>ar2, carryout=>c2, ult=>result(7));
sm8 : submult port map(m => a, q=>b(8), sr=>ar2, carryin1=>'0', carryin2=>c2, auxresult1=>ar1, carryout=>c1, ult=>result(8));
sm9 : submult port map(m => a, q=>b(9), sr=>ar1, carryin1=>'0', carryin2=>c1, auxresult1=>ar2, carryout=>c2, ult=>result(9));
sm10 : submult port map(m => a, q=>b(10), sr=>ar2, carryin1=>'0', carryin2=>c2, auxresult1=>ar1, carryout=>c1, ult=>result(10));
sm11 : submult port map(m => a, q=>b(11), sr=>ar1, carryin1=>'0', carryin2=>c1, auxresult1=>ar2, carryout=>c2, ult=>result(11));
sm12 : submult port map(m => a, q=>b(12), sr=>ar2, carryin1=>'0', carryin2=>c2, auxresult1=>ar1, carryout=>c1, ult=>result(12));
sm13 : submult port map(m => a, q=>b(13), sr=>ar1, carryin1=>'0', carryin2=>c1, auxresult1=>ar2, carryout=>c2, ult=>result(13));
sm14 : submult port map(m => a, q=>b(14), sr=>ar2, carryin1=>'0', carryin2=>c2, auxresult1=>ar1, carryout=>c1, ult=>result(14));
sm15 : submult port map(m => a, q=>b(15), sr=>ar1, carryin1=>'0', carryin2=>c1, auxresult1=>ar2, carryout=>c2, ult=>result(15));

-- el carry de la linea anterior va en el ultimo de la siguiente linea
-- implementar c3
mout <= result(15 downto 0);
c <= c2;
z <= zs;
n <= ns;

end Behavioral;
