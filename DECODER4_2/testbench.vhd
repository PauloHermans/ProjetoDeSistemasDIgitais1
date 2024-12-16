library IEEE;
use IEEE.std_logic_1164.all;

entity tb_decoder4_2bit is
-- empty
end tb_decoder4_2bit;

architecture arch_1 of tb_decoder4_2bit is

-- DUT component
component decoder4_2bit is
port ( i_A  : in std_logic_vector(3 downto 0); -- data input
       o_S0 : out std_logic;                   -- data input
       o_S1 : out std_logic);                  -- data output
end component;

signal w_A : std_logic_vector (3 downto 0);
signal w_S0, w_S1 : std_logic;

begin

  -- Connect DUT
  u_DUT: decoder4_2bit port map(i_A => w_A,
                                o_S0 => w_S0,
                                o_S1 => w_S1);
  process
  begin
 
    w_A(0) <= '1';
    w_A(1) <= '0';
    w_A(2) <= '0';
    w_A(3) <= '0';
    wait for 1 ns;
    assert(w_S0='0') report "Fail @ 000" severity error;
    assert(w_S1='0') report "Fail @ 000" severity error;
 
    w_A(0) <= '0';
    w_A(1) <= '1';
    w_A(2) <= '0';
    w_A(3) <= '0';
    wait for 1 ns;
    assert(w_S0='1') report "Fail @ 001" severity error;
    assert(w_S1='0') report "Fail @ 001" severity error;
 
    w_A(0) <= '0';
    w_A(1) <= '0';
    w_A(2) <= '1';
    w_A(3) <= '0';
    wait for 1 ns;
    assert(w_S0='0') report "Fail @ 010" severity error;
    assert(w_S1='1') report "Fail @ 010" severity error;

    w_A(0) <= '0';
    w_A(1) <= '0';
    w_A(2) <= '0';
    w_A(3) <= '1';
    wait for 1 ns;
    assert(w_S0='1') report "Fail @ 011" severity error;
    assert(w_S1='1') report "Fail @ 011" severity error;
 
    -- Clear inputs
    w_A(0) <= '0';
    w_A(1) <= '0';
    w_A(2) <= '0';
    w_A(3) <= '0';
    assert false report "Test done." severity note;
    wait;
  end process;
end arch_1;
