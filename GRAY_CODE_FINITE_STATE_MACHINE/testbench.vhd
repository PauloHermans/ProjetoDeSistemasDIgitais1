library ieee;
use ieee.std_logic_1164.all;

entity tb_fsm is

end tb_fsm;

architecture arch_1 of tb_fsm is

component fsm is
port ( i_CLK  :  in std_logic;
       i_GCNT :  in std_logic;
       o_X    : out std_logic;
       o_Y    : out std_logic;
       o_Z    : out std_logic);
end component;

signal w_CLK, w_GCNT, w_X, w_Y, w_Z : std_logic;

begin

  u_DUT: fsm port map(i_CLK  =>  w_CLK,
                      i_GCNT => w_GCNT,
                      o_X    =>    w_X,
                      o_Y    =>    w_Y,
                      o_Z    =>    w_Z);
  process
  begin

    w_CLK  <= '0';
    w_GCNT <= '0';
    wait for 1 ns;
    assert(w_X='0') report "Fail @ 000" severity error;
    assert(w_Y='0') report "Fail @ 000" severity error;
    assert(w_Z='0') report "Fail @ 000" severity error;

    w_CLK  <= '1';
    w_GCNT <= '0';
    wait for 1 ns;
    assert(w_X='0') report "Fail @ 000" severity error;
    assert(w_Y='0') report "Fail @ 000" severity error;
    assert(w_Z='0') report "Fail @ 000" severity error;
    
    w_CLK  <= '0';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='0') report "Fail @ 000" severity error;
    assert(w_Y='0') report "Fail @ 000" severity error;
    assert(w_Z='0') report "Fail @ 000" severity error;
    
    w_CLK  <= '1';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='0') report "Fail @ 001" severity error;
    assert(w_Y='1') report "Fail @ 001" severity error;
    assert(w_Z='0') report "Fail @ 001" severity error;
    
    w_CLK  <= '0';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='0') report "Fail @ 001" severity error;
    assert(w_Y='1') report "Fail @ 001" severity error;
    assert(w_Z='0') report "Fail @ 001" severity error;
    
    w_CLK  <= '1';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='0') report "Fail @ 010" severity error;
    assert(w_Y='1') report "Fail @ 010" severity error;
    assert(w_Z='1') report "Fail @ 010" severity error;
    
    w_CLK  <= '0';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='0') report "Fail @ 010" severity error;
    assert(w_Y='1') report "Fail @ 010" severity error;
    assert(w_Z='1') report "Fail @ 010" severity error;
    
    w_CLK  <= '1';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='0') report "Fail @ 011" severity error;
    assert(w_Y='0') report "Fail @ 011" severity error;
    assert(w_Z='1') report "Fail @ 011" severity error;
    
    w_CLK  <= '0';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='0') report "Fail @ 011" severity error;
    assert(w_Y='0') report "Fail @ 011" severity error;
    assert(w_Z='1') report "Fail @ 011" severity error;
    
    w_CLK  <= '1';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='1') report "Fail @ 100" severity error;
    assert(w_Y='0') report "Fail @ 100" severity error;
    assert(w_Z='1') report "Fail @ 100" severity error;
    
    w_CLK  <= '0';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='1') report "Fail @ 100" severity error;
    assert(w_Y='0') report "Fail @ 100" severity error;
    assert(w_Z='1') report "Fail @ 100" severity error;
    
    w_CLK  <= '1';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='1') report "Fail @ 101" severity error;
    assert(w_Y='1') report "Fail @ 101" severity error;
    assert(w_Z='1') report "Fail @ 101" severity error;
    
    w_CLK  <= '0';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='1') report "Fail @ 101" severity error;
    assert(w_Y='1') report "Fail @ 101" severity error;
    assert(w_Z='1') report "Fail @ 101" severity error;
    
    w_CLK  <= '1';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='1') report "Fail @ 110" severity error;
    assert(w_Y='1') report "Fail @ 110" severity error;
    assert(w_Z='0') report "Fail @ 110" severity error;
    
    w_CLK  <= '0';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='1') report "Fail @ 110" severity error;
    assert(w_Y='1') report "Fail @ 110" severity error;
    assert(w_Z='0') report "Fail @ 110" severity error;
    
    w_CLK  <= '1';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='1') report "Fail @ 111" severity error;
    assert(w_Y='0') report "Fail @ 111" severity error;
    assert(w_Z='0') report "Fail @ 111" severity error;
    
    w_CLK  <= '0';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='1') report "Fail @ 111" severity error;
    assert(w_Y='0') report "Fail @ 111" severity error;
    assert(w_Z='0') report "Fail @ 111" severity error;
    
    w_CLK  <= '1';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='0') report "Fail @ 000" severity error;
    assert(w_Y='0') report "Fail @ 000" severity error;
    assert(w_Z='0') report "Fail @ 000" severity error;
    
    w_CLK  <= '0';
    w_GCNT <= '1';
    wait for 1 ns;
    assert(w_X='0') report "Fail @ 000" severity error;
    assert(w_Y='0') report "Fail @ 000" severity error;
    assert(w_Z='0') report "Fail @ 000" severity error;
    
    
    w_CLK  <= '0';
    w_GCNT <= '0';
    assert false report "Test done." severity note;
    wait;
  end process;
end arch_1;
