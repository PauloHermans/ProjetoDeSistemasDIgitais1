library ieee;
use ieee.std_logic_1164.all;

entity encoder2_4bit is
port ( i_A : in std_logic;                       -- data input
       i_B : in std_logic;                       -- data input
       o_S : out std_logic_vector(3 downto 0));  -- data output
end encoder2_4bit;

architecture arch_1 of encoder2_4bit is
begin

  process(i_A, i_B)
  begin
    o_S(0) <= (not i_A and not i_B);
  end process;
  process(i_A, i_B)
  begin
    o_S(1) <= (i_A and not i_B);
  end process;
  process(i_A, i_B)
  begin
    o_S(2) <= (not i_A and i_B);
  end process;
  process(i_A, i_B)
  begin
    o_S(3) <= (i_A and i_B);
  end process;
end arch_1;
