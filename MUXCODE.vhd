----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2024 11:52:37
-- Design Name: 
-- Module Name: MUXCODE - Behavioral
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
use IEEE.NUMERIC_STD.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUXCODE is
 Port (
    inp1  , inp3 , inp2 , inp4: in std_logic_vector( 3 downto 0);
      s : in std_logic_vector(1 downto 0);
     outp :  out std_LOGIC_VECTOR ( 3 downto 0 )
  );
  
end MUXCODE;

architecture Behavioral of MUXCODE is
signal tmp : std_logic_vector(3 downto 0) := "0000";

begin  

  tmp <= "0000";
    with s select
        outp <=   inp1 when "00",
                  inp3 when "10",
                  inp4 when "11",
                  inp2 when "01",
                  tmp when others; 
     
end Behavioral;
