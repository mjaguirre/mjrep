library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Basys3 is
    Port (
        sw          : in   std_logic_vector (3 downto 0);  -- Señales de entrada de los interruptores -- Arriba   = '1'   -- Los 3 swiches de la derecha: 2, 1 y 0.
        btn         : in   std_logic_vector (4 downto 0);  -- Señales de entrada de los botones       -- Apretado = '1'   -- 0 central, 1 arriba, 2 izquierda, 3 derecha y 4 abajo.
        led         : out  std_logic_vector (3 downto 0);  -- Señales de salida  a  los leds          -- Prendido = '1'   -- Los 4 leds de la derecha: 3, 2, 1 y 0.
        clk         : in   std_logic;                      -- No Tocar - Señal de entrada del clock   -- Frecuencia = 100Mhz.
        seg         : out  std_logic_vector (7 downto 0);  -- No Tocar - Salida de las señales de segmentos.
        an          : out  std_logic_vector (3 downto 0)   -- No Tocar - Salida del selector de diplay.
          );
end Basys3;

architecture Behavioral of Basys3 is

-- Inicio de la declaración de los componentes.

component Clock_Divider -- No Tocar
    Port (
        clk         : in    std_logic;
        speed       : in    std_logic_vector (1 downto 0);
        clock       : out   std_logic
          );
    end component;
    
component Display_Controller  -- No Tocar
    Port (  
        dis_a       : in    std_logic_vector (3 downto 0);
        dis_b       : in    std_logic_vector (3 downto 0);
        dis_c       : in    std_logic_vector (3 downto 0);
        dis_d       : in    std_logic_vector (3 downto 0);
        clk         : in    std_logic;
        seg         : out   std_logic_vector (7 downto 0);
        an          : out   std_logic_vector (3 downto 0)
          );
    end component;

component Debouncer  -- No Tocar
    Port (
        clk         : in    std_logic;
        datain      : in    std_logic_vector (4 downto 0);
        dataout     : out   std_logic_vector (4 downto 0));
    end component;

component ALU
    Port ( a        : in  std_logic_vector (15 downto 0);   -- Primer operando.
           b        : in  std_logic_vector (15 downto 0);   -- Segundo operando.
           sop      : in  std_logic_vector (3 downto 0);    -- Selector de la operaci�n.
           c        : out std_logic;                        -- Se�al de 'carry'.
           z        : out std_logic;                        -- Se�al de 'zero'.
           n        : out std_logic;                        -- Se�al de 'nagative'.
           result   : out std_logic_vector (15 downto 0));  -- Resultado de la operaci�n.
    end component;
    
component REG is
        Port ( clock    : in  std_logic;                        -- Se�al del clock (reducido).
               load     : in  std_logic;                        -- Se�al de carga.
               up       : in  std_logic;                        -- Se�al de subida.
               down     : in  std_logic;                        -- Se�al de bajada.
               datain   : in  std_logic_vector (15 downto 0);   -- Se�ales de entrada de datos.
               dataout  : out std_logic_vector (15 downto 0));  -- Se�ales de salida de datos.
    end component;
-- Fin de la declaración de los componentes.

-- Inicio de la declaración de señales.

signal clock            : std_logic := '0';                     -- Señal del clock reducido.                 
            
signal dis_a            : std_logic_vector(3 downto 0) := (others => '0');  -- Señales de salida al display A.    
signal dis_b            : std_logic_vector(3 downto 0) := (others => '0');  -- Señales de salida al display B.     
signal dis_c            : std_logic_vector(3 downto 0) := (others => '0');  -- Señales de salida al display C.    
signal dis_d            : std_logic_vector(3 downto 0) := (others => '0');  -- Señales de salida al display D.  

signal d_btn            : std_logic_vector(4 downto 0) := (others => '0');  -- Señales de botones con antirrebote.

signal rega             : std_logic_vector(15 downto 0) := (others => '0');
signal regb             : std_logic_vector(15 downto 0)  := (others => '0');
signal result_alu       : std_logic_vector(15 downto 0)  := (others => '0');

signal load_a           : std_logic := '0';
signal load_b           : std_logic := '0';
signal load_alu           : std_logic := '0';

signal led_cnz          : std_logic_vector(3 downto 0) := (others => '0');

-- Fin de la declaración de los señales.

begin
-- Inicio de declaración de comportamientos.

led <= sw when (btn(0) = '0') else
        led_cnz when (btn(0) = '1');

load_a <= not btn(2);

load_b <= not btn(3);

--FALTA: el display a y b deben ser 0000 cuando btn(0) = '1'
dis_a <= result_alu(7 downto 4) when (btn(0) = '1') else
         rega(7 downto 4) when (btn(0) = '0') ;
dis_b <= result_alu(3 downto 0) when (btn(0)= '1') else
         rega(3 downto 0) when (btn(0) = '0') ;


dis_c <= result_alu(7 downto 4) when (btn(0) = '1') else
         regb(7 downto 4) when (btn(0) = '0') ;
dis_d <= result_alu(3 downto 0) when (btn(0)= '1') else
                 regb(3 downto 0) when (btn(0) = '0') ;


-- Inicio de declaración de instancias.

inst_Clock_Divider: Clock_Divider port map( -- No Tocar - Intancia de Clock_Divider.
    clk         => clk,  -- No Tocar - Entrada del clock completo (100Mhz).
    speed       => "01", -- Selector de velocidad: "00" full, "01" fast, "10" normal y "11" slow. 
    clock       => clock -- No Tocar - Salida del clock reducido: 25Mhz, 8hz, 2hz y 0.5hz.
    );

inst_Display_Controller: Display_Controller port map( -- No Tocar - Intancia de Display_Controller.
    dis_a       => dis_a,-- No Tocar - Entrada de señales para el display A.
    dis_b       => dis_b,-- No Tocar - Entrada de señales para el display B.
    dis_c       => dis_c,-- No Tocar - Entrada de señales para el display C.
    dis_d       => dis_d,-- No Tocar - Entrada de señales para el display D.
    clk         => clk,  -- No Tocar - Entrada del clock completo (100Mhz).
    seg         => seg,  -- No Tocar - Salida de las señales de segmentos.
    an          => an    -- No Tocar - Salida del selector de diplay.
	);

inst_Debouncer: Debouncer port map( -- No Tocar - Intancia de Debouncer.
    clk         => clk,   -- No Tocar - Entrada del clock completo (100Mhz).
    datain      => btn,   -- No Tocar - Entrada del botones con rebote.
    dataout     => d_btn  -- No Tocar - Salida de botones con antirrebote.
    );

inst_RegA: REG port map(
    clock => clock,
    load => load_a,
    up => d_btn(1),
    down => d_btn(4),
    datain => rega,
    dataout => rega
    );
    
inst_RegB: REG port map(
        clock => clock,
        load => load_b,
        up => d_btn(1),
        down => d_btn(4),
        datain => regb,
        dataout => regb
        );
inst_ALU: ALU port map(
        a => rega,
        b => regb,
        sop => sw ,  
        c  => led_cnz(3), 
        z  => led_cnz(1),
        n  => led_cnz(2),
        result => result_alu
        );
-- Fin de declaración de instancias.

-- Fin de declaración de comportamientos.
  
end Behavioral;
