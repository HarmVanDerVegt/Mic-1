library ieee;
use ieee.std_logic_1164.all;

entity fadder is
  
  port (
    L       : in  std_logic_vector(1 downto 0);
    D       : in  std_logic;
    ci      : in  std_logic;
    sum, co : out std_logic);

end entity fadder;

architecture fadder_ar of fadder is

  signal w, x, y, z : std_logic;
begin  -- architecture fadder_ar

  w <= (L(0) and L(1) and D);
  x <= (L(0) xor L(1));
  y <= (D and ci and x);
  z <= (ci xor x);

  sum <= (z and D);
  co <= (w or y);

end architecture fadder_ar;
