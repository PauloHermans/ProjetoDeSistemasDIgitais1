library ieee;
use ieee.std_logic_1164.all;

entity tmr is
port ( i_SEL : in std_logic; -- selector
       i_SW0 : in std_logic; -- data input
       i_SW1 : in std_logic; -- data input
       i_BT0 : in std_logic; -- data input
       i_BT1 : in std_logic; -- data input
       i_BT2 : in std_logic; -- data input
       o_LED0 : out std_logic; -- data output
       o_LED1 : out std_logic); -- data output
signal w_OR_1, w_OR_2 : std_logic;
end tmr;

architecture arch_1 of tmr is
begin

    process(i_SW0, i_SW1, i_SEL)
    begin
        w_OR_1 <= ((i_SW0 and not i_SEL) or (i_SW1 and i_SEL));
    end process;

    process(i_BT0, i_BT1, i_BT2, w_OR_1)
    begin
        w_OR_2 <= (((i_BT0 xor w_OR_1) and (i_BT1 xor w_OR_1)) or
        ((i_BT1 xor w_OR_1) and (i_BT2 xor w_OR_1)) or
        ((i_BT0 xor w_OR_1) and (i_BT2 xor w_OR_1)));
    end process;

    o_LED0 <= (not i_SEL and w_OR_2);
    o_LED1 <= (i_SEL and w_OR_2);

end arch_1;