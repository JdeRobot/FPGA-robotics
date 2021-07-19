--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:29:12 06/13/2021
-- Design Name:   
-- Module Name:   F:/urjc/proyectos/jderobot/fpga-robot/Blocks/General_Blocks/spi/alhambra_ii/spi_controller/tb_top_spi_controller.vhd
-- Project Name:  spi_controller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_spi_controller
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
 
ENTITY tb_top_spi_controller IS
END tb_top_spi_controller;
 
ARCHITECTURE behavior OF tb_top_spi_controller IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_spi_controller
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         motor_pwm_left_i : IN  std_logic_vector(7 downto 0);
         motor_pwm_rght_i : IN  std_logic_vector(7 downto 0);
         motor_dps_limit_i : IN  std_logic_vector(15 downto 0);
         motor_dps_left_i : IN  std_logic_vector(15 downto 0);
         motor_dps_rght_i : IN  std_logic_vector(15 downto 0);
         led_eye_left_rgb_i : IN  std_logic_vector(23 downto 0);
         led_eye_rght_rgb_i : IN  std_logic_vector(23 downto 0);
         led_blink_left_rgb_i : IN  std_logic_vector(23 downto 0);
         led_blink_rght_rgb_i : IN  std_logic_vector(23 downto 0);
         leds : OUT  std_logic_vector(7 downto 0);
         sclk_o : OUT  std_logic;
         miso_i : IN  std_logic;
         mosi_o : OUT  std_logic;
         spi_ss_n : OUT  std_logic;
         rpi_running : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal motor_pwm_left_i : std_logic_vector(7 downto 0) := (others => '0');
   signal motor_pwm_rght_i : std_logic_vector(7 downto 0) := (others => '0');
   signal motor_dps_limit_i : std_logic_vector(15 downto 0) := (others => '0');
   signal motor_dps_left_i : std_logic_vector(15 downto 0) := (others => '0');
   signal motor_dps_rght_i : std_logic_vector(15 downto 0) := (others => '0');
   signal led_eye_left_rgb_i : std_logic_vector(23 downto 0) := (others => '0');
   signal led_eye_rght_rgb_i : std_logic_vector(23 downto 0) := (others => '0');
   signal led_blink_left_rgb_i : std_logic_vector(23 downto 0) := (others => '0');
   signal led_blink_rght_rgb_i : std_logic_vector(23 downto 0) := (others => '0');
   signal miso_i : std_logic := '0';

 	--Outputs
   signal leds : std_logic_vector(7 downto 0);
   signal sclk_o : std_logic;
   signal mosi_o : std_logic;
   signal spi_ss_n : std_logic;
   signal rpi_running : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_spi_controller PORT MAP (
          clk => clk,
          rst => rst,
          motor_pwm_left_i => motor_pwm_left_i,
          motor_pwm_rght_i => motor_pwm_rght_i,
          motor_dps_limit_i => motor_dps_limit_i,
          motor_dps_left_i => motor_dps_left_i,
          motor_dps_rght_i => motor_dps_rght_i,
          led_eye_left_rgb_i => led_eye_left_rgb_i,
          led_eye_rght_rgb_i => led_eye_rght_rgb_i,
          led_blink_left_rgb_i => led_blink_left_rgb_i,
          led_blink_rght_rgb_i => led_blink_rght_rgb_i,
          leds => leds,
          sclk_o => sclk_o,
          miso_i => miso_i,
          mosi_o => mosi_o,
          spi_ss_n => spi_ss_n,
          rpi_running => rpi_running
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
      rst <='1';
      wait for 34 ns;	
      rst <= '0';
      wait for clk_period*1000;
		led_eye_left_rgb_i <= x"FFAACC"; --"11111111_10101010_11001100";
      wait for clk_period*1000;
		led_eye_rght_rgb_i <= x"00AAFF"; --"00000000_10101010_11111111";
      wait for clk_period*10000;
		led_eye_left_rgb_i <= x"7FAACC"; -- "01111111_10101010_11001100";
      wait for clk_period*10000;
		motor_pwm_left_i <= x"55"; -- "01010101";
      wait for clk_period*10000;
		motor_pwm_rght_i <= x"D5"; --"11010101";
      wait for clk_period*10000;
		motor_dps_limit_i <= x"012C"; --"00000001_00101100";
      wait for clk_period*10000;
		led_eye_left_rgb_i <= x"1132CC"; -- "00010001_00110010_11001100";
      wait;
   end process;

END;
