```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity my_entity is
  port (
    clk : in std_logic;
    data_in : in std_logic_vector(7 downto 0);
    data_out : out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of my_entity is
  signal sync_data : std_logic_vector(7 downto 0);
  signal internal_data : std_logic_vector(7 downto 0);
begin
  process (clk) 
  begin
    if rising_edge(clk) then
      sync_data <= data_in; 
      internal_data <= sync_data;
      data_out <= internal_data;
    end if; 
  end process;
end architecture;
```