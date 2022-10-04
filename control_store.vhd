library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_store is

  port (
    address     : in  std_logic_vector(8 downto 0);
    instruction : out std_logic_vector(35 downto 0));

end entity control_store;

architecture control_store_ar of control_store is
  component decoder is
    generic (
      input_count  : natural := 9;
      output_count : natural := 512);
    port (
      input  : in  std_logic_vector(input_count - 1 downto 0);
      output : out std_logic_vector(output_count - 1 downto 0));
  end component decoder;

  signal mem_enable_lines : std_logic_vector(511 downto 0);
begin  -- architecture control_store_ar

  decoder : entity work.decoder
    generic map (
      input_count  => 9,
      output_count => 512)
    port map (
      input  => address,
      output => mem_enable_lines);

  

end architecture control_store_ar;
