----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2018 10:17:12
-- Design Name: 
-- Module Name: sub - Behavioral
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

entity sub is -- esto es para a-b
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           s : out STD_LOGIC_VECTOR (15 downto 0);
           z : out STD_LOGIC :='0';
           n : out STD_LOGIC :='0';
           c : out STD_LOGIC :='0');
end sub;

architecture Behavioral of sub is

component sum
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
       b : in STD_LOGIC_VECTOR (15 downto 0);
       sout : out STD_LOGIC_VECTOR (15 downto 0);
       c : out STD_LOGIC :='0';
       z : out STD_LOGIC :='0';
       n : out STD_LOGIC :='0');
end component;

component nott
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : out STD_LOGIC_VECTOR (15 downto 0));
end component;

signal b0 : STD_LOGIC_VECTOR (15 downto 0);
signal one :STD_LOGIC_VECTOR (15 downto 0);
signal s1 :STD_LOGIC_VECTOR (15 downto 0);
signal c1: std_logic;
signal s2 :STD_LOGIC_VECTOR (15 downto 0);
signal c2: std_logic;
signal z1: std_logic;
signal n1: std_logic;
signal z2: std_logic;
signal n2: std_logic;

begin

one <= "0000000000000001";
nott1: nott port map(a=>b, b=>b0); -- se niega el valor b

sum1: sum port map(a=>b0, b=>one, sout=>s1, c=>c1, z=>z1, n=>n1); -- se le suma 1, complemento a 2.

sum2: sum port map(a=>a, b=>s1, sout=>s2, c=>c2, z=>z2, n=>n2);

c <= c2;  -- ya que puede haber habido carry en el +1 del comp 2 o en la suma real. esto es overflow.
s <= s2; 
z <= z2;
n <= n2;

end Behavioral;
