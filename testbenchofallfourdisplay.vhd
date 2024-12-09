
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
entity testbenchofallfourdisplay is
end testbenchofallfourdisplay;
architecture Behavioral of testbenchofallfourdisplay is
 component allfourdisplay 
 port(  
         cathodeout : out std_logic_vector( 6 downto 0);
        ands : out STD_LOGIC_VECTOR(3 downto 0);
         clk_i ,  rst  : in STD_LOGIC ;
           inp1 , inp2 ,inp3 , inp4  : in STD_LOGIC_VECTOR(3 downto 0)
    );
end component ;
   signal cathodeout : std_logic_vector(6 downto 0);
    signal ands : std_logic_vector(3 downto 0);
   signal inp1, inp2, inp3, inp4 : std_logic_vector(3 downto 0) := (others => '0');
    signal  rst : std_logic := '0';
    signal  clk_i : std_logic := '0';   
   begin
    bilt : allfourdisplay
    port map (
        inp3 => inp3,
        inp4 => inp4,
        cathodeout => cathodeout,
        ands => ands,
            inp1 => inp1,
        inp2 => inp2,
           clk_i => clk_i,
        rst => rst
    );


    genrator : process
    begin
        while true loop
            clk_i <= '0';
            wait for 5 ns; 
            clk_i <= '1';
            wait for  5 ns;
        end loop;
    end process;

   
    blimaker : process
    begin

        rst <= '0';
        wait for 10 ns;


   inp1 <= "1111";
    inp2 <= "0001";
    inp3 <= "0101";
    inp4 <= "1000";
    wait for 10 ns;

    inp1 <= "0110";
    inp2 <= "1011";
    inp3 <= "1101";
    inp4 <= "0001";
    wait for 10 ns;
   

    inp1 <= "1001";
    inp2 <= "1010";
    inp3 <= "1011";
    inp4 <= "1100";
    wait for 10 ns;

    inp1 <= "1101";
    inp2 <= "1110";
    inp3 <= "1111";
    inp4 <= "0000";
    wait for 10 ns;

    inp1 <= "0011";
    inp2 <= "0101";
    inp3 <= "0110";
    inp4 <= "1001";
    wait for 10 ns;

   


    inp1 <= "0100";
    inp2 <= "1011";
    inp3 <= "1101";
    inp4 <= "0000";
    wait for 10 ns;

   

    inp1 <= "1001";
    inp2 <= "0100";
    inp3 <= "1110";
    inp4 <= "0011";
    wait for 10 ns;

    inp1 <= "0110";
    inp2 <= "1011";
    inp3 <= "1101";
    inp4 <= "0001";
    wait for 10 ns;
    
       inp1 <= "0110";
    inp2 <= "1110";
    inp3 <= "1000";
    inp4 <= "0011";
    wait for 10 ns;

    inp1 <= "1110";
    inp2 <= "1001";
    inp3 <= "0100";
    inp4 <= "0010";
    wait for 10 ns;

    inp1 <= "1101";
    inp2 <= "0111";
    inp3 <= "0000";
    inp4 <= "1010";
    wait for 10 ns;

    inp1 <= "0101";
    inp2 <= "1111";
    inp3 <= "1000";
    inp4 <= "0011";
    wait for 10 ns;

    inp1 <= "0010";
    inp2 <= "1101";
    inp3 <= "1011";
    inp4 <= "0110";
    wait for 10 ns;

     inp1 <= "1111";
    inp2 <= "0001";
    inp3 <= "0101";
    inp4 <= "1000";
    wait for 10 ns;

    inp1 <= "0010";
    inp2 <= "1100";
    inp3 <= "1010";
    inp4 <= "0111";
    wait for 10 ns;
    
     inp1 <= "0001";
    inp2 <= "0010";
    inp3 <= "0011";
    inp4 <= "0100";
    wait for 10 ns;

    inp1 <= "0101";
    inp2 <= "0110";
    inp3 <= "0111";
    inp4 <= "1000";
    wait for 10 ns;
    
     inp1 <= "1010";
    inp2 <= "1100";
    inp3 <= "0001";
    inp4 <= "0111";
    wait for 10 ns;

    inp1 <= "1110";
    inp2 <= "1001";
    inp3 <= "0100";
    inp4 <= "0010";
    wait for 10 ns;

    inp1 <= "0101";
    inp2 <= "1001";
    inp3 <= "1100";
    inp4 <= "0011";
    wait for 10 ns;

    inp1 <= "1011";
    inp2 <= "0100";
    inp3 <= "1111";
    inp4 <= "0001";
    wait for 10 ns;

    wait;
end process;     
end Behavioral;
