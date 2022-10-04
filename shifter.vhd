library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity shifter is

  port (
    input  : in  std_logic_vector(31 downto 0);
    sll8   : in  std_logic;
    sra1   : in  std_logic;
    clock  : in  std_logic;
    output : out std_logic_vector(31 downto 0));

end entity shifter;

architecture shifter_ar of shifter is

begin  -- architecture shifter_ar

  p : process (clock) is
  begin  -- process p
    if rising_edge(clock) then
      if sll8 = '1' then
        output <= input(31-8 downto 0) & "00000000";
      end if;

      if sra1 = '1' then
        output <= input(31) & input(31) & input(30 downto 1);
      end if;
    end if;
  end process p;

end architecture shifter_ar;
