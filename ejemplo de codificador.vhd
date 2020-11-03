--Ejercicio: mi abuel@ no sabe binario y queremos tener un sistema que cuando pulse un botón de los 8 que hay le escriba el número en binario.
--Habrá 8 interruptores y le dirá cuál es el número en binario.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- te incida mediante un número binario que entrada esta activada.
--2^nsalidas=nentradas

entity ejemplocodificador is
	port(
	entrada : in  std_logic_vector(7 downto 0);
	salida  : out std_logic_vector(2 downto 0);
	i : out std_logic);		--Me dice si no hay ninguno activado. Se usa porque si no se usara se confundiria entre el 00 y el 01 (
									--mirar tabla de verdad de la librata)
end ejemplocodificador;

architecture behavioral of ejemplocodificador is
begin
	with entrada select
		salida<=
			"000" when "00000000",
			"000" when "00000001",
			"001" when "00000010",
			"010" when "00000100",
			"011" when "00001000",
			"100" when "00010000",
			"101" when "00100000",
			"110" when "01000000",
			"111" when "10000000",
			"---" when others;
		i<= '1' when entrada = "0000" else '0';
end behavioral;