-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/08/2020 15:22:50"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	divisor IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	inicio : IN std_logic;
	entA : IN std_logic_vector(3 DOWNTO 0);
	entB : IN std_logic_vector(3 DOWNTO 0);
	pronto : OUT std_logic;
	erro : OUT std_logic;
	quoc : OUT std_logic_vector(3 DOWNTO 0);
	resto : OUT std_logic_vector(3 DOWNTO 0);
	conteudoA : OUT std_logic_vector(3 DOWNTO 0);
	conteudoB : OUT std_logic_vector(3 DOWNTO 0)
	);
END divisor;

-- Design Ports Information
-- pronto	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- erro	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quoc[0]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quoc[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quoc[2]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quoc[3]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[0]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[1]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[3]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoA[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoA[1]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoA[2]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoA[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoB[0]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoB[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoB[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoB[3]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- inicio	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF divisor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_inicio : std_logic;
SIGNAL ww_entA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_erro : std_logic;
SIGNAL ww_quoc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_resto : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_conteudoA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_conteudoB : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controle|state.S2~regout\ : std_logic;
SIGNAL \datapath|AmaiorB|LessThan0~2_combout\ : std_logic;
SIGNAL \controle|state.S2~feeder_combout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \datapath|regB|q[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|regB|q[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \controle|Selector1~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \controle|state.S5~regout\ : std_logic;
SIGNAL \controle|state~12_combout\ : std_logic;
SIGNAL \controle|state.S1~regout\ : std_logic;
SIGNAL \datapath|regB|q[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|regA|q[0]~4_combout\ : std_logic;
SIGNAL \datapath|regA|q[1]~6_combout\ : std_logic;
SIGNAL \datapath|AmaiorB|LessThan0~1_combout\ : std_logic;
SIGNAL \controle|state~10_combout\ : std_logic;
SIGNAL \controle|state~13_combout\ : std_logic;
SIGNAL \controle|state.S3~regout\ : std_logic;
SIGNAL \controle|CA~combout\ : std_logic;
SIGNAL \datapath|regA|q[0]~5\ : std_logic;
SIGNAL \datapath|regA|q[1]~7\ : std_logic;
SIGNAL \datapath|regA|q[2]~9\ : std_logic;
SIGNAL \datapath|regA|q[3]~10_combout\ : std_logic;
SIGNAL \datapath|regA|q[2]~8_combout\ : std_logic;
SIGNAL \datapath|AmaiorB|LessThan0~0_combout\ : std_logic;
SIGNAL \controle|state~11_combout\ : std_logic;
SIGNAL \controle|state.S4~regout\ : std_logic;
SIGNAL \controle|Selector0~0_combout\ : std_logic;
SIGNAL \controle|state.S0~regout\ : std_logic;
SIGNAL \controle|pronto~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \datapath|mux2|y[0]~0_combout\ : std_logic;
SIGNAL \datapath|regquoc|q[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|mux2|y[1]~1_combout\ : std_logic;
SIGNAL \datapath|regquoc|q[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|mux2|y[2]~2_combout\ : std_logic;
SIGNAL \datapath|regquoc|q[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|soma|Add0~0_combout\ : std_logic;
SIGNAL \datapath|mux2|y[3]~3_combout\ : std_logic;
SIGNAL \datapath|regquoc|q[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|regresto|q[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|regresto|q[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|regresto|q[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|regresto|q[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|regB|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|regresto|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|regcont|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|regquoc|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|regA|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entB~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_inicio <= inicio;
ww_entA <= entA;
ww_entB <= entB;
pronto <= ww_pronto;
erro <= ww_erro;
quoc <= ww_quoc;
resto <= ww_resto;
conteudoA <= ww_conteudoA;
conteudoB <= ww_conteudoB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCFF_X35_Y35_N13
\controle|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|state.S2~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|state.S2~regout\);

-- Location: LCCOMB_X35_Y35_N10
\datapath|AmaiorB|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|AmaiorB|LessThan0~2_combout\ = (\datapath|regB|q\(2) & (\datapath|regA|q\(2) & (\datapath|regA|q\(3) $ (!\datapath|regB|q\(3))))) # (!\datapath|regB|q\(2) & (!\datapath|regA|q\(2) & (\datapath|regA|q\(3) $ (!\datapath|regB|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|regB|q\(2),
	datab => \datapath|regA|q\(3),
	datac => \datapath|regA|q\(2),
	datad => \datapath|regB|q\(3),
	combout => \datapath|AmaiorB|LessThan0~2_combout\);

-- Location: LCCOMB_X35_Y35_N12
\controle|state.S2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|state.S2~feeder_combout\ = \controle|CA~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controle|CA~combout\,
	combout => \controle|state.S2~feeder_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inicio~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_inicio,
	combout => \inicio~combout\);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(2),
	combout => \entB~combout\(2));

-- Location: LCCOMB_X35_Y35_N26
\datapath|regB|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regB|q[2]~feeder_combout\ = \entB~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(2),
	combout => \datapath|regB|q[2]~feeder_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(3),
	combout => \entB~combout\(3));

-- Location: LCFF_X35_Y35_N1
\datapath|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(3),
	sload => VCC,
	ena => \controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regB|q\(3));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(0),
	combout => \entB~combout\(0));

-- Location: LCCOMB_X35_Y35_N14
\datapath|regB|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regB|q[0]~feeder_combout\ = \entB~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(0),
	combout => \datapath|regB|q[0]~feeder_combout\);

-- Location: LCFF_X35_Y35_N15
\datapath|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regB|q[0]~feeder_combout\,
	ena => \controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regB|q\(0));

-- Location: LCCOMB_X35_Y35_N6
\datapath|geraBz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|geraBz|Equal0~0_combout\ = (!\datapath|regB|q\(1) & (!\datapath|regB|q\(3) & (!\datapath|regB|q\(0) & !\datapath|regB|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|regB|q\(1),
	datab => \datapath|regB|q\(3),
	datac => \datapath|regB|q\(0),
	datad => \datapath|regB|q\(2),
	combout => \datapath|geraBz|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y35_N4
\controle|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|Selector1~0_combout\ = (\controle|state.S2~regout\ & ((\datapath|geraBz|Equal0~0_combout\) # ((!\inicio~combout\ & \controle|state.S5~regout\)))) # (!\controle|state.S2~regout\ & (!\inicio~combout\ & (\controle|state.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|state.S2~regout\,
	datab => \inicio~combout\,
	datac => \controle|state.S5~regout\,
	datad => \datapath|geraBz|Equal0~0_combout\,
	combout => \controle|Selector1~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X35_Y35_N5
\controle|state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|Selector1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|state.S5~regout\);

-- Location: LCCOMB_X35_Y35_N22
\controle|state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|state~12_combout\ = (\inicio~combout\ & ((\controle|state.S5~regout\) # (!\controle|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|state.S0~regout\,
	datab => \inicio~combout\,
	datac => \controle|state.S5~regout\,
	combout => \controle|state~12_combout\);

-- Location: LCFF_X35_Y35_N23
\controle|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|state~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|state.S1~regout\);

-- Location: LCFF_X35_Y35_N27
\datapath|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regB|q[2]~feeder_combout\,
	ena => \controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regB|q\(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(1),
	combout => \entB~combout\(1));

-- Location: LCCOMB_X35_Y35_N16
\datapath|regB|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regB|q[1]~feeder_combout\ = \entB~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(1),
	combout => \datapath|regB|q[1]~feeder_combout\);

-- Location: LCFF_X35_Y35_N17
\datapath|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regB|q[1]~feeder_combout\,
	ena => \controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regB|q\(1));

-- Location: LCCOMB_X36_Y35_N6
\datapath|regA|q[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regA|q[0]~4_combout\ = (\datapath|regB|q\(0) & (\datapath|regA|q\(0) $ (VCC))) # (!\datapath|regB|q\(0) & ((\datapath|regA|q\(0)) # (GND)))
-- \datapath|regA|q[0]~5\ = CARRY((\datapath|regA|q\(0)) # (!\datapath|regB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|regB|q\(0),
	datab => \datapath|regA|q\(0),
	datad => VCC,
	combout => \datapath|regA|q[0]~4_combout\,
	cout => \datapath|regA|q[0]~5\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(0),
	combout => \entA~combout\(0));

-- Location: LCCOMB_X36_Y35_N8
\datapath|regA|q[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regA|q[1]~6_combout\ = (\datapath|regA|q\(1) & ((\datapath|regB|q\(1) & (!\datapath|regA|q[0]~5\)) # (!\datapath|regB|q\(1) & (\datapath|regA|q[0]~5\ & VCC)))) # (!\datapath|regA|q\(1) & ((\datapath|regB|q\(1) & ((\datapath|regA|q[0]~5\) # 
-- (GND))) # (!\datapath|regB|q\(1) & (!\datapath|regA|q[0]~5\))))
-- \datapath|regA|q[1]~7\ = CARRY((\datapath|regA|q\(1) & (\datapath|regB|q\(1) & !\datapath|regA|q[0]~5\)) # (!\datapath|regA|q\(1) & ((\datapath|regB|q\(1)) # (!\datapath|regA|q[0]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|regA|q\(1),
	datab => \datapath|regB|q\(1),
	datad => VCC,
	cin => \datapath|regA|q[0]~5\,
	combout => \datapath|regA|q[1]~6_combout\,
	cout => \datapath|regA|q[1]~7\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(1),
	combout => \entA~combout\(1));

-- Location: LCFF_X36_Y35_N9
\datapath|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regA|q[1]~6_combout\,
	sdata => \entA~combout\(1),
	sload => \controle|state.S1~regout\,
	ena => \controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regA|q\(1));

-- Location: LCCOMB_X35_Y35_N8
\datapath|AmaiorB|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|AmaiorB|LessThan0~1_combout\ = (\datapath|regB|q\(1) & (((\datapath|regB|q\(0) & !\datapath|regA|q\(0))) # (!\datapath|regA|q\(1)))) # (!\datapath|regB|q\(1) & (\datapath|regB|q\(0) & (!\datapath|regA|q\(1) & !\datapath|regA|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|regB|q\(1),
	datab => \datapath|regB|q\(0),
	datac => \datapath|regA|q\(1),
	datad => \datapath|regA|q\(0),
	combout => \datapath|AmaiorB|LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y35_N28
\controle|state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|state~10_combout\ = (\controle|state.S2~regout\ & !\datapath|geraBz|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|state.S2~regout\,
	datad => \datapath|geraBz|Equal0~0_combout\,
	combout => \controle|state~10_combout\);

-- Location: LCCOMB_X35_Y35_N24
\controle|state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|state~13_combout\ = (!\datapath|AmaiorB|LessThan0~0_combout\ & (\controle|state~10_combout\ & ((!\datapath|AmaiorB|LessThan0~1_combout\) # (!\datapath|AmaiorB|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|AmaiorB|LessThan0~2_combout\,
	datab => \datapath|AmaiorB|LessThan0~0_combout\,
	datac => \datapath|AmaiorB|LessThan0~1_combout\,
	datad => \controle|state~10_combout\,
	combout => \controle|state~13_combout\);

-- Location: LCFF_X35_Y35_N25
\controle|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|state~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|state.S3~regout\);

-- Location: LCCOMB_X35_Y35_N30
\controle|CA\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|CA~combout\ = (\controle|state.S3~regout\) # (\controle|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controle|state.S3~regout\,
	datad => \controle|state.S1~regout\,
	combout => \controle|CA~combout\);

-- Location: LCFF_X36_Y35_N7
\datapath|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regA|q[0]~4_combout\,
	sdata => \entA~combout\(0),
	sload => \controle|state.S1~regout\,
	ena => \controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regA|q\(0));

-- Location: LCCOMB_X36_Y35_N10
\datapath|regA|q[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regA|q[2]~8_combout\ = ((\datapath|regA|q\(2) $ (\datapath|regB|q\(2) $ (\datapath|regA|q[1]~7\)))) # (GND)
-- \datapath|regA|q[2]~9\ = CARRY((\datapath|regA|q\(2) & ((!\datapath|regA|q[1]~7\) # (!\datapath|regB|q\(2)))) # (!\datapath|regA|q\(2) & (!\datapath|regB|q\(2) & !\datapath|regA|q[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|regA|q\(2),
	datab => \datapath|regB|q\(2),
	datad => VCC,
	cin => \datapath|regA|q[1]~7\,
	combout => \datapath|regA|q[2]~8_combout\,
	cout => \datapath|regA|q[2]~9\);

-- Location: LCCOMB_X36_Y35_N12
\datapath|regA|q[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regA|q[3]~10_combout\ = \datapath|regB|q\(3) $ (\datapath|regA|q[2]~9\ $ (!\datapath|regA|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|regB|q\(3),
	datad => \datapath|regA|q\(3),
	cin => \datapath|regA|q[2]~9\,
	combout => \datapath|regA|q[3]~10_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(3),
	combout => \entA~combout\(3));

-- Location: LCFF_X36_Y35_N13
\datapath|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regA|q[3]~10_combout\,
	sdata => \entA~combout\(3),
	sload => \controle|state.S1~regout\,
	ena => \controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regA|q\(3));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(2),
	combout => \entA~combout\(2));

-- Location: LCFF_X36_Y35_N11
\datapath|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regA|q[2]~8_combout\,
	sdata => \entA~combout\(2),
	sload => \controle|state.S1~regout\,
	ena => \controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regA|q\(2));

-- Location: LCCOMB_X35_Y35_N18
\datapath|AmaiorB|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|AmaiorB|LessThan0~0_combout\ = (\datapath|regA|q\(3) & (\datapath|regB|q\(2) & (!\datapath|regA|q\(2) & \datapath|regB|q\(3)))) # (!\datapath|regA|q\(3) & ((\datapath|regB|q\(3)) # ((\datapath|regB|q\(2) & !\datapath|regA|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|regB|q\(2),
	datab => \datapath|regA|q\(3),
	datac => \datapath|regA|q\(2),
	datad => \datapath|regB|q\(3),
	combout => \datapath|AmaiorB|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y35_N20
\controle|state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|state~11_combout\ = (\controle|state~10_combout\ & ((\datapath|AmaiorB|LessThan0~0_combout\) # ((\datapath|AmaiorB|LessThan0~2_combout\ & \datapath|AmaiorB|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|AmaiorB|LessThan0~2_combout\,
	datab => \datapath|AmaiorB|LessThan0~0_combout\,
	datac => \datapath|AmaiorB|LessThan0~1_combout\,
	datad => \controle|state~10_combout\,
	combout => \controle|state~11_combout\);

-- Location: LCFF_X35_Y35_N21
\controle|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|state~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|state.S4~regout\);

-- Location: LCCOMB_X35_Y35_N2
\controle|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|Selector0~0_combout\ = (!\controle|state.S4~regout\ & ((\inicio~combout\) # (\controle|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inicio~combout\,
	datac => \controle|state.S0~regout\,
	datad => \controle|state.S4~regout\,
	combout => \controle|Selector0~0_combout\);

-- Location: LCFF_X35_Y35_N3
\controle|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|Selector0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|state.S0~regout\);

-- Location: LCCOMB_X35_Y35_N0
\controle|pronto\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|pronto~combout\ = (\controle|state.S5~regout\) # (!\controle|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|state.S0~regout\,
	datab => \controle|state.S5~regout\,
	combout => \controle|pronto~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y35_N26
\datapath|mux2|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2|y[0]~0_combout\ = (!\datapath|regcont|q\(0) & !\controle|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|regcont|q\(0),
	datad => \controle|state.S1~regout\,
	combout => \datapath|mux2|y[0]~0_combout\);

-- Location: LCFF_X36_Y35_N27
\datapath|regcont|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|mux2|y[0]~0_combout\,
	ena => \controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regcont|q\(0));

-- Location: LCCOMB_X36_Y35_N16
\datapath|regquoc|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regquoc|q[0]~feeder_combout\ = \datapath|regcont|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|regcont|q\(0),
	combout => \datapath|regquoc|q[0]~feeder_combout\);

-- Location: LCFF_X36_Y35_N17
\datapath|regquoc|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regquoc|q[0]~feeder_combout\,
	ena => \controle|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regquoc|q\(0));

-- Location: LCCOMB_X36_Y35_N0
\datapath|mux2|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2|y[1]~1_combout\ = (!\controle|state.S1~regout\ & (\datapath|regcont|q\(1) $ (\datapath|regcont|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controle|state.S1~regout\,
	datac => \datapath|regcont|q\(1),
	datad => \datapath|regcont|q\(0),
	combout => \datapath|mux2|y[1]~1_combout\);

-- Location: LCFF_X36_Y35_N1
\datapath|regcont|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|mux2|y[1]~1_combout\,
	ena => \controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regcont|q\(1));

-- Location: LCCOMB_X36_Y35_N30
\datapath|regquoc|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regquoc|q[1]~feeder_combout\ = \datapath|regcont|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|regcont|q\(1),
	combout => \datapath|regquoc|q[1]~feeder_combout\);

-- Location: LCFF_X36_Y35_N31
\datapath|regquoc|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regquoc|q[1]~feeder_combout\,
	ena => \controle|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regquoc|q\(1));

-- Location: LCCOMB_X36_Y35_N14
\datapath|mux2|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2|y[2]~2_combout\ = (!\controle|state.S1~regout\ & (\datapath|regcont|q\(2) $ (((\datapath|regcont|q\(0) & \datapath|regcont|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|state.S1~regout\,
	datab => \datapath|regcont|q\(0),
	datac => \datapath|regcont|q\(2),
	datad => \datapath|regcont|q\(1),
	combout => \datapath|mux2|y[2]~2_combout\);

-- Location: LCFF_X36_Y35_N15
\datapath|regcont|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|mux2|y[2]~2_combout\,
	ena => \controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regcont|q\(2));

-- Location: LCCOMB_X36_Y35_N4
\datapath|regquoc|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regquoc|q[2]~feeder_combout\ = \datapath|regcont|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|regcont|q\(2),
	combout => \datapath|regquoc|q[2]~feeder_combout\);

-- Location: LCFF_X36_Y35_N5
\datapath|regquoc|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regquoc|q[2]~feeder_combout\,
	ena => \controle|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regquoc|q\(2));

-- Location: LCCOMB_X36_Y35_N22
\datapath|soma|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|soma|Add0~0_combout\ = \datapath|regcont|q\(3) $ (((\datapath|regcont|q\(0) & (\datapath|regcont|q\(2) & \datapath|regcont|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|regcont|q\(3),
	datab => \datapath|regcont|q\(0),
	datac => \datapath|regcont|q\(2),
	datad => \datapath|regcont|q\(1),
	combout => \datapath|soma|Add0~0_combout\);

-- Location: LCCOMB_X36_Y35_N24
\datapath|mux2|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2|y[3]~3_combout\ = (!\controle|state.S1~regout\ & \datapath|soma|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controle|state.S1~regout\,
	datad => \datapath|soma|Add0~0_combout\,
	combout => \datapath|mux2|y[3]~3_combout\);

-- Location: LCFF_X36_Y35_N25
\datapath|regcont|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|mux2|y[3]~3_combout\,
	ena => \controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regcont|q\(3));

-- Location: LCCOMB_X36_Y35_N18
\datapath|regquoc|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regquoc|q[3]~feeder_combout\ = \datapath|regcont|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|regcont|q\(3),
	combout => \datapath|regquoc|q[3]~feeder_combout\);

-- Location: LCFF_X36_Y35_N19
\datapath|regquoc|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regquoc|q[3]~feeder_combout\,
	ena => \controle|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regquoc|q\(3));

-- Location: LCCOMB_X36_Y35_N20
\datapath|regresto|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regresto|q[0]~feeder_combout\ = \datapath|regA|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|regA|q\(0),
	combout => \datapath|regresto|q[0]~feeder_combout\);

-- Location: LCFF_X36_Y35_N21
\datapath|regresto|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regresto|q[0]~feeder_combout\,
	ena => \controle|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regresto|q\(0));

-- Location: LCCOMB_X36_Y35_N2
\datapath|regresto|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regresto|q[1]~feeder_combout\ = \datapath|regA|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|regA|q\(1),
	combout => \datapath|regresto|q[1]~feeder_combout\);

-- Location: LCFF_X36_Y35_N3
\datapath|regresto|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regresto|q[1]~feeder_combout\,
	ena => \controle|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regresto|q\(1));

-- Location: LCCOMB_X36_Y35_N28
\datapath|regresto|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regresto|q[2]~feeder_combout\ = \datapath|regA|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|regA|q\(2),
	combout => \datapath|regresto|q[2]~feeder_combout\);

-- Location: LCFF_X36_Y35_N29
\datapath|regresto|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regresto|q[2]~feeder_combout\,
	ena => \controle|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regresto|q\(2));

-- Location: LCCOMB_X34_Y35_N16
\datapath|regresto|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|regresto|q[3]~feeder_combout\ = \datapath|regA|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|regA|q\(3),
	combout => \datapath|regresto|q[3]~feeder_combout\);

-- Location: LCFF_X34_Y35_N17
\datapath|regresto|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|regresto|q[3]~feeder_combout\,
	ena => \controle|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|regresto|q\(3));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pronto~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controle|pronto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\erro~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controle|state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_erro);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quoc[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regquoc|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quoc(0));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quoc[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regquoc|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quoc(1));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quoc[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regquoc|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quoc(2));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quoc[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regquoc|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quoc(3));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regresto|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(0));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regresto|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regresto|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(2));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regresto|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(3));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regA|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoA(0));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regA|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoA(1));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regA|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoA(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regA|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoA(3));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regB|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoB(0));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regB|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoB(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoB[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regB|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoB(2));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoB[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|regB|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoB(3));
END structure;


