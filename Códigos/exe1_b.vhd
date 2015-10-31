----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.10.2015 21:08:09
-- Design Name: 
-- Module Name: exe1_a - Behavioral
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

entity exe1_b is
    Port (
        input_w          : in std_logic;
        a_data           : in std_logic_vector(7 downto 0);
        b_data           : in std_logic_vector(7 downto 0);
        clk              : in std_logic;
        
       dat_4             : out std_logic_vector(7 downto 0);
       dat_5             : out std_logic_vector(2 downto 0)
     );

    
end exe1_b;

architecture Behavioral of exe1_b is

begin


end Behavioral;