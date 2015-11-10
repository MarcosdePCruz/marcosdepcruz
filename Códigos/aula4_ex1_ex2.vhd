LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

ENTITY aula6 IS
PORT(
    -- Clk e rst
    clk : in std_logic; -- 100Mhz
    btnCpuReset : in std_logic; -- RST em '0'
    -- IOs
    sw : in std_logic_vector(15 downto 0);
    led : out std_logic_vector(15 downto 0)
);
END aula6;

ARCHITECTURE bhv OF aula6 IS

signal in_mux : std_logic_vector(2 downto 0);
signal ss_mux : std_logic_vector(1 downto 0);
signal out_mux : std_logic;

BEGIN

     --Sequencial---
     process(ss_mux, in_mux)
     begin
        if(ss_mux = "00") then
            out_mux <= in_mux(0);
        elsif(ss_mux = "01") then
            out_mux <= in_mux(1);
        else
            out_mux <= in_mux(2);
        end if;
     end process;
     
     --Concorrente---
     ss_mux <= sw(4 downto 3);
     in_mux <= sw(2 downto 0);
     led(0) <= out_mux;
     
END bhv;

