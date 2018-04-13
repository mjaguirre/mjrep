----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.04.2018 01:59:11
-- Design Name: 
-- Module Name: submult - Behavioral
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

entity submult is
    Port ( m: in STD_LOGIC_VECTOR (15 downto 0);
           q: in STD_LOGIC;
           sr : in STD_LOGIC_VECTOR (14 downto 0);
           carryin1 : in STD_LOGIC;
           carryin2 : in STD_LOGIC;
           auxresult1 : out STD_LOGIC_VECTOR (14 downto 0);
           carryout : out STD_LOGIC;
           ult : out STD_LOGIC);
end submult;

architecture Behavioral of submult is

component FA 
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;


signal c1: std_logic;
signal c2: std_logic;


signal and1 :std_logic :='0';

begin

and1 <= m(0) and q;
FA00 : FA port map(a=>sr(0), b=>and1 ,cin=>carryin1, s=>ult, cout=> c1);
and1 <= m(1) and q;
FA01 : FA port map(a=>sr(1), b=>and1 ,cin=>c1, s=>auxresult1(0), cout=> c2);
and1 <= m(2) and q;
FA02 : FA port map(a=>sr(2), b=>and1 ,cin=>c2, s=>auxresult1(1), cout=> c1);
and1 <= m(3) and q;
FA03 : FA port map(a=>sr(3), b=>and1 ,cin=>c1, s=>auxresult1(2), cout=> c2);
and1 <= m(4) and q;
FA04 : FA port map(a=>sr(4), b=>and1 ,cin=>c2, s=>auxresult1(3), cout=> c1);
and1 <= m(5) and q;
FA05 : FA port map(a=>sr(5), b=>and1 ,cin=>c1, s=>auxresult1(4), cout=> c2);
and1 <= m(6) and q;
FA06 : FA port map(a=>sr(6), b=>and1 ,cin=>c2, s=>auxresult1(5), cout=> c1);
and1 <= m(7) and q;
FA07 : FA port map(a=>sr(7), b=>and1 ,cin=>c1, s=>auxresult1(6), cout=> c2);
and1 <= m(8) and q;
FA08 : FA port map(a=>sr(8), b=>and1 ,cin=>c2, s=>auxresult1(7), cout=> c1);
and1 <= m(9) and q;
FA09 : FA port map(a=>sr(9), b=>and1 ,cin=>c1, s=>auxresult1(8), cout=> c2);
and1 <= m(10) and q;
FA010 : FA port map(a=>sr(10), b=>and1 ,cin=>c2, s=>auxresult1(9), cout=> c1);
and1 <= m(11) and q;
FA011 : FA port map(a=>sr(11), b=>and1 ,cin=>c1, s=>auxresult1(10), cout=> c2);
and1 <= m(12) and q;
FA012 : FA port map(a=>sr(12), b=>and1 ,cin=>c2, s=>auxresult1(11), cout=> c1);
and1 <= m(13) and q;
FA013 : FA port map(a=>sr(13), b=>and1 ,cin=>c1, s=>auxresult1(12), cout=> c2);
and1 <= m(14) and q;
FA014 : FA port map(a=>sr(14), b=>and1 ,cin=>c2, s=>auxresult1(13), cout=> c1);
and1 <= m(15) and q;
FA015 : FA port map(a=>carryin2, b=>and1 ,cin=>c1, s=>auxresult1(14), cout=> carryout);


end Behavioral;
