----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2018 21:20:23
-- Design Name: 
-- Module Name: FA - Behavioral
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

entity FA is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end FA;

architecture Behavioral of FA is

component HA
    Port( a : in STD_LOGIC;
          b : in STD_LOGIC;
          s : out STD_LOGIC;
          c : out STD_LOGIC);
end component;

signal c1 : std_logic :='0';
signal s1 : std_logic :='0';
signal c2 : std_logic :='0';
signal s2 : std_logic :='0';      

begin

h1: HA port map(a=>a,b=>b, c=>c1, s=>s1);
h2: HA port map(a=>s1, b=>cin, c=>c2, s=>s2);
cout <= c1 or c2;
s <= s2;

end Behavioral;