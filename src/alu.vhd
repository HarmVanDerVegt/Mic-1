library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;
use ieee.std_logic_1164.all;

entity alu is

  port (
    F              : in  std_logic_vector(1 downto 0);
    A, B           : in  std_logic_vector(31 downto 0);
    INVA, ENA, ENB : in  std_logic;
    CI             : in  std_logic;
    CO             : out std_logic;
    neg, zero      : out std_logic;
    Z              : out std_logic_vector(31 downto 0));

end entity alu;

architecture alu_ar of alu is
  signal tmp     : std_logic_vector(31 downto 0);
  signal tmp_output : std_logic_vector(31 downto 0);

  component bit_alu is

    port (
      A, B, INVA, ENA, ENB : in  std_logic;
      G                    : in  std_logic_vector(1 downto 0);
      CI                   : in  std_logic;
      CO                   : out std_logic;
      Z                    : out std_logic);
  end component bit_alu;
begin  -- architecture alu_ar

  tmp(0) <= CI;

  p : for i in 0 to 30 generate
    alu : entity work.bit_alu
      port map (
        A    => A(i),
        B    => B(i),
        INVA => INVA,
        ENA  => ENA,
        ENB  => ENB,
        G    => F,
        CI   => tmp(i),
        CO   => tmp(i+1),
        Z    => tmp_output(i));
  end generate p;

  alu_last : entity work.bit_alu
    port map (
      A    => A(0),
      B    => B(0),
      INVA => INVA,
      ENA  => ENA,
      ENB  => ENB,
      G    => F,
      CI   => tmp(31),
      CO   => CO,
      Z    => tmp_output(31));

  neg <= tmp_output(31);
  zero <= nor_reduce(tmp_output);
  Z <= tmp_output;

end architecture alu_ar;
