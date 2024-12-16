library ieee;
use ieee.std_logic_1164.all;

entity fsm is
port ( i_CLK : in std_logic;
       i_GCNT : in std_logic;
       o_X   : out std_logic;
       o_Y   : out std_logic;
       o_Z   : out std_logic);
end fsm;

architecture arch_1 of fsm is
  type t_STATE is (s_000, s_001, s_010, s_011, s_100, s_101, s_110, s_111);
  signal r_STATE : t_STATE;
  signal w_NEXT  : t_STATE;
begin

  p_STATE: process(i_CLK, i_GCNT)
  begin
    if (rising_edge(i_CLK)) then
      if (i_GCNT = '1') then
        r_STATE <= w_NEXT;
      else
        r_STATE <= r_STATE;
      end if;
    end if;
  end process;

  p_NEXT: process(r_STATE)
  begin
    case (r_STATE) is
      when s_000  => w_NEXT <= s_001; o_X <= '0'; o_Y <= '0'; o_Z <= '0';
      when s_001  => w_NEXT <= s_010; o_X <= '0'; o_Y <= '1'; o_Z <= '0';
      when s_010  => w_NEXT <= s_011; o_X <= '0'; o_Y <= '1'; o_Z <= '1';
      when s_011  => w_NEXT <= s_100; o_X <= '0'; o_Y <= '0'; o_Z <= '1';
      when s_100  => w_NEXT <= s_101; o_X <= '1'; o_Y <= '0'; o_Z <= '1';
      when s_101  => w_NEXT <= s_110; o_X <= '1'; o_Y <= '1'; o_Z <= '1';
      when s_110  => w_NEXT <= s_111; o_X <= '1'; o_Y <= '1'; o_Z <= '0';
      when s_111  => w_NEXT <= s_000; o_X <= '1'; o_Y <= '0'; o_Z <= '0';
      when others => w_NEXT <= s_000; o_X <= '0'; o_Y <= '0'; o_Z <= '0';
    end case;
  end process;
  
end arch_1;