----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.04.2018 19:52:56
-- Design Name: 
-- Module Name: SHL - Behavioral
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

entity SHL is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : out STD_LOGIC_VECTOR (15 downto 0);
           carry : out STD_LOGIC :='0';
           z : out STD_LOGIC :='0';
           n : out STD_LOGIC :='0');
end SHL;

architecture Behavioral of SHL is

signal z1 : std_logic;

begin
b(0) <= '0';
b(1) <= a(0);
b(2) <= a(1);
b(3) <= a(2);
b(4) <= a(3);
b(5) <= a(4);
b(6) <= a(5);
b(7) <= a(6);
b(8) <= a(7);
b(9) <= a(8);
b(10) <= a(9);
b(11) <= a(10);
b(12) <= a(11);
b(13) <= a(12);
b(14) <= a(13);
b(15) <= a(14);

n <= a(14);
z1 <= a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(0);  
z <= not z1;
carry <= a(15);
end Behavioral;
