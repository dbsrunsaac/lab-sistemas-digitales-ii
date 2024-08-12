-- Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- Entidad
entity rom4x2 is
port(
	en : in  std_logic;
	addr : in std_logic_vector(1 downto 0);
	data_out: out std_logic_vector(1 downto 0)
);
end entity;

-- Arquitectura
architecture arch of rom4x2 is
-- Definiendo la memoria
type data_array is array (0 to 3) of std_logic_vector(1 downto 0);
constant rom : data_array := (
				"01", "10", "11",  "11"
			);
begin
	process(en)
	begin
		if en = '1' then
			data_out <= rom(to_integer(unsigned(addr)));
		else 
			data_out <= "00";
		end if;
	end process;
end architecture;
