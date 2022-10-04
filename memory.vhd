library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is

  generic (
    bits : natural := 32);

  port (
    D                                : in  std_logic_vector(bits - 1 downto 0);
    clock, reset, enable_i, enable_o : in  std_logic;
    output                           : out std_logic_vector(bits - 1 downto 0));

end entity memory;

architecture memory_ar of memory is
  signal data : std_logic_vector(bits - 1 downto 0);
begin  -- architecture memory_ar

  p : process (clock, reset) is
  begin  -- process p
    if reset = '0' then                 -- asynchronous reset (active low)
      data <= (others => '0');
    elsif rising_edge(clock) then       -- rising clock edge
      if enable_i = '1' then
        data <= D;
      end if;
    end if;
  end process p;
  g : for i in bits - 1 downto 0 generate
    output(i) <= data(i) and enable_o;
  end generate g;
end architecture memory_ar;
