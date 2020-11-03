library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- te incida mediante un número binario que entrada esta activada.
--2^nsalidas=nentradas

entity codificador is
	port(
	entrada : in  std_logic_vector(3 downto 0);
	salida  : out std_logic_vector(1 downto 0);
	i : out std_logic);		--Me dice si no hay ninguno activado.
end codificador;

architecture behavioral of codificador is
begin
	with entrada select
		salida<=
			"00" when "0000",
			"00" when "0001",
			"01" when "0010",
			"10" when "0100",
			"11" when "1000",
			"--" when others;
		i<= '1' when entrada = "0000" else '0';
end behavioral;