library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 


entity simu is
end simu;

architecture Behavioral of simu is
    component singledisplay 
        Port (
           inp : in STD_logic_vector(3 downto 0);
            dis : out std_logic_VECTOR(6 downto 0)
           
             );
    end component;
    signal inp : std_logic_vector(3 downto 0);
    signal dis : std_logic_vector(6 downto 0);

begin

    
    object : singledisplay
        Port map (
            dis => dis,
            inp => inp
        );

   
    builderofthistest: process
    begin
      
         inp <= "1110";
        wait for 10 ns;
        
        inp <= "1111";
        wait for 10 ns;
        
        inp <= "0000";
        wait for 10 ns;
        
        inp <= "0001";
        wait for 10 ns;
        
        inp <= "0010";
        wait for 10 ns;
        
        inp <= "0011";
        wait for 10 ns;
        
        inp <= "0100";
        wait for 10 ns;
        
        inp <= "0101";
        wait for 10 ns;
        
        inp <= "0110";
        wait for 10 ns;
        
        inp <= "0111";
        wait for 10 ns;     
        inp <= "1000";
        wait for 10 ns;
        inp <= "1001";
        wait for 10 ns;
        inp <= "1010";
        wait for 10 ns;
        inp <= "1011";
        wait for 10 ns;
        
        inp <= "1100";
        wait for 10 ns;
        
        inp <= "1101";
        wait for 10 ns;
   
        wait;
    end process;

end Behavioral;
