-- Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- Entidad
entity rom8x4 is
port(
	en : in  std_logic;
	addr : in std_logic_vector(11 downto 0);
	data_out: out std_logic_vector(7 downto 0)
);
end entity;

-- Arquitectura
architecture arch of rom8x4 is
-- Importando el componente
component rom4x2 is 
port(
	en : in  std_logic;
	addr : in std_logic_vector(1 downto 0);
	data_out: out std_logic_vector(1 downto 0)
);
end component;
begin
	R1 : rom4x2 port map (addr(11), addr(10 downto 9), data_out(7 downto 6));
	R2 : rom4x2 port map (addr(8), addr(7 downto 6), data_out(5 downto 4));
	R3 : rom4x2 port map (addr(5), addr(4 downto 3), data_out(3 downto 2));
	R4 : rom4x2 port map (addr(2), addr(1 downto 0), data_out(1 downto 0));
end architecture;
