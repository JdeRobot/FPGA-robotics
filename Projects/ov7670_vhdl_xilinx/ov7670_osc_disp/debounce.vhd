--------------------------------------------------------------------------------
--   Felipe Machado Sanchez
--   Area de Tecnologia Electronica
--   Universidad Rey Juan Carlos
--   https://github.com/felipe-m
--
--   Pulse detector, converts a bouncing signal in just one pulse
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.ov7670_pkg.all;

entity debounce_1pulse is
    port ( rst       : in  std_logic;
           clk       : in  std_logic;
           sig_in    : in  std_logic;
           sig_out   : out  std_logic);
end debounce_1pulse;

architecture behav of debounce_1pulse is
   signal count : unsigned(23 downto 0);
   signal sig_deb : std_logic;
   signal sig_deb_rg : std_logic;
begin
  -- signal is not a pulse, but has no bouncing
  P_deb: process(rst, clk)
  begin
    if rst = c_on then
      sig_deb <='0'; 
      count <= (others => '0');
    elsif clk'event and clk='1' then
      if sig_in = '1' then
        if count = x"FFFFFF" then
          sig_deb <= '1';
        else
          sig_deb <= '0';
          count <= count+1; -- to avoid two pulses if it is very large
        end if;
      else
        count <= (others => '0');
        sig_deb <= '0';
      end if;
    end if;
  end process;

  P_reg: process(rst, clk)
  begin
    if rst = c_on then
      sig_deb_rg <= '0';
    elsif clk'event and clk='1' then
      sig_deb_rg <= sig_deb;
    end if;
  end process;

  sig_out <= '1' when sig_deb ='1' and sig_deb_rg = '0' else '0';
  
end behav;

