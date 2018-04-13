----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2018 21:15:23
-- Design Name: 
-- Module Name: sum - Behavioral
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

entity sum is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           sout : out STD_LOGIC_VECTOR (15 downto 0);
           c : out STD_LOGIC :='0';
           z : out STD_LOGIC :='0';
           n : out STD_LOGIC :='0');
end sum;

architecture Behavioral of sum is

component FA
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;

signal s : STD_LOGIC_VECTOR (15 downto 0);
signal z1: std_logic;
signal c0 : std_logic :='0';
signal c1 : std_logic :='0';
signal c2 : std_logic :='0';
signal c3 : std_logic :='0';
signal c4 : std_logic :='0';
signal c5 : std_logic :='0';
signal c6 : std_logic :='0';
signal c7 : std_logic :='0';
signal c8 : std_logic :='0';
signal c9 : std_logic :='0';
signal c10 : std_logic :='0';
signal c11 : std_logic :='0';
signal c12 : std_logic :='0';
signal c13 : std_logic :='0';
signal c14 : std_logic :='0';


begin

f0: FA port map(a=>a(0), b=>b(0), cin=> '0', s=>s(0), cout=>c0); 
f1: FA port map(a=>a(1), b=>b(1), cin=> c0, s=>s(1), cout=>c1); 
f2: FA port map(a=>a(2), b=>b(2), cin=> c1, s=>s(2), cout=>c2); 
f3: FA port map(a=>a(3), b=>b(3), cin=> c2, s=>s(3), cout=>c3);
f4: FA port map(a=>a(4), b=>b(4), cin=> c3, s=>s(4), cout=>c4);
f5: FA port map(a=>a(5), b=>b(5), cin=> c4, s=>s(5), cout=>c5);
f6: FA port map(a=>a(6), b=>b(6), cin=> c5, s=>s(6), cout=>c6);
f7: FA port map(a=>a(7), b=>b(7), cin=> c6, s=>s(7), cout=>c7);
f8: FA port map(a=>a(8), b=>b(8), cin=> c7, s=>s(8), cout=>c8);
f9: FA port map(a=>a(9), b=>b(9), cin=> c8, s=>s(9), cout=>c9);
f10: FA port map(a=>a(10), b=>b(10), cin=> c9, s=>s(10), cout=>c10);
f11: FA port map(a=>a(11), b=>b(11), cin=> c10, s=>s(11), cout=>c11);
f12: FA port map(a=>a(12), b=>b(12), cin=> c11, s=>s(12), cout=>c12);
f13: FA port map(a=>a(13), b=>b(13), cin=> c12, s=>s(13), cout=>c13);
f14: FA port map(a=>a(14), b=>b(14), cin=> c13, s=>s(14), cout=>c14);
f15: FA port map(a=>a(15), b=>b(15), cin=> c14, s=>s(15), cout=>c);

sout <= s;
z1 <= s(0) or s(1) or s(2) or s(3) or s(4) or s(5) or s(6) or s(7) or s(8) or s(9) or s(10) or s(11) or s(12) or s(13) or s(14) or s(15);  
z <= not z1;
n <= s(15);

end Behavioral;
