--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:18:46 07/15/2021
-- Design Name:   
-- Module Name:   C:/Users/javier/Documents/JdeRobot/Verilog/FiltroJavi_SoloProc/tb_uno.vhd
-- Project Name:  FiltroJavi_SoloProc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_uno IS
END tb_uno;
 
ARCHITECTURE behavior OF tb_uno IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         rgbfilter : IN  std_logic_vector(2 downto 0);
         proc_we : OUT  std_logic;
         proc_pxl : OUT  std_logic_vector(11 downto 0);
         proc_addr : OUT  std_logic_vector(12 downto 0);
         start : OUT  std_logic;
         reg_histograma : OUT  std_logic_vector(5 downto 0);
         pos_col_ret : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal rgbfilter : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal proc_we : std_logic;
   signal proc_pxl : std_logic_vector(11 downto 0);
   signal proc_addr : std_logic_vector(12 downto 0);
   signal start : std_logic;
   signal reg_histograma : std_logic_vector(5 downto 0);
   signal pos_col_ret : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          clk => clk,
          rst => rst,
          rgbfilter => rgbfilter,
          proc_we => proc_we,
          proc_pxl => proc_pxl,
          proc_addr => proc_addr,
          start => start,
          reg_histograma => reg_histograma,
          pos_col_ret => pos_col_ret
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst <= '1';
		rgbfilter <= "100";
      wait for 40 ns;
		rst <= '0';
		wait;
   end process;

END;
