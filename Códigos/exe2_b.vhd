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

entity exe2_b is
    Port (
             a          : in std_logic;
             b          : in std_logic;
             c          : in std_logic;
             d          : in std_logic;
             s2         : out std_logic
     );

    
end exe2_b;

architecture Behavioral of exe2_b is

begin

    s2 <= a or ((not b)and c) or d;

end Behavioral;

