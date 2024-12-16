library IEEE;
use IEEE.std_logic_1164.all;

entity decoder4_2bit is
port ( i_A : in std_logic_vector(3 downto 0); -- data input
       o_S0 : out std_logic;                  -- data output
       o_S1 : out std_logic);                 -- data output
end decoder4_2bit;

architecture arch_1 of decoder4_2bit is
begin
  process(i_A)
  begin
    o_S0 <= (i_A(2) or i_A(3));
  end process;
  process(i_A)
  begin
    o_S1 <= (i_A(1) or i_A(3));
  end process;
end arch_1;
