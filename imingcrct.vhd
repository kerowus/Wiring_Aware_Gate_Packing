----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2024 11:53:25
-- Design Name: 
-- Module Name: timingcrct - Behavioral
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

entity imingcrct is
--  Port ( );
Port (
mux_s : out STD_LOGIC_VECTOR (1 downto 0); 
anod : out STD_LOGIC_VECTOR (3 downto 0) ;
oldclk , reset : in STD_LOGIC
);

end imingcrct;

architecture Behavioral of imingcrct is
 constant N : integer := 100000;
 signal cnte : std_logic_vector ( 1 downto 0 ) :="00" ;
  signal cntr : integer := 0;
 signal newclock : std_logic := '0';
begin

makingnewclock: process(oldclk, reset)
begin
    if reset = '1' then 
        cntr <= 0;
        newclock <= '0';
    elsif rising_edge(oldclk) then
        if cntr < N then
            cntr <= cntr + 1;
        else
            cntr <= 0;
            newclock <= not newclock;  
        end if;
    end if;
end process;


selector: process(newclock, reset)
begin
    if reset = '1' then
        cnte <= "00";
   elsif rising_edge(newclock) then
          cnte <= std_logic_vector(unsigned(cnte) + 1);  
    end if;
end process;
anodeselector : process(cnte)
begin
    if cnte = "00" then
        anod <= "1110";  
    elsif cnte = "01" then
        anod <= "1101";  
    elsif cnte = "11" then
        anod <= "0111";  
     elsif cnte = "10" then
        anod <= "1011";     
    else
        anod <= "0000";  
    end if;
    mux_s <= cnte;
end process;




end Behavioral;