----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2018 02:07:59 PM
-- Design Name: 
-- Module Name: orr - Behavioral
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

entity orr is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           c : out STD_LOGIC_VECTOR (15 downto 0);
           carry : out STD_LOGIC :='0';
           z : out STD_LOGIC :='0';
           n : out STD_LOGIC :='0');
end orr;

architecture Behavioral of orr is

signal s : STD_LOGIC_VECTOR (15 downto 0);
signal z1 : std_logic;

begin

s <= a or b;

c <= s;
z1 <= s(0) or s(1) or s(2) or s(3) or s(4) or s(5) or s(6) or s(7) or s(8) or s(9) or s(10) or s(11) or s(12) or s(13) or s(14) or s(15);  
z <= not z1;
n <= s(15);

end Behavioral;
