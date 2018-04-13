library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port ( a        : in  std_logic_vector (15 downto 0);   -- Primer operando.
           b        : in  std_logic_vector (15 downto 0);   -- Segundo operando.
           sop      : in  std_logic_vector (3 downto 0);    -- Selector de la operación.
           c        : out std_logic :='1';                        -- Señal de 'carry'.
           z        : out std_logic :='0';                        -- Señal de 'zero'.
           n        : out std_logic := '0';                        -- Señal de 'nagative'.
           result   : out std_logic_vector (15 downto 0) := (others => '0'));  -- Resultado de la operación.
           
end ALU;

architecture Behavioral of ALU is

component nott
     Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : out STD_LOGIC_VECTOR (15 downto 0);
           c : out STD_LOGIC :='0';
           z : out STD_LOGIC :='0';
           n : out STD_LOGIC :='0');
end component;

component xorr
         Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
            b : in STD_LOGIC_VECTOR (15 downto 0);
            c : out STD_LOGIC_VECTOR (15 downto 0);
            carry : out STD_LOGIC :='0';
            z : out STD_LOGIC :='0';
            n : out STD_LOGIC :='0');
end component;

component andd
         Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
            b : in STD_LOGIC_VECTOR (15 downto 0);
            c : out STD_LOGIC_VECTOR (15 downto 0);
            carry : out STD_LOGIC :='0';
            z : out STD_LOGIC :='0';
            n : out STD_LOGIC :='0');
end component;

component orr
         Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
            b : in STD_LOGIC_VECTOR (15 downto 0);
            c : out STD_LOGIC_VECTOR (15 downto 0);
            carry : out STD_LOGIC :='0';
            z : out STD_LOGIC :='0';
            n : out STD_LOGIC :='0');
end component;

component sum
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           sout : out STD_LOGIC_VECTOR (15 downto 0);
           c : out STD_LOGIC :='0';
           z : out STD_LOGIC :='0';
           n : out STD_LOGIC :='0');
end component;

component sub
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           s : out STD_LOGIC_VECTOR (15 downto 0);
           z : out STD_LOGIC :='0';
           n : out STD_LOGIC :='0';
           c : out STD_LOGIC :='0');
end component;

component multip
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           mout : out STD_LOGIC_VECTOR (15 downto 0);
           n : out STD_LOGIC;
           c : out STD_LOGIC;
           z : out STD_LOGIC);
end component;

component SHL
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : out STD_LOGIC_VECTOR (15 downto 0);
           carry : out STD_LOGIC :='0';
           z : out STD_LOGIC :='0';
           n : out STD_LOGIC :='0');
end component;

component SHR
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : out STD_LOGIC_VECTOR (15 downto 0);
           carry : out STD_LOGIC :='0';
           z : out STD_LOGIC :='0';
           n : out STD_LOGIC :='0');
end component;

signal r_not : STD_LOGIC_VECTOR (15 downto 0);
signal c_not : STD_LOGIC :='0';
signal z_not : STD_LOGIC :='0';
signal n_not : STD_LOGIC :='0';

signal r_xorr : STD_LOGIC_VECTOR (15 downto 0);
signal c_xorr : STD_LOGIC :='0';
signal z_xorr : STD_LOGIC :='0';
signal n_xorr : STD_LOGIC :='0';

signal r_andd : STD_LOGIC_VECTOR (15 downto 0);
signal c_andd : STD_LOGIC :='0';
signal z_andd : STD_LOGIC :='0';
signal n_andd : STD_LOGIC :='0';

signal r_orr : STD_LOGIC_VECTOR (15 downto 0);
signal c_orr : STD_LOGIC :='0';
signal z_orr : STD_LOGIC :='0';
signal n_orr : STD_LOGIC :='0';

signal r_sum : STD_LOGIC_VECTOR (15 downto 0);
signal c_sum : STD_LOGIC :='0';
signal z_sum : STD_LOGIC :='0';
signal n_sum : STD_LOGIC :='0';

signal r_sub : STD_LOGIC_VECTOR (15 downto 0);
signal c_sub : STD_LOGIC :='0';
signal z_sub : STD_LOGIC :='0';
signal n_sub : STD_LOGIC :='0';

signal r_mult : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
signal c_mult : STD_LOGIC :='0';
signal z_mult : STD_LOGIC :='0';
signal n_mult : STD_LOGIC :='0';

signal r_shl : STD_LOGIC_VECTOR (15 downto 0);
signal c_shl : STD_LOGIC :='0';
signal z_shl : STD_LOGIC :='0';
signal n_shl : STD_LOGIC :='0';

signal r_shr : STD_LOGIC_VECTOR (15 downto 0);
signal c_shr : STD_LOGIC :='0';
signal z_shr : STD_LOGIC :='0';
signal n_shr : STD_LOGIC :='0';

begin

op1: nott port map(a=>a, b=>r_not, c=>c_not, z=>z_not, n=>n_not);
op2: xorr port map(a=>a, b=>b, c=>r_xorr, carry=>c_xorr, z=>z_xorr, n=>n_xorr);
op3: sum port map(a=>a, b=>b, sout=>r_sum, c=>c_sum, z=>z_sum, n=>n_sum);
op4: sub port map(a=>a, b=>b, s=>r_sub, c=>c_sub, z=>z_sub, n=>n_sub);
--FALTA: hacer la multiplicacion y activar este comentario
op5: multip port map(a=>a, b=>b, mout=>r_mult, c=>c_mult, z=>z_mult, n=>n_mult);
op6: SHL port map(a=>a, b=>r_shl, carry=>c_shl, z=>z_shl, n=>n_shl);
op7: SHR port map(a=>a, b=>r_shr, carry=>c_shr, z=>z_shr, n=>n_shr);
op8: orr port map(a=>a, b=>b, c=>r_orr, carry=>c_orr, z=>z_orr, n=>n_orr);
op9: andd port map(a=>a, b=>b, c=>r_andd, carry=>c_andd, z=>z_andd, n=>n_andd);

result <= r_not when (sop = "0000") else
          r_xorr when (sop = "0001") else
          r_sum when (sop = "0010") else
          r_sub when (sop = "0011") else
          r_andd when (sop = "0100") else
          r_shl when (sop = "0101") else
          r_orr when (sop = "0110") else
          r_shr when (sop = "0111") else
          r_mult when (sop = "1000");
          
c <= c_not when (sop = "0000") else
          c_xorr when (sop = "0001") else
          c_sum when (sop = "0010") else
          c_sub when (sop = "0011") else
          c_andd when (sop = "0100") else
          c_shl when (sop = "0101") else
          c_orr when (sop = "0110") else
          c_shr when (sop = "0111") else
          c_mult when (sop = "1000");

z <= z_not when (sop = "0000") else
          z_xorr when (sop = "0001") else
          z_sum when (sop = "0010") else
          z_sub when (sop = "0011") else
          z_andd when (sop = "0100") else
          z_shl when (sop = "0101") else
          z_orr when (sop = "0110") else
          z_shr when (sop = "0111") else
          z_mult when (sop = "1000");

n <= n_not when (sop = "0000") else
          n_xorr when (sop = "0001") else
          n_sum when (sop = "0010") else
          n_sub when (sop = "0011") else
          n_andd when (sop = "0100") else
          n_shl when (sop = "0101") else
          n_orr when (sop = "0110") else
          n_shr when (sop = "0111") else
          n_mult when (sop = "1000");
 

end Behavioral;
