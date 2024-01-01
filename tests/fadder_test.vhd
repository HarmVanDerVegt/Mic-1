library ieee;
use ieee.std_logic_1164.all;

entity fadder_test is

end entity fadder_test;

architecture fadder_test_arch of fadder_test is

  signal i1, i2, e, ci : std_logic;
  signal sum, co       : std_logic;

begin  -- architecture fadder_test_arch

  -- instance "fadder_1"
  fadder_1 : entity work.fadder
    port map (
      L(1) => i1,
      L(0) => i2,
      E    => e,
      ci   => ci,
      sum  => sum,
      co   => co);

  process
    type pattern is record
      i1, i2, e, ci : std_logic;
      sum, co       : std_logic;
    end record pattern;

    type pattern_array is array (natural range <>) of pattern;
    constant patterns : pattern_array :=
      (('0', '0', '0', '0', '0', '0'),
       ('0', '0', '0', '1', '0', '0'),
       ('0', '0', '1', '0', '0', '0'),
       ('0', '0', '1', '1', '1', '0'),
       ('0', '1', '0', '0', '0', '0'),
       ('0', '1', '0', '1', '0', '0'),
       ('0', '1', '1', '0', '1', '0'),
       ('0', '1', '1', '1', '0', '1'),
       ('1', '0', '0', '0', '0', '0'),
       ('1', '0', '0', '1', '0', '0'),
       ('1', '0', '1', '0', '1', '0'),
       ('1', '0', '1', '1', '0', '1'),
       ('1', '1', '0', '0', '0', '0'),
       ('1', '1', '0', '1', '0', '0'),
       ('1', '1', '1', '0', '0', '1'),
       ('1', '1', '1', '1', '1', '1'));

  begin

    for i in patterns'range loop

      i1 <= patterns(i).i1;
      i2 <= patterns(i).i2;
      e  <= patterns(i).e;
      ci <= patterns(i).ci;

      wait for 1 ns;

      assert sum = patterns(i).sum
        report "bad sum result. i = " & integer'image(i) severity error;

      assert co = patterns(i).co
        report "bad carry out result. i = " & integer'image(i) severity error;

    end loop;

    assert false report "end of test" severity note;

    wait;
  end process;
end architecture fadder_test_arch;
