library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity mic1 is

  port (
    clock, reset : in std_logic);

end entity mic1;

architecture mic1_ar of mic1 is
  component alu is
    port (
      F              : in  std_logic_vector(1 downto 0);
      A, B           : in  std_logic_vector(31 downto 0);
      INVA, ENA, ENB : in  std_logic;
      CI             : in  std_logic;
      CO             : out std_logic;
      Z              : out std_logic_vector(31 downto 0));
  end component alu;

  component memory is
    generic (
      bits : natural := 32);
    port (
      D            : in  std_logic_vector(bits - 1 downto 0);
      clock, reset : in  std_logic;
      Q            : out std_logic_vector(bits - 1 downto 0));
  end component memory;

  component memory_e is                 --This one has enable lines
    generic (
      bits : natural := 32);
    port (
      D                    : in  std_logic_vector(bits - 1 downto 0);
      clock, reset, enable : in  std_logic;
      Q                    : out std_logic_vector(bits - 1 downto 0));
  end component memory_e;

  component shifter is
    port (
      input  : in  std_logic_vector(31 downto 0);
      sll8   : in  std_logic;
      sra1   : in  std_logic;
      clock  : in  std_logic;
      output : out std_logic_vector(31 downto 0));
  end component shifter;

  component decoder is
    generic (
      input_count  : natural := 8;
      output_count : natural := 16);
    port (
      input  : in  std_logic_vector(input_count - 1 downto 0);
      output : out std_logic_vector(output_count - 1 downto 0));
  end component decoder;

  signal A, B, C          : std_logic_vector(31 downto 0);
  signal shift_input      : std_logic_vector(31 downto 0);
  signal mem_enable_lines : std_logic_vector(15 downto 0);

begin  -- architecture mic1_ar

  decoder : entity work.decoder
    generic map (
      input_count  => 8,
      output_count => 16)
    port map (
      input  => input,                  --TODO
      output => mem_enable_lines);      --TODO

  SP_reg : entity work.memory_e
    generic map (
      bits => 32)
    port map (
      D      => C,
      clock  => clock,
      reset  => reset,
      enable => enable,
      Q      => B);
  
  LV_reg : entity work.memory_e
    generic map (
      bits => 32)
    port map (
      D      => C,
      clock  => clock,
      reset  => reset,
      enable => enable,
      Q      => B);
  
  memory_e_3 : entity work.memory_e
    generic map (
      bits => bits)
    port map (
      D      => D,
      clock  => clock,
      reset  => reset,
      enable => enable,
      Q      => Q);
  memory_e_4 : entity work.memory_e
    generic map (
      bits => bits)
    port map (
      D      => D,
      clock  => clock,
      reset  => reset,
      enable => enable,
      Q      => Q);
  memory_e_5 : entity work.memory_e
    generic map (
      bits => bits)
    port map (
      D      => D,
      clock  => clock,
      reset  => reset,
      enable => enable,
      Q      => Q);

  H_reg : entity work.memory
    port map (
      D     => C,
      clock => clock,
      reset => reset,
      Q     => A);

  alu : entity work.alu
    port map (
      F    => F,                        --TODO
      A    => A,
      B    => B,
      INVA => INVA,                     --TODO
      ENA  => ENA,                      --TODO
      ENB  => ENB,
      CI   => CI,                       --TODO
      CO   => CO,                       --TODO
      Z    => shift_input);

  shifter : entity work.shifter
    port map (
      input  => shift_input,
      sll8   => sll8,                   --TODO
      sra1   => sra1,                   --TODO
      clock  => clock,
      output => C);

end architecture mic1_ar;
