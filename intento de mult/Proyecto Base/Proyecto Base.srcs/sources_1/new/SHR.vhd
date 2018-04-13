----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.04.2018 19:55:19
-- Design Name: 
-- Module Name: SHR - Behavioral
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

entity SHR is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : out STD_LOGIC_VECTOR (15 downto 0);
           carry : out STD_LOGIC :='0';
           z : out STD_LOGIC :='0';
           n : out STD_LOGIC :='0');
end SHR;

architecture Behavioral of SHR is

signal z1 : std_logic;

begin

b(0) <= a(1);
b(1) <= a(2);
b(2) <= a(3);
b(3) <= a(4);
b(4) <= a(5);
b(5) <= a(6);
b(6) <= a(7);
b(7) <= a(8);
b(8) <= a(9);
b(9) <= a(10);
b(10) <= a(11);
b(11) <= a(12);
b(12) <= a(13);
b(13) <= a(14);
b(14) <= a(15);
b(15) <= '0';

n <= '0';

z1 <= a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15);  
z <= not z1;
carry <= a(0);

end Behavioral;
