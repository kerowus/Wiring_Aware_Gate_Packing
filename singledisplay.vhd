----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2024 11:55:22
-- Design Name: 
-- Module Name: singledisplay - Behavioral
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

entity singledisplay is
 Port (
     dis : out std_logic_VECTOR ( 6 downto 0);
     inp : in std_logic_VECTOR( 3 downto 0);
    anod : out std_logic
  );
end singledisplay;

architecture Behavioral of singledisplay is
signal i1 , i2, i3, i4 : std_logic;
begin
   i1 <= inp(3);
   i2 <= inp(2);
   i3 <= inp(1);
   i4 <= inp(0);
   dis ( 0) <=   ( (not i1 and not i2 and not i3 and i4) or 
         (not i1 and i2 and not i3 and not i4) or 
         (i1 and not i2 and i3 and i4) or 
         (i1 and i2 and not i3 and i4) ) ;
    dis ( 1 )  <=  ( (not i1 and i2 and not i3 and i4) or 
         (i2 and i3 and not i4) or 
         (i1 and i2 and not i4) or 
         (i1 and i3 and i4));
    dis ( 2 )  <=  ( (not i1 and not i2 and i3 and not i4) or 
         (i1 and i2 and not i4) or 
         (i1 and i2 and i3) ) ;
    dis ( 3 )  <=  ( (not i1 and not i2 and not i3 and i4) or 
         (not i1 and i2 and not i3 and not i4) or 
         (i1 and i3 and not i2 and not i4) or 
         (i2 and i3 and i4) ) ;
    dis ( 4 )  <=   ( (not i2 and not i3 and i4) or 
         (i2 and not i1 and not i3) or 
         (not i1 and i4) ) ;

--    f <= (i1 and i2 and i4 and not i3) or 
--         (i4 and not (i1 and i2)) or 
--         (i3 and not (i1 and i2)) or 
--         (not i1 and i3 and i4);
dis ( 5 )  <=   ( (not i1 and not i2 and i4) or
     (not i1 and not i2 and i3) or
     (not i1 and i3 and i4) or
     (i1 and i2 and not i3 and i4));

    
--    g <= (not i1 and i2 and i3 and i4) or 
--         (i1 and i2 and not(i3 and i4)) or 
--         not(i1 and i2 and i3);
dis ( 6 )  <=   ( ( not i1 and not i2 and not i3 ) or
 ( i1 and i2 and not i3 and not i4) or 
 ( not i1 and i2 and i3 and i4)); 

anod <= '0';
end Behavioral;
