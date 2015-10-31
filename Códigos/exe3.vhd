LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
ENTITY Conversoes IS
END Conversoes;
ARCHITECTURE bhv OF Conversoes IS

-- Declaracoes sinais e constantes

signal slv : std_logic_vector(7 downto 0);
signal s : signed(7 downto 0);
signal us : unsigned(7 downto 0);
signal i : integer range 0 to 12;

BEGIN

    slv <= std_logic_vector(s);
    us <= unsigned(std_logic_vector(s));
    i <= to_integer (s);
    
    s <= signed(slv);
    

END bhv;


