library IEEE;
use IEEE.std_logic_1164.all;

entity tb_tmr is
end tb_tmr;

architecture arch_1 of tb_tmr is
component tmr is
port ( i_SEL : in std_logic; -- selector
       i_SW0 : in std_logic; -- data input
       i_SW1 : in std_logic; -- data input
       i_BT0 : in std_logic; -- data input
       i_BT1 : in std_logic; -- data input
       i_BT2 : in std_logic; -- data input
       o_LED0 : out std_logic; -- data output
       o_LED1 : out std_logic); -- data output
end component;

signal w_SEL, w_SW0, w_SW1, w_BT0, w_BT1, w_BT2, w_LED0, w_LED1 : std_logic;
begin

u_DUT: tmr port map ( i_SEL => w_SEL,
       i_SW0 => w_SW0,
       i_SW1 => w_SW1,
       i_BT0 => w_BT0,
       i_BT1 => w_BT1,
       i_BT2 => w_BT2,
       o_LED0 => w_LED0,
       o_LED1 => w_LED1);
process
begin
w_SEL <= '0';
w_SW0 <= '1';
w_SW1 <= '0';
w_BT0 <= '0';
w_BT1 <= '0';
w_BT2 <= '0';
wait for 1 ns;
assert(w_LED0='1') report "Fail @ 010" severity error;
assert(w_LED1='0') report "Fail @ 010" severity error;
w_SEL <= '0';
w_SW0 <= '1';
w_SW1 <= '0';
w_BT0 <= '1';
w_BT1 <= '0';
w_BT2 <= '0';
wait for 1 ns;
assert(w_LED0='1') report "Fail @ 101" severity error;
assert(w_LED1='0') report "Fail @ 101" severity error;
w_SEL <= '0';
w_SW0 <= '1';
w_SW1 <= '0';
w_BT0 <= '1';
w_BT1 <= '1';
w_BT2 <= '0';
wait for 1 ns;
assert(w_LED0='0') report "Fail @ 000" severity error;
assert(w_LED1='0') report "Fail @ 000" severity error;
w_SEL <= '0';
w_SW0 <= '1';
w_SW1 <= '0';
w_BT0 <= '1';
w_BT1 <= '1';
w_BT2 <= '1';
wait for 1 ns;
assert(w_LED0='0') report "Fail @ 100" severity error;
assert(w_LED1='0') report "Fail @ 100" severity error;
w_SEL <= '0';
w_SW0 <= '0';
w_SW1 <= '0';
w_BT0 <= '0';
w_BT1 <= '0';
w_BT2 <= '0';
assert false report "Test done." severity note;
wait;
end process;
end arch_1;