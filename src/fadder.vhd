library ieee;
use ieee.std_logic_1164.all;

entity fadder is
  
  port (
    L       : in  std_logic_vector(1 downto 0); -- Data in
    E       : in  std_logic;                    -- Enable output
    ci      : in  std_logic;                    -- Carry in
    sum, co : out std_logic);                   -- Output

end entity fadder;

architecture fadder_ar of fadder is

  signal w, x, y, z : std_logic;
begin  -- architecture fadder_ar

  w <= (L(0) and L(1));
  x <= (L(0) xor L(1));
  y <= (ci and x);
  z <= (ci xor x);

  sum <= (z and E);
  co <= (w or y) and E;

end architecture fadder_ar;
