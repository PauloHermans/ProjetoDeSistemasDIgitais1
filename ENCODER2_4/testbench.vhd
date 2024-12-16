library IEEE;
use IEEE.std_logic_1164.all;

entity tb_encoder2_4bit is
-- empty
end tb_encoder2_4bit;

architecture arch_1 of tb_encoder2_4bit is

-- DUT component
component encoder2_4bit is
port (i_A : in std_logic;                      -- data input
      i_B : in std_logic;                      -- data input
      o_S : out std_logic_vector(3 downto 0)); -- data output
end component;

signal w_A, w_B : std_logic;
signal w_S      : std_logic_vector (3 downto 0);

begin

  -- Connect DUT
  u_DUT: encoder2_4bit port map(i_A => w_A,
                                i_B => w_B,
                                o_S => w_S);
  process
  begin
 
    w_A <= '0';
    w_B <= '0';
    wait for 1 ns;
    assert(w_S(0)='1') report "Fail @ 000" severity error;
    assert(w_S(1)='0') report "Fail @ 000" severity error;
    assert(w_S(2)='0') report "Fail @ 000" severity error;
    assert(w_S(3)='0') report "Fail @ 000" severity error;
  
    w_A <= '1';
    w_B <= '0';
    wait for 1 ns;
    assert(w_S(0)='0') report "Fail @ 001" severity error;
    assert(w_S(1)='1') report "Fail @ 001" severity error;
    assert(w_S(2)='0') report "Fail @ 000" severity error;
    assert(w_S(3)='0') report "Fail @ 000" severity error;
 
    w_A <= '0';
    w_B <= '1';
    wait for 1 ns;
    assert(w_S(0)='0') report "Fail @ 010" severity error;
    assert(w_S(1)='0') report "Fail @ 010" severity error;
    assert(w_S(2)='1') report "Fail @ 000" severity error;
    assert(w_S(3)='0') report "Fail @ 000" severity error;
 
    w_A <= '1';
    w_B <= '1';
    wait for 1 ns;
    assert(w_S(0)='0') report "Fail @ 011" severity error;
    assert(w_S(1)='0') report "Fail @ 011" severity error;
    assert(w_S(2)='0') report "Fail @ 000" severity error;
    assert(w_S(3)='1') report "Fail @ 000" severity error;
 
    -- Clear inputs
    w_A <= '0';
    w_B <= '0';
    assert false report "Test done." severity note;
 
    wait;
  end process;
end arch_1;
