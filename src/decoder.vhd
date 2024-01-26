library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity decoder is
  
  generic (
    input_count  : natural := 2;
    output_count : natural := 4);

  port (
    input : in std_logic_vector(input_count - 1 downto 0);
    output : out std_logic_vector(output_count - 1 downto 0));

end entity decoder;

architecture decoder_ar of decoder is

begin  -- architecture decoder_ar
  p: process (input) is
  begin  -- process p
    output <= (others => '0');
    output(to_integer(unsigned(input))) <= '1';
  end process p;


end architecture decoder_ar;
