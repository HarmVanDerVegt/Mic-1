library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is

  generic (
    bits  : natural                          := 36;
    value : std_logic_vector(36 -1 downto 0) := (5 => '1', 3 => '1', others => '0'));

  port (
    clock, enable_o : in  std_logic;
    output          : out std_logic_vector(bits -1 downto 0));

end entity rom;

architecture rom_ar of rom is

  signal data : std_logic_vector(bits - 1 downto 0);
begin  -- architecture rom_ar

  data <= value;

  g : for i in bits -1 downto 0 generate
    output(i) <= data(i) and enable_o;
  end generate g;

end architecture rom_ar;
