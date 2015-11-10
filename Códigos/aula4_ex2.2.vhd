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

signal in_mux1 : std_logic_vector(2 downto 0);
signal ss_mux1 : std_logic_vector(1 downto 0);
signal out_mux1 : std_logic;

signal in_mux2 : std_logic_vector(2 downto 0);
signal ss_mux2 : std_logic_vector(1 downto 0);
signal out_mux2 : std_logic;

BEGIN

     --Sequencial mux1---
     process(ss_mux1, in_mux1)
     begin
        if(ss_mux1 = "00") then
            out_mux1 <= in_mux1(0);
        elsif(ss_mux1 = "01") then
            out_mux1 <= in_mux1(1);
        else
            out_mux1 <= in_mux1(2);
        end if;
     end process;
     
     --Sequencial mux2---
     process(ss_mux2, in_mux2)
     begin
        case ss_mux2 is
            when "00" => out_mux2 <= in_mux2(0);
            when "01" => out_mux2 <= in_mux2(1);
            when others => out_mux2 <= in_mux2(2); 
        end case;
     end process;
     
     ---Concorrente---
     
     ss_mux1 <= sw(4 downto 3);
     in_mux1 <= sw(2 downto 0);
     led(0) <= out_mux1;
     
     ss_mux2 <= sw(10 downto 9);
     in_mux2 <= sw(8 downto 5);
     led(5) <= out_mux2;
     
END bhv;

