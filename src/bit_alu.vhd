library ieee;
use ieee.std_logic_1164.all;

entity bit_alu is

  port (
    A, B, INVA, ENA, ENB : in  std_logic;
    G                    : in  std_logic_vector(1 downto 0);
    CI                   : in  std_logic;
    CO                   : out std_logic;
    Z                    : out std_logic);
end entity bit_alu;

architecture bit_alu_ar of bit_alu is

  component logical_unit is
    port (
      A, B  : in  std_logic;
      D     : in  std_logic_vector(2 downto 0);
      F     : out std_logic_vector(2 downto 0);
      adder : out std_logic_vector(1 downto 0));
  end component logical_unit;

  component fadder is
    port (
      L       : in  std_logic_vector(1 downto 0);
      D       : in  std_logic;
      ci      : in  std_logic;
      sum, co : out std_logic);
  end component fadder;

  component decoder is

    generic (
      input_count  : natural := 2;
      output_count : natural := 4);

    port (
      input  : in  std_logic_vector(input_count - 1 downto 0);
      output : out std_logic_vector(output_count - 1 downto 0));

  end component decoder;

  signal x, y, w : std_logic;
  signal l       : std_logic_vector(3 downto 0);
  signal add     : std_logic_vector(1 downto 0);
  signal s       : std_logic;
  signal ls      : std_logic_vector(2 downto 0);

begin  -- architecture bit_alu_ar

  w <= (A and ENA);
  y <= (B and ENB);
  x <= (INVA xor w);

  -- instance "Decoder_1"
  decoder_1 : entity work.decoder
    port map (
      input(0)  => G(1),
      input(1)  => G(0),
      -- output => l);
      output(0) => l(0),
      output(1) => l(1),
      output(2) => l(2),
      output(3) => l(3));

  -- instance "logical_unit_1"
  logical_unit_1 : entity work.logical_unit
    port map (
      A     => x,
      B     => y,
      D(0)  => l(0),
      D(1)  => l(1),
      D(2)  => l(2),
      F     => ls,
      adder => add);

  -- instance "fadder_1"
  fadder_1 : entity work.fadder
    port map (
      L(0) => add(0),
      L(1) => add(1),
      D    => l(3),
      ci   => CI,
      sum  => s,
      co   => CO);


  Z <= (s or ls(0) or ls(1) or ls(2));


end architecture bit_alu_ar;
