----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2024 11:54:24
-- Design Name: 
-- Module Name: allfourdisplay - Behavioral
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

entity allfourdisplay is
 Port(
       
        inp1 , inp2 ,inp3 , inp4  : in STD_LOGIC_VECTOR(3 downto 0); -- First 4-bit input
         cathodeout : out std_logic_vector( 6 downto 0);
        ands : out STD_LOGIC_VECTOR(3 downto 0); -- Anode signals
         clk_i ,  rst  : in STD_LOGIC -- 100 MHz input cloc
      
    );
end allfourdisplay;

architecture Behavioral of allfourdisplay is
 signal muxsel: std_logic_VECTOR(1 downto 0);
 signal muxout : std_logic_vector(3 downto 0);

component singledisplay 
  Port (
     dis : out std_logic_VECTOR ( 6 downto 0);
     inp : in std_logic_VECTOR( 3 downto 0)
  );
end component  ;
component imingcrct
      Port (
mux_s : out STD_LOGIC_VECTOR (1 downto 0); 
anod : out STD_LOGIC_VECTOR (3 downto 0) ;
oldclk , reset : in STD_LOGIC
);

    end component;
component MUXCODE 
Port (
    inp1  , inp3 , inp2 , inp4: in std_logic_vector( 3 downto 0);
      s : in std_logic_vector(1 downto 0);
     outp :  out std_LOGIC_VECTOR ( 3 downto 0 )
  );
end component;

begin
    C : singledisplay 
        PORT MAP (
            dis => cathodeout,
            inp => muxout
     
        );
  A : imingcrct 
        PORT MAP (
            oldclk => clk_i,
            reset => rst,
            mux_s => muxsel,
            anod => ands
        );
 B : MUXCODE 
        PORT MAP (
            inp2 => inp2,
            inp1 => inp1,
            inp3 => inp3,
            inp4 => inp4,
            s => muxsel,
            outp => muxout
        );


end Behavioral;