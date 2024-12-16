library ieee;
use ieee.std_logic_1164.all;

entity demux1_2bit is
port ( i_SEL : in std_logic;  -- selector
       i_A : in std_logic;    -- data input
       o_S1 : out std_logic;  -- data output
       o_S0 : out std_logic); -- data output
end demux1_2bit;

architecture arch_1 of demux1_2bit is
begin

  process(i_SEL, i_A)
  begin
    o_S0 <= (i_A and not i_SEL);
  end process;
  process(i_SEL, i_A)
  begin
    o_S1 <= (i_A and i_SEL);
  end process;
end arch_1;
