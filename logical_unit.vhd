library ieee;
use ieee.std_logic_1164.all;

entity logical_unit is
  
  port (
    A, B : in  std_logic;
    D    : in  std_logic_vector(2 downto 0);
    F    : out std_logic_vector(2 downto 0);
    adder: out std_logic_vector(1 downto 0));

end entity logical_unit;

architecture logic_ar of logical_unit is

  signal x, y, z : std_logic;
begin  -- architecture logic_ar
  x <= (A and B);
  y <= (A or B);
  z <= (not B);

  F(0) <= (x and D(0));
  F(1) <= (y and D(1));
  F(2) <= (z and D(2));

  adder(0) <= B;
  adder(1) <= A;

end architecture logic_ar;
