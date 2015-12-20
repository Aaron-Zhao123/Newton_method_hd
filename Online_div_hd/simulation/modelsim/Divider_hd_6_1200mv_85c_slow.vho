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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "11/15/2015 14:21:53"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Divider_hd IS
    PORT (
	x_value : IN std_logic_vector(1 DOWNTO 0);
	d_value : IN std_logic_vector(1 DOWNTO 0);
	q_value : OUT std_logic_vector(1 DOWNTO 0);
	clk : IN std_logic;
	asyn_reset : IN std_logic;
	data_x_vld : IN std_logic;
	data_x_rdy : IN std_logic;
	data_d_vld : IN std_logic;
	data_d_rdy : IN std_logic;
	data_out_vld : OUT std_logic;
	data_out_rdy : IN std_logic
	);
END Divider_hd;

-- Design Ports Information
-- q_value[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_value[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_x_rdy	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_d_rdy	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_vld	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- asyn_reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_rdy	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_value[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_value[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_x_vld	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_d_vld	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_value[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_value[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Divider_hd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x_value : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_d_value : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_q_value : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_asyn_reset : std_logic;
SIGNAL ww_data_x_vld : std_logic;
SIGNAL ww_data_x_rdy : std_logic;
SIGNAL ww_data_d_vld : std_logic;
SIGNAL ww_data_d_rdy : std_logic;
SIGNAL ww_data_out_vld : std_logic;
SIGNAL ww_data_out_rdy : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \asyn_reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM|fix_next_state~q\ : std_logic;
SIGNAL \V_block|Add1~0_combout\ : std_logic;
SIGNAL \V_block|Add1~2_combout\ : std_logic;
SIGNAL \V_block|Add0~4_combout\ : std_logic;
SIGNAL \V_block|Add4~1\ : std_logic;
SIGNAL \V_block|Add4~2_combout\ : std_logic;
SIGNAL \V_block|Add4~3\ : std_logic;
SIGNAL \V_block|Add4~4_combout\ : std_logic;
SIGNAL \V_block|Add4~5\ : std_logic;
SIGNAL \V_block|Add3~0_combout\ : std_logic;
SIGNAL \V_block|Add0~6_combout\ : std_logic;
SIGNAL \V_block|Add4~6_combout\ : std_logic;
SIGNAL \V_block|Add4~7\ : std_logic;
SIGNAL \V_block|Add7~8_combout\ : std_logic;
SIGNAL \V_block|Add0~8_combout\ : std_logic;
SIGNAL \V_block|Add4~8_combout\ : std_logic;
SIGNAL \V_block|Add3~9\ : std_logic;
SIGNAL \V_block|Add5~9\ : std_logic;
SIGNAL \V_block|Add3~10_combout\ : std_logic;
SIGNAL \V_block|Add5~10_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FSM|Add0~4_combout\ : std_logic;
SIGNAL \FSM|Add0~6_combout\ : std_logic;
SIGNAL \FSM|Add0~8_combout\ : std_logic;
SIGNAL \FSM|Add0~10_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem~1_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem~0_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem~5_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|vec_out_plus[1]~3_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem~1_combout\ : std_logic;
SIGNAL \W_block|ram1|mem~3_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|vec_out_minus[0]~3_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|vec_out_minus[0]~4_combout\ : std_logic;
SIGNAL \W_block|ram2|mem~3_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem~0_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem~1_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem~2_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem~3_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem~4_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem~5_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|vec_out_plus[3]~5_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem~6_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|vec_out_minus[3]~5_combout\ : std_logic;
SIGNAL \V_block|v_upper_minus[5]~6_combout\ : std_logic;
SIGNAL \FSM|STATE[2]~1_combout\ : std_logic;
SIGNAL \FSM|Mux16~1_combout\ : std_logic;
SIGNAL \FSM|Mux16~2_combout\ : std_logic;
SIGNAL \SDVM_d_Vec|Mux6~0_combout\ : std_logic;
SIGNAL \SDVM_d_Vec|Mux2~0_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem~7_combout\ : std_logic;
SIGNAL \SDVM_d_Vec|Mux3~0_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[1].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \SDVM_d_Vec|Mux7~0_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[0].Block|FA1|Add1~1_combout\ : std_logic;
SIGNAL \W_block|cin_two[1]~0_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[0].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[0].Block|FA2|Add1~1_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[2].Block|FA1|Add0~0_combout\ : std_logic;
SIGNAL \V_block|q_plus_add~2_combout\ : std_logic;
SIGNAL \V_block|cin_one~1_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem~7_combout\ : std_logic;
SIGNAL \SDVM_d_Vec|Mux5~0_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[3].Block|FA2|Add1~1_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[5]~8_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[4]~11_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[3]~14_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[3]~15_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[2]~17_combout\ : std_logic;
SIGNAL \W_block|d_plus_delayed~2_combout\ : std_logic;
SIGNAL \W_block|d_minus_delayed~2_combout\ : std_logic;
SIGNAL \W_block|d_plus_delayed~5_combout\ : std_logic;
SIGNAL \W_block|cin_one~0_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|vec_out_plus[0]~6_combout\ : std_logic;
SIGNAL \data_x_rdy~input_o\ : std_logic;
SIGNAL \data_d_rdy~input_o\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \vec_D|x_plus_delayed[3]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \q_value[0]~output_o\ : std_logic;
SIGNAL \q_value[1]~output_o\ : std_logic;
SIGNAL \data_out_vld~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \FSM|Mux2~2_combout\ : std_logic;
SIGNAL \V_block|v_upper_minus[0]~0_combout\ : std_logic;
SIGNAL \FSM|en_shift[1]~0_combout\ : std_logic;
SIGNAL \d_value[1]~input_o\ : std_logic;
SIGNAL \FSM|Mux12~0_combout\ : std_logic;
SIGNAL \asyn_reset~input_o\ : std_logic;
SIGNAL \asyn_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_d_vld~input_o\ : std_logic;
SIGNAL \FSM|hd_d~0_combout\ : std_logic;
SIGNAL \FSM|Decoder0~1_combout\ : std_logic;
SIGNAL \FSM|hd_d~q\ : std_logic;
SIGNAL \data_x_vld~input_o\ : std_logic;
SIGNAL \FSM|hd_x~0_combout\ : std_logic;
SIGNAL \FSM|hd_x~q\ : std_logic;
SIGNAL \FSM|always1~0_combout\ : std_logic;
SIGNAL \FSM|x_value_reg[1]~0_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|D1|out[1]~1_combout\ : std_logic;
SIGNAL \FSM|WideOr0~0_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[6]~3_combout\ : std_logic;
SIGNAL \FSM|en_d~0_combout\ : std_logic;
SIGNAL \W_block|Equal3~0_combout\ : std_logic;
SIGNAL \FSM|Mux2~3_combout\ : std_logic;
SIGNAL \FSM|prev_STATE.ERROR~0_combout\ : std_logic;
SIGNAL \FSM|prev_STATE.ERROR~q\ : std_logic;
SIGNAL \V_block|q_value[0]~1_combout\ : std_logic;
SIGNAL \SDVM_d_Vec|D1|out[0]~1_combout\ : std_logic;
SIGNAL \V_block|q_value[1]~0_combout\ : std_logic;
SIGNAL \SDVM_d_Vec|D1|out[1]~0_combout\ : std_logic;
SIGNAL \W_block|add_operand_plus[1]~0_combout\ : std_logic;
SIGNAL \W_block|d_plus_delayed~0_combout\ : std_logic;
SIGNAL \W_block|d_plus_delayed~1_combout\ : std_logic;
SIGNAL \W_block|d_plus_delayed~4_combout\ : std_logic;
SIGNAL \d_value[0]~input_o\ : std_logic;
SIGNAL \FSM|Mux13~0_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|D1|out[0]~0_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|vec_out_minus[0]~0_combout\ : std_logic;
SIGNAL \V_block|q_plus_add~1_combout\ : std_logic;
SIGNAL \FSM|Mux30~1_combout\ : std_logic;
SIGNAL \main_counter|cnt[0]~10\ : std_logic;
SIGNAL \main_counter|cnt[1]~11_combout\ : std_logic;
SIGNAL \main_counter|STATE~feeder_combout\ : std_logic;
SIGNAL \main_counter|STATE~q\ : std_logic;
SIGNAL \CA_reg|always0~0_combout\ : std_logic;
SIGNAL \main_counter|cnt[2]~15_combout\ : std_logic;
SIGNAL \main_counter|cnt[1]~12\ : std_logic;
SIGNAL \main_counter|cnt[2]~13_combout\ : std_logic;
SIGNAL \FSM|Add0~0_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[0]~23_combout\ : std_logic;
SIGNAL \FSM|Add1~0_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[0]~24_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[0]~25_combout\ : std_logic;
SIGNAL \FSM|Mux30~0_combout\ : std_logic;
SIGNAL \FSM|Add3~0_combout\ : std_logic;
SIGNAL \FSM|Mux30~2_combout\ : std_logic;
SIGNAL \FSM|wr_addr_RAM[2]~6_combout\ : std_logic;
SIGNAL \FSM|Add3~1\ : std_logic;
SIGNAL \FSM|Add3~3\ : std_logic;
SIGNAL \FSM|Add3~4_combout\ : std_logic;
SIGNAL \main_counter|cnt[2]~14\ : std_logic;
SIGNAL \main_counter|cnt[3]~16_combout\ : std_logic;
SIGNAL \main_counter|cnt[3]~17\ : std_logic;
SIGNAL \main_counter|cnt[4]~18_combout\ : std_logic;
SIGNAL \FSM|Mux28~0_combout\ : std_logic;
SIGNAL \FSM|Mux28~1_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \FSM|wr_addr_RAM[2]~5_combout\ : std_logic;
SIGNAL \FSM|Add1~5\ : std_logic;
SIGNAL \FSM|Add1~6_combout\ : std_logic;
SIGNAL \FSM|Mux20~0_combout\ : std_logic;
SIGNAL \FSM|Add2~1\ : std_logic;
SIGNAL \FSM|Add2~3\ : std_logic;
SIGNAL \FSM|Add2~5\ : std_logic;
SIGNAL \FSM|Add2~6_combout\ : std_logic;
SIGNAL \FSM|Mux20~1_combout\ : std_logic;
SIGNAL \main_counter|cnt[4]~19\ : std_logic;
SIGNAL \main_counter|cnt[5]~20_combout\ : std_logic;
SIGNAL \FSM|Mux27~0_combout\ : std_logic;
SIGNAL \FSM|Add3~5\ : std_logic;
SIGNAL \FSM|Add3~6_combout\ : std_logic;
SIGNAL \FSM|Mux27~1_combout\ : std_logic;
SIGNAL \W_block|ram2|mem~1_combout\ : std_logic;
SIGNAL \main_counter|cnt[5]~21\ : std_logic;
SIGNAL \main_counter|cnt[6]~22_combout\ : std_logic;
SIGNAL \main_counter|cnt[6]~23\ : std_logic;
SIGNAL \main_counter|cnt[7]~24_combout\ : std_logic;
SIGNAL \FSM|Mux25~0_combout\ : std_logic;
SIGNAL \FSM|Mux26~0_combout\ : std_logic;
SIGNAL \FSM|Add3~7\ : std_logic;
SIGNAL \FSM|Add3~8_combout\ : std_logic;
SIGNAL \FSM|Mux26~1_combout\ : std_logic;
SIGNAL \FSM|Add3~9\ : std_logic;
SIGNAL \FSM|Add3~10_combout\ : std_logic;
SIGNAL \FSM|Mux25~1_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \FSM|Mux19~0_combout\ : std_logic;
SIGNAL \FSM|Add2~7\ : std_logic;
SIGNAL \FSM|Add2~8_combout\ : std_logic;
SIGNAL \FSM|Mux19~1_combout\ : std_logic;
SIGNAL \W_block|ram2|mem~2_combout\ : std_logic;
SIGNAL \FSM|Mux23~0_combout\ : std_logic;
SIGNAL \FSM|Add2~0_combout\ : std_logic;
SIGNAL \FSM|Mux23~1_combout\ : std_logic;
SIGNAL \FSM|Mux22~0_combout\ : std_logic;
SIGNAL \FSM|Add2~2_combout\ : std_logic;
SIGNAL \FSM|Mux22~1_combout\ : std_logic;
SIGNAL \W_block|ram2|mem~0_combout\ : std_logic;
SIGNAL \W_block|ram2|mem~4_combout\ : std_logic;
SIGNAL \V_block|q_plus_add~0_combout\ : std_logic;
SIGNAL \V_block|q_minus_add~0_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[3].Block|FA1|Add0~0_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FSM|rd_addr[0]~0_combout\ : std_logic;
SIGNAL \FSM|rd_addr[0]~1_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \FSM|rd_addr[1]~2_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem~0_combout\ : std_logic;
SIGNAL \FSM|rd_addr[4]~5_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem~2_combout\ : std_logic;
SIGNAL \main_counter|cnt[0]~9_combout\ : std_logic;
SIGNAL \CA_reg|we_four~0_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \main_counter|cnt[7]~25\ : std_logic;
SIGNAL \main_counter|cnt[8]~26_combout\ : std_logic;
SIGNAL \FSM|rd_addr[6]~7_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem~3_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem~4_combout\ : std_logic;
SIGNAL \FSM|rd_addr[2]~3_combout\ : std_logic;
SIGNAL \FSM|rd_addr[3]~4_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \CA_reg|ram4|mem~6_combout\ : std_logic;
SIGNAL \vec_D|x_minus_delayed[0]~feeder_combout\ : std_logic;
SIGNAL \vec_D|LessThan0~0_combout\ : std_logic;
SIGNAL \vec_D|LessThan0~1_combout\ : std_logic;
SIGNAL \vec_D|always1~0_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|vec_out_minus[0]~6_combout\ : std_logic;
SIGNAL \V_block|q_minus_add~3_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \CA_reg|ram4|mem~5_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|vec_out_plus[0]~4_combout\ : std_logic;
SIGNAL \V_block|q_plus_add~3_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FSM|Mux29~0_combout\ : std_logic;
SIGNAL \FSM|Add3~2_combout\ : std_logic;
SIGNAL \FSM|Mux29~1_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram1|mem~0_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram1|mem~1_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \FSM|Mux18~0_combout\ : std_logic;
SIGNAL \FSM|Add2~9\ : std_logic;
SIGNAL \FSM|Add2~10_combout\ : std_logic;
SIGNAL \FSM|Mux18~1_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram1|mem~2_combout\ : std_logic;
SIGNAL \W_block|ram1|mem~4_combout\ : std_logic;
SIGNAL \W_block|we_RAM~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \FSM|Add3~11\ : std_logic;
SIGNAL \FSM|Add3~12_combout\ : std_logic;
SIGNAL \FSM|Mux24~0_combout\ : std_logic;
SIGNAL \FSM|Mux24~1_combout\ : std_logic;
SIGNAL \FSM|Mux21~0_combout\ : std_logic;
SIGNAL \FSM|Add2~4_combout\ : std_logic;
SIGNAL \FSM|Mux21~1_combout\ : std_logic;
SIGNAL \FSM|Add2~11\ : std_logic;
SIGNAL \FSM|Add2~12_combout\ : std_logic;
SIGNAL \FSM|Add0~1\ : std_logic;
SIGNAL \FSM|Add0~3\ : std_logic;
SIGNAL \FSM|Add0~5\ : std_logic;
SIGNAL \FSM|Add0~7\ : std_logic;
SIGNAL \FSM|Add0~9\ : std_logic;
SIGNAL \FSM|Add0~11\ : std_logic;
SIGNAL \FSM|Add0~12_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[6]~1_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[6]~2_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[6]~7_combout\ : std_logic;
SIGNAL \FSM|Add1~11\ : std_logic;
SIGNAL \FSM|Add1~12_combout\ : std_logic;
SIGNAL \FSM|Mux17~0_combout\ : std_logic;
SIGNAL \FSM|Mux17~1_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \CA_reg|ram4|mem~8_combout\ : std_logic;
SIGNAL \W_block|d_minus_delayed~3_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|we_three~0_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \CA_reg|ram3|mem~8_combout\ : std_logic;
SIGNAL \W_block|d_plus_delayed~3_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem~7_combout\ : std_logic;
SIGNAL \W_block|d_minus_delayed~1_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[1].Block|FA2|Add1~1_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[1].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \W_block|ram1|mem~6_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[2].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \V_block|v_minus_vec[3]~0_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|we_one~0_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \CA_reg|ram1|mem~7_combout\ : std_logic;
SIGNAL \W_block|d_minus_delayed~0_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \W_block|ram2|mem~5_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[3].Block|FA2|Add0~0_combout\ : std_logic;
SIGNAL \CA_reg|we_two~0_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \CA_reg|ram2|mem~6_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|vec_out_minus[2]~1_combout\ : std_logic;
SIGNAL \V_block|q_minus_add~1_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\ : std_logic;
SIGNAL \V_block|v_plus_vec[3]~0_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\ : std_logic;
SIGNAL \W_block|cin_one~1_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \W_block|ram2|mem~8_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\ : std_logic;
SIGNAL \V_block|v_plus_vec[0]~2_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[0].Block|FA2|Add1~1_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \W_block|ram1|mem~8_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \W_block|ram2|mem~7_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem~3_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem~1_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem~2_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem~4_combout\ : std_logic;
SIGNAL \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \CA_reg|ram3|mem~6_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|vec_out_minus[1]~2_combout\ : std_logic;
SIGNAL \V_block|q_minus_add~2_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \W_block|ram1|mem~7_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[1].Block|FA2|Add0~0_combout\ : std_logic;
SIGNAL \V_block|v_plus_vec[1]~3_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[1].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \V_block|v_minus_vec[2]~1_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[2].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \W_block|ram1|mem~5_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \V_block|cin_one~0_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \W_block|ram2|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \W_block|ram2|mem~6_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\ : std_logic;
SIGNAL \V_block|v_plus_vec[2]~1_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[3].Block|FA2|Add1~1_combout\ : std_logic;
SIGNAL \W_block|always6~0_combout\ : std_logic;
SIGNAL \W_block|always6~1_combout\ : std_logic;
SIGNAL \V_block|Add3~1\ : std_logic;
SIGNAL \V_block|Add3~2_combout\ : std_logic;
SIGNAL \x_value[0]~input_o\ : std_logic;
SIGNAL \FSM|Mux11~0_combout\ : std_logic;
SIGNAL \V_block|tmp_out[0]~1_combout\ : std_logic;
SIGNAL \V_block|Add4~0_combout\ : std_logic;
SIGNAL \V_block|Add5~1\ : std_logic;
SIGNAL \V_block|Add5~2_combout\ : std_logic;
SIGNAL \V_block|v_upper_minus[1]~2_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\ : std_logic;
SIGNAL \V_block|Add0~1\ : std_logic;
SIGNAL \V_block|Add0~2_combout\ : std_logic;
SIGNAL \V_block|Add0~0_combout\ : std_logic;
SIGNAL \V_block|Add2~1\ : std_logic;
SIGNAL \V_block|Add2~2_combout\ : std_logic;
SIGNAL \V_block|v_upper_plus[1]~1_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[1].Block|FA1|Add1~1_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \CA_reg|ram2|mem~8_combout\ : std_logic;
SIGNAL \SDVM_d_Vec|Mux1~0_combout\ : std_logic;
SIGNAL \V_block|Add3~3\ : std_logic;
SIGNAL \V_block|Add3~4_combout\ : std_logic;
SIGNAL \V_block|Add5~3\ : std_logic;
SIGNAL \V_block|Add5~4_combout\ : std_logic;
SIGNAL \V_block|v_upper_minus[2]~1_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[2].Block|FA1|Add1~0_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[2].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \x_value[1]~input_o\ : std_logic;
SIGNAL \FSM|Mux10~0_combout\ : std_logic;
SIGNAL \V_block|tmp_out[1]~0_combout\ : std_logic;
SIGNAL \V_block|Add1~1\ : std_logic;
SIGNAL \V_block|Add1~3\ : std_logic;
SIGNAL \V_block|Add1~5\ : std_logic;
SIGNAL \V_block|Add1~6_combout\ : std_logic;
SIGNAL \V_block|Add2~3\ : std_logic;
SIGNAL \V_block|Add2~5\ : std_logic;
SIGNAL \V_block|Add2~6_combout\ : std_logic;
SIGNAL \V_block|v_upper_plus[3]~3_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \CA_reg|ram1|mem~8_combout\ : std_logic;
SIGNAL \W_block|add_operand_plus[3]~1_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[2].Block|FA2|Add1~1_combout\ : std_logic;
SIGNAL \V_block|Add3~5\ : std_logic;
SIGNAL \V_block|Add3~7\ : std_logic;
SIGNAL \V_block|Add3~8_combout\ : std_logic;
SIGNAL \V_block|Add3~6_combout\ : std_logic;
SIGNAL \V_block|Add5~5\ : std_logic;
SIGNAL \V_block|Add5~7\ : std_logic;
SIGNAL \V_block|Add5~8_combout\ : std_logic;
SIGNAL \V_block|v_upper_minus[4]~5_combout\ : std_logic;
SIGNAL \SDVM_d_Vec|Mux4~0_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[1].Block|FA1|Add1~0_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[2].Block|FA2|Add1~1_combout\ : std_logic;
SIGNAL \W_block|adder1|adder_chain[2].Block|FA2|Add1~2_combout\ : std_logic;
SIGNAL \V_block|Add5~0_combout\ : std_logic;
SIGNAL \V_block|v_upper_minus[0]~3_combout\ : std_logic;
SIGNAL \V_block|Add2~0_combout\ : std_logic;
SIGNAL \V_block|v_upper_plus[0]~2_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[0].Block|FA1|Add1~0_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[1].Block|FA2|Add1~1_combout\ : std_logic;
SIGNAL \V_block|Add5~6_combout\ : std_logic;
SIGNAL \V_block|v_upper_minus[3]~4_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[3].Block|FA1|Add1~0_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[2].Block|FA1|Add1~1_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[3].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \V_block|Add1~7\ : std_logic;
SIGNAL \V_block|Add1~8_combout\ : std_logic;
SIGNAL \V_block|Add2~7\ : std_logic;
SIGNAL \V_block|Add2~8_combout\ : std_logic;
SIGNAL \V_block|v_upper_plus[4]~4_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[4].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \W_block|adder2|adder_chain[4].Block|FA2|Add1~1_combout\ : std_logic;
SIGNAL \V_block|Add0~3\ : std_logic;
SIGNAL \V_block|Add0~5\ : std_logic;
SIGNAL \V_block|Add0~7\ : std_logic;
SIGNAL \V_block|Add0~9\ : std_logic;
SIGNAL \V_block|Add0~10_combout\ : std_logic;
SIGNAL \V_block|Add2~9\ : std_logic;
SIGNAL \V_block|Add2~10_combout\ : std_logic;
SIGNAL \V_block|v_upper_plus[5]~5_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\ : std_logic;
SIGNAL \V_block|adder1|adder_chain[1].Block|FA2|Add1~1_combout\ : std_logic;
SIGNAL \V_block|LessThan0~0_combout\ : std_logic;
SIGNAL \V_block|LessThan0~1_combout\ : std_logic;
SIGNAL \V_block|LessThan0~2_combout\ : std_logic;
SIGNAL \V_block|Add7~1_cout\ : std_logic;
SIGNAL \V_block|Add7~3_cout\ : std_logic;
SIGNAL \V_block|Add7~5_cout\ : std_logic;
SIGNAL \V_block|Add7~7\ : std_logic;
SIGNAL \V_block|Add7~9\ : std_logic;
SIGNAL \V_block|Add7~11\ : std_logic;
SIGNAL \V_block|Add7~12_combout\ : std_logic;
SIGNAL \V_block|Add7~10_combout\ : std_logic;
SIGNAL \V_block|WideOr0~0_combout\ : std_logic;
SIGNAL \V_block|q_fixing_value[0]~0_combout\ : std_logic;
SIGNAL \FSM|Equal2~1_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[1]~4_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[1]~5_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[1]~6_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[3]~16_combout\ : std_logic;
SIGNAL \FSM|Add1~7\ : std_logic;
SIGNAL \FSM|Add1~8_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[4]~12_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[4]~13_combout\ : std_logic;
SIGNAL \FSM|Add1~9\ : std_logic;
SIGNAL \FSM|Add1~10_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[5]~9_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[5]~10_combout\ : std_logic;
SIGNAL \FSM|rd_addr[5]~6_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem~2_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem~0_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem~3_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem~4_combout\ : std_logic;
SIGNAL \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \CA_reg|ram2|mem~5_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|vec_out_plus[2]~2_combout\ : std_logic;
SIGNAL \V_block|Add1~4_combout\ : std_logic;
SIGNAL \V_block|Add2~4_combout\ : std_logic;
SIGNAL \V_block|v_upper_plus[2]~0_combout\ : std_logic;
SIGNAL \V_block|Add7~6_combout\ : std_logic;
SIGNAL \V_block|WideOr1~0_combout\ : std_logic;
SIGNAL \FSM|Equal2~0_combout\ : std_logic;
SIGNAL \FSM|fixing~1_combout\ : std_logic;
SIGNAL \FSM|fixing~0_combout\ : std_logic;
SIGNAL \FSM|fixing~2_combout\ : std_logic;
SIGNAL \FSM|fixing~q\ : std_logic;
SIGNAL \FSM|Mux2~0_combout\ : std_logic;
SIGNAL \FSM|Mux2~1_combout\ : std_logic;
SIGNAL \FSM|STATE[0]~0_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[1]~0_combout\ : std_logic;
SIGNAL \FSM|Add0~2_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[1]~20_combout\ : std_logic;
SIGNAL \FSM|Add1~1\ : std_logic;
SIGNAL \FSM|Add1~2_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[1]~21_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[1]~22_combout\ : std_logic;
SIGNAL \FSM|Add1~3\ : std_logic;
SIGNAL \FSM|Add1~4_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[2]~18_combout\ : std_logic;
SIGNAL \FSM|computation_cycle[2]~19_combout\ : std_logic;
SIGNAL \FSM|Equal0~0_combout\ : std_logic;
SIGNAL \FSM|Equal0~1_combout\ : std_logic;
SIGNAL \FSM|STATE[1]~3_combout\ : std_logic;
SIGNAL \FSM|wr_addr_RAM[2]~4_combout\ : std_logic;
SIGNAL \FSM|Decoder0~0_combout\ : std_logic;
SIGNAL \data_out_rdy~input_o\ : std_logic;
SIGNAL \FSM|hd_z~0_combout\ : std_logic;
SIGNAL \FSM|hd_z~q\ : std_logic;
SIGNAL \FSM|Mux16~0_combout\ : std_logic;
SIGNAL \FSM|STATE[2]~2_combout\ : std_logic;
SIGNAL \FSM|Mux15~0_combout\ : std_logic;
SIGNAL \FSM|q_value[1]~0_combout\ : std_logic;
SIGNAL \FSM|Mux14~0_combout\ : std_logic;
SIGNAL \FSM|data_out_vld~0_combout\ : std_logic;
SIGNAL \SDVM_q_Vec|D1|out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \W_block|res_upper_minus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \W_block|cin_one\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \W_block|d_plus_delayed\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \V_block|q_fixing_value\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \V_block|cin_one\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \W_block|res_upper_plus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \W_block|d_minus_delayed\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \V_block|q_plus_add\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \V_block|q_minus_add\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CA_reg|ram1|mem_rtl_0_bypass\ : std_logic_vector(0 TO 22);
SIGNAL \CA_reg|ram2|mem_rtl_0_bypass\ : std_logic_vector(0 TO 22);
SIGNAL \CA_reg|ram3|mem_rtl_0_bypass\ : std_logic_vector(0 TO 22);
SIGNAL \CA_reg|ram4|mem_rtl_0_bypass\ : std_logic_vector(0 TO 22);
SIGNAL \W_block|ram1|mem_rtl_0_bypass\ : std_logic_vector(0 TO 22);
SIGNAL \W_block|ram2|mem_rtl_0_bypass\ : std_logic_vector(0 TO 22);
SIGNAL \SDVM_d_Vec|D1|out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FSM|x_value_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FSM|wr_addr_RAM\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \FSM|rd_addr_RAM\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \FSM|q_value\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FSM|q_prev_value\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FSM|d_value_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FSM|computation_cycle\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \FSM|STATE\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \main_counter|cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \vec_D|x_plus_delayed\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vec_D|x_minus_delayed\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_asyn_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \main_counter|ALT_INV_STATE~q\ : std_logic;
SIGNAL \FSM|ALT_INV_data_out_vld~0_combout\ : std_logic;

BEGIN

ww_x_value <= x_value;
ww_d_value <= d_value;
q_value <= ww_q_value;
ww_clk <= clk;
ww_asyn_reset <= asyn_reset;
ww_data_x_vld <= data_x_vld;
ww_data_x_rdy <= data_x_rdy;
ww_data_d_vld <= data_d_vld;
ww_data_d_rdy <= data_d_rdy;
data_out_vld <= ww_data_out_vld;
ww_data_out_rdy <= data_out_rdy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\W_block|adder1|adder_chain[1].Block|FA2|Add1~0_combout\ & \W_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\ & \W_block|cin_one\(0) & \~GND~combout\ & \W_block|adder1|adder_chain[2].Block|FA2|Add1~0_combout\ & 
\W_block|adder1|adder_chain[1].Block|FA2|Add1~1_combout\ & \W_block|adder1|adder_chain[0].Block|FA2|Add1~1_combout\ & \~GND~combout\);

\W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FSM|wr_addr_RAM\(6) & \FSM|wr_addr_RAM\(5) & \FSM|wr_addr_RAM\(4) & \FSM|wr_addr_RAM\(3) & \FSM|wr_addr_RAM\(2) & \FSM|wr_addr_RAM\(1) & \FSM|wr_addr_RAM\(0));

\W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\FSM|rd_addr_RAM\(6) & \FSM|rd_addr_RAM\(5) & \FSM|rd_addr_RAM\(4) & \FSM|rd_addr_RAM\(3) & \FSM|rd_addr_RAM\(2) & \FSM|rd_addr_RAM\(1) & \FSM|rd_addr_RAM\(0));

\W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\W_block|ram1|mem_rtl_0|auto_generated|ram_block1a1\ <= \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\W_block|ram1|mem_rtl_0|auto_generated|ram_block1a2\ <= \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\W_block|ram1|mem_rtl_0|auto_generated|ram_block1a3\ <= \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\W_block|ram2|mem_rtl_0|auto_generated|ram_block1a0\ <= \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\W_block|ram2|mem_rtl_0|auto_generated|ram_block1a1\ <= \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\W_block|ram2|mem_rtl_0|auto_generated|ram_block1a2\ <= \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\W_block|ram2|mem_rtl_0|auto_generated|ram_block1a3\ <= \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & \V_block|q_value[1]~0_combout\ & \V_block|q_value[0]~1_combout\ & \FSM|d_value_reg\(1) & \FSM|d_value_reg\(0));

\CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\main_counter|cnt\(8) & \main_counter|cnt\(7) & \main_counter|cnt\(6) & \main_counter|cnt\(5) & \main_counter|cnt\(4) & \main_counter|cnt\(3) & \main_counter|cnt\(2));

\CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\FSM|rd_addr[6]~7_combout\ & \FSM|rd_addr[5]~6_combout\ & \FSM|rd_addr[4]~5_combout\ & \FSM|rd_addr[3]~4_combout\ & \FSM|rd_addr[2]~3_combout\ & \FSM|rd_addr[1]~2_combout\ & 
\FSM|rd_addr[0]~1_combout\);

\CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a1\ <= \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a2\ <= \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a3\ <= \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & \V_block|q_value[1]~0_combout\ & \V_block|q_value[0]~1_combout\ & \FSM|d_value_reg\(1) & \FSM|d_value_reg\(0));

\CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\main_counter|cnt\(8) & \main_counter|cnt\(7) & \main_counter|cnt\(6) & \main_counter|cnt\(5) & \main_counter|cnt\(4) & \main_counter|cnt\(3) & \main_counter|cnt\(2));

\CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\FSM|rd_addr[6]~7_combout\ & \FSM|rd_addr[5]~6_combout\ & \FSM|rd_addr[4]~5_combout\ & \FSM|rd_addr[3]~4_combout\ & \FSM|rd_addr[2]~3_combout\ & \FSM|rd_addr[1]~2_combout\ & 
\FSM|rd_addr[0]~1_combout\);

\CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a1\ <= \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a2\ <= \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a3\ <= \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & \V_block|q_value[1]~0_combout\ & \V_block|q_value[0]~1_combout\ & \FSM|d_value_reg\(1) & \FSM|d_value_reg\(0));

\CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\main_counter|cnt\(8) & \main_counter|cnt\(7) & \main_counter|cnt\(6) & \main_counter|cnt\(5) & \main_counter|cnt\(4) & \main_counter|cnt\(3) & \main_counter|cnt\(2));

\CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\FSM|rd_addr[6]~7_combout\ & \FSM|rd_addr[5]~6_combout\ & \FSM|rd_addr[4]~5_combout\ & \FSM|rd_addr[3]~4_combout\ & \FSM|rd_addr[2]~3_combout\ & \FSM|rd_addr[1]~2_combout\ & 
\FSM|rd_addr[0]~1_combout\);

\CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a1\ <= \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a2\ <= \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a3\ <= \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & \V_block|q_value[1]~0_combout\ & \V_block|q_value[0]~1_combout\ & \FSM|d_value_reg\(1) & \FSM|d_value_reg\(0));

\CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\main_counter|cnt\(8) & \main_counter|cnt\(7) & \main_counter|cnt\(6) & \main_counter|cnt\(5) & \main_counter|cnt\(4) & \main_counter|cnt\(3) & \main_counter|cnt\(2));

\CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\FSM|rd_addr[6]~7_combout\ & \FSM|rd_addr[5]~6_combout\ & \FSM|rd_addr[4]~5_combout\ & \FSM|rd_addr[3]~4_combout\ & \FSM|rd_addr[2]~3_combout\ & \FSM|rd_addr[1]~2_combout\ & 
\FSM|rd_addr[0]~1_combout\);

\CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a1\ <= \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a2\ <= \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a3\ <= \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\asyn_reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \asyn_reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_asyn_reset~inputclkctrl_outclk\ <= NOT \asyn_reset~inputclkctrl_outclk\;
\main_counter|ALT_INV_STATE~q\ <= NOT \main_counter|STATE~q\;
\FSM|ALT_INV_data_out_vld~0_combout\ <= NOT \FSM|data_out_vld~0_combout\;

-- Location: FF_X29_Y18_N21
\FSM|fix_next_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux16~2_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sclr => \FSM|STATE\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|fix_next_state~q\);

-- Location: LCCOMB_X24_Y18_N10
\V_block|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add1~0_combout\ = (\SDVM_q_Vec|vec_out_plus[0]~6_combout\ & (\V_block|tmp_out[1]~0_combout\ $ (VCC))) # (!\SDVM_q_Vec|vec_out_plus[0]~6_combout\ & (\V_block|tmp_out[1]~0_combout\ & VCC))
-- \V_block|Add1~1\ = CARRY((\SDVM_q_Vec|vec_out_plus[0]~6_combout\ & \V_block|tmp_out[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_plus[0]~6_combout\,
	datab => \V_block|tmp_out[1]~0_combout\,
	datad => VCC,
	combout => \V_block|Add1~0_combout\,
	cout => \V_block|Add1~1\);

-- Location: LCCOMB_X24_Y18_N12
\V_block|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add1~2_combout\ = (\V_block|Add1~1\ & (((!\SDVM_q_Vec|vec_out_minus[0]~0_combout\)) # (!\SDVM_q_Vec|vec_out_plus[1]~3_combout\))) # (!\V_block|Add1~1\ & (((\SDVM_q_Vec|vec_out_plus[1]~3_combout\ & \SDVM_q_Vec|vec_out_minus[0]~0_combout\)) # 
-- (GND)))
-- \V_block|Add1~3\ = CARRY(((!\V_block|Add1~1\) # (!\SDVM_q_Vec|vec_out_minus[0]~0_combout\)) # (!\SDVM_q_Vec|vec_out_plus[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_plus[1]~3_combout\,
	datab => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datad => VCC,
	cin => \V_block|Add1~1\,
	combout => \V_block|Add1~2_combout\,
	cout => \V_block|Add1~3\);

-- Location: LCCOMB_X23_Y18_N4
\V_block|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add0~4_combout\ = (\W_block|res_upper_plus\(2) & (\V_block|Add0~3\ $ (GND))) # (!\W_block|res_upper_plus\(2) & (!\V_block|Add0~3\ & VCC))
-- \V_block|Add0~5\ = CARRY((\W_block|res_upper_plus\(2) & !\V_block|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_plus\(2),
	datad => VCC,
	cin => \V_block|Add0~3\,
	combout => \V_block|Add0~4_combout\,
	cout => \V_block|Add0~5\);

-- Location: LCCOMB_X27_Y20_N6
\V_block|Add4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add4~0_combout\ = (\SDVM_q_Vec|vec_out_minus[0]~4_combout\ & (\V_block|tmp_out[0]~1_combout\ $ (VCC))) # (!\SDVM_q_Vec|vec_out_minus[0]~4_combout\ & (\V_block|tmp_out[0]~1_combout\ & VCC))
-- \V_block|Add4~1\ = CARRY((\SDVM_q_Vec|vec_out_minus[0]~4_combout\ & \V_block|tmp_out[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_minus[0]~4_combout\,
	datab => \V_block|tmp_out[0]~1_combout\,
	datad => VCC,
	combout => \V_block|Add4~0_combout\,
	cout => \V_block|Add4~1\);

-- Location: LCCOMB_X27_Y20_N8
\V_block|Add4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add4~2_combout\ = (\V_block|Add4~1\ & (((!\SDVM_q_Vec|vec_out_minus[1]~2_combout\)) # (!\SDVM_q_Vec|vec_out_minus[0]~0_combout\))) # (!\V_block|Add4~1\ & (((\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & \SDVM_q_Vec|vec_out_minus[1]~2_combout\)) # 
-- (GND)))
-- \V_block|Add4~3\ = CARRY(((!\V_block|Add4~1\) # (!\SDVM_q_Vec|vec_out_minus[1]~2_combout\)) # (!\SDVM_q_Vec|vec_out_minus[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datab => \SDVM_q_Vec|vec_out_minus[1]~2_combout\,
	datad => VCC,
	cin => \V_block|Add4~1\,
	combout => \V_block|Add4~2_combout\,
	cout => \V_block|Add4~3\);

-- Location: LCCOMB_X27_Y20_N10
\V_block|Add4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add4~4_combout\ = (\V_block|Add4~3\ & (\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & (\SDVM_q_Vec|vec_out_minus[2]~1_combout\ & VCC))) # (!\V_block|Add4~3\ & ((((\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & \SDVM_q_Vec|vec_out_minus[2]~1_combout\)))))
-- \V_block|Add4~5\ = CARRY((\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & (\SDVM_q_Vec|vec_out_minus[2]~1_combout\ & !\V_block|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datab => \SDVM_q_Vec|vec_out_minus[2]~1_combout\,
	datad => VCC,
	cin => \V_block|Add4~3\,
	combout => \V_block|Add4~4_combout\,
	cout => \V_block|Add4~5\);

-- Location: LCCOMB_X23_Y21_N12
\V_block|Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add3~0_combout\ = (\W_block|res_upper_minus\(0) & (\V_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\ $ (VCC))) # (!\W_block|res_upper_minus\(0) & (\V_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\ & VCC))
-- \V_block|Add3~1\ = CARRY((\W_block|res_upper_minus\(0) & \V_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_minus\(0),
	datab => \V_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\,
	datad => VCC,
	combout => \V_block|Add3~0_combout\,
	cout => \V_block|Add3~1\);

-- Location: LCCOMB_X23_Y18_N6
\V_block|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add0~6_combout\ = (\W_block|res_upper_plus\(3) & (!\V_block|Add0~5\)) # (!\W_block|res_upper_plus\(3) & ((\V_block|Add0~5\) # (GND)))
-- \V_block|Add0~7\ = CARRY((!\V_block|Add0~5\) # (!\W_block|res_upper_plus\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \W_block|res_upper_plus\(3),
	datad => VCC,
	cin => \V_block|Add0~5\,
	combout => \V_block|Add0~6_combout\,
	cout => \V_block|Add0~7\);

-- Location: LCCOMB_X27_Y20_N12
\V_block|Add4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add4~6_combout\ = (\V_block|Add4~5\ & (((!\SDVM_q_Vec|vec_out_minus[0]~0_combout\)) # (!\SDVM_q_Vec|vec_out_minus[3]~5_combout\))) # (!\V_block|Add4~5\ & (((\SDVM_q_Vec|vec_out_minus[3]~5_combout\ & \SDVM_q_Vec|vec_out_minus[0]~0_combout\)) # 
-- (GND)))
-- \V_block|Add4~7\ = CARRY(((!\V_block|Add4~5\) # (!\SDVM_q_Vec|vec_out_minus[0]~0_combout\)) # (!\SDVM_q_Vec|vec_out_minus[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_minus[3]~5_combout\,
	datab => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datad => VCC,
	cin => \V_block|Add4~5\,
	combout => \V_block|Add4~6_combout\,
	cout => \V_block|Add4~7\);

-- Location: LCCOMB_X23_Y20_N22
\V_block|Add7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add7~8_combout\ = ((\V_block|v_upper_minus[3]~4_combout\ $ (\V_block|v_upper_plus[3]~3_combout\ $ (\V_block|Add7~7\)))) # (GND)
-- \V_block|Add7~9\ = CARRY((\V_block|v_upper_minus[3]~4_combout\ & (\V_block|v_upper_plus[3]~3_combout\ & !\V_block|Add7~7\)) # (!\V_block|v_upper_minus[3]~4_combout\ & ((\V_block|v_upper_plus[3]~3_combout\) # (!\V_block|Add7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_upper_minus[3]~4_combout\,
	datab => \V_block|v_upper_plus[3]~3_combout\,
	datad => VCC,
	cin => \V_block|Add7~7\,
	combout => \V_block|Add7~8_combout\,
	cout => \V_block|Add7~9\);

-- Location: LCCOMB_X23_Y18_N8
\V_block|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add0~8_combout\ = (\W_block|res_upper_plus\(4) & (\V_block|Add0~7\ $ (GND))) # (!\W_block|res_upper_plus\(4) & (!\V_block|Add0~7\ & VCC))
-- \V_block|Add0~9\ = CARRY((\W_block|res_upper_plus\(4) & !\V_block|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \W_block|res_upper_plus\(4),
	datad => VCC,
	cin => \V_block|Add0~7\,
	combout => \V_block|Add0~8_combout\,
	cout => \V_block|Add0~9\);

-- Location: LCCOMB_X27_Y20_N14
\V_block|Add4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add4~8_combout\ = !\V_block|Add4~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \V_block|Add4~7\,
	combout => \V_block|Add4~8_combout\);

-- Location: LCCOMB_X23_Y21_N20
\V_block|Add3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add3~8_combout\ = (\W_block|res_upper_minus\(4) & (\V_block|Add3~7\ $ (GND))) # (!\W_block|res_upper_minus\(4) & (!\V_block|Add3~7\ & VCC))
-- \V_block|Add3~9\ = CARRY((\W_block|res_upper_minus\(4) & !\V_block|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \W_block|res_upper_minus\(4),
	datad => VCC,
	cin => \V_block|Add3~7\,
	combout => \V_block|Add3~8_combout\,
	cout => \V_block|Add3~9\);

-- Location: LCCOMB_X22_Y20_N26
\V_block|Add5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add5~8_combout\ = ((\V_block|Add4~8_combout\ $ (\V_block|Add3~8_combout\ $ (!\V_block|Add5~7\)))) # (GND)
-- \V_block|Add5~9\ = CARRY((\V_block|Add4~8_combout\ & ((\V_block|Add3~8_combout\) # (!\V_block|Add5~7\))) # (!\V_block|Add4~8_combout\ & (\V_block|Add3~8_combout\ & !\V_block|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|Add4~8_combout\,
	datab => \V_block|Add3~8_combout\,
	datad => VCC,
	cin => \V_block|Add5~7\,
	combout => \V_block|Add5~8_combout\,
	cout => \V_block|Add5~9\);

-- Location: LCCOMB_X23_Y21_N22
\V_block|Add3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add3~10_combout\ = \V_block|Add3~9\ $ (\W_block|res_upper_minus\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \W_block|res_upper_minus\(5),
	cin => \V_block|Add3~9\,
	combout => \V_block|Add3~10_combout\);

-- Location: LCCOMB_X22_Y20_N28
\V_block|Add5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add5~10_combout\ = \V_block|Add5~9\ $ (\V_block|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \V_block|Add3~10_combout\,
	cin => \V_block|Add5~9\,
	combout => \V_block|Add5~10_combout\);

-- Location: M9K_X28_Y20_N0
\CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Divider_hd.ram0_single_clk_ram_4bit_7a415939.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "generate_CA_reg_hd:CA_reg|single_clk_ram_4bit:ram3|altsyncram:mem_rtl_0|altsyncram_8gi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \CA_reg|we_three~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \CA_reg|we_three~0_combout\,
	portadatain => \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X28_Y18_N0
\CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Divider_hd.ram0_single_clk_ram_4bit_7a415939.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "generate_CA_reg_hd:CA_reg|single_clk_ram_4bit:ram4|altsyncram:mem_rtl_0|altsyncram_8gi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \CA_reg|we_four~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \CA_reg|we_four~0_combout\,
	portadatain => \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X28_Y19_N0
\CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Divider_hd.ram0_single_clk_ram_4bit_7a415939.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "generate_CA_reg_hd:CA_reg|single_clk_ram_4bit:ram2|altsyncram:mem_rtl_0|altsyncram_8gi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \CA_reg|we_two~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \CA_reg|we_two~0_combout\,
	portadatain => \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X28_Y17_N0
\CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Divider_hd.ram0_single_clk_ram_4bit_7a415939.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "generate_CA_reg_hd:CA_reg|single_clk_ram_4bit:ram1|altsyncram:mem_rtl_0|altsyncram_8gi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \CA_reg|we_one~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \CA_reg|we_one~0_combout\,
	portadatain => \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X25_Y17_N18
\FSM|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add0~4_combout\ = (\main_counter|cnt\(4) & ((GND) # (!\FSM|Add0~3\))) # (!\main_counter|cnt\(4) & (\FSM|Add0~3\ $ (GND)))
-- \FSM|Add0~5\ = CARRY((\main_counter|cnt\(4)) # (!\FSM|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_counter|cnt\(4),
	datad => VCC,
	cin => \FSM|Add0~3\,
	combout => \FSM|Add0~4_combout\,
	cout => \FSM|Add0~5\);

-- Location: LCCOMB_X25_Y17_N20
\FSM|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add0~6_combout\ = (\main_counter|cnt\(5) & (\FSM|Add0~5\ & VCC)) # (!\main_counter|cnt\(5) & (!\FSM|Add0~5\))
-- \FSM|Add0~7\ = CARRY((!\main_counter|cnt\(5) & !\FSM|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(5),
	datad => VCC,
	cin => \FSM|Add0~5\,
	combout => \FSM|Add0~6_combout\,
	cout => \FSM|Add0~7\);

-- Location: LCCOMB_X25_Y17_N22
\FSM|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add0~8_combout\ = (\main_counter|cnt\(6) & ((GND) # (!\FSM|Add0~7\))) # (!\main_counter|cnt\(6) & (\FSM|Add0~7\ $ (GND)))
-- \FSM|Add0~9\ = CARRY((\main_counter|cnt\(6)) # (!\FSM|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_counter|cnt\(6),
	datad => VCC,
	cin => \FSM|Add0~7\,
	combout => \FSM|Add0~8_combout\,
	cout => \FSM|Add0~9\);

-- Location: LCCOMB_X25_Y17_N24
\FSM|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add0~10_combout\ = (\main_counter|cnt\(7) & (\FSM|Add0~9\ & VCC)) # (!\main_counter|cnt\(7) & (!\FSM|Add0~9\))
-- \FSM|Add0~11\ = CARRY((!\main_counter|cnt\(7) & !\FSM|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(7),
	datad => VCC,
	cin => \FSM|Add0~9\,
	combout => \FSM|Add0~10_combout\,
	cout => \FSM|Add0~11\);

-- Location: FF_X25_Y19_N13
\CA_reg|ram2|mem_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram2|mem_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(22));

-- Location: FF_X25_Y19_N27
\CA_reg|ram2|mem_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \main_counter|cnt\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(1));

-- Location: FF_X25_Y19_N19
\CA_reg|ram2|mem_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \main_counter|cnt\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(5));

-- Location: FF_X25_Y19_N21
\CA_reg|ram2|mem_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \main_counter|cnt\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(7));

-- Location: FF_X25_Y19_N23
\CA_reg|ram2|mem_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(8));

-- Location: FF_X25_Y19_N5
\CA_reg|ram2|mem_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram2|mem_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(6));

-- Location: LCCOMB_X25_Y19_N22
\CA_reg|ram2|mem~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem~1_combout\ = (\CA_reg|ram2|mem_rtl_0_bypass\(6) & (\CA_reg|ram2|mem_rtl_0_bypass\(5) & (\CA_reg|ram2|mem_rtl_0_bypass\(7) $ (!\CA_reg|ram2|mem_rtl_0_bypass\(8))))) # (!\CA_reg|ram2|mem_rtl_0_bypass\(6) & 
-- (!\CA_reg|ram2|mem_rtl_0_bypass\(5) & (\CA_reg|ram2|mem_rtl_0_bypass\(7) $ (!\CA_reg|ram2|mem_rtl_0_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram2|mem_rtl_0_bypass\(6),
	datab => \CA_reg|ram2|mem_rtl_0_bypass\(7),
	datac => \CA_reg|ram2|mem_rtl_0_bypass\(8),
	datad => \CA_reg|ram2|mem_rtl_0_bypass\(5),
	combout => \CA_reg|ram2|mem~1_combout\);

-- Location: FF_X24_Y19_N31
\CA_reg|ram2|mem_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram2|mem_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(11));

-- Location: FF_X27_Y20_N5
\vec_D|x_plus_delayed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CA_reg|ram3|mem~5_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vec_D|x_plus_delayed\(1));

-- Location: FF_X27_Y20_N3
\CA_reg|ram3|mem_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \V_block|q_value[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(21));

-- Location: FF_X26_Y20_N13
\CA_reg|ram3|mem_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram3|mem_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(22));

-- Location: FF_X26_Y19_N23
\CA_reg|ram3|mem_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \main_counter|cnt\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(1));

-- Location: FF_X26_Y19_N21
\CA_reg|ram3|mem_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram3|mem_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(3));

-- Location: FF_X26_Y19_N3
\CA_reg|ram3|mem_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(4));

-- Location: FF_X26_Y19_N1
\CA_reg|ram3|mem_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|rd_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(2));

-- Location: LCCOMB_X26_Y19_N2
\CA_reg|ram3|mem~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem~0_combout\ = (\CA_reg|ram3|mem_rtl_0_bypass\(1) & (\CA_reg|ram3|mem_rtl_0_bypass\(2) & (\CA_reg|ram3|mem_rtl_0_bypass\(4) $ (!\CA_reg|ram3|mem_rtl_0_bypass\(3))))) # (!\CA_reg|ram3|mem_rtl_0_bypass\(1) & 
-- (!\CA_reg|ram3|mem_rtl_0_bypass\(2) & (\CA_reg|ram3|mem_rtl_0_bypass\(4) $ (!\CA_reg|ram3|mem_rtl_0_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram3|mem_rtl_0_bypass\(1),
	datab => \CA_reg|ram3|mem_rtl_0_bypass\(2),
	datac => \CA_reg|ram3|mem_rtl_0_bypass\(4),
	datad => \CA_reg|ram3|mem_rtl_0_bypass\(3),
	combout => \CA_reg|ram3|mem~0_combout\);

-- Location: FF_X30_Y20_N7
\CA_reg|ram3|mem_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram3|mem_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(7));

-- Location: FF_X26_Y18_N27
\CA_reg|ram3|mem_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \main_counter|cnt\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(11));

-- Location: FF_X27_Y19_N13
\CA_reg|ram3|mem_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CA_reg|we_three~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(0));

-- Location: LCCOMB_X27_Y20_N2
\CA_reg|ram3|mem~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem~5_combout\ = (\CA_reg|ram3|mem_rtl_0_bypass\(22) & ((\CA_reg|ram3|mem~4_combout\ & (\CA_reg|ram3|mem_rtl_0_bypass\(21))) # (!\CA_reg|ram3|mem~4_combout\ & ((\CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a3\))))) # 
-- (!\CA_reg|ram3|mem_rtl_0_bypass\(22) & (((\CA_reg|ram3|mem_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram3|mem_rtl_0_bypass\(22),
	datab => \CA_reg|ram3|mem~4_combout\,
	datac => \CA_reg|ram3|mem_rtl_0_bypass\(21),
	datad => \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \CA_reg|ram3|mem~5_combout\);

-- Location: LCCOMB_X27_Y20_N4
\SDVM_q_Vec|vec_out_plus[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|vec_out_plus[1]~3_combout\ = \SDVM_q_Vec|D1|out\(1) $ (((\vec_D|always1~0_combout\ & (!\vec_D|x_plus_delayed\(1))) # (!\vec_D|always1~0_combout\ & ((!\CA_reg|ram3|mem~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vec_D|always1~0_combout\,
	datab => \SDVM_q_Vec|D1|out\(1),
	datac => \vec_D|x_plus_delayed\(1),
	datad => \CA_reg|ram3|mem~5_combout\,
	combout => \SDVM_q_Vec|vec_out_plus[1]~3_combout\);

-- Location: FF_X25_Y18_N3
\CA_reg|ram4|mem_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram4|mem_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(3));

-- Location: FF_X26_Y18_N3
\CA_reg|ram4|mem_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram4|mem_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(5));

-- Location: FF_X26_Y18_N17
\CA_reg|ram4|mem_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram4|mem_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(7));

-- Location: FF_X26_Y18_N23
\CA_reg|ram4|mem_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(8));

-- Location: FF_X26_Y18_N13
\CA_reg|ram4|mem_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|rd_addr[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(6));

-- Location: LCCOMB_X26_Y18_N22
\CA_reg|ram4|mem~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem~1_combout\ = (\CA_reg|ram4|mem_rtl_0_bypass\(6) & (\CA_reg|ram4|mem_rtl_0_bypass\(5) & (\CA_reg|ram4|mem_rtl_0_bypass\(7) $ (!\CA_reg|ram4|mem_rtl_0_bypass\(8))))) # (!\CA_reg|ram4|mem_rtl_0_bypass\(6) & 
-- (!\CA_reg|ram4|mem_rtl_0_bypass\(5) & (\CA_reg|ram4|mem_rtl_0_bypass\(7) $ (!\CA_reg|ram4|mem_rtl_0_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram4|mem_rtl_0_bypass\(6),
	datab => \CA_reg|ram4|mem_rtl_0_bypass\(7),
	datac => \CA_reg|ram4|mem_rtl_0_bypass\(8),
	datad => \CA_reg|ram4|mem_rtl_0_bypass\(5),
	combout => \CA_reg|ram4|mem~1_combout\);

-- Location: FF_X26_Y18_N31
\CA_reg|ram4|mem_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram4|mem_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(9));

-- Location: FF_X23_Y19_N17
\W_block|res_upper_plus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder2|adder_chain[1].Block|FA2|Add1~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \W_block|always6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|res_upper_plus\(2));

-- Location: FF_X22_Y19_N9
\W_block|res_upper_plus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder2|adder_chain[0].Block|FA2|Add1~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \W_block|always6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|res_upper_plus\(1));

-- Location: FF_X26_Y21_N13
\W_block|ram1|mem_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr_RAM\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(4));

-- Location: FF_X27_Y21_N31
\W_block|ram1|mem_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram1|mem_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(6));

-- Location: FF_X22_Y21_N7
\W_block|ram1|mem_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram1|mem_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(10));

-- Location: FF_X22_Y21_N9
\W_block|ram1|mem_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \W_block|we_RAM~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(0));

-- Location: FF_X22_Y21_N11
\W_block|ram1|mem_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram1|mem_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(13));

-- Location: FF_X22_Y21_N13
\W_block|ram1|mem_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram1|mem_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(14));

-- Location: LCCOMB_X22_Y21_N8
\W_block|ram1|mem~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem~3_combout\ = (\W_block|ram1|mem_rtl_0_bypass\(0) & (\W_block|ram1|mem_rtl_0_bypass\(13) $ (!\W_block|ram1|mem_rtl_0_bypass\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram1|mem_rtl_0_bypass\(13),
	datac => \W_block|ram1|mem_rtl_0_bypass\(0),
	datad => \W_block|ram1|mem_rtl_0_bypass\(14),
	combout => \W_block|ram1|mem~3_combout\);

-- Location: FF_X23_Y19_N31
\W_block|res_upper_plus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \W_block|always6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|res_upper_plus\(0));

-- Location: FF_X26_Y20_N23
\CA_reg|ram2|mem_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram2|mem_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(20));

-- Location: FF_X26_Y20_N17
\CA_reg|ram3|mem_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram3|mem_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(20));

-- Location: FF_X26_Y20_N11
\CA_reg|ram4|mem_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram4|mem_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(20));

-- Location: LCCOMB_X27_Y18_N28
\SDVM_q_Vec|vec_out_minus[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|vec_out_minus[0]~3_combout\ = \SDVM_q_Vec|D1|out\(1) $ (((!\vec_D|x_minus_delayed\(0) & \vec_D|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vec_D|x_minus_delayed\(0),
	datac => \vec_D|always1~0_combout\,
	datad => \SDVM_q_Vec|D1|out\(1),
	combout => \SDVM_q_Vec|vec_out_minus[0]~3_combout\);

-- Location: LCCOMB_X27_Y20_N26
\SDVM_q_Vec|vec_out_minus[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|vec_out_minus[0]~4_combout\ = (\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & (\SDVM_q_Vec|vec_out_minus[0]~3_combout\ $ (((!\vec_D|always1~0_combout\ & !\CA_reg|ram4|mem~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vec_D|always1~0_combout\,
	datab => \SDVM_q_Vec|vec_out_minus[0]~3_combout\,
	datac => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datad => \CA_reg|ram4|mem~6_combout\,
	combout => \SDVM_q_Vec|vec_out_minus[0]~4_combout\);

-- Location: FF_X22_Y19_N3
\W_block|res_upper_minus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder2|adder_chain[0].Block|FA2|Add1~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \W_block|always6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|res_upper_minus\(2));

-- Location: FF_X24_Y21_N3
\W_block|ram2|mem_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \W_block|adder1|adder_chain[1].Block|FA2|Add1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(21));

-- Location: FF_X30_Y21_N13
\W_block|ram2|mem_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|wr_addr_RAM\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(3));

-- Location: FF_X27_Y21_N11
\W_block|ram2|mem_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram2|mem_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(6));

-- Location: FF_X27_Y21_N13
\W_block|ram2|mem_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr_RAM\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(12));

-- Location: FF_X27_Y21_N1
\W_block|ram2|mem_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram2|mem_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(0));

-- Location: FF_X27_Y21_N23
\W_block|ram2|mem_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|wr_addr_RAM\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(13));

-- Location: FF_X27_Y21_N25
\W_block|ram2|mem_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram2|mem_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(14));

-- Location: LCCOMB_X27_Y21_N22
\W_block|ram2|mem~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem~3_combout\ = (\W_block|ram2|mem_rtl_0_bypass\(0) & (\W_block|ram2|mem_rtl_0_bypass\(14) $ (!\W_block|ram2|mem_rtl_0_bypass\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \W_block|ram2|mem_rtl_0_bypass\(14),
	datac => \W_block|ram2|mem_rtl_0_bypass\(13),
	datad => \W_block|ram2|mem_rtl_0_bypass\(0),
	combout => \W_block|ram2|mem~3_combout\);

-- Location: FF_X24_Y21_N27
\W_block|ram2|mem_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram2|mem_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(20));

-- Location: FF_X26_Y21_N21
\V_block|q_plus_add[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|q_plus_add~2_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_block|q_plus_add\(1));

-- Location: LCCOMB_X25_Y21_N6
\V_block|adder1|adder_chain[1].Block|FA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\ = (\V_block|q_plus_add\(1) & ((\W_block|ram1|mem~7_combout\) # (!\V_block|q_minus_add\(1)))) # (!\V_block|q_plus_add\(1) & (!\V_block|q_minus_add\(1) & \W_block|ram1|mem~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|q_plus_add\(1),
	datac => \V_block|q_minus_add\(1),
	datad => \W_block|ram1|mem~7_combout\,
	combout => \V_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\);

-- Location: FF_X26_Y21_N3
\W_block|ram2|mem_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram2|mem_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(18));

-- Location: FF_X26_Y21_N7
\V_block|cin_one[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|cin_one~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_block|cin_one\(1));

-- Location: FF_X27_Y18_N27
\vec_D|x_plus_delayed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vec_D|x_plus_delayed[3]~feeder_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vec_D|x_plus_delayed\(3));

-- Location: FF_X25_Y20_N31
\CA_reg|ram1|mem_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|q_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(21));

-- Location: FF_X27_Y18_N5
\CA_reg|ram1|mem_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram1|mem_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(22));

-- Location: FF_X26_Y19_N27
\CA_reg|ram1|mem_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \main_counter|cnt\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(1));

-- Location: FF_X26_Y19_N13
\CA_reg|ram1|mem_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram1|mem_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(3));

-- Location: FF_X26_Y19_N15
\CA_reg|ram1|mem_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(4));

-- Location: FF_X26_Y19_N17
\CA_reg|ram1|mem_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(2));

-- Location: LCCOMB_X26_Y19_N14
\CA_reg|ram1|mem~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem~0_combout\ = (\CA_reg|ram1|mem_rtl_0_bypass\(1) & (\CA_reg|ram1|mem_rtl_0_bypass\(2) & (\CA_reg|ram1|mem_rtl_0_bypass\(4) $ (!\CA_reg|ram1|mem_rtl_0_bypass\(3))))) # (!\CA_reg|ram1|mem_rtl_0_bypass\(1) & 
-- (!\CA_reg|ram1|mem_rtl_0_bypass\(2) & (\CA_reg|ram1|mem_rtl_0_bypass\(4) $ (!\CA_reg|ram1|mem_rtl_0_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram1|mem_rtl_0_bypass\(1),
	datab => \CA_reg|ram1|mem_rtl_0_bypass\(2),
	datac => \CA_reg|ram1|mem_rtl_0_bypass\(4),
	datad => \CA_reg|ram1|mem_rtl_0_bypass\(3),
	combout => \CA_reg|ram1|mem~0_combout\);

-- Location: FF_X25_Y19_N1
\CA_reg|ram1|mem_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \main_counter|cnt\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(5));

-- Location: FF_X25_Y19_N7
\CA_reg|ram1|mem_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \main_counter|cnt\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(7));

-- Location: FF_X25_Y19_N9
\CA_reg|ram1|mem_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(8));

-- Location: FF_X25_Y19_N3
\CA_reg|ram1|mem_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram1|mem_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(6));

-- Location: LCCOMB_X25_Y19_N8
\CA_reg|ram1|mem~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem~1_combout\ = (\CA_reg|ram1|mem_rtl_0_bypass\(7) & (\CA_reg|ram1|mem_rtl_0_bypass\(8) & (\CA_reg|ram1|mem_rtl_0_bypass\(5) $ (!\CA_reg|ram1|mem_rtl_0_bypass\(6))))) # (!\CA_reg|ram1|mem_rtl_0_bypass\(7) & 
-- (!\CA_reg|ram1|mem_rtl_0_bypass\(8) & (\CA_reg|ram1|mem_rtl_0_bypass\(5) $ (!\CA_reg|ram1|mem_rtl_0_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram1|mem_rtl_0_bypass\(7),
	datab => \CA_reg|ram1|mem_rtl_0_bypass\(5),
	datac => \CA_reg|ram1|mem_rtl_0_bypass\(8),
	datad => \CA_reg|ram1|mem_rtl_0_bypass\(6),
	combout => \CA_reg|ram1|mem~1_combout\);

-- Location: FF_X24_Y19_N17
\CA_reg|ram1|mem_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram1|mem_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(9));

-- Location: FF_X24_Y19_N11
\CA_reg|ram1|mem_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram1|mem_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(11));

-- Location: FF_X24_Y19_N25
\CA_reg|ram1|mem_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[5]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(12));

-- Location: FF_X24_Y19_N27
\CA_reg|ram1|mem_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[4]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(10));

-- Location: LCCOMB_X24_Y19_N26
\CA_reg|ram1|mem~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem~2_combout\ = (\CA_reg|ram1|mem_rtl_0_bypass\(11) & (\CA_reg|ram1|mem_rtl_0_bypass\(12) & (\CA_reg|ram1|mem_rtl_0_bypass\(10) $ (!\CA_reg|ram1|mem_rtl_0_bypass\(9))))) # (!\CA_reg|ram1|mem_rtl_0_bypass\(11) & 
-- (!\CA_reg|ram1|mem_rtl_0_bypass\(12) & (\CA_reg|ram1|mem_rtl_0_bypass\(10) $ (!\CA_reg|ram1|mem_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram1|mem_rtl_0_bypass\(11),
	datab => \CA_reg|ram1|mem_rtl_0_bypass\(12),
	datac => \CA_reg|ram1|mem_rtl_0_bypass\(10),
	datad => \CA_reg|ram1|mem_rtl_0_bypass\(9),
	combout => \CA_reg|ram1|mem~2_combout\);

-- Location: FF_X26_Y19_N31
\CA_reg|ram1|mem_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram1|mem_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(0));

-- Location: FF_X26_Y19_N5
\CA_reg|ram1|mem_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram1|mem_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(13));

-- Location: FF_X26_Y19_N19
\CA_reg|ram1|mem_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[6]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(14));

-- Location: LCCOMB_X26_Y19_N26
\CA_reg|ram1|mem~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem~3_combout\ = (\CA_reg|ram1|mem_rtl_0_bypass\(0) & (\CA_reg|ram1|mem_rtl_0_bypass\(13) $ (!\CA_reg|ram1|mem_rtl_0_bypass\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram1|mem_rtl_0_bypass\(0),
	datab => \CA_reg|ram1|mem_rtl_0_bypass\(13),
	datad => \CA_reg|ram1|mem_rtl_0_bypass\(14),
	combout => \CA_reg|ram1|mem~3_combout\);

-- Location: LCCOMB_X26_Y19_N8
\CA_reg|ram1|mem~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem~4_combout\ = (\CA_reg|ram1|mem~3_combout\ & (\CA_reg|ram1|mem~2_combout\ & (\CA_reg|ram1|mem~0_combout\ & \CA_reg|ram1|mem~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram1|mem~3_combout\,
	datab => \CA_reg|ram1|mem~2_combout\,
	datac => \CA_reg|ram1|mem~0_combout\,
	datad => \CA_reg|ram1|mem~1_combout\,
	combout => \CA_reg|ram1|mem~4_combout\);

-- Location: LCCOMB_X27_Y18_N6
\CA_reg|ram1|mem~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem~5_combout\ = (\CA_reg|ram1|mem_rtl_0_bypass\(22) & ((\CA_reg|ram1|mem~4_combout\ & (\CA_reg|ram1|mem_rtl_0_bypass\(21))) # (!\CA_reg|ram1|mem~4_combout\ & ((\CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a3\))))) # 
-- (!\CA_reg|ram1|mem_rtl_0_bypass\(22) & (\CA_reg|ram1|mem_rtl_0_bypass\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram1|mem_rtl_0_bypass\(21),
	datab => \CA_reg|ram1|mem_rtl_0_bypass\(22),
	datac => \CA_reg|ram1|mem~4_combout\,
	datad => \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \CA_reg|ram1|mem~5_combout\);

-- Location: LCCOMB_X27_Y18_N24
\SDVM_q_Vec|vec_out_plus[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|vec_out_plus[3]~5_combout\ = \SDVM_q_Vec|D1|out\(1) $ (((\vec_D|always1~0_combout\ & (!\vec_D|x_plus_delayed\(3))) # (!\vec_D|always1~0_combout\ & ((!\CA_reg|ram1|mem~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vec_D|x_plus_delayed\(3),
	datab => \SDVM_q_Vec|D1|out\(1),
	datac => \vec_D|always1~0_combout\,
	datad => \CA_reg|ram1|mem~5_combout\,
	combout => \SDVM_q_Vec|vec_out_plus[3]~5_combout\);

-- Location: FF_X27_Y20_N1
\vec_D|x_minus_delayed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram1|mem~6_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vec_D|x_minus_delayed\(3));

-- Location: FF_X24_Y20_N9
\CA_reg|ram1|mem_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|q_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(19));

-- Location: FF_X29_Y20_N13
\CA_reg|ram1|mem_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram1|mem_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(20));

-- Location: LCCOMB_X27_Y20_N0
\CA_reg|ram1|mem~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem~6_combout\ = (\CA_reg|ram1|mem_rtl_0_bypass\(20) & ((\CA_reg|ram1|mem~4_combout\ & (\CA_reg|ram1|mem_rtl_0_bypass\(19))) # (!\CA_reg|ram1|mem~4_combout\ & ((\CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a2\))))) # 
-- (!\CA_reg|ram1|mem_rtl_0_bypass\(20) & (\CA_reg|ram1|mem_rtl_0_bypass\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram1|mem_rtl_0_bypass\(19),
	datab => \CA_reg|ram1|mem_rtl_0_bypass\(20),
	datac => \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a2\,
	datad => \CA_reg|ram1|mem~4_combout\,
	combout => \CA_reg|ram1|mem~6_combout\);

-- Location: LCCOMB_X27_Y20_N22
\SDVM_q_Vec|vec_out_minus[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|vec_out_minus[3]~5_combout\ = \SDVM_q_Vec|D1|out\(1) $ (((\vec_D|always1~0_combout\ & (!\vec_D|x_minus_delayed\(3))) # (!\vec_D|always1~0_combout\ & ((!\CA_reg|ram1|mem~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vec_D|always1~0_combout\,
	datab => \SDVM_q_Vec|D1|out\(1),
	datac => \vec_D|x_minus_delayed\(3),
	datad => \CA_reg|ram1|mem~6_combout\,
	combout => \SDVM_q_Vec|vec_out_minus[3]~5_combout\);

-- Location: FF_X23_Y20_N11
\W_block|res_upper_minus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder2|adder_chain[3].Block|FA2|Add1~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \W_block|always6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|res_upper_minus\(5));

-- Location: LCCOMB_X22_Y20_N2
\V_block|v_upper_minus[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_minus[5]~6_combout\ = (\W_block|res_upper_minus\(5) & (((\FSM|en_shift[1]~0_combout\ & \V_block|Add5~10_combout\)) # (!\V_block|v_upper_minus[0]~0_combout\))) # (!\W_block|res_upper_minus\(5) & (\FSM|en_shift[1]~0_combout\ & 
-- ((\V_block|Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_minus\(5),
	datab => \FSM|en_shift[1]~0_combout\,
	datac => \V_block|v_upper_minus[0]~0_combout\,
	datad => \V_block|Add5~10_combout\,
	combout => \V_block|v_upper_minus[5]~6_combout\);

-- Location: LCCOMB_X26_Y17_N10
\FSM|STATE[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|STATE[2]~1_combout\ = (!\FSM|STATE\(1) & (((\FSM|Equal0~1_combout\ & \FSM|STATE\(0))) # (!\FSM|STATE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Equal0~1_combout\,
	datab => \FSM|STATE\(2),
	datac => \FSM|STATE\(0),
	datad => \FSM|STATE\(1),
	combout => \FSM|STATE[2]~1_combout\);

-- Location: LCCOMB_X29_Y18_N26
\FSM|Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux16~1_combout\ = (!\FSM|STATE\(2) & ((\FSM|STATE\(0)) # ((\FSM|always1~0_combout\ & \FSM|fix_next_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|always1~0_combout\,
	datab => \FSM|fix_next_state~q\,
	datac => \FSM|STATE\(2),
	datad => \FSM|STATE\(0),
	combout => \FSM|Mux16~1_combout\);

-- Location: LCCOMB_X29_Y18_N20
\FSM|Mux16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux16~2_combout\ = (\FSM|Mux16~1_combout\) # ((!\FSM|STATE\(0) & (\FSM|fix_next_state~q\ & \FSM|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Mux16~1_combout\,
	datab => \FSM|STATE\(0),
	datac => \FSM|fix_next_state~q\,
	datad => \FSM|Mux16~0_combout\,
	combout => \FSM|Mux16~2_combout\);

-- Location: LCCOMB_X24_Y19_N2
\SDVM_d_Vec|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_d_Vec|Mux6~0_combout\ = \SDVM_d_Vec|D1|out\(1) $ (\CA_reg|ram3|mem~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDVM_d_Vec|D1|out\(1),
	datac => \CA_reg|ram3|mem~7_combout\,
	combout => \SDVM_d_Vec|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y19_N22
\SDVM_d_Vec|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_d_Vec|Mux2~0_combout\ = \SDVM_d_Vec|D1|out\(1) $ (\CA_reg|ram3|mem~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDVM_d_Vec|D1|out\(1),
	datad => \CA_reg|ram3|mem~8_combout\,
	combout => \SDVM_d_Vec|Mux2~0_combout\);

-- Location: FF_X27_Y18_N23
\CA_reg|ram4|mem_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|d_value_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(17));

-- Location: FF_X27_Y18_N21
\CA_reg|ram4|mem_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram4|mem_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(18));

-- Location: LCCOMB_X27_Y18_N22
\CA_reg|ram4|mem~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem~7_combout\ = (\CA_reg|ram4|mem~4_combout\ & (((\CA_reg|ram4|mem_rtl_0_bypass\(17))))) # (!\CA_reg|ram4|mem~4_combout\ & ((\CA_reg|ram4|mem_rtl_0_bypass\(18) & (\CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a1\)) # 
-- (!\CA_reg|ram4|mem_rtl_0_bypass\(18) & ((\CA_reg|ram4|mem_rtl_0_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a1\,
	datab => \CA_reg|ram4|mem~4_combout\,
	datac => \CA_reg|ram4|mem_rtl_0_bypass\(17),
	datad => \CA_reg|ram4|mem_rtl_0_bypass\(18),
	combout => \CA_reg|ram4|mem~7_combout\);

-- Location: LCCOMB_X22_Y19_N10
\SDVM_d_Vec|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_d_Vec|Mux3~0_combout\ = \SDVM_d_Vec|D1|out\(1) $ (\CA_reg|ram4|mem~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDVM_d_Vec|D1|out\(1),
	datad => \CA_reg|ram4|mem~7_combout\,
	combout => \SDVM_d_Vec|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y19_N16
\W_block|adder2|adder_chain[1].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[1].Block|FA2|Add1~0_combout\ = \W_block|adder2|adder_chain[1].Block|FA1|Add1~0_combout\ $ (\W_block|adder2|adder_chain[0].Block|FA1|Add1~0_combout\ $ (((!\SDVM_d_Vec|Mux6~0_combout\ & \W_block|add_operand_plus[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_d_Vec|Mux6~0_combout\,
	datab => \W_block|adder2|adder_chain[1].Block|FA1|Add1~0_combout\,
	datac => \W_block|add_operand_plus[1]~0_combout\,
	datad => \W_block|adder2|adder_chain[0].Block|FA1|Add1~0_combout\,
	combout => \W_block|adder2|adder_chain[1].Block|FA2|Add1~0_combout\);

-- Location: LCCOMB_X22_Y19_N30
\SDVM_d_Vec|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_d_Vec|Mux7~0_combout\ = \SDVM_d_Vec|D1|out\(1) $ (\CA_reg|ram4|mem~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDVM_d_Vec|D1|out\(1),
	datad => \CA_reg|ram4|mem~8_combout\,
	combout => \SDVM_d_Vec|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y19_N28
\W_block|adder2|adder_chain[0].Block|FA1|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[0].Block|FA1|Add1~1_combout\ = \V_block|v_upper_minus[0]~3_combout\ $ (\V_block|v_upper_plus[0]~2_combout\ $ (((!\SDVM_d_Vec|Mux3~0_combout\ & \W_block|add_operand_plus[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_d_Vec|Mux3~0_combout\,
	datab => \W_block|add_operand_plus[1]~0_combout\,
	datac => \V_block|v_upper_minus[0]~3_combout\,
	datad => \V_block|v_upper_plus[0]~2_combout\,
	combout => \W_block|adder2|adder_chain[0].Block|FA1|Add1~1_combout\);

-- Location: FF_X22_Y19_N27
\W_block|d_plus_delayed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|d_plus_delayed~2_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|d_plus_delayed\(3));

-- Location: LCCOMB_X22_Y19_N22
\W_block|cin_two[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|cin_two[1]~0_combout\ = (\W_block|Equal3~0_combout\ & ((\W_block|d_plus_delayed\(3) & ((\V_block|v_plus_vec[3]~0_combout\) # (!\W_block|d_minus_delayed\(3)))) # (!\W_block|d_plus_delayed\(3) & (!\W_block|d_minus_delayed\(3) & 
-- \V_block|v_plus_vec[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|d_plus_delayed\(3),
	datab => \W_block|Equal3~0_combout\,
	datac => \W_block|d_minus_delayed\(3),
	datad => \V_block|v_plus_vec[3]~0_combout\,
	combout => \W_block|cin_two[1]~0_combout\);

-- Location: LCCOMB_X22_Y19_N8
\W_block|adder2|adder_chain[0].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[0].Block|FA2|Add1~0_combout\ = \W_block|cin_two[1]~0_combout\ $ (\W_block|adder2|adder_chain[0].Block|FA1|Add1~1_combout\ $ (((!\SDVM_d_Vec|Mux7~0_combout\ & \W_block|add_operand_plus[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_d_Vec|Mux7~0_combout\,
	datab => \W_block|add_operand_plus[1]~0_combout\,
	datac => \W_block|cin_two[1]~0_combout\,
	datad => \W_block|adder2|adder_chain[0].Block|FA1|Add1~1_combout\,
	combout => \W_block|adder2|adder_chain[0].Block|FA2|Add1~0_combout\);

-- Location: FF_X23_Y19_N3
\W_block|d_minus_delayed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|d_minus_delayed~2_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|d_minus_delayed\(2));

-- Location: LCCOMB_X23_Y19_N30
\W_block|adder1|adder_chain[3].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\ = \V_block|v_minus_vec[3]~0_combout\ $ (\W_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\ $ (\W_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_minus_vec[3]~0_combout\,
	datac => \W_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\,
	datad => \W_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\,
	combout => \W_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\);

-- Location: LCCOMB_X22_Y19_N2
\W_block|adder2|adder_chain[0].Block|FA2|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[0].Block|FA2|Add1~1_combout\ = (\W_block|cin_two[1]~0_combout\ & (!\SDVM_d_Vec|Mux7~0_combout\ & (\W_block|add_operand_plus[1]~0_combout\ & \W_block|adder2|adder_chain[0].Block|FA1|Add1~1_combout\))) # 
-- (!\W_block|cin_two[1]~0_combout\ & ((\W_block|adder2|adder_chain[0].Block|FA1|Add1~1_combout\) # ((!\SDVM_d_Vec|Mux7~0_combout\ & \W_block|add_operand_plus[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_d_Vec|Mux7~0_combout\,
	datab => \W_block|add_operand_plus[1]~0_combout\,
	datac => \W_block|cin_two[1]~0_combout\,
	datad => \W_block|adder2|adder_chain[0].Block|FA1|Add1~1_combout\,
	combout => \W_block|adder2|adder_chain[0].Block|FA2|Add1~1_combout\);

-- Location: FF_X22_Y19_N19
\W_block|d_plus_delayed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|d_plus_delayed~5_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|d_plus_delayed\(0));

-- Location: LCCOMB_X24_Y18_N6
\W_block|adder1|adder_chain[2].Block|FA1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[2].Block|FA1|Add0~0_combout\ = \W_block|d_minus_delayed\(2) $ (\W_block|d_plus_delayed\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|d_minus_delayed\(2),
	datad => \W_block|d_plus_delayed\(2),
	combout => \W_block|adder1|adder_chain[2].Block|FA1|Add0~0_combout\);

-- Location: FF_X22_Y19_N21
\W_block|cin_one[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|cin_one~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|cin_one\(1));

-- Location: LCCOMB_X26_Y21_N20
\V_block|q_plus_add~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|q_plus_add~2_combout\ = (\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & (!\FSM|en_shift[1]~0_combout\ & (\SDVM_q_Vec|vec_out_plus[1]~3_combout\ & \FSM|en_d~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datab => \FSM|en_shift[1]~0_combout\,
	datac => \SDVM_q_Vec|vec_out_plus[1]~3_combout\,
	datad => \FSM|en_d~0_combout\,
	combout => \V_block|q_plus_add~2_combout\);

-- Location: LCCOMB_X26_Y21_N6
\V_block|cin_one~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|cin_one~1_combout\ = (\FSM|en_d~0_combout\ & ((\V_block|q_plus_add\(3) & ((\W_block|ram1|mem~5_combout\) # (!\V_block|q_minus_add\(3)))) # (!\V_block|q_plus_add\(3) & (!\V_block|q_minus_add\(3) & \W_block|ram1|mem~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|q_plus_add\(3),
	datab => \FSM|en_d~0_combout\,
	datac => \V_block|q_minus_add\(3),
	datad => \W_block|ram1|mem~5_combout\,
	combout => \V_block|cin_one~1_combout\);

-- Location: FF_X24_Y19_N1
\CA_reg|ram2|mem_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|d_value_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(15));

-- Location: FF_X23_Y19_N13
\CA_reg|ram2|mem_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram2|mem_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(16));

-- Location: LCCOMB_X24_Y19_N0
\CA_reg|ram2|mem~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem~7_combout\ = (\CA_reg|ram2|mem_rtl_0_bypass\(16) & ((\CA_reg|ram2|mem~4_combout\ & ((\CA_reg|ram2|mem_rtl_0_bypass\(15)))) # (!\CA_reg|ram2|mem~4_combout\ & (\CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # 
-- (!\CA_reg|ram2|mem_rtl_0_bypass\(16) & (((\CA_reg|ram2|mem_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram2|mem_rtl_0_bypass\(16),
	datab => \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \CA_reg|ram2|mem_rtl_0_bypass\(15),
	datad => \CA_reg|ram2|mem~4_combout\,
	combout => \CA_reg|ram2|mem~7_combout\);

-- Location: LCCOMB_X23_Y19_N26
\SDVM_d_Vec|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_d_Vec|Mux5~0_combout\ = \SDVM_d_Vec|D1|out\(1) $ (\CA_reg|ram2|mem~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDVM_d_Vec|D1|out\(1),
	datac => \CA_reg|ram2|mem~7_combout\,
	combout => \SDVM_d_Vec|Mux5~0_combout\);

-- Location: FF_X22_Y19_N15
\CA_reg|ram2|mem_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram2|mem_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(18));

-- Location: LCCOMB_X23_Y20_N10
\W_block|adder2|adder_chain[3].Block|FA2|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[3].Block|FA2|Add1~1_combout\ = (\W_block|adder2|adder_chain[3].Block|FA1|Add1~0_combout\ & (((\W_block|add_operand_plus[1]~0_combout\ & !\SDVM_d_Vec|Mux4~0_combout\)) # 
-- (!\W_block|adder2|adder_chain[2].Block|FA1|Add1~1_combout\))) # (!\W_block|adder2|adder_chain[3].Block|FA1|Add1~0_combout\ & (\W_block|add_operand_plus[1]~0_combout\ & (!\SDVM_d_Vec|Mux4~0_combout\ & 
-- !\W_block|adder2|adder_chain[2].Block|FA1|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|add_operand_plus[1]~0_combout\,
	datab => \SDVM_d_Vec|Mux4~0_combout\,
	datac => \W_block|adder2|adder_chain[3].Block|FA1|Add1~0_combout\,
	datad => \W_block|adder2|adder_chain[2].Block|FA1|Add1~1_combout\,
	combout => \W_block|adder2|adder_chain[3].Block|FA2|Add1~1_combout\);

-- Location: LCCOMB_X25_Y17_N0
\FSM|computation_cycle[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[5]~8_combout\ = (\FSM|STATE\(1) & (((\FSM|Add0~10_combout\)))) # (!\FSM|STATE\(1) & (\main_counter|cnt\(7) & ((!\FSM|always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(7),
	datab => \FSM|Add0~10_combout\,
	datac => \FSM|STATE\(1),
	datad => \FSM|always1~0_combout\,
	combout => \FSM|computation_cycle[5]~8_combout\);

-- Location: LCCOMB_X25_Y17_N2
\FSM|computation_cycle[4]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[4]~11_combout\ = (\FSM|STATE\(1) & (\FSM|Add0~8_combout\)) # (!\FSM|STATE\(1) & (((\main_counter|cnt\(6) & !\FSM|always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Add0~8_combout\,
	datab => \main_counter|cnt\(6),
	datac => \FSM|STATE\(1),
	datad => \FSM|always1~0_combout\,
	combout => \FSM|computation_cycle[4]~11_combout\);

-- Location: LCCOMB_X25_Y17_N28
\FSM|computation_cycle[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[3]~14_combout\ = (\FSM|STATE\(1) & (((\FSM|Add0~6_combout\)))) # (!\FSM|STATE\(1) & (\main_counter|cnt\(5) & ((!\FSM|always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(5),
	datab => \FSM|Add0~6_combout\,
	datac => \FSM|STATE\(1),
	datad => \FSM|always1~0_combout\,
	combout => \FSM|computation_cycle[3]~14_combout\);

-- Location: LCCOMB_X26_Y17_N2
\FSM|computation_cycle[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[3]~15_combout\ = (\FSM|computation_cycle[1]~0_combout\ & (((\FSM|Add1~6_combout\)))) # (!\FSM|computation_cycle[1]~0_combout\ & (\FSM|computation_cycle[3]~14_combout\ & ((!\FSM|wr_addr_RAM[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[1]~0_combout\,
	datab => \FSM|computation_cycle[3]~14_combout\,
	datac => \FSM|Add1~6_combout\,
	datad => \FSM|wr_addr_RAM[2]~4_combout\,
	combout => \FSM|computation_cycle[3]~15_combout\);

-- Location: LCCOMB_X25_Y17_N10
\FSM|computation_cycle[2]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[2]~17_combout\ = (\FSM|STATE\(1) & (((\FSM|Add0~4_combout\)))) # (!\FSM|STATE\(1) & (!\FSM|always1~0_combout\ & (\main_counter|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|always1~0_combout\,
	datab => \main_counter|cnt\(4),
	datac => \FSM|STATE\(1),
	datad => \FSM|Add0~4_combout\,
	combout => \FSM|computation_cycle[2]~17_combout\);

-- Location: LCCOMB_X22_Y19_N26
\W_block|d_plus_delayed~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|d_plus_delayed~2_combout\ = (\W_block|d_plus_delayed~1_combout\ & (\SDVM_d_Vec|D1|out\(1) $ (!\CA_reg|ram1|mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDVM_d_Vec|D1|out\(1),
	datac => \W_block|d_plus_delayed~1_combout\,
	datad => \CA_reg|ram1|mem~8_combout\,
	combout => \W_block|d_plus_delayed~2_combout\);

-- Location: LCCOMB_X23_Y19_N2
\W_block|d_minus_delayed~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|d_minus_delayed~2_combout\ = (\W_block|d_plus_delayed~1_combout\ & (\CA_reg|ram2|mem~7_combout\ $ (!\SDVM_d_Vec|D1|out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CA_reg|ram2|mem~7_combout\,
	datac => \SDVM_d_Vec|D1|out\(1),
	datad => \W_block|d_plus_delayed~1_combout\,
	combout => \W_block|d_minus_delayed~2_combout\);

-- Location: LCCOMB_X22_Y19_N18
\W_block|d_plus_delayed~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|d_plus_delayed~5_combout\ = (\W_block|d_plus_delayed~1_combout\ & (\SDVM_d_Vec|D1|out\(1) $ (!\CA_reg|ram4|mem~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDVM_d_Vec|D1|out\(1),
	datac => \W_block|d_plus_delayed~1_combout\,
	datad => \CA_reg|ram4|mem~7_combout\,
	combout => \W_block|d_plus_delayed~5_combout\);

-- Location: LCCOMB_X22_Y19_N20
\W_block|cin_one~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|cin_one~0_combout\ = (\FSM|en_d~0_combout\ & ((\V_block|v_plus_vec[3]~0_combout\ & ((\W_block|d_plus_delayed\(3)) # (!\W_block|d_minus_delayed\(3)))) # (!\V_block|v_plus_vec[3]~0_combout\ & (!\W_block|d_minus_delayed\(3) & 
-- \W_block|d_plus_delayed\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_plus_vec[3]~0_combout\,
	datab => \W_block|d_minus_delayed\(3),
	datac => \W_block|d_plus_delayed\(3),
	datad => \FSM|en_d~0_combout\,
	combout => \W_block|cin_one~0_combout\);

-- Location: LCCOMB_X24_Y18_N22
\SDVM_q_Vec|vec_out_plus[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|vec_out_plus[0]~6_combout\ = (!\asyn_reset~input_o\ & (\SDVM_q_Vec|vec_out_plus[0]~4_combout\ & (\SDVM_q_Vec|D1|out\(0) $ (\SDVM_q_Vec|D1|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|D1|out\(0),
	datab => \asyn_reset~input_o\,
	datac => \SDVM_q_Vec|D1|out\(1),
	datad => \SDVM_q_Vec|vec_out_plus[0]~4_combout\,
	combout => \SDVM_q_Vec|vec_out_plus[0]~6_combout\);

-- Location: LCCOMB_X26_Y19_N20
\CA_reg|ram3|mem_rtl_0_bypass[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem_rtl_0_bypass[3]~feeder_combout\ = \main_counter|cnt\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(3),
	combout => \CA_reg|ram3|mem_rtl_0_bypass[3]~feeder_combout\);

-- Location: LCCOMB_X26_Y19_N12
\CA_reg|ram1|mem_rtl_0_bypass[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem_rtl_0_bypass[3]~feeder_combout\ = \main_counter|cnt\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(3),
	combout => \CA_reg|ram1|mem_rtl_0_bypass[3]~feeder_combout\);

-- Location: LCCOMB_X25_Y18_N2
\CA_reg|ram4|mem_rtl_0_bypass[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem_rtl_0_bypass[3]~feeder_combout\ = \main_counter|cnt\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(3),
	combout => \CA_reg|ram4|mem_rtl_0_bypass[3]~feeder_combout\);

-- Location: LCCOMB_X26_Y18_N2
\CA_reg|ram4|mem_rtl_0_bypass[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem_rtl_0_bypass[5]~feeder_combout\ = \main_counter|cnt\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(4),
	combout => \CA_reg|ram4|mem_rtl_0_bypass[5]~feeder_combout\);

-- Location: LCCOMB_X30_Y20_N6
\CA_reg|ram3|mem_rtl_0_bypass[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem_rtl_0_bypass[7]~feeder_combout\ = \main_counter|cnt\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(5),
	combout => \CA_reg|ram3|mem_rtl_0_bypass[7]~feeder_combout\);

-- Location: LCCOMB_X26_Y18_N16
\CA_reg|ram4|mem_rtl_0_bypass[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem_rtl_0_bypass[7]~feeder_combout\ = \main_counter|cnt\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(5),
	combout => \CA_reg|ram4|mem_rtl_0_bypass[7]~feeder_combout\);

-- Location: LCCOMB_X26_Y18_N30
\CA_reg|ram4|mem_rtl_0_bypass[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem_rtl_0_bypass[9]~feeder_combout\ = \main_counter|cnt\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(6),
	combout => \CA_reg|ram4|mem_rtl_0_bypass[9]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N16
\CA_reg|ram1|mem_rtl_0_bypass[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem_rtl_0_bypass[9]~feeder_combout\ = \main_counter|cnt\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(6),
	combout => \CA_reg|ram1|mem_rtl_0_bypass[9]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N30
\CA_reg|ram2|mem_rtl_0_bypass[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem_rtl_0_bypass[11]~feeder_combout\ = \main_counter|cnt\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(7),
	combout => \CA_reg|ram2|mem_rtl_0_bypass[11]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N10
\CA_reg|ram1|mem_rtl_0_bypass[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem_rtl_0_bypass[11]~feeder_combout\ = \main_counter|cnt\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(7),
	combout => \CA_reg|ram1|mem_rtl_0_bypass[11]~feeder_combout\);

-- Location: LCCOMB_X26_Y19_N4
\CA_reg|ram1|mem_rtl_0_bypass[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem_rtl_0_bypass[13]~feeder_combout\ = \main_counter|cnt\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(8),
	combout => \CA_reg|ram1|mem_rtl_0_bypass[13]~feeder_combout\);

-- Location: LCCOMB_X27_Y18_N26
\vec_D|x_plus_delayed[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vec_D|x_plus_delayed[3]~feeder_combout\ = \CA_reg|ram1|mem~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CA_reg|ram1|mem~5_combout\,
	combout => \vec_D|x_plus_delayed[3]~feeder_combout\);

-- Location: LCCOMB_X25_Y19_N4
\CA_reg|ram2|mem_rtl_0_bypass[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem_rtl_0_bypass[6]~feeder_combout\ = \FSM|rd_addr[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|rd_addr[2]~3_combout\,
	combout => \CA_reg|ram2|mem_rtl_0_bypass[6]~feeder_combout\);

-- Location: LCCOMB_X25_Y19_N2
\CA_reg|ram1|mem_rtl_0_bypass[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem_rtl_0_bypass[6]~feeder_combout\ = \FSM|rd_addr[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|rd_addr[2]~3_combout\,
	combout => \CA_reg|ram1|mem_rtl_0_bypass[6]~feeder_combout\);

-- Location: LCCOMB_X27_Y21_N0
\W_block|ram2|mem_rtl_0_bypass[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem_rtl_0_bypass[0]~feeder_combout\ = \W_block|we_RAM~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \W_block|we_RAM~0_combout\,
	combout => \W_block|ram2|mem_rtl_0_bypass[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y21_N10
\W_block|ram1|mem_rtl_0_bypass[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem_rtl_0_bypass[13]~feeder_combout\ = \FSM|wr_addr_RAM\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|wr_addr_RAM\(6),
	combout => \W_block|ram1|mem_rtl_0_bypass[13]~feeder_combout\);

-- Location: LCCOMB_X27_Y21_N30
\W_block|ram1|mem_rtl_0_bypass[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem_rtl_0_bypass[6]~feeder_combout\ = \FSM|rd_addr_RAM\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|rd_addr_RAM\(2),
	combout => \W_block|ram1|mem_rtl_0_bypass[6]~feeder_combout\);

-- Location: LCCOMB_X27_Y21_N10
\W_block|ram2|mem_rtl_0_bypass[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem_rtl_0_bypass[6]~feeder_combout\ = \FSM|rd_addr_RAM\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|rd_addr_RAM\(2),
	combout => \W_block|ram2|mem_rtl_0_bypass[6]~feeder_combout\);

-- Location: LCCOMB_X22_Y21_N6
\W_block|ram1|mem_rtl_0_bypass[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem_rtl_0_bypass[10]~feeder_combout\ = \FSM|rd_addr_RAM\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|rd_addr_RAM\(4),
	combout => \W_block|ram1|mem_rtl_0_bypass[10]~feeder_combout\);

-- Location: LCCOMB_X27_Y21_N24
\W_block|ram2|mem_rtl_0_bypass[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem_rtl_0_bypass[14]~feeder_combout\ = \FSM|rd_addr_RAM\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|rd_addr_RAM\(6),
	combout => \W_block|ram2|mem_rtl_0_bypass[14]~feeder_combout\);

-- Location: LCCOMB_X22_Y21_N12
\W_block|ram1|mem_rtl_0_bypass[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem_rtl_0_bypass[14]~feeder_combout\ = \FSM|rd_addr_RAM\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|rd_addr_RAM\(6),
	combout => \W_block|ram1|mem_rtl_0_bypass[14]~feeder_combout\);

-- Location: LCCOMB_X26_Y19_N30
\CA_reg|ram1|mem_rtl_0_bypass[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem_rtl_0_bypass[0]~feeder_combout\ = \CA_reg|we_one~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CA_reg|we_one~0_combout\,
	combout => \CA_reg|ram1|mem_rtl_0_bypass[0]~feeder_combout\);

-- Location: LCCOMB_X25_Y19_N12
\CA_reg|ram2|mem_rtl_0_bypass[22]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram2|mem_rtl_0_bypass[22]~feeder_combout\);

-- Location: LCCOMB_X26_Y20_N12
\CA_reg|ram3|mem_rtl_0_bypass[22]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram3|mem_rtl_0_bypass[22]~feeder_combout\);

-- Location: LCCOMB_X26_Y20_N22
\CA_reg|ram2|mem_rtl_0_bypass[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram2|mem_rtl_0_bypass[20]~feeder_combout\);

-- Location: LCCOMB_X26_Y20_N16
\CA_reg|ram3|mem_rtl_0_bypass[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram3|mem_rtl_0_bypass[20]~feeder_combout\);

-- Location: LCCOMB_X26_Y20_N10
\CA_reg|ram4|mem_rtl_0_bypass[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram4|mem_rtl_0_bypass[20]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N26
\W_block|ram2|mem_rtl_0_bypass[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \W_block|ram2|mem_rtl_0_bypass[20]~feeder_combout\);

-- Location: LCCOMB_X26_Y21_N2
\W_block|ram2|mem_rtl_0_bypass[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \W_block|ram2|mem_rtl_0_bypass[18]~feeder_combout\);

-- Location: LCCOMB_X27_Y18_N4
\CA_reg|ram1|mem_rtl_0_bypass[22]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram1|mem_rtl_0_bypass[22]~feeder_combout\);

-- Location: LCCOMB_X29_Y20_N12
\CA_reg|ram1|mem_rtl_0_bypass[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram1|mem_rtl_0_bypass[20]~feeder_combout\);

-- Location: LCCOMB_X27_Y18_N20
\CA_reg|ram4|mem_rtl_0_bypass[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram4|mem_rtl_0_bypass[18]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N12
\CA_reg|ram2|mem_rtl_0_bypass[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram2|mem_rtl_0_bypass[16]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N14
\CA_reg|ram2|mem_rtl_0_bypass[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram2|mem_rtl_0_bypass[18]~feeder_combout\);

-- Location: IOOBUF_X33_Y12_N2
\q_value[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|q_value\(0),
	devoe => ww_devoe,
	o => \q_value[0]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\q_value[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|q_value\(1),
	devoe => ww_devoe,
	o => \q_value[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\data_out_vld~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_data_out_vld~0_combout\,
	devoe => ww_devoe,
	o => \data_out_vld~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y20_N18
\FSM|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux2~2_combout\ = \FSM|STATE\(1) $ (\FSM|STATE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(1),
	datac => \FSM|STATE\(0),
	combout => \FSM|Mux2~2_combout\);

-- Location: LCCOMB_X25_Y20_N24
\V_block|v_upper_minus[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_minus[0]~0_combout\ = (\asyn_reset~input_o\) # ((\FSM|STATE\(0) & (!\FSM|STATE\(2) & \FSM|STATE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datab => \FSM|STATE\(0),
	datac => \FSM|STATE\(2),
	datad => \FSM|STATE\(1),
	combout => \V_block|v_upper_minus[0]~0_combout\);

-- Location: LCCOMB_X25_Y20_N18
\FSM|en_shift[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|en_shift[1]~0_combout\ = (!\asyn_reset~input_o\ & (\FSM|STATE\(0) & (!\FSM|STATE\(2) & \FSM|STATE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datab => \FSM|STATE\(0),
	datac => \FSM|STATE\(2),
	datad => \FSM|STATE\(1),
	combout => \FSM|en_shift[1]~0_combout\);

-- Location: IOIBUF_X33_Y24_N8
\d_value[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_value(1),
	o => \d_value[1]~input_o\);

-- Location: LCCOMB_X29_Y18_N0
\FSM|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux12~0_combout\ = (!\FSM|STATE\(2) & \d_value[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|STATE\(2),
	datad => \d_value[1]~input_o\,
	combout => \FSM|Mux12~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\asyn_reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_asyn_reset,
	o => \asyn_reset~input_o\);

-- Location: CLKCTRL_G19
\asyn_reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \asyn_reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \asyn_reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y14_N1
\data_d_vld~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_d_vld,
	o => \data_d_vld~input_o\);

-- Location: LCCOMB_X26_Y17_N28
\FSM|hd_d~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|hd_d~0_combout\ = (\FSM|hd_d~q\ & (!\FSM|hd_x~q\)) # (!\FSM|hd_d~q\ & ((\data_d_vld~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|hd_x~q\,
	datab => \data_d_vld~input_o\,
	datac => \FSM|hd_d~q\,
	combout => \FSM|hd_d~0_combout\);

-- Location: LCCOMB_X26_Y17_N16
\FSM|Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Decoder0~1_combout\ = (!\FSM|STATE\(2) & (!\FSM|STATE\(0) & !\FSM|STATE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|STATE\(2),
	datac => \FSM|STATE\(0),
	datad => \FSM|STATE\(1),
	combout => \FSM|Decoder0~1_combout\);

-- Location: FF_X26_Y17_N29
\FSM|hd_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|hd_d~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|hd_d~q\);

-- Location: IOIBUF_X33_Y15_N1
\data_x_vld~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_x_vld,
	o => \data_x_vld~input_o\);

-- Location: LCCOMB_X26_Y17_N6
\FSM|hd_x~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|hd_x~0_combout\ = (\FSM|hd_x~q\ & (!\FSM|hd_d~q\)) # (!\FSM|hd_x~q\ & ((\data_x_vld~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|hd_d~q\,
	datac => \FSM|hd_x~q\,
	datad => \data_x_vld~input_o\,
	combout => \FSM|hd_x~0_combout\);

-- Location: FF_X26_Y17_N7
\FSM|hd_x\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|hd_x~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|hd_x~q\);

-- Location: LCCOMB_X25_Y17_N8
\FSM|always1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|always1~0_combout\ = (!\FSM|hd_x~q\) # (!\FSM|hd_d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|hd_d~q\,
	datad => \FSM|hd_x~q\,
	combout => \FSM|always1~0_combout\);

-- Location: LCCOMB_X29_Y18_N4
\FSM|x_value_reg[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|x_value_reg[1]~0_combout\ = (\FSM|STATE\(2) & (((\FSM|STATE\(1))))) # (!\FSM|STATE\(2) & (!\FSM|STATE\(0) & (!\FSM|STATE\(1) & !\FSM|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(2),
	datab => \FSM|STATE\(0),
	datac => \FSM|STATE\(1),
	datad => \FSM|always1~0_combout\,
	combout => \FSM|x_value_reg[1]~0_combout\);

-- Location: FF_X29_Y18_N1
\FSM|d_value_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux12~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|x_value_reg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|d_value_reg\(1));

-- Location: LCCOMB_X27_Y18_N2
\SDVM_q_Vec|D1|out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|D1|out[1]~1_combout\ = !\FSM|d_value_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|d_value_reg\(1),
	combout => \SDVM_q_Vec|D1|out[1]~1_combout\);

-- Location: LCCOMB_X25_Y20_N10
\FSM|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|WideOr0~0_combout\ = (!\asyn_reset~input_o\ & ((\FSM|STATE\(1) & ((!\FSM|STATE\(2)))) # (!\FSM|STATE\(1) & (\FSM|STATE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datab => \FSM|STATE\(0),
	datac => \FSM|STATE\(2),
	datad => \FSM|STATE\(1),
	combout => \FSM|WideOr0~0_combout\);

-- Location: FF_X27_Y18_N3
\SDVM_q_Vec|D1|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SDVM_q_Vec|D1|out[1]~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDVM_q_Vec|D1|out\(1));

-- Location: LCCOMB_X25_Y20_N20
\FSM|computation_cycle[6]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[6]~3_combout\ = (!\FSM|STATE\(0) & (\FSM|always1~0_combout\ & (!\FSM|STATE\(2) & !\FSM|STATE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(0),
	datab => \FSM|always1~0_combout\,
	datac => \FSM|STATE\(2),
	datad => \FSM|STATE\(1),
	combout => \FSM|computation_cycle[6]~3_combout\);

-- Location: LCCOMB_X29_Y20_N30
\FSM|en_d~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|en_d~0_combout\ = (!\asyn_reset~input_o\ & ((\FSM|STATE\(0) & (\FSM|STATE\(2) & !\FSM|STATE\(1))) # (!\FSM|STATE\(0) & (!\FSM|STATE\(2) & \FSM|STATE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datab => \FSM|STATE\(0),
	datac => \FSM|STATE\(2),
	datad => \FSM|STATE\(1),
	combout => \FSM|en_d~0_combout\);

-- Location: LCCOMB_X22_Y19_N24
\W_block|Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|Equal3~0_combout\ = (\FSM|en_shift[1]~0_combout\ & !\FSM|en_d~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|en_shift[1]~0_combout\,
	datad => \FSM|en_d~0_combout\,
	combout => \W_block|Equal3~0_combout\);

-- Location: LCCOMB_X29_Y20_N14
\FSM|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux2~3_combout\ = (\FSM|STATE\(0) & !\FSM|STATE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|STATE\(0),
	datad => \FSM|STATE\(1),
	combout => \FSM|Mux2~3_combout\);

-- Location: LCCOMB_X26_Y20_N26
\FSM|prev_STATE.ERROR~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|prev_STATE.ERROR~0_combout\ = (\FSM|prev_STATE.ERROR~q\) # ((\FSM|STATE\(2) & (\FSM|Equal0~1_combout\ & \FSM|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(2),
	datab => \FSM|Equal0~1_combout\,
	datac => \FSM|prev_STATE.ERROR~q\,
	datad => \FSM|Mux2~3_combout\,
	combout => \FSM|prev_STATE.ERROR~0_combout\);

-- Location: FF_X26_Y20_N27
\FSM|prev_STATE.ERROR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|prev_STATE.ERROR~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|prev_STATE.ERROR~q\);

-- Location: LCCOMB_X24_Y20_N8
\V_block|q_value[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|q_value[0]~1_combout\ = (\FSM|fixing~q\ & (\V_block|q_fixing_value\(0))) # (!\FSM|fixing~q\ & ((\V_block|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|fixing~q\,
	datac => \V_block|q_fixing_value\(0),
	datad => \V_block|WideOr1~0_combout\,
	combout => \V_block|q_value[0]~1_combout\);

-- Location: LCCOMB_X26_Y20_N2
\SDVM_d_Vec|D1|out[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_d_Vec|D1|out[0]~1_combout\ = !\V_block|q_value[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V_block|q_value[0]~1_combout\,
	combout => \SDVM_d_Vec|D1|out[0]~1_combout\);

-- Location: FF_X26_Y20_N3
\SDVM_d_Vec|D1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SDVM_d_Vec|D1|out[0]~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDVM_d_Vec|D1|out\(0));

-- Location: LCCOMB_X25_Y20_N30
\V_block|q_value[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|q_value[1]~0_combout\ = (\FSM|fixing~q\ & (\V_block|q_fixing_value\(1))) # (!\FSM|fixing~q\ & ((\V_block|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|fixing~q\,
	datab => \V_block|q_fixing_value\(1),
	datac => \V_block|WideOr0~0_combout\,
	combout => \V_block|q_value[1]~0_combout\);

-- Location: LCCOMB_X26_Y20_N24
\SDVM_d_Vec|D1|out[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_d_Vec|D1|out[1]~0_combout\ = !\V_block|q_value[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V_block|q_value[1]~0_combout\,
	combout => \SDVM_d_Vec|D1|out[1]~0_combout\);

-- Location: FF_X26_Y20_N25
\SDVM_d_Vec|D1|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SDVM_d_Vec|D1|out[1]~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDVM_d_Vec|D1|out\(1));

-- Location: LCCOMB_X26_Y20_N20
\W_block|add_operand_plus[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|add_operand_plus[1]~0_combout\ = (\W_block|Equal3~0_combout\ & (!\asyn_reset~input_o\ & (\SDVM_d_Vec|D1|out\(0) $ (\SDVM_d_Vec|D1|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|Equal3~0_combout\,
	datab => \SDVM_d_Vec|D1|out\(0),
	datac => \asyn_reset~input_o\,
	datad => \SDVM_d_Vec|D1|out\(1),
	combout => \W_block|add_operand_plus[1]~0_combout\);

-- Location: LCCOMB_X26_Y20_N8
\W_block|d_plus_delayed~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|d_plus_delayed~0_combout\ = (!\asyn_reset~input_o\ & (\SDVM_d_Vec|D1|out\(0) $ (\SDVM_d_Vec|D1|out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDVM_d_Vec|D1|out\(0),
	datac => \asyn_reset~input_o\,
	datad => \SDVM_d_Vec|D1|out\(1),
	combout => \W_block|d_plus_delayed~0_combout\);

-- Location: LCCOMB_X26_Y20_N14
\W_block|d_plus_delayed~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|d_plus_delayed~1_combout\ = (!\FSM|en_shift[1]~0_combout\ & (\W_block|d_plus_delayed~0_combout\ & \FSM|en_d~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|en_shift[1]~0_combout\,
	datac => \W_block|d_plus_delayed~0_combout\,
	datad => \FSM|en_d~0_combout\,
	combout => \W_block|d_plus_delayed~1_combout\);

-- Location: LCCOMB_X24_Y19_N22
\W_block|d_plus_delayed~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|d_plus_delayed~4_combout\ = (\W_block|d_plus_delayed~1_combout\ & (\CA_reg|ram2|mem~8_combout\ $ (!\SDVM_d_Vec|D1|out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram2|mem~8_combout\,
	datab => \W_block|d_plus_delayed~1_combout\,
	datac => \SDVM_d_Vec|D1|out\(1),
	combout => \W_block|d_plus_delayed~4_combout\);

-- Location: FF_X24_Y19_N23
\W_block|d_plus_delayed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|d_plus_delayed~4_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|d_plus_delayed\(2));

-- Location: IOIBUF_X33_Y15_N8
\d_value[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_value(0),
	o => \d_value[0]~input_o\);

-- Location: LCCOMB_X29_Y18_N30
\FSM|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux13~0_combout\ = (!\FSM|STATE\(2) & \d_value[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|STATE\(2),
	datad => \d_value[0]~input_o\,
	combout => \FSM|Mux13~0_combout\);

-- Location: FF_X29_Y18_N31
\FSM|d_value_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux13~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|x_value_reg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|d_value_reg\(0));

-- Location: LCCOMB_X27_Y18_N12
\SDVM_q_Vec|D1|out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|D1|out[0]~0_combout\ = !\FSM|d_value_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|d_value_reg\(0),
	combout => \SDVM_q_Vec|D1|out[0]~0_combout\);

-- Location: FF_X27_Y18_N13
\SDVM_q_Vec|D1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SDVM_q_Vec|D1|out[0]~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDVM_q_Vec|D1|out\(0));

-- Location: LCCOMB_X27_Y18_N16
\SDVM_q_Vec|vec_out_minus[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|vec_out_minus[0]~0_combout\ = (!\asyn_reset~input_o\ & (\SDVM_q_Vec|D1|out\(1) $ (\SDVM_q_Vec|D1|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datab => \SDVM_q_Vec|D1|out\(1),
	datad => \SDVM_q_Vec|D1|out\(0),
	combout => \SDVM_q_Vec|vec_out_minus[0]~0_combout\);

-- Location: LCCOMB_X24_Y21_N24
\V_block|q_plus_add~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|q_plus_add~1_combout\ = (!\FSM|en_shift[1]~0_combout\ & (\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & (\SDVM_q_Vec|vec_out_plus[2]~2_combout\ & \FSM|en_d~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|en_shift[1]~0_combout\,
	datab => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datac => \SDVM_q_Vec|vec_out_plus[2]~2_combout\,
	datad => \FSM|en_d~0_combout\,
	combout => \V_block|q_plus_add~1_combout\);

-- Location: FF_X24_Y21_N25
\V_block|q_plus_add[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|q_plus_add~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_block|q_plus_add\(2));

-- Location: LCCOMB_X29_Y20_N10
\FSM|Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux30~1_combout\ = (\FSM|STATE\(2)) # (\FSM|STATE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|STATE\(2),
	datad => \FSM|STATE\(1),
	combout => \FSM|Mux30~1_combout\);

-- Location: LCCOMB_X25_Y18_N12
\main_counter|cnt[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main_counter|cnt[0]~9_combout\ = \main_counter|cnt\(0) $ (VCC)
-- \main_counter|cnt[0]~10\ = CARRY(\main_counter|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(0),
	datad => VCC,
	combout => \main_counter|cnt[0]~9_combout\,
	cout => \main_counter|cnt[0]~10\);

-- Location: LCCOMB_X25_Y18_N14
\main_counter|cnt[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main_counter|cnt[1]~11_combout\ = (\main_counter|cnt\(1) & (!\main_counter|cnt[0]~10\)) # (!\main_counter|cnt\(1) & ((\main_counter|cnt[0]~10\) # (GND)))
-- \main_counter|cnt[1]~12\ = CARRY((!\main_counter|cnt[0]~10\) # (!\main_counter|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_counter|cnt\(1),
	datad => VCC,
	cin => \main_counter|cnt[0]~10\,
	combout => \main_counter|cnt[1]~11_combout\,
	cout => \main_counter|cnt[1]~12\);

-- Location: LCCOMB_X25_Y18_N0
\main_counter|STATE~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main_counter|STATE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \main_counter|STATE~feeder_combout\);

-- Location: FF_X25_Y18_N1
\main_counter|STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_counter|STATE~feeder_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_counter|STATE~q\);

-- Location: LCCOMB_X25_Y20_N16
\CA_reg|always0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|always0~0_combout\ = (!\asyn_reset~input_o\ & (\FSM|STATE\(0) & (!\FSM|STATE\(2) & !\FSM|STATE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datab => \FSM|STATE\(0),
	datac => \FSM|STATE\(2),
	datad => \FSM|STATE\(1),
	combout => \CA_reg|always0~0_combout\);

-- Location: LCCOMB_X25_Y18_N6
\main_counter|cnt[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main_counter|cnt[2]~15_combout\ = (\CA_reg|always0~0_combout\) # (!\main_counter|STATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_counter|STATE~q\,
	datad => \CA_reg|always0~0_combout\,
	combout => \main_counter|cnt[2]~15_combout\);

-- Location: FF_X25_Y18_N15
\main_counter|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_counter|cnt[1]~11_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sclr => \main_counter|ALT_INV_STATE~q\,
	ena => \main_counter|cnt[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_counter|cnt\(1));

-- Location: LCCOMB_X25_Y18_N16
\main_counter|cnt[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main_counter|cnt[2]~13_combout\ = (\main_counter|cnt\(2) & (\main_counter|cnt[1]~12\ $ (GND))) # (!\main_counter|cnt\(2) & (!\main_counter|cnt[1]~12\ & VCC))
-- \main_counter|cnt[2]~14\ = CARRY((\main_counter|cnt\(2) & !\main_counter|cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_counter|cnt\(2),
	datad => VCC,
	cin => \main_counter|cnt[1]~12\,
	combout => \main_counter|cnt[2]~13_combout\,
	cout => \main_counter|cnt[2]~14\);

-- Location: FF_X25_Y18_N17
\main_counter|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_counter|cnt[2]~13_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sclr => \main_counter|ALT_INV_STATE~q\,
	ena => \main_counter|cnt[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_counter|cnt\(2));

-- Location: LCCOMB_X25_Y17_N14
\FSM|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add0~0_combout\ = \main_counter|cnt\(2) $ (VCC)
-- \FSM|Add0~1\ = CARRY(\main_counter|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_counter|cnt\(2),
	datad => VCC,
	combout => \FSM|Add0~0_combout\,
	cout => \FSM|Add0~1\);

-- Location: LCCOMB_X25_Y17_N6
\FSM|computation_cycle[0]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[0]~23_combout\ = (\FSM|STATE\(1) & (((\FSM|Add0~0_combout\)))) # (!\FSM|STATE\(1) & (!\FSM|always1~0_combout\ & (\main_counter|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|always1~0_combout\,
	datab => \main_counter|cnt\(2),
	datac => \FSM|STATE\(1),
	datad => \FSM|Add0~0_combout\,
	combout => \FSM|computation_cycle[0]~23_combout\);

-- Location: LCCOMB_X27_Y17_N8
\FSM|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add1~0_combout\ = \FSM|computation_cycle\(0) $ (VCC)
-- \FSM|Add1~1\ = CARRY(\FSM|computation_cycle\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|computation_cycle\(0),
	datad => VCC,
	combout => \FSM|Add1~0_combout\,
	cout => \FSM|Add1~1\);

-- Location: LCCOMB_X26_Y17_N22
\FSM|computation_cycle[0]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[0]~24_combout\ = (\FSM|computation_cycle[1]~0_combout\ & (((\FSM|Add1~0_combout\)))) # (!\FSM|computation_cycle[1]~0_combout\ & (\FSM|computation_cycle[0]~23_combout\ & ((!\FSM|wr_addr_RAM[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[1]~0_combout\,
	datab => \FSM|computation_cycle[0]~23_combout\,
	datac => \FSM|Add1~0_combout\,
	datad => \FSM|wr_addr_RAM[2]~4_combout\,
	combout => \FSM|computation_cycle[0]~24_combout\);

-- Location: LCCOMB_X24_Y20_N26
\FSM|computation_cycle[0]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[0]~25_combout\ = (\FSM|computation_cycle[1]~6_combout\ & (((\FSM|computation_cycle\(0))))) # (!\FSM|computation_cycle[1]~6_combout\ & ((\FSM|computation_cycle[0]~24_combout\) # ((\FSM|computation_cycle[6]~3_combout\ & 
-- \FSM|computation_cycle\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[6]~3_combout\,
	datab => \FSM|computation_cycle[0]~24_combout\,
	datac => \FSM|computation_cycle\(0),
	datad => \FSM|computation_cycle[1]~6_combout\,
	combout => \FSM|computation_cycle[0]~25_combout\);

-- Location: FF_X24_Y20_N27
\FSM|computation_cycle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|computation_cycle[0]~25_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|computation_cycle\(0));

-- Location: LCCOMB_X26_Y20_N0
\FSM|Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux30~0_combout\ = (\FSM|STATE\(0) & ((\FSM|computation_cycle\(0)) # ((\main_counter|cnt\(2) & \FSM|Equal0~1_combout\)))) # (!\FSM|STATE\(0) & (\main_counter|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(0),
	datab => \main_counter|cnt\(2),
	datac => \FSM|Equal0~1_combout\,
	datad => \FSM|computation_cycle\(0),
	combout => \FSM|Mux30~0_combout\);

-- Location: LCCOMB_X29_Y21_N10
\FSM|Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add3~0_combout\ = \FSM|wr_addr_RAM\(0) $ (VCC)
-- \FSM|Add3~1\ = CARRY(\FSM|wr_addr_RAM\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|wr_addr_RAM\(0),
	datad => VCC,
	combout => \FSM|Add3~0_combout\,
	cout => \FSM|Add3~1\);

-- Location: LCCOMB_X29_Y21_N28
\FSM|Mux30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux30~2_combout\ = (\FSM|wr_addr_RAM[2]~5_combout\ & (!\FSM|Mux30~1_combout\ & (\FSM|Mux30~0_combout\))) # (!\FSM|wr_addr_RAM[2]~5_combout\ & ((\FSM|Add3~0_combout\) # ((!\FSM|Mux30~1_combout\ & \FSM|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|wr_addr_RAM[2]~5_combout\,
	datab => \FSM|Mux30~1_combout\,
	datac => \FSM|Mux30~0_combout\,
	datad => \FSM|Add3~0_combout\,
	combout => \FSM|Mux30~2_combout\);

-- Location: LCCOMB_X29_Y18_N2
\FSM|wr_addr_RAM[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|wr_addr_RAM[2]~6_combout\ = (\FSM|STATE\(1) & (!\FSM|STATE\(2))) # (!\FSM|STATE\(1) & ((\FSM|STATE\(0)) # ((!\FSM|STATE\(2) & !\FSM|always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(2),
	datab => \FSM|STATE\(0),
	datac => \FSM|STATE\(1),
	datad => \FSM|always1~0_combout\,
	combout => \FSM|wr_addr_RAM[2]~6_combout\);

-- Location: FF_X29_Y21_N29
\FSM|wr_addr_RAM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux30~2_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|wr_addr_RAM\(0));

-- Location: LCCOMB_X29_Y21_N12
\FSM|Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add3~2_combout\ = (\FSM|wr_addr_RAM\(1) & (\FSM|Add3~1\ & VCC)) # (!\FSM|wr_addr_RAM\(1) & (!\FSM|Add3~1\))
-- \FSM|Add3~3\ = CARRY((!\FSM|wr_addr_RAM\(1) & !\FSM|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|wr_addr_RAM\(1),
	datad => VCC,
	cin => \FSM|Add3~1\,
	combout => \FSM|Add3~2_combout\,
	cout => \FSM|Add3~3\);

-- Location: LCCOMB_X29_Y21_N14
\FSM|Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add3~4_combout\ = (\FSM|wr_addr_RAM\(2) & ((GND) # (!\FSM|Add3~3\))) # (!\FSM|wr_addr_RAM\(2) & (\FSM|Add3~3\ $ (GND)))
-- \FSM|Add3~5\ = CARRY((\FSM|wr_addr_RAM\(2)) # (!\FSM|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|wr_addr_RAM\(2),
	datad => VCC,
	cin => \FSM|Add3~3\,
	combout => \FSM|Add3~4_combout\,
	cout => \FSM|Add3~5\);

-- Location: LCCOMB_X25_Y18_N18
\main_counter|cnt[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main_counter|cnt[3]~16_combout\ = (\main_counter|cnt\(3) & (!\main_counter|cnt[2]~14\)) # (!\main_counter|cnt\(3) & ((\main_counter|cnt[2]~14\) # (GND)))
-- \main_counter|cnt[3]~17\ = CARRY((!\main_counter|cnt[2]~14\) # (!\main_counter|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_counter|cnt\(3),
	datad => VCC,
	cin => \main_counter|cnt[2]~14\,
	combout => \main_counter|cnt[3]~16_combout\,
	cout => \main_counter|cnt[3]~17\);

-- Location: FF_X25_Y18_N19
\main_counter|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_counter|cnt[3]~16_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sclr => \main_counter|ALT_INV_STATE~q\,
	ena => \main_counter|cnt[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_counter|cnt\(3));

-- Location: LCCOMB_X25_Y18_N20
\main_counter|cnt[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main_counter|cnt[4]~18_combout\ = (\main_counter|cnt\(4) & (\main_counter|cnt[3]~17\ $ (GND))) # (!\main_counter|cnt\(4) & (!\main_counter|cnt[3]~17\ & VCC))
-- \main_counter|cnt[4]~19\ = CARRY((\main_counter|cnt\(4) & !\main_counter|cnt[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_counter|cnt\(4),
	datad => VCC,
	cin => \main_counter|cnt[3]~17\,
	combout => \main_counter|cnt[4]~18_combout\,
	cout => \main_counter|cnt[4]~19\);

-- Location: FF_X25_Y18_N21
\main_counter|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_counter|cnt[4]~18_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sclr => \main_counter|ALT_INV_STATE~q\,
	ena => \main_counter|cnt[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_counter|cnt\(4));

-- Location: LCCOMB_X27_Y17_N4
\FSM|Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux28~0_combout\ = (\FSM|STATE\(0) & ((\FSM|computation_cycle\(2)) # ((\FSM|Equal0~1_combout\ & \main_counter|cnt\(4))))) # (!\FSM|STATE\(0) & (((\main_counter|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Equal0~1_combout\,
	datab => \FSM|STATE\(0),
	datac => \main_counter|cnt\(4),
	datad => \FSM|computation_cycle\(2),
	combout => \FSM|Mux28~0_combout\);

-- Location: LCCOMB_X29_Y21_N24
\FSM|Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux28~1_combout\ = (\FSM|wr_addr_RAM[2]~5_combout\ & (!\FSM|Mux30~1_combout\ & ((\FSM|Mux28~0_combout\)))) # (!\FSM|wr_addr_RAM[2]~5_combout\ & ((\FSM|Add3~4_combout\) # ((!\FSM|Mux30~1_combout\ & \FSM|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|wr_addr_RAM[2]~5_combout\,
	datab => \FSM|Mux30~1_combout\,
	datac => \FSM|Add3~4_combout\,
	datad => \FSM|Mux28~0_combout\,
	combout => \FSM|Mux28~1_combout\);

-- Location: FF_X29_Y21_N25
\FSM|wr_addr_RAM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux28~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|wr_addr_RAM\(2));

-- Location: LCCOMB_X27_Y21_N4
\W_block|ram2|mem_rtl_0_bypass[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem_rtl_0_bypass[5]~feeder_combout\ = \FSM|wr_addr_RAM\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|wr_addr_RAM\(2),
	combout => \W_block|ram2|mem_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X27_Y21_N5
\W_block|ram2|mem_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram2|mem_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(5));

-- Location: LCCOMB_X29_Y20_N24
\FSM|wr_addr_RAM[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|wr_addr_RAM[2]~5_combout\ = (\FSM|Equal0~1_combout\) # ((!\FSM|STATE\(2) & ((\FSM|STATE\(0)) # (!\FSM|STATE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(1),
	datab => \FSM|STATE\(2),
	datac => \FSM|Equal0~1_combout\,
	datad => \FSM|STATE\(0),
	combout => \FSM|wr_addr_RAM[2]~5_combout\);

-- Location: LCCOMB_X27_Y17_N12
\FSM|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add1~4_combout\ = (\FSM|computation_cycle\(2) & ((GND) # (!\FSM|Add1~3\))) # (!\FSM|computation_cycle\(2) & (\FSM|Add1~3\ $ (GND)))
-- \FSM|Add1~5\ = CARRY((\FSM|computation_cycle\(2)) # (!\FSM|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|computation_cycle\(2),
	datad => VCC,
	cin => \FSM|Add1~3\,
	combout => \FSM|Add1~4_combout\,
	cout => \FSM|Add1~5\);

-- Location: LCCOMB_X27_Y17_N14
\FSM|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add1~6_combout\ = (\FSM|computation_cycle\(3) & (\FSM|Add1~5\ & VCC)) # (!\FSM|computation_cycle\(3) & (!\FSM|Add1~5\))
-- \FSM|Add1~7\ = CARRY((!\FSM|computation_cycle\(3) & !\FSM|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|computation_cycle\(3),
	datad => VCC,
	cin => \FSM|Add1~5\,
	combout => \FSM|Add1~6_combout\,
	cout => \FSM|Add1~7\);

-- Location: LCCOMB_X27_Y17_N0
\FSM|Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux20~0_combout\ = (\FSM|STATE\(0) & ((\FSM|Equal0~1_combout\ & (\main_counter|cnt\(5))) # (!\FSM|Equal0~1_combout\ & ((\FSM|Add1~6_combout\))))) # (!\FSM|STATE\(0) & (\main_counter|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(5),
	datab => \FSM|STATE\(0),
	datac => \FSM|Add1~6_combout\,
	datad => \FSM|Equal0~1_combout\,
	combout => \FSM|Mux20~0_combout\);

-- Location: LCCOMB_X30_Y21_N0
\FSM|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add2~0_combout\ = \FSM|rd_addr_RAM\(0) $ (VCC)
-- \FSM|Add2~1\ = CARRY(\FSM|rd_addr_RAM\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|rd_addr_RAM\(0),
	datad => VCC,
	combout => \FSM|Add2~0_combout\,
	cout => \FSM|Add2~1\);

-- Location: LCCOMB_X30_Y21_N2
\FSM|Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add2~2_combout\ = (\FSM|rd_addr_RAM\(1) & (\FSM|Add2~1\ & VCC)) # (!\FSM|rd_addr_RAM\(1) & (!\FSM|Add2~1\))
-- \FSM|Add2~3\ = CARRY((!\FSM|rd_addr_RAM\(1) & !\FSM|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|rd_addr_RAM\(1),
	datad => VCC,
	cin => \FSM|Add2~1\,
	combout => \FSM|Add2~2_combout\,
	cout => \FSM|Add2~3\);

-- Location: LCCOMB_X30_Y21_N4
\FSM|Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add2~4_combout\ = (\FSM|rd_addr_RAM\(2) & ((GND) # (!\FSM|Add2~3\))) # (!\FSM|rd_addr_RAM\(2) & (\FSM|Add2~3\ $ (GND)))
-- \FSM|Add2~5\ = CARRY((\FSM|rd_addr_RAM\(2)) # (!\FSM|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|rd_addr_RAM\(2),
	datad => VCC,
	cin => \FSM|Add2~3\,
	combout => \FSM|Add2~4_combout\,
	cout => \FSM|Add2~5\);

-- Location: LCCOMB_X30_Y21_N6
\FSM|Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add2~6_combout\ = (\FSM|rd_addr_RAM\(3) & (\FSM|Add2~5\ & VCC)) # (!\FSM|rd_addr_RAM\(3) & (!\FSM|Add2~5\))
-- \FSM|Add2~7\ = CARRY((!\FSM|rd_addr_RAM\(3) & !\FSM|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|rd_addr_RAM\(3),
	datad => VCC,
	cin => \FSM|Add2~5\,
	combout => \FSM|Add2~6_combout\,
	cout => \FSM|Add2~7\);

-- Location: LCCOMB_X30_Y21_N20
\FSM|Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux20~1_combout\ = (\FSM|Mux30~1_combout\ & (!\FSM|wr_addr_RAM[2]~5_combout\ & ((\FSM|Add2~6_combout\)))) # (!\FSM|Mux30~1_combout\ & ((\FSM|Mux20~0_combout\) # ((!\FSM|wr_addr_RAM[2]~5_combout\ & \FSM|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Mux30~1_combout\,
	datab => \FSM|wr_addr_RAM[2]~5_combout\,
	datac => \FSM|Mux20~0_combout\,
	datad => \FSM|Add2~6_combout\,
	combout => \FSM|Mux20~1_combout\);

-- Location: FF_X30_Y21_N21
\FSM|rd_addr_RAM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux20~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|rd_addr_RAM\(3));

-- Location: FF_X27_Y21_N17
\W_block|ram2|mem_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr_RAM\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(8));

-- Location: LCCOMB_X25_Y18_N22
\main_counter|cnt[5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main_counter|cnt[5]~20_combout\ = (\main_counter|cnt\(5) & (!\main_counter|cnt[4]~19\)) # (!\main_counter|cnt\(5) & ((\main_counter|cnt[4]~19\) # (GND)))
-- \main_counter|cnt[5]~21\ = CARRY((!\main_counter|cnt[4]~19\) # (!\main_counter|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(5),
	datad => VCC,
	cin => \main_counter|cnt[4]~19\,
	combout => \main_counter|cnt[5]~20_combout\,
	cout => \main_counter|cnt[5]~21\);

-- Location: FF_X25_Y18_N23
\main_counter|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_counter|cnt[5]~20_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sclr => \main_counter|ALT_INV_STATE~q\,
	ena => \main_counter|cnt[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_counter|cnt\(5));

-- Location: LCCOMB_X25_Y20_N26
\FSM|Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux27~0_combout\ = (\FSM|STATE\(0) & ((\FSM|computation_cycle\(3)) # ((\FSM|Equal0~1_combout\ & \main_counter|cnt\(5))))) # (!\FSM|STATE\(0) & (((\main_counter|cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Equal0~1_combout\,
	datab => \main_counter|cnt\(5),
	datac => \FSM|STATE\(0),
	datad => \FSM|computation_cycle\(3),
	combout => \FSM|Mux27~0_combout\);

-- Location: LCCOMB_X29_Y21_N16
\FSM|Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add3~6_combout\ = (\FSM|wr_addr_RAM\(3) & (\FSM|Add3~5\ & VCC)) # (!\FSM|wr_addr_RAM\(3) & (!\FSM|Add3~5\))
-- \FSM|Add3~7\ = CARRY((!\FSM|wr_addr_RAM\(3) & !\FSM|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|wr_addr_RAM\(3),
	datad => VCC,
	cin => \FSM|Add3~5\,
	combout => \FSM|Add3~6_combout\,
	cout => \FSM|Add3~7\);

-- Location: LCCOMB_X29_Y21_N2
\FSM|Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux27~1_combout\ = (\FSM|wr_addr_RAM[2]~5_combout\ & (!\FSM|Mux30~1_combout\ & (\FSM|Mux27~0_combout\))) # (!\FSM|wr_addr_RAM[2]~5_combout\ & ((\FSM|Add3~6_combout\) # ((!\FSM|Mux30~1_combout\ & \FSM|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|wr_addr_RAM[2]~5_combout\,
	datab => \FSM|Mux30~1_combout\,
	datac => \FSM|Mux27~0_combout\,
	datad => \FSM|Add3~6_combout\,
	combout => \FSM|Mux27~1_combout\);

-- Location: FF_X29_Y21_N3
\FSM|wr_addr_RAM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux27~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|wr_addr_RAM\(3));

-- Location: FF_X27_Y21_N19
\W_block|ram2|mem_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|wr_addr_RAM\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(7));

-- Location: LCCOMB_X27_Y21_N16
\W_block|ram2|mem~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem~1_combout\ = (\W_block|ram2|mem_rtl_0_bypass\(6) & (\W_block|ram2|mem_rtl_0_bypass\(5) & (\W_block|ram2|mem_rtl_0_bypass\(8) $ (!\W_block|ram2|mem_rtl_0_bypass\(7))))) # (!\W_block|ram2|mem_rtl_0_bypass\(6) & 
-- (!\W_block|ram2|mem_rtl_0_bypass\(5) & (\W_block|ram2|mem_rtl_0_bypass\(8) $ (!\W_block|ram2|mem_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram2|mem_rtl_0_bypass\(6),
	datab => \W_block|ram2|mem_rtl_0_bypass\(5),
	datac => \W_block|ram2|mem_rtl_0_bypass\(8),
	datad => \W_block|ram2|mem_rtl_0_bypass\(7),
	combout => \W_block|ram2|mem~1_combout\);

-- Location: LCCOMB_X25_Y18_N24
\main_counter|cnt[6]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main_counter|cnt[6]~22_combout\ = (\main_counter|cnt\(6) & (\main_counter|cnt[5]~21\ $ (GND))) # (!\main_counter|cnt\(6) & (!\main_counter|cnt[5]~21\ & VCC))
-- \main_counter|cnt[6]~23\ = CARRY((\main_counter|cnt\(6) & !\main_counter|cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_counter|cnt\(6),
	datad => VCC,
	cin => \main_counter|cnt[5]~21\,
	combout => \main_counter|cnt[6]~22_combout\,
	cout => \main_counter|cnt[6]~23\);

-- Location: FF_X25_Y18_N25
\main_counter|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_counter|cnt[6]~22_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sclr => \main_counter|ALT_INV_STATE~q\,
	ena => \main_counter|cnt[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_counter|cnt\(6));

-- Location: LCCOMB_X25_Y18_N26
\main_counter|cnt[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main_counter|cnt[7]~24_combout\ = (\main_counter|cnt\(7) & (!\main_counter|cnt[6]~23\)) # (!\main_counter|cnt\(7) & ((\main_counter|cnt[6]~23\) # (GND)))
-- \main_counter|cnt[7]~25\ = CARRY((!\main_counter|cnt[6]~23\) # (!\main_counter|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(7),
	datad => VCC,
	cin => \main_counter|cnt[6]~23\,
	combout => \main_counter|cnt[7]~24_combout\,
	cout => \main_counter|cnt[7]~25\);

-- Location: FF_X25_Y18_N27
\main_counter|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_counter|cnt[7]~24_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sclr => \main_counter|ALT_INV_STATE~q\,
	ena => \main_counter|cnt[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_counter|cnt\(7));

-- Location: LCCOMB_X27_Y17_N30
\FSM|Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux25~0_combout\ = (\FSM|STATE\(0) & ((\FSM|computation_cycle\(5)) # ((\main_counter|cnt\(7) & \FSM|Equal0~1_combout\)))) # (!\FSM|STATE\(0) & (((\main_counter|cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle\(5),
	datab => \FSM|STATE\(0),
	datac => \main_counter|cnt\(7),
	datad => \FSM|Equal0~1_combout\,
	combout => \FSM|Mux25~0_combout\);

-- Location: LCCOMB_X27_Y17_N22
\FSM|Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux26~0_combout\ = (\FSM|STATE\(0) & ((\FSM|computation_cycle\(4)) # ((\FSM|Equal0~1_combout\ & \main_counter|cnt\(6))))) # (!\FSM|STATE\(0) & (((\main_counter|cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Equal0~1_combout\,
	datab => \FSM|STATE\(0),
	datac => \FSM|computation_cycle\(4),
	datad => \main_counter|cnt\(6),
	combout => \FSM|Mux26~0_combout\);

-- Location: LCCOMB_X29_Y21_N18
\FSM|Add3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add3~8_combout\ = (\FSM|wr_addr_RAM\(4) & ((GND) # (!\FSM|Add3~7\))) # (!\FSM|wr_addr_RAM\(4) & (\FSM|Add3~7\ $ (GND)))
-- \FSM|Add3~9\ = CARRY((\FSM|wr_addr_RAM\(4)) # (!\FSM|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|wr_addr_RAM\(4),
	datad => VCC,
	cin => \FSM|Add3~7\,
	combout => \FSM|Add3~8_combout\,
	cout => \FSM|Add3~9\);

-- Location: LCCOMB_X29_Y21_N0
\FSM|Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux26~1_combout\ = (\FSM|wr_addr_RAM[2]~5_combout\ & (!\FSM|Mux30~1_combout\ & (\FSM|Mux26~0_combout\))) # (!\FSM|wr_addr_RAM[2]~5_combout\ & ((\FSM|Add3~8_combout\) # ((!\FSM|Mux30~1_combout\ & \FSM|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|wr_addr_RAM[2]~5_combout\,
	datab => \FSM|Mux30~1_combout\,
	datac => \FSM|Mux26~0_combout\,
	datad => \FSM|Add3~8_combout\,
	combout => \FSM|Mux26~1_combout\);

-- Location: FF_X29_Y21_N1
\FSM|wr_addr_RAM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux26~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|wr_addr_RAM\(4));

-- Location: LCCOMB_X29_Y21_N20
\FSM|Add3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add3~10_combout\ = (\FSM|wr_addr_RAM\(5) & (\FSM|Add3~9\ & VCC)) # (!\FSM|wr_addr_RAM\(5) & (!\FSM|Add3~9\))
-- \FSM|Add3~11\ = CARRY((!\FSM|wr_addr_RAM\(5) & !\FSM|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|wr_addr_RAM\(5),
	datad => VCC,
	cin => \FSM|Add3~9\,
	combout => \FSM|Add3~10_combout\,
	cout => \FSM|Add3~11\);

-- Location: LCCOMB_X29_Y21_N4
\FSM|Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux25~1_combout\ = (\FSM|wr_addr_RAM[2]~5_combout\ & (!\FSM|Mux30~1_combout\ & (\FSM|Mux25~0_combout\))) # (!\FSM|wr_addr_RAM[2]~5_combout\ & ((\FSM|Add3~10_combout\) # ((!\FSM|Mux30~1_combout\ & \FSM|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|wr_addr_RAM[2]~5_combout\,
	datab => \FSM|Mux30~1_combout\,
	datac => \FSM|Mux25~0_combout\,
	datad => \FSM|Add3~10_combout\,
	combout => \FSM|Mux25~1_combout\);

-- Location: FF_X29_Y21_N5
\FSM|wr_addr_RAM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux25~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|wr_addr_RAM\(5));

-- Location: LCCOMB_X27_Y21_N14
\W_block|ram2|mem_rtl_0_bypass[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem_rtl_0_bypass[11]~feeder_combout\ = \FSM|wr_addr_RAM\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|wr_addr_RAM\(5),
	combout => \W_block|ram2|mem_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X27_Y21_N15
\W_block|ram2|mem_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram2|mem_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(11));

-- Location: LCCOMB_X26_Y17_N14
\FSM|Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux19~0_combout\ = (\FSM|STATE\(0) & ((\FSM|Equal0~1_combout\ & ((\main_counter|cnt\(6)))) # (!\FSM|Equal0~1_combout\ & (\FSM|Add1~8_combout\)))) # (!\FSM|STATE\(0) & (((\main_counter|cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(0),
	datab => \FSM|Add1~8_combout\,
	datac => \main_counter|cnt\(6),
	datad => \FSM|Equal0~1_combout\,
	combout => \FSM|Mux19~0_combout\);

-- Location: LCCOMB_X30_Y21_N8
\FSM|Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add2~8_combout\ = (\FSM|rd_addr_RAM\(4) & ((GND) # (!\FSM|Add2~7\))) # (!\FSM|rd_addr_RAM\(4) & (\FSM|Add2~7\ $ (GND)))
-- \FSM|Add2~9\ = CARRY((\FSM|rd_addr_RAM\(4)) # (!\FSM|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|rd_addr_RAM\(4),
	datad => VCC,
	cin => \FSM|Add2~7\,
	combout => \FSM|Add2~8_combout\,
	cout => \FSM|Add2~9\);

-- Location: LCCOMB_X30_Y21_N18
\FSM|Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux19~1_combout\ = (\FSM|Mux30~1_combout\ & (!\FSM|wr_addr_RAM[2]~5_combout\ & ((\FSM|Add2~8_combout\)))) # (!\FSM|Mux30~1_combout\ & ((\FSM|Mux19~0_combout\) # ((!\FSM|wr_addr_RAM[2]~5_combout\ & \FSM|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Mux30~1_combout\,
	datab => \FSM|wr_addr_RAM[2]~5_combout\,
	datac => \FSM|Mux19~0_combout\,
	datad => \FSM|Add2~8_combout\,
	combout => \FSM|Mux19~1_combout\);

-- Location: FF_X30_Y21_N19
\FSM|rd_addr_RAM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux19~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|rd_addr_RAM\(4));

-- Location: FF_X27_Y21_N27
\W_block|ram2|mem_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr_RAM\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(10));

-- Location: FF_X27_Y21_N29
\W_block|ram2|mem_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|wr_addr_RAM\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(9));

-- Location: LCCOMB_X27_Y21_N26
\W_block|ram2|mem~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem~2_combout\ = (\W_block|ram2|mem_rtl_0_bypass\(12) & (\W_block|ram2|mem_rtl_0_bypass\(11) & (\W_block|ram2|mem_rtl_0_bypass\(10) $ (!\W_block|ram2|mem_rtl_0_bypass\(9))))) # (!\W_block|ram2|mem_rtl_0_bypass\(12) & 
-- (!\W_block|ram2|mem_rtl_0_bypass\(11) & (\W_block|ram2|mem_rtl_0_bypass\(10) $ (!\W_block|ram2|mem_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram2|mem_rtl_0_bypass\(12),
	datab => \W_block|ram2|mem_rtl_0_bypass\(11),
	datac => \W_block|ram2|mem_rtl_0_bypass\(10),
	datad => \W_block|ram2|mem_rtl_0_bypass\(9),
	combout => \W_block|ram2|mem~2_combout\);

-- Location: FF_X30_Y21_N9
\W_block|ram2|mem_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|wr_addr_RAM\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(1));

-- Location: LCCOMB_X27_Y17_N24
\FSM|Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux23~0_combout\ = (\FSM|STATE\(0) & ((\FSM|Equal0~1_combout\ & (\main_counter|cnt\(2))) # (!\FSM|Equal0~1_combout\ & ((\FSM|Add1~0_combout\))))) # (!\FSM|STATE\(0) & (\main_counter|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(2),
	datab => \FSM|STATE\(0),
	datac => \FSM|Add1~0_combout\,
	datad => \FSM|Equal0~1_combout\,
	combout => \FSM|Mux23~0_combout\);

-- Location: LCCOMB_X30_Y21_N30
\FSM|Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux23~1_combout\ = (\FSM|Mux30~1_combout\ & (!\FSM|wr_addr_RAM[2]~5_combout\ & ((\FSM|Add2~0_combout\)))) # (!\FSM|Mux30~1_combout\ & ((\FSM|Mux23~0_combout\) # ((!\FSM|wr_addr_RAM[2]~5_combout\ & \FSM|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Mux30~1_combout\,
	datab => \FSM|wr_addr_RAM[2]~5_combout\,
	datac => \FSM|Mux23~0_combout\,
	datad => \FSM|Add2~0_combout\,
	combout => \FSM|Mux23~1_combout\);

-- Location: FF_X30_Y21_N31
\FSM|rd_addr_RAM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux23~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|rd_addr_RAM\(0));

-- Location: FF_X30_Y21_N15
\W_block|ram2|mem_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr_RAM\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(2));

-- Location: LCCOMB_X29_Y17_N2
\FSM|Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux22~0_combout\ = (\FSM|STATE\(0) & ((\FSM|Equal0~1_combout\ & ((\main_counter|cnt\(3)))) # (!\FSM|Equal0~1_combout\ & (\FSM|Add1~2_combout\)))) # (!\FSM|STATE\(0) & (((\main_counter|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Add1~2_combout\,
	datab => \FSM|STATE\(0),
	datac => \main_counter|cnt\(3),
	datad => \FSM|Equal0~1_combout\,
	combout => \FSM|Mux22~0_combout\);

-- Location: LCCOMB_X30_Y21_N26
\FSM|Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux22~1_combout\ = (\FSM|Mux30~1_combout\ & (!\FSM|wr_addr_RAM[2]~5_combout\ & ((\FSM|Add2~2_combout\)))) # (!\FSM|Mux30~1_combout\ & ((\FSM|Mux22~0_combout\) # ((!\FSM|wr_addr_RAM[2]~5_combout\ & \FSM|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Mux30~1_combout\,
	datab => \FSM|wr_addr_RAM[2]~5_combout\,
	datac => \FSM|Mux22~0_combout\,
	datad => \FSM|Add2~2_combout\,
	combout => \FSM|Mux22~1_combout\);

-- Location: FF_X30_Y21_N27
\FSM|rd_addr_RAM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux22~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|rd_addr_RAM\(1));

-- Location: FF_X30_Y21_N29
\W_block|ram2|mem_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr_RAM\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(4));

-- Location: LCCOMB_X30_Y21_N14
\W_block|ram2|mem~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem~0_combout\ = (\W_block|ram2|mem_rtl_0_bypass\(3) & (\W_block|ram2|mem_rtl_0_bypass\(4) & (\W_block|ram2|mem_rtl_0_bypass\(1) $ (!\W_block|ram2|mem_rtl_0_bypass\(2))))) # (!\W_block|ram2|mem_rtl_0_bypass\(3) & 
-- (!\W_block|ram2|mem_rtl_0_bypass\(4) & (\W_block|ram2|mem_rtl_0_bypass\(1) $ (!\W_block|ram2|mem_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram2|mem_rtl_0_bypass\(3),
	datab => \W_block|ram2|mem_rtl_0_bypass\(1),
	datac => \W_block|ram2|mem_rtl_0_bypass\(2),
	datad => \W_block|ram2|mem_rtl_0_bypass\(4),
	combout => \W_block|ram2|mem~0_combout\);

-- Location: LCCOMB_X27_Y21_N2
\W_block|ram2|mem~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem~4_combout\ = (\W_block|ram2|mem~3_combout\ & (\W_block|ram2|mem~1_combout\ & (\W_block|ram2|mem~2_combout\ & \W_block|ram2|mem~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram2|mem~3_combout\,
	datab => \W_block|ram2|mem~1_combout\,
	datac => \W_block|ram2|mem~2_combout\,
	datad => \W_block|ram2|mem~0_combout\,
	combout => \W_block|ram2|mem~4_combout\);

-- Location: LCCOMB_X26_Y20_N30
\V_block|q_plus_add~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|q_plus_add~0_combout\ = (\SDVM_q_Vec|vec_out_plus[3]~5_combout\ & (\FSM|en_d~0_combout\ & (\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & !\FSM|en_shift[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_plus[3]~5_combout\,
	datab => \FSM|en_d~0_combout\,
	datac => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datad => \FSM|en_shift[1]~0_combout\,
	combout => \V_block|q_plus_add~0_combout\);

-- Location: FF_X26_Y20_N31
\V_block|q_plus_add[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|q_plus_add~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_block|q_plus_add\(3));

-- Location: LCCOMB_X26_Y20_N28
\V_block|q_minus_add~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|q_minus_add~0_combout\ = (\SDVM_q_Vec|vec_out_minus[3]~5_combout\ & (!\FSM|en_shift[1]~0_combout\ & (\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & \FSM|en_d~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_minus[3]~5_combout\,
	datab => \FSM|en_shift[1]~0_combout\,
	datac => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datad => \FSM|en_d~0_combout\,
	combout => \V_block|q_minus_add~0_combout\);

-- Location: FF_X26_Y20_N29
\V_block|q_minus_add[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|q_minus_add~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_block|q_minus_add\(3));

-- Location: LCCOMB_X26_Y20_N4
\V_block|adder1|adder_chain[3].Block|FA1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[3].Block|FA1|Add0~0_combout\ = \V_block|q_plus_add\(3) $ (\V_block|q_minus_add\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_block|q_plus_add\(3),
	datad => \V_block|q_minus_add\(3),
	combout => \V_block|adder1|adder_chain[3].Block|FA1|Add0~0_combout\);

-- Location: LCCOMB_X23_Y21_N8
\W_block|ram1|mem_rtl_0_bypass[22]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \W_block|ram1|mem_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X23_Y21_N9
\W_block|ram1|mem_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram1|mem_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(22));

-- Location: LCCOMB_X25_Y20_N2
\FSM|rd_addr[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|rd_addr[0]~0_combout\ = (!\FSM|STATE\(0) & (!\FSM|always1~0_combout\ & (!\FSM|STATE\(2) & !\FSM|STATE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(0),
	datab => \FSM|always1~0_combout\,
	datac => \FSM|STATE\(2),
	datad => \FSM|STATE\(1),
	combout => \FSM|rd_addr[0]~0_combout\);

-- Location: LCCOMB_X26_Y19_N0
\FSM|rd_addr[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|rd_addr[0]~1_combout\ = (!\asyn_reset~input_o\ & ((\FSM|rd_addr[0]~0_combout\ & ((\main_counter|cnt\(2)))) # (!\FSM|rd_addr[0]~0_combout\ & (\FSM|computation_cycle\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle\(0),
	datab => \main_counter|cnt\(2),
	datac => \asyn_reset~input_o\,
	datad => \FSM|rd_addr[0]~0_combout\,
	combout => \FSM|rd_addr[0]~1_combout\);

-- Location: LCCOMB_X26_Y18_N24
\CA_reg|ram4|mem_rtl_0_bypass[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem_rtl_0_bypass[2]~feeder_combout\ = \FSM|rd_addr[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|rd_addr[0]~1_combout\,
	combout => \CA_reg|ram4|mem_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X26_Y18_N25
\CA_reg|ram4|mem_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram4|mem_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(2));

-- Location: LCCOMB_X26_Y19_N10
\FSM|rd_addr[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|rd_addr[1]~2_combout\ = (!\asyn_reset~input_o\ & ((\FSM|rd_addr[0]~0_combout\ & ((\main_counter|cnt\(3)))) # (!\FSM|rd_addr[0]~0_combout\ & (\FSM|computation_cycle\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle\(1),
	datab => \asyn_reset~input_o\,
	datac => \main_counter|cnt\(3),
	datad => \FSM|rd_addr[0]~0_combout\,
	combout => \FSM|rd_addr[1]~2_combout\);

-- Location: FF_X26_Y18_N19
\CA_reg|ram4|mem_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(4));

-- Location: LCCOMB_X26_Y18_N0
\CA_reg|ram4|mem_rtl_0_bypass[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem_rtl_0_bypass[1]~feeder_combout\ = \main_counter|cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(2),
	combout => \CA_reg|ram4|mem_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X26_Y18_N1
\CA_reg|ram4|mem_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram4|mem_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(1));

-- Location: LCCOMB_X26_Y18_N18
\CA_reg|ram4|mem~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem~0_combout\ = (\CA_reg|ram4|mem_rtl_0_bypass\(3) & (\CA_reg|ram4|mem_rtl_0_bypass\(4) & (\CA_reg|ram4|mem_rtl_0_bypass\(2) $ (!\CA_reg|ram4|mem_rtl_0_bypass\(1))))) # (!\CA_reg|ram4|mem_rtl_0_bypass\(3) & 
-- (!\CA_reg|ram4|mem_rtl_0_bypass\(4) & (\CA_reg|ram4|mem_rtl_0_bypass\(2) $ (!\CA_reg|ram4|mem_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram4|mem_rtl_0_bypass\(3),
	datab => \CA_reg|ram4|mem_rtl_0_bypass\(2),
	datac => \CA_reg|ram4|mem_rtl_0_bypass\(4),
	datad => \CA_reg|ram4|mem_rtl_0_bypass\(1),
	combout => \CA_reg|ram4|mem~0_combout\);

-- Location: LCCOMB_X26_Y18_N8
\FSM|rd_addr[4]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|rd_addr[4]~5_combout\ = (!\asyn_reset~input_o\ & ((\FSM|rd_addr[0]~0_combout\ & ((\main_counter|cnt\(6)))) # (!\FSM|rd_addr[0]~0_combout\ & (\FSM|computation_cycle\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle\(4),
	datab => \main_counter|cnt\(6),
	datac => \asyn_reset~input_o\,
	datad => \FSM|rd_addr[0]~0_combout\,
	combout => \FSM|rd_addr[4]~5_combout\);

-- Location: FF_X26_Y18_N9
\CA_reg|ram4|mem_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|rd_addr[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(10));

-- Location: FF_X26_Y18_N15
\CA_reg|ram4|mem_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[5]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(12));

-- Location: FF_X26_Y18_N29
\CA_reg|ram4|mem_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \main_counter|cnt\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(11));

-- Location: LCCOMB_X26_Y18_N14
\CA_reg|ram4|mem~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem~2_combout\ = (\CA_reg|ram4|mem_rtl_0_bypass\(9) & (\CA_reg|ram4|mem_rtl_0_bypass\(10) & (\CA_reg|ram4|mem_rtl_0_bypass\(12) $ (!\CA_reg|ram4|mem_rtl_0_bypass\(11))))) # (!\CA_reg|ram4|mem_rtl_0_bypass\(9) & 
-- (!\CA_reg|ram4|mem_rtl_0_bypass\(10) & (\CA_reg|ram4|mem_rtl_0_bypass\(12) $ (!\CA_reg|ram4|mem_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram4|mem_rtl_0_bypass\(9),
	datab => \CA_reg|ram4|mem_rtl_0_bypass\(10),
	datac => \CA_reg|ram4|mem_rtl_0_bypass\(12),
	datad => \CA_reg|ram4|mem_rtl_0_bypass\(11),
	combout => \CA_reg|ram4|mem~2_combout\);

-- Location: FF_X25_Y18_N13
\main_counter|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_counter|cnt[0]~9_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sclr => \main_counter|ALT_INV_STATE~q\,
	ena => \main_counter|cnt[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_counter|cnt\(0));

-- Location: LCCOMB_X27_Y19_N16
\CA_reg|we_four~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|we_four~0_combout\ = (\main_counter|cnt\(1) & (\FSM|WideOr0~0_combout\ & (\CA_reg|always0~0_combout\ & \main_counter|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(1),
	datab => \FSM|WideOr0~0_combout\,
	datac => \CA_reg|always0~0_combout\,
	datad => \main_counter|cnt\(0),
	combout => \CA_reg|we_four~0_combout\);

-- Location: LCCOMB_X27_Y19_N2
\CA_reg|ram4|mem_rtl_0_bypass[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem_rtl_0_bypass[0]~feeder_combout\ = \CA_reg|we_four~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CA_reg|we_four~0_combout\,
	combout => \CA_reg|ram4|mem_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X27_Y19_N3
\CA_reg|ram4|mem_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram4|mem_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(0));

-- Location: LCCOMB_X25_Y18_N28
\main_counter|cnt[8]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main_counter|cnt[8]~26_combout\ = \main_counter|cnt[7]~25\ $ (!\main_counter|cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(8),
	cin => \main_counter|cnt[7]~25\,
	combout => \main_counter|cnt[8]~26_combout\);

-- Location: FF_X25_Y18_N29
\main_counter|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_counter|cnt[8]~26_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sclr => \main_counter|ALT_INV_STATE~q\,
	ena => \main_counter|cnt[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_counter|cnt\(8));

-- Location: LCCOMB_X26_Y19_N24
\FSM|rd_addr[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|rd_addr[6]~7_combout\ = (!\asyn_reset~input_o\ & ((\FSM|rd_addr[0]~0_combout\ & ((\main_counter|cnt\(8)))) # (!\FSM|rd_addr[0]~0_combout\ & (\FSM|computation_cycle\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle\(6),
	datab => \main_counter|cnt\(8),
	datac => \asyn_reset~input_o\,
	datad => \FSM|rd_addr[0]~0_combout\,
	combout => \FSM|rd_addr[6]~7_combout\);

-- Location: FF_X27_Y19_N19
\CA_reg|ram4|mem_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[6]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(14));

-- Location: LCCOMB_X27_Y19_N24
\CA_reg|ram4|mem_rtl_0_bypass[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem_rtl_0_bypass[13]~feeder_combout\ = \main_counter|cnt\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(8),
	combout => \CA_reg|ram4|mem_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X27_Y19_N25
\CA_reg|ram4|mem_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram4|mem_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(13));

-- Location: LCCOMB_X27_Y19_N18
\CA_reg|ram4|mem~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem~3_combout\ = (\CA_reg|ram4|mem_rtl_0_bypass\(0) & (\CA_reg|ram4|mem_rtl_0_bypass\(14) $ (!\CA_reg|ram4|mem_rtl_0_bypass\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CA_reg|ram4|mem_rtl_0_bypass\(0),
	datac => \CA_reg|ram4|mem_rtl_0_bypass\(14),
	datad => \CA_reg|ram4|mem_rtl_0_bypass\(13),
	combout => \CA_reg|ram4|mem~3_combout\);

-- Location: LCCOMB_X26_Y18_N6
\CA_reg|ram4|mem~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem~4_combout\ = (\CA_reg|ram4|mem~1_combout\ & (\CA_reg|ram4|mem~0_combout\ & (\CA_reg|ram4|mem~2_combout\ & \CA_reg|ram4|mem~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram4|mem~1_combout\,
	datab => \CA_reg|ram4|mem~0_combout\,
	datac => \CA_reg|ram4|mem~2_combout\,
	datad => \CA_reg|ram4|mem~3_combout\,
	combout => \CA_reg|ram4|mem~4_combout\);

-- Location: FF_X27_Y20_N29
\CA_reg|ram4|mem_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \V_block|q_value[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(19));

-- Location: LCCOMB_X26_Y18_N12
\FSM|rd_addr[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|rd_addr[2]~3_combout\ = (!\asyn_reset~input_o\ & ((\FSM|rd_addr[0]~0_combout\ & ((\main_counter|cnt\(4)))) # (!\FSM|rd_addr[0]~0_combout\ & (\FSM|computation_cycle\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle\(2),
	datab => \main_counter|cnt\(4),
	datac => \asyn_reset~input_o\,
	datad => \FSM|rd_addr[0]~0_combout\,
	combout => \FSM|rd_addr[2]~3_combout\);

-- Location: LCCOMB_X25_Y20_N0
\FSM|rd_addr[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|rd_addr[3]~4_combout\ = (!\asyn_reset~input_o\ & ((\FSM|rd_addr[0]~0_combout\ & (\main_counter|cnt\(5))) # (!\FSM|rd_addr[0]~0_combout\ & ((\FSM|computation_cycle\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datab => \main_counter|cnt\(5),
	datac => \FSM|rd_addr[0]~0_combout\,
	datad => \FSM|computation_cycle\(3),
	combout => \FSM|rd_addr[3]~4_combout\);

-- Location: LCCOMB_X27_Y20_N28
\CA_reg|ram4|mem~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem~6_combout\ = (\CA_reg|ram4|mem_rtl_0_bypass\(20) & ((\CA_reg|ram4|mem~4_combout\ & (\CA_reg|ram4|mem_rtl_0_bypass\(19))) # (!\CA_reg|ram4|mem~4_combout\ & ((\CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a2\))))) # 
-- (!\CA_reg|ram4|mem_rtl_0_bypass\(20) & (((\CA_reg|ram4|mem_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram4|mem_rtl_0_bypass\(20),
	datab => \CA_reg|ram4|mem~4_combout\,
	datac => \CA_reg|ram4|mem_rtl_0_bypass\(19),
	datad => \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a2\,
	combout => \CA_reg|ram4|mem~6_combout\);

-- Location: LCCOMB_X27_Y18_N14
\vec_D|x_minus_delayed[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vec_D|x_minus_delayed[0]~feeder_combout\ = \CA_reg|ram4|mem~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CA_reg|ram4|mem~6_combout\,
	combout => \vec_D|x_minus_delayed[0]~feeder_combout\);

-- Location: FF_X27_Y18_N15
\vec_D|x_minus_delayed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vec_D|x_minus_delayed[0]~feeder_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vec_D|x_minus_delayed\(0));

-- Location: LCCOMB_X25_Y18_N4
\vec_D|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vec_D|LessThan0~0_combout\ = (!\main_counter|cnt\(4) & (!\main_counter|cnt\(3) & (!\main_counter|cnt\(5) & !\main_counter|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(4),
	datab => \main_counter|cnt\(3),
	datac => \main_counter|cnt\(5),
	datad => \main_counter|cnt\(2),
	combout => \vec_D|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y18_N10
\vec_D|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vec_D|LessThan0~1_combout\ = (!\main_counter|cnt\(6) & (!\main_counter|cnt\(7) & !\main_counter|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_counter|cnt\(6),
	datac => \main_counter|cnt\(7),
	datad => \main_counter|cnt\(8),
	combout => \vec_D|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y18_N8
\vec_D|always1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vec_D|always1~0_combout\ = (\FSM|fix_next_state~q\) # ((\vec_D|LessThan0~0_combout\ & \vec_D|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|fix_next_state~q\,
	datac => \vec_D|LessThan0~0_combout\,
	datad => \vec_D|LessThan0~1_combout\,
	combout => \vec_D|always1~0_combout\);

-- Location: LCCOMB_X27_Y18_N10
\SDVM_q_Vec|vec_out_minus[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|vec_out_minus[0]~6_combout\ = \SDVM_q_Vec|D1|out\(1) $ (((\vec_D|always1~0_combout\ & ((!\vec_D|x_minus_delayed\(0)))) # (!\vec_D|always1~0_combout\ & (!\CA_reg|ram4|mem~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram4|mem~6_combout\,
	datab => \vec_D|x_minus_delayed\(0),
	datac => \vec_D|always1~0_combout\,
	datad => \SDVM_q_Vec|D1|out\(1),
	combout => \SDVM_q_Vec|vec_out_minus[0]~6_combout\);

-- Location: LCCOMB_X26_Y21_N16
\V_block|q_minus_add~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|q_minus_add~3_combout\ = (\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & (\FSM|en_d~0_combout\ & (\SDVM_q_Vec|vec_out_minus[0]~6_combout\ & !\FSM|en_shift[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datab => \FSM|en_d~0_combout\,
	datac => \SDVM_q_Vec|vec_out_minus[0]~6_combout\,
	datad => \FSM|en_shift[1]~0_combout\,
	combout => \V_block|q_minus_add~3_combout\);

-- Location: FF_X26_Y21_N17
\V_block|q_minus_add[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|q_minus_add~3_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_block|q_minus_add\(0));

-- Location: LCCOMB_X24_Y18_N8
\CA_reg|ram4|mem_rtl_0_bypass[22]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram4|mem_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X24_Y18_N9
\CA_reg|ram4|mem_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram4|mem_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(22));

-- Location: FF_X24_Y18_N3
\CA_reg|ram4|mem_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \V_block|q_value[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(21));

-- Location: LCCOMB_X24_Y18_N2
\CA_reg|ram4|mem~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem~5_combout\ = (\CA_reg|ram4|mem~4_combout\ & (((\CA_reg|ram4|mem_rtl_0_bypass\(21))))) # (!\CA_reg|ram4|mem~4_combout\ & ((\CA_reg|ram4|mem_rtl_0_bypass\(22) & ((\CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a3\))) # 
-- (!\CA_reg|ram4|mem_rtl_0_bypass\(22) & (\CA_reg|ram4|mem_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram4|mem~4_combout\,
	datab => \CA_reg|ram4|mem_rtl_0_bypass\(22),
	datac => \CA_reg|ram4|mem_rtl_0_bypass\(21),
	datad => \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \CA_reg|ram4|mem~5_combout\);

-- Location: FF_X24_Y18_N29
\vec_D|x_plus_delayed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CA_reg|ram4|mem~5_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vec_D|x_plus_delayed\(0));

-- Location: LCCOMB_X24_Y18_N28
\SDVM_q_Vec|vec_out_plus[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|vec_out_plus[0]~4_combout\ = \SDVM_q_Vec|D1|out\(1) $ (((\vec_D|always1~0_combout\ & (!\vec_D|x_plus_delayed\(0))) # (!\vec_D|always1~0_combout\ & ((!\CA_reg|ram4|mem~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|D1|out\(1),
	datab => \vec_D|always1~0_combout\,
	datac => \vec_D|x_plus_delayed\(0),
	datad => \CA_reg|ram4|mem~5_combout\,
	combout => \SDVM_q_Vec|vec_out_plus[0]~4_combout\);

-- Location: LCCOMB_X26_Y21_N8
\V_block|q_plus_add~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|q_plus_add~3_combout\ = (\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & (!\FSM|en_shift[1]~0_combout\ & (\SDVM_q_Vec|vec_out_plus[0]~4_combout\ & \FSM|en_d~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datab => \FSM|en_shift[1]~0_combout\,
	datac => \SDVM_q_Vec|vec_out_plus[0]~4_combout\,
	datad => \FSM|en_d~0_combout\,
	combout => \V_block|q_plus_add~3_combout\);

-- Location: FF_X26_Y21_N9
\V_block|q_plus_add[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|q_plus_add~3_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_block|q_plus_add\(0));

-- Location: LCCOMB_X26_Y21_N10
\W_block|ram1|mem_rtl_0_bypass[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \W_block|ram1|mem_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X26_Y21_N11
\W_block|ram1|mem_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram1|mem_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(16));

-- Location: LCCOMB_X29_Y17_N16
\FSM|Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux29~0_combout\ = (\FSM|STATE\(0) & ((\FSM|computation_cycle\(1)) # ((\main_counter|cnt\(3) & \FSM|Equal0~1_combout\)))) # (!\FSM|STATE\(0) & (((\main_counter|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle\(1),
	datab => \FSM|STATE\(0),
	datac => \main_counter|cnt\(3),
	datad => \FSM|Equal0~1_combout\,
	combout => \FSM|Mux29~0_combout\);

-- Location: LCCOMB_X29_Y21_N6
\FSM|Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux29~1_combout\ = (\FSM|wr_addr_RAM[2]~5_combout\ & (!\FSM|Mux30~1_combout\ & (\FSM|Mux29~0_combout\))) # (!\FSM|wr_addr_RAM[2]~5_combout\ & ((\FSM|Add3~2_combout\) # ((!\FSM|Mux30~1_combout\ & \FSM|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|wr_addr_RAM[2]~5_combout\,
	datab => \FSM|Mux30~1_combout\,
	datac => \FSM|Mux29~0_combout\,
	datad => \FSM|Add3~2_combout\,
	combout => \FSM|Mux29~1_combout\);

-- Location: FF_X29_Y21_N7
\FSM|wr_addr_RAM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux29~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|wr_addr_RAM\(1));

-- Location: FF_X26_Y21_N19
\W_block|ram1|mem_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|wr_addr_RAM\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(3));

-- Location: FF_X26_Y21_N27
\W_block|ram1|mem_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr_RAM\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(2));

-- Location: LCCOMB_X26_Y21_N24
\W_block|ram1|mem_rtl_0_bypass[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem_rtl_0_bypass[1]~feeder_combout\ = \FSM|wr_addr_RAM\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|wr_addr_RAM\(0),
	combout => \W_block|ram1|mem_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X26_Y21_N25
\W_block|ram1|mem_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram1|mem_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(1));

-- Location: LCCOMB_X26_Y21_N26
\W_block|ram1|mem~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem~0_combout\ = (\W_block|ram1|mem_rtl_0_bypass\(4) & (\W_block|ram1|mem_rtl_0_bypass\(3) & (\W_block|ram1|mem_rtl_0_bypass\(2) $ (!\W_block|ram1|mem_rtl_0_bypass\(1))))) # (!\W_block|ram1|mem_rtl_0_bypass\(4) & 
-- (!\W_block|ram1|mem_rtl_0_bypass\(3) & (\W_block|ram1|mem_rtl_0_bypass\(2) $ (!\W_block|ram1|mem_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram1|mem_rtl_0_bypass\(4),
	datab => \W_block|ram1|mem_rtl_0_bypass\(3),
	datac => \W_block|ram1|mem_rtl_0_bypass\(2),
	datad => \W_block|ram1|mem_rtl_0_bypass\(1),
	combout => \W_block|ram1|mem~0_combout\);

-- Location: LCCOMB_X27_Y21_N20
\W_block|ram1|mem_rtl_0_bypass[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem_rtl_0_bypass[5]~feeder_combout\ = \FSM|wr_addr_RAM\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|wr_addr_RAM\(2),
	combout => \W_block|ram1|mem_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X27_Y21_N21
\W_block|ram1|mem_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram1|mem_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(5));

-- Location: FF_X27_Y21_N9
\W_block|ram1|mem_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr_RAM\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(8));

-- Location: FF_X27_Y21_N7
\W_block|ram1|mem_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|wr_addr_RAM\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(7));

-- Location: LCCOMB_X27_Y21_N8
\W_block|ram1|mem~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem~1_combout\ = (\W_block|ram1|mem_rtl_0_bypass\(6) & (\W_block|ram1|mem_rtl_0_bypass\(5) & (\W_block|ram1|mem_rtl_0_bypass\(8) $ (!\W_block|ram1|mem_rtl_0_bypass\(7))))) # (!\W_block|ram1|mem_rtl_0_bypass\(6) & 
-- (!\W_block|ram1|mem_rtl_0_bypass\(5) & (\W_block|ram1|mem_rtl_0_bypass\(8) $ (!\W_block|ram1|mem_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram1|mem_rtl_0_bypass\(6),
	datab => \W_block|ram1|mem_rtl_0_bypass\(5),
	datac => \W_block|ram1|mem_rtl_0_bypass\(8),
	datad => \W_block|ram1|mem_rtl_0_bypass\(7),
	combout => \W_block|ram1|mem~1_combout\);

-- Location: LCCOMB_X22_Y21_N24
\W_block|ram1|mem_rtl_0_bypass[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem_rtl_0_bypass[9]~feeder_combout\ = \FSM|wr_addr_RAM\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|wr_addr_RAM\(4),
	combout => \W_block|ram1|mem_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X22_Y21_N25
\W_block|ram1|mem_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram1|mem_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(9));

-- Location: LCCOMB_X27_Y17_N26
\FSM|Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux18~0_combout\ = (\FSM|Equal0~1_combout\ & (((\main_counter|cnt\(7))))) # (!\FSM|Equal0~1_combout\ & ((\FSM|STATE\(0) & (\FSM|Add1~10_combout\)) # (!\FSM|STATE\(0) & ((\main_counter|cnt\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Equal0~1_combout\,
	datab => \FSM|Add1~10_combout\,
	datac => \main_counter|cnt\(7),
	datad => \FSM|STATE\(0),
	combout => \FSM|Mux18~0_combout\);

-- Location: LCCOMB_X30_Y21_N10
\FSM|Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add2~10_combout\ = (\FSM|rd_addr_RAM\(5) & (\FSM|Add2~9\ & VCC)) # (!\FSM|rd_addr_RAM\(5) & (!\FSM|Add2~9\))
-- \FSM|Add2~11\ = CARRY((!\FSM|rd_addr_RAM\(5) & !\FSM|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|rd_addr_RAM\(5),
	datad => VCC,
	cin => \FSM|Add2~9\,
	combout => \FSM|Add2~10_combout\,
	cout => \FSM|Add2~11\);

-- Location: LCCOMB_X30_Y21_N16
\FSM|Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux18~1_combout\ = (\FSM|Mux30~1_combout\ & (!\FSM|wr_addr_RAM[2]~5_combout\ & ((\FSM|Add2~10_combout\)))) # (!\FSM|Mux30~1_combout\ & ((\FSM|Mux18~0_combout\) # ((!\FSM|wr_addr_RAM[2]~5_combout\ & \FSM|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Mux30~1_combout\,
	datab => \FSM|wr_addr_RAM[2]~5_combout\,
	datac => \FSM|Mux18~0_combout\,
	datad => \FSM|Add2~10_combout\,
	combout => \FSM|Mux18~1_combout\);

-- Location: FF_X30_Y21_N17
\FSM|rd_addr_RAM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux18~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|rd_addr_RAM\(5));

-- Location: FF_X22_Y21_N21
\W_block|ram1|mem_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr_RAM\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(12));

-- Location: LCCOMB_X22_Y21_N2
\W_block|ram1|mem_rtl_0_bypass[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem_rtl_0_bypass[11]~feeder_combout\ = \FSM|wr_addr_RAM\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|wr_addr_RAM\(5),
	combout => \W_block|ram1|mem_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X22_Y21_N3
\W_block|ram1|mem_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram1|mem_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(11));

-- Location: LCCOMB_X22_Y21_N20
\W_block|ram1|mem~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem~2_combout\ = (\W_block|ram1|mem_rtl_0_bypass\(10) & (\W_block|ram1|mem_rtl_0_bypass\(9) & (\W_block|ram1|mem_rtl_0_bypass\(12) $ (!\W_block|ram1|mem_rtl_0_bypass\(11))))) # (!\W_block|ram1|mem_rtl_0_bypass\(10) & 
-- (!\W_block|ram1|mem_rtl_0_bypass\(9) & (\W_block|ram1|mem_rtl_0_bypass\(12) $ (!\W_block|ram1|mem_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram1|mem_rtl_0_bypass\(10),
	datab => \W_block|ram1|mem_rtl_0_bypass\(9),
	datac => \W_block|ram1|mem_rtl_0_bypass\(12),
	datad => \W_block|ram1|mem_rtl_0_bypass\(11),
	combout => \W_block|ram1|mem~2_combout\);

-- Location: LCCOMB_X23_Y21_N10
\W_block|ram1|mem~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem~4_combout\ = (\W_block|ram1|mem~3_combout\ & (\W_block|ram1|mem~0_combout\ & (\W_block|ram1|mem~1_combout\ & \W_block|ram1|mem~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram1|mem~3_combout\,
	datab => \W_block|ram1|mem~0_combout\,
	datac => \W_block|ram1|mem~1_combout\,
	datad => \W_block|ram1|mem~2_combout\,
	combout => \W_block|ram1|mem~4_combout\);

-- Location: LCCOMB_X26_Y21_N14
\W_block|we_RAM~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|we_RAM~0_combout\ = \FSM|en_shift[1]~0_combout\ $ (\FSM|en_d~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|en_shift[1]~0_combout\,
	datad => \FSM|en_d~0_combout\,
	combout => \W_block|we_RAM~0_combout\);

-- Location: LCCOMB_X27_Y21_N28
\~GND\ : cycloneiv_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X29_Y21_N22
\FSM|Add3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add3~12_combout\ = \FSM|wr_addr_RAM\(6) $ (\FSM|Add3~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|wr_addr_RAM\(6),
	cin => \FSM|Add3~11\,
	combout => \FSM|Add3~12_combout\);

-- Location: LCCOMB_X29_Y20_N0
\FSM|Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux24~0_combout\ = (\FSM|STATE\(0) & ((\FSM|computation_cycle\(6)) # ((\FSM|Equal0~1_combout\ & \main_counter|cnt\(8))))) # (!\FSM|STATE\(0) & (((\main_counter|cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle\(6),
	datab => \FSM|STATE\(0),
	datac => \FSM|Equal0~1_combout\,
	datad => \main_counter|cnt\(8),
	combout => \FSM|Mux24~0_combout\);

-- Location: LCCOMB_X29_Y21_N26
\FSM|Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux24~1_combout\ = (\FSM|wr_addr_RAM[2]~5_combout\ & (!\FSM|Mux30~1_combout\ & ((\FSM|Mux24~0_combout\)))) # (!\FSM|wr_addr_RAM[2]~5_combout\ & ((\FSM|Add3~12_combout\) # ((!\FSM|Mux30~1_combout\ & \FSM|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|wr_addr_RAM[2]~5_combout\,
	datab => \FSM|Mux30~1_combout\,
	datac => \FSM|Add3~12_combout\,
	datad => \FSM|Mux24~0_combout\,
	combout => \FSM|Mux24~1_combout\);

-- Location: FF_X29_Y21_N27
\FSM|wr_addr_RAM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux24~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|wr_addr_RAM\(6));

-- Location: LCCOMB_X27_Y17_N6
\FSM|Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux21~0_combout\ = (\FSM|STATE\(0) & ((\FSM|Equal0~1_combout\ & ((\main_counter|cnt\(4)))) # (!\FSM|Equal0~1_combout\ & (\FSM|Add1~4_combout\)))) # (!\FSM|STATE\(0) & (((\main_counter|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Add1~4_combout\,
	datab => \FSM|STATE\(0),
	datac => \main_counter|cnt\(4),
	datad => \FSM|Equal0~1_combout\,
	combout => \FSM|Mux21~0_combout\);

-- Location: LCCOMB_X30_Y21_N22
\FSM|Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux21~1_combout\ = (\FSM|Mux30~1_combout\ & (((\FSM|Add2~4_combout\ & !\FSM|wr_addr_RAM[2]~5_combout\)))) # (!\FSM|Mux30~1_combout\ & ((\FSM|Mux21~0_combout\) # ((\FSM|Add2~4_combout\ & !\FSM|wr_addr_RAM[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Mux30~1_combout\,
	datab => \FSM|Mux21~0_combout\,
	datac => \FSM|Add2~4_combout\,
	datad => \FSM|wr_addr_RAM[2]~5_combout\,
	combout => \FSM|Mux21~1_combout\);

-- Location: FF_X30_Y21_N23
\FSM|rd_addr_RAM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux21~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|rd_addr_RAM\(2));

-- Location: LCCOMB_X30_Y21_N12
\FSM|Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add2~12_combout\ = \FSM|Add2~11\ $ (\FSM|rd_addr_RAM\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FSM|rd_addr_RAM\(6),
	cin => \FSM|Add2~11\,
	combout => \FSM|Add2~12_combout\);

-- Location: LCCOMB_X25_Y17_N16
\FSM|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add0~2_combout\ = (\main_counter|cnt\(3) & (\FSM|Add0~1\ & VCC)) # (!\main_counter|cnt\(3) & (!\FSM|Add0~1\))
-- \FSM|Add0~3\ = CARRY((!\main_counter|cnt\(3) & !\FSM|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_counter|cnt\(3),
	datad => VCC,
	cin => \FSM|Add0~1\,
	combout => \FSM|Add0~2_combout\,
	cout => \FSM|Add0~3\);

-- Location: LCCOMB_X25_Y17_N26
\FSM|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add0~12_combout\ = \FSM|Add0~11\ $ (\main_counter|cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(8),
	cin => \FSM|Add0~11\,
	combout => \FSM|Add0~12_combout\);

-- Location: LCCOMB_X25_Y17_N30
\FSM|computation_cycle[6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[6]~1_combout\ = (\FSM|STATE\(1) & (((\FSM|Add0~12_combout\)))) # (!\FSM|STATE\(1) & (\main_counter|cnt\(8) & ((!\FSM|always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(8),
	datab => \FSM|STATE\(1),
	datac => \FSM|Add0~12_combout\,
	datad => \FSM|always1~0_combout\,
	combout => \FSM|computation_cycle[6]~1_combout\);

-- Location: LCCOMB_X26_Y17_N24
\FSM|computation_cycle[6]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[6]~2_combout\ = (\FSM|computation_cycle[1]~0_combout\ & (((\FSM|Add1~12_combout\)))) # (!\FSM|computation_cycle[1]~0_combout\ & (\FSM|computation_cycle[6]~1_combout\ & ((!\FSM|wr_addr_RAM[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[1]~0_combout\,
	datab => \FSM|computation_cycle[6]~1_combout\,
	datac => \FSM|Add1~12_combout\,
	datad => \FSM|wr_addr_RAM[2]~4_combout\,
	combout => \FSM|computation_cycle[6]~2_combout\);

-- Location: LCCOMB_X24_Y20_N0
\FSM|computation_cycle[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[6]~7_combout\ = (\FSM|computation_cycle[1]~6_combout\ & (((\FSM|computation_cycle\(6))))) # (!\FSM|computation_cycle[1]~6_combout\ & ((\FSM|computation_cycle[6]~2_combout\) # ((\FSM|computation_cycle[6]~3_combout\ & 
-- \FSM|computation_cycle\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[6]~3_combout\,
	datab => \FSM|computation_cycle[6]~2_combout\,
	datac => \FSM|computation_cycle\(6),
	datad => \FSM|computation_cycle[1]~6_combout\,
	combout => \FSM|computation_cycle[6]~7_combout\);

-- Location: FF_X24_Y20_N1
\FSM|computation_cycle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|computation_cycle[6]~7_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|computation_cycle\(6));

-- Location: LCCOMB_X27_Y17_N18
\FSM|Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add1~10_combout\ = (\FSM|computation_cycle\(5) & (\FSM|Add1~9\ & VCC)) # (!\FSM|computation_cycle\(5) & (!\FSM|Add1~9\))
-- \FSM|Add1~11\ = CARRY((!\FSM|computation_cycle\(5) & !\FSM|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|computation_cycle\(5),
	datad => VCC,
	cin => \FSM|Add1~9\,
	combout => \FSM|Add1~10_combout\,
	cout => \FSM|Add1~11\);

-- Location: LCCOMB_X27_Y17_N20
\FSM|Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add1~12_combout\ = \FSM|Add1~11\ $ (\FSM|computation_cycle\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FSM|computation_cycle\(6),
	cin => \FSM|Add1~11\,
	combout => \FSM|Add1~12_combout\);

-- Location: LCCOMB_X26_Y17_N12
\FSM|Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux17~0_combout\ = (\FSM|STATE\(0) & ((\FSM|Equal0~1_combout\ & (\main_counter|cnt\(8))) # (!\FSM|Equal0~1_combout\ & ((\FSM|Add1~12_combout\))))) # (!\FSM|STATE\(0) & (\main_counter|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(0),
	datab => \main_counter|cnt\(8),
	datac => \FSM|Add1~12_combout\,
	datad => \FSM|Equal0~1_combout\,
	combout => \FSM|Mux17~0_combout\);

-- Location: LCCOMB_X30_Y21_N24
\FSM|Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux17~1_combout\ = (\FSM|Mux30~1_combout\ & (!\FSM|wr_addr_RAM[2]~5_combout\ & (\FSM|Add2~12_combout\))) # (!\FSM|Mux30~1_combout\ & ((\FSM|Mux17~0_combout\) # ((!\FSM|wr_addr_RAM[2]~5_combout\ & \FSM|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Mux30~1_combout\,
	datab => \FSM|wr_addr_RAM[2]~5_combout\,
	datac => \FSM|Add2~12_combout\,
	datad => \FSM|Mux17~0_combout\,
	combout => \FSM|Mux17~1_combout\);

-- Location: FF_X30_Y21_N25
\FSM|rd_addr_RAM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux17~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|wr_addr_RAM[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|rd_addr_RAM\(6));

-- Location: LCCOMB_X21_Y19_N2
\CA_reg|ram4|mem_rtl_0_bypass[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram4|mem_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X21_Y19_N3
\CA_reg|ram4|mem_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram4|mem_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(16));

-- Location: FF_X21_Y19_N25
\CA_reg|ram4|mem_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|d_value_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram4|mem_rtl_0_bypass\(15));

-- Location: LCCOMB_X21_Y19_N24
\CA_reg|ram4|mem~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram4|mem~8_combout\ = (\CA_reg|ram4|mem~4_combout\ & (((\CA_reg|ram4|mem_rtl_0_bypass\(15))))) # (!\CA_reg|ram4|mem~4_combout\ & ((\CA_reg|ram4|mem_rtl_0_bypass\(16) & ((\CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # 
-- (!\CA_reg|ram4|mem_rtl_0_bypass\(16) & (\CA_reg|ram4|mem_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram4|mem~4_combout\,
	datab => \CA_reg|ram4|mem_rtl_0_bypass\(16),
	datac => \CA_reg|ram4|mem_rtl_0_bypass\(15),
	datad => \CA_reg|ram4|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \CA_reg|ram4|mem~8_combout\);

-- Location: LCCOMB_X21_Y19_N4
\W_block|d_minus_delayed~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|d_minus_delayed~3_combout\ = (\W_block|d_plus_delayed~1_combout\ & (\SDVM_d_Vec|D1|out\(1) $ (!\CA_reg|ram4|mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_d_Vec|D1|out\(1),
	datac => \W_block|d_plus_delayed~1_combout\,
	datad => \CA_reg|ram4|mem~8_combout\,
	combout => \W_block|d_minus_delayed~3_combout\);

-- Location: FF_X21_Y19_N5
\W_block|d_minus_delayed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|d_minus_delayed~3_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|d_minus_delayed\(0));

-- Location: LCCOMB_X26_Y21_N28
\W_block|ram2|mem_rtl_0_bypass[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \W_block|ram2|mem_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X26_Y21_N29
\W_block|ram2|mem_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram2|mem_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(16));

-- Location: LCCOMB_X23_Y19_N24
\CA_reg|ram3|mem_rtl_0_bypass[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram3|mem_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X23_Y19_N25
\CA_reg|ram3|mem_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram3|mem_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(18));

-- Location: FF_X24_Y19_N5
\CA_reg|ram3|mem_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|d_value_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(17));

-- Location: LCCOMB_X27_Y19_N30
\CA_reg|we_three~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|we_three~0_combout\ = (\main_counter|cnt\(1) & (\FSM|WideOr0~0_combout\ & (\CA_reg|always0~0_combout\ & !\main_counter|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(1),
	datab => \FSM|WideOr0~0_combout\,
	datac => \CA_reg|always0~0_combout\,
	datad => \main_counter|cnt\(0),
	combout => \CA_reg|we_three~0_combout\);

-- Location: LCCOMB_X24_Y19_N4
\CA_reg|ram3|mem~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem~8_combout\ = (\CA_reg|ram3|mem~4_combout\ & (((\CA_reg|ram3|mem_rtl_0_bypass\(17))))) # (!\CA_reg|ram3|mem~4_combout\ & ((\CA_reg|ram3|mem_rtl_0_bypass\(18) & ((\CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a1\))) # 
-- (!\CA_reg|ram3|mem_rtl_0_bypass\(18) & (\CA_reg|ram3|mem_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram3|mem~4_combout\,
	datab => \CA_reg|ram3|mem_rtl_0_bypass\(18),
	datac => \CA_reg|ram3|mem_rtl_0_bypass\(17),
	datad => \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a1\,
	combout => \CA_reg|ram3|mem~8_combout\);

-- Location: LCCOMB_X24_Y19_N12
\W_block|d_plus_delayed~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|d_plus_delayed~3_combout\ = (\W_block|d_plus_delayed~1_combout\ & (\SDVM_d_Vec|D1|out\(1) $ (!\CA_reg|ram3|mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDVM_d_Vec|D1|out\(1),
	datac => \CA_reg|ram3|mem~8_combout\,
	datad => \W_block|d_plus_delayed~1_combout\,
	combout => \W_block|d_plus_delayed~3_combout\);

-- Location: FF_X24_Y19_N13
\W_block|d_plus_delayed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|d_plus_delayed~3_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|d_plus_delayed\(1));

-- Location: FF_X24_Y19_N9
\CA_reg|ram3|mem_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|d_value_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(15));

-- Location: LCCOMB_X23_Y19_N14
\CA_reg|ram3|mem_rtl_0_bypass[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram3|mem_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X23_Y19_N15
\CA_reg|ram3|mem_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram3|mem_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(16));

-- Location: LCCOMB_X24_Y19_N8
\CA_reg|ram3|mem~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem~7_combout\ = (\CA_reg|ram3|mem~4_combout\ & (((\CA_reg|ram3|mem_rtl_0_bypass\(15))))) # (!\CA_reg|ram3|mem~4_combout\ & ((\CA_reg|ram3|mem_rtl_0_bypass\(16) & (\CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # 
-- (!\CA_reg|ram3|mem_rtl_0_bypass\(16) & ((\CA_reg|ram3|mem_rtl_0_bypass\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram3|mem~4_combout\,
	datab => \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \CA_reg|ram3|mem_rtl_0_bypass\(15),
	datad => \CA_reg|ram3|mem_rtl_0_bypass\(16),
	combout => \CA_reg|ram3|mem~7_combout\);

-- Location: LCCOMB_X24_Y19_N14
\W_block|d_minus_delayed~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|d_minus_delayed~1_combout\ = (\W_block|d_plus_delayed~1_combout\ & (\SDVM_d_Vec|D1|out\(1) $ (!\CA_reg|ram3|mem~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDVM_d_Vec|D1|out\(1),
	datac => \CA_reg|ram3|mem~7_combout\,
	datad => \W_block|d_plus_delayed~1_combout\,
	combout => \W_block|d_minus_delayed~1_combout\);

-- Location: FF_X24_Y19_N15
\W_block|d_minus_delayed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|d_minus_delayed~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|d_minus_delayed\(1));

-- Location: LCCOMB_X24_Y18_N26
\W_block|adder1|adder_chain[1].Block|FA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\ = \V_block|v_plus_vec[1]~3_combout\ $ (\W_block|d_plus_delayed\(1) $ (\W_block|d_minus_delayed\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_block|v_plus_vec[1]~3_combout\,
	datac => \W_block|d_plus_delayed\(1),
	datad => \W_block|d_minus_delayed\(1),
	combout => \W_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\);

-- Location: LCCOMB_X24_Y21_N6
\W_block|adder1|adder_chain[0].Block|FA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\ = (\W_block|d_plus_delayed\(0) & ((\V_block|v_plus_vec[0]~2_combout\) # (!\W_block|d_minus_delayed\(0)))) # (!\W_block|d_plus_delayed\(0) & (!\W_block|d_minus_delayed\(0) & 
-- \V_block|v_plus_vec[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|d_plus_delayed\(0),
	datab => \W_block|d_minus_delayed\(0),
	datad => \V_block|v_plus_vec[0]~2_combout\,
	combout => \W_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\);

-- Location: LCCOMB_X24_Y21_N22
\W_block|adder1|adder_chain[1].Block|FA2|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[1].Block|FA2|Add1~1_combout\ = \W_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\ $ (\W_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\ $ (((\V_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\ & 
-- !\asyn_reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\,
	datab => \asyn_reset~input_o\,
	datac => \W_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\,
	datad => \W_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\,
	combout => \W_block|adder1|adder_chain[1].Block|FA2|Add1~1_combout\);

-- Location: LCCOMB_X24_Y21_N28
\W_block|ram1|mem_rtl_0_bypass[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \W_block|ram1|mem_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X24_Y21_N29
\W_block|ram1|mem_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram1|mem_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(20));

-- Location: FF_X24_Y21_N7
\W_block|ram1|mem_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \W_block|adder1|adder_chain[1].Block|FA2|Add1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(19));

-- Location: LCCOMB_X24_Y21_N4
\W_block|adder1|adder_chain[1].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[1].Block|FA2|Add1~0_combout\ = (\W_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\ & (((\V_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\ & !\asyn_reset~input_o\)) # 
-- (!\W_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\))) # (!\W_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\ & (\V_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\ & (!\asyn_reset~input_o\ & 
-- !\W_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\,
	datab => \asyn_reset~input_o\,
	datac => \W_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\,
	datad => \W_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\,
	combout => \W_block|adder1|adder_chain[1].Block|FA2|Add1~0_combout\);

-- Location: M9K_X28_Y21_N0
\W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Divider_hd.ram0_single_clk_ram_4bit_7a415939.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "computing_w_value:W_block|single_clk_ram_4bit:ram1|altsyncram:mem_rtl_0|altsyncram_8gi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \W_block|we_RAM~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \W_block|we_RAM~0_combout\,
	portadatain => \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y21_N24
\W_block|ram1|mem~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem~6_combout\ = (\W_block|ram1|mem~4_combout\ & (((\W_block|ram1|mem_rtl_0_bypass\(19))))) # (!\W_block|ram1|mem~4_combout\ & ((\W_block|ram1|mem_rtl_0_bypass\(20) & ((\W_block|ram1|mem_rtl_0|auto_generated|ram_block1a2\))) # 
-- (!\W_block|ram1|mem_rtl_0_bypass\(20) & (\W_block|ram1|mem_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram1|mem~4_combout\,
	datab => \W_block|ram1|mem_rtl_0_bypass\(20),
	datac => \W_block|ram1|mem_rtl_0_bypass\(19),
	datad => \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a2\,
	combout => \W_block|ram1|mem~6_combout\);

-- Location: LCCOMB_X24_Y21_N20
\V_block|adder1|adder_chain[2].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[2].Block|FA2|Add1~0_combout\ = (\W_block|ram2|mem~6_combout\) # (\V_block|q_minus_add\(2) $ (\V_block|q_plus_add\(2) $ (\W_block|ram1|mem~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|q_minus_add\(2),
	datab => \V_block|q_plus_add\(2),
	datac => \W_block|ram2|mem~6_combout\,
	datad => \W_block|ram1|mem~6_combout\,
	combout => \V_block|adder1|adder_chain[2].Block|FA2|Add1~0_combout\);

-- Location: LCCOMB_X24_Y21_N30
\V_block|v_minus_vec[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_minus_vec[3]~0_combout\ = (!\asyn_reset~input_o\ & (\V_block|adder1|adder_chain[2].Block|FA2|Add1~0_combout\ & ((!\V_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\) # (!\V_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\,
	datab => \asyn_reset~input_o\,
	datac => \V_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\,
	datad => \V_block|adder1|adder_chain[2].Block|FA2|Add1~0_combout\,
	combout => \V_block|v_minus_vec[3]~0_combout\);

-- Location: LCCOMB_X27_Y18_N18
\CA_reg|ram1|mem_rtl_0_bypass[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram1|mem_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X27_Y18_N19
\CA_reg|ram1|mem_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram1|mem_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(16));

-- Location: FF_X27_Y18_N1
\CA_reg|ram1|mem_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|d_value_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(15));

-- Location: LCCOMB_X27_Y19_N22
\CA_reg|we_one~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|we_one~0_combout\ = (!\main_counter|cnt\(1) & (\FSM|WideOr0~0_combout\ & (\CA_reg|always0~0_combout\ & !\main_counter|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(1),
	datab => \FSM|WideOr0~0_combout\,
	datac => \CA_reg|always0~0_combout\,
	datad => \main_counter|cnt\(0),
	combout => \CA_reg|we_one~0_combout\);

-- Location: LCCOMB_X27_Y18_N0
\CA_reg|ram1|mem~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem~7_combout\ = (\CA_reg|ram1|mem~4_combout\ & (((\CA_reg|ram1|mem_rtl_0_bypass\(15))))) # (!\CA_reg|ram1|mem~4_combout\ & ((\CA_reg|ram1|mem_rtl_0_bypass\(16) & ((\CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # 
-- (!\CA_reg|ram1|mem_rtl_0_bypass\(16) & (\CA_reg|ram1|mem_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram1|mem~4_combout\,
	datab => \CA_reg|ram1|mem_rtl_0_bypass\(16),
	datac => \CA_reg|ram1|mem_rtl_0_bypass\(15),
	datad => \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \CA_reg|ram1|mem~7_combout\);

-- Location: LCCOMB_X22_Y19_N4
\W_block|d_minus_delayed~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|d_minus_delayed~0_combout\ = (\W_block|d_plus_delayed~1_combout\ & (\SDVM_d_Vec|D1|out\(1) $ (!\CA_reg|ram1|mem~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDVM_d_Vec|D1|out\(1),
	datac => \W_block|d_plus_delayed~1_combout\,
	datad => \CA_reg|ram1|mem~7_combout\,
	combout => \W_block|d_minus_delayed~0_combout\);

-- Location: FF_X22_Y19_N5
\W_block|d_minus_delayed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|d_minus_delayed~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|d_minus_delayed\(3));

-- Location: LCCOMB_X23_Y21_N28
\W_block|ram2|mem_rtl_0_bypass[22]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \W_block|ram2|mem_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X23_Y21_N29
\W_block|ram2|mem_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram2|mem_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(22));

-- Location: LCCOMB_X23_Y21_N26
\W_block|ram2|mem~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem~5_combout\ = (\W_block|ram2|mem_rtl_0_bypass\(22) & ((\W_block|ram2|mem~4_combout\ & (\W_block|ram2|mem_rtl_0_bypass\(21))) # (!\W_block|ram2|mem~4_combout\ & ((\W_block|ram2|mem_rtl_0|auto_generated|ram_block1a3\))))) # 
-- (!\W_block|ram2|mem_rtl_0_bypass\(22) & (\W_block|ram2|mem_rtl_0_bypass\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram2|mem_rtl_0_bypass\(21),
	datab => \W_block|ram2|mem_rtl_0_bypass\(22),
	datac => \W_block|ram2|mem~4_combout\,
	datad => \W_block|ram2|mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \W_block|ram2|mem~5_combout\);

-- Location: LCCOMB_X23_Y21_N30
\V_block|adder1|adder_chain[3].Block|FA2|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[3].Block|FA2|Add0~0_combout\ = \V_block|q_minus_add\(3) $ (\V_block|q_plus_add\(3) $ (\W_block|ram1|mem~5_combout\ $ (\W_block|ram2|mem~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|q_minus_add\(3),
	datab => \V_block|q_plus_add\(3),
	datac => \W_block|ram1|mem~5_combout\,
	datad => \W_block|ram2|mem~5_combout\,
	combout => \V_block|adder1|adder_chain[3].Block|FA2|Add0~0_combout\);

-- Location: FF_X27_Y20_N19
\CA_reg|ram2|mem_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \V_block|q_value[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(19));

-- Location: LCCOMB_X27_Y19_N28
\CA_reg|we_two~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|we_two~0_combout\ = (!\main_counter|cnt\(1) & (\FSM|WideOr0~0_combout\ & (\CA_reg|always0~0_combout\ & \main_counter|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(1),
	datab => \FSM|WideOr0~0_combout\,
	datac => \CA_reg|always0~0_combout\,
	datad => \main_counter|cnt\(0),
	combout => \CA_reg|we_two~0_combout\);

-- Location: LCCOMB_X27_Y20_N18
\CA_reg|ram2|mem~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem~6_combout\ = (\CA_reg|ram2|mem_rtl_0_bypass\(20) & ((\CA_reg|ram2|mem~4_combout\ & (\CA_reg|ram2|mem_rtl_0_bypass\(19))) # (!\CA_reg|ram2|mem~4_combout\ & ((\CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a2\))))) # 
-- (!\CA_reg|ram2|mem_rtl_0_bypass\(20) & (((\CA_reg|ram2|mem_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram2|mem_rtl_0_bypass\(20),
	datab => \CA_reg|ram2|mem~4_combout\,
	datac => \CA_reg|ram2|mem_rtl_0_bypass\(19),
	datad => \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a2\,
	combout => \CA_reg|ram2|mem~6_combout\);

-- Location: FF_X27_Y20_N21
\vec_D|x_minus_delayed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CA_reg|ram2|mem~6_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vec_D|x_minus_delayed\(2));

-- Location: LCCOMB_X27_Y20_N20
\SDVM_q_Vec|vec_out_minus[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|vec_out_minus[2]~1_combout\ = \SDVM_q_Vec|D1|out\(1) $ (((\vec_D|always1~0_combout\ & (!\vec_D|x_minus_delayed\(2))) # (!\vec_D|always1~0_combout\ & ((!\CA_reg|ram2|mem~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vec_D|always1~0_combout\,
	datab => \SDVM_q_Vec|D1|out\(1),
	datac => \vec_D|x_minus_delayed\(2),
	datad => \CA_reg|ram2|mem~6_combout\,
	combout => \SDVM_q_Vec|vec_out_minus[2]~1_combout\);

-- Location: LCCOMB_X24_Y21_N10
\V_block|q_minus_add~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|q_minus_add~1_combout\ = (!\FSM|en_shift[1]~0_combout\ & (\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & (\SDVM_q_Vec|vec_out_minus[2]~1_combout\ & \FSM|en_d~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|en_shift[1]~0_combout\,
	datab => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datac => \SDVM_q_Vec|vec_out_minus[2]~1_combout\,
	datad => \FSM|en_d~0_combout\,
	combout => \V_block|q_minus_add~1_combout\);

-- Location: FF_X24_Y21_N11
\V_block|q_minus_add[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|q_minus_add~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_block|q_minus_add\(2));

-- Location: LCCOMB_X23_Y21_N6
\V_block|adder1|adder_chain[2].Block|FA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\ = (\V_block|q_minus_add\(2) & (\V_block|q_plus_add\(2) & \W_block|ram1|mem~6_combout\)) # (!\V_block|q_minus_add\(2) & ((\V_block|q_plus_add\(2)) # (\W_block|ram1|mem~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_block|q_minus_add\(2),
	datac => \V_block|q_plus_add\(2),
	datad => \W_block|ram1|mem~6_combout\,
	combout => \V_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\);

-- Location: LCCOMB_X22_Y20_N6
\V_block|v_plus_vec[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_plus_vec[3]~0_combout\ = (!\asyn_reset~input_o\ & (\V_block|adder1|adder_chain[3].Block|FA2|Add0~0_combout\ $ (\V_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \asyn_reset~input_o\,
	datac => \V_block|adder1|adder_chain[3].Block|FA2|Add0~0_combout\,
	datad => \V_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\,
	combout => \V_block|v_plus_vec[3]~0_combout\);

-- Location: LCCOMB_X22_Y19_N16
\W_block|adder1|adder_chain[3].Block|FA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\ = \W_block|d_plus_delayed\(3) $ (\W_block|d_minus_delayed\(3) $ (\V_block|v_plus_vec[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|d_plus_delayed\(3),
	datab => \W_block|d_minus_delayed\(3),
	datad => \V_block|v_plus_vec[3]~0_combout\,
	combout => \W_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\);

-- Location: LCCOMB_X24_Y21_N18
\W_block|cin_one~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|cin_one~1_combout\ = (\FSM|en_d~0_combout\ & ((\W_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\ & (\V_block|v_minus_vec[3]~0_combout\ & \W_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\)) # 
-- (!\W_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\ & ((\V_block|v_minus_vec[3]~0_combout\) # (\W_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|en_d~0_combout\,
	datab => \W_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\,
	datac => \V_block|v_minus_vec[3]~0_combout\,
	datad => \W_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\,
	combout => \W_block|cin_one~1_combout\);

-- Location: FF_X24_Y21_N19
\W_block|cin_one[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|cin_one~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|cin_one\(0));

-- Location: LCCOMB_X25_Y21_N14
\W_block|ram2|mem~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem~8_combout\ = (\W_block|ram2|mem_rtl_0_bypass\(16) & (!\W_block|ram2|mem~4_combout\ & \W_block|ram2|mem_rtl_0|auto_generated|ram_block1a0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \W_block|ram2|mem_rtl_0_bypass\(16),
	datac => \W_block|ram2|mem~4_combout\,
	datad => \W_block|ram2|mem_rtl_0|auto_generated|ram_block1a0\,
	combout => \W_block|ram2|mem~8_combout\);

-- Location: LCCOMB_X25_Y21_N12
\V_block|adder1|adder_chain[0].Block|FA1|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\ = \V_block|q_minus_add\(0) $ (\V_block|q_plus_add\(0) $ (\W_block|ram1|mem~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_block|q_minus_add\(0),
	datac => \V_block|q_plus_add\(0),
	datad => \W_block|ram1|mem~8_combout\,
	combout => \V_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\);

-- Location: LCCOMB_X25_Y21_N18
\V_block|v_plus_vec[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_plus_vec[0]~2_combout\ = (!\asyn_reset~input_o\ & (\V_block|cin_one\(1) $ (\W_block|ram2|mem~8_combout\ $ (\V_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|cin_one\(1),
	datab => \asyn_reset~input_o\,
	datac => \W_block|ram2|mem~8_combout\,
	datad => \V_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\,
	combout => \V_block|v_plus_vec[0]~2_combout\);

-- Location: LCCOMB_X24_Y21_N2
\W_block|adder1|adder_chain[0].Block|FA1|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\ = \W_block|d_plus_delayed\(0) $ (\W_block|d_minus_delayed\(0) $ (\V_block|v_plus_vec[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|d_plus_delayed\(0),
	datab => \W_block|d_minus_delayed\(0),
	datad => \V_block|v_plus_vec[0]~2_combout\,
	combout => \W_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\);

-- Location: LCCOMB_X24_Y21_N0
\W_block|adder1|adder_chain[0].Block|FA2|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[0].Block|FA2|Add1~1_combout\ = \W_block|cin_one\(1) $ (\W_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\ $ (((!\asyn_reset~input_o\ & \V_block|cin_one\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|cin_one\(1),
	datab => \asyn_reset~input_o\,
	datac => \V_block|cin_one\(0),
	datad => \W_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\,
	combout => \W_block|adder1|adder_chain[0].Block|FA2|Add1~1_combout\);

-- Location: LCCOMB_X25_Y21_N10
\W_block|ram1|mem~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem~8_combout\ = (\W_block|ram1|mem_rtl_0_bypass\(16) & (!\W_block|ram1|mem~4_combout\ & \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \W_block|ram1|mem_rtl_0_bypass\(16),
	datac => \W_block|ram1|mem~4_combout\,
	datad => \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \W_block|ram1|mem~8_combout\);

-- Location: LCCOMB_X25_Y21_N0
\V_block|adder1|adder_chain[0].Block|FA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\ = (\V_block|q_minus_add\(0) & (\V_block|q_plus_add\(0) & \W_block|ram1|mem~8_combout\)) # (!\V_block|q_minus_add\(0) & ((\V_block|q_plus_add\(0)) # (\W_block|ram1|mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_block|q_minus_add\(0),
	datac => \V_block|q_plus_add\(0),
	datad => \W_block|ram1|mem~8_combout\,
	combout => \V_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\);

-- Location: FF_X25_Y21_N25
\W_block|ram2|mem_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \W_block|cin_one\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(17));

-- Location: LCCOMB_X25_Y21_N24
\W_block|ram2|mem~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem~7_combout\ = (\W_block|ram2|mem_rtl_0_bypass\(18) & ((\W_block|ram2|mem~4_combout\ & (\W_block|ram2|mem_rtl_0_bypass\(17))) # (!\W_block|ram2|mem~4_combout\ & ((\W_block|ram2|mem_rtl_0|auto_generated|ram_block1a1\))))) # 
-- (!\W_block|ram2|mem_rtl_0_bypass\(18) & (((\W_block|ram2|mem_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram2|mem_rtl_0_bypass\(18),
	datab => \W_block|ram2|mem~4_combout\,
	datac => \W_block|ram2|mem_rtl_0_bypass\(17),
	datad => \W_block|ram2|mem_rtl_0|auto_generated|ram_block1a1\,
	combout => \W_block|ram2|mem~7_combout\);

-- Location: FF_X27_Y19_N1
\CA_reg|ram3|mem_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[6]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(14));

-- Location: LCCOMB_X27_Y19_N10
\CA_reg|ram3|mem_rtl_0_bypass[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem_rtl_0_bypass[13]~feeder_combout\ = \main_counter|cnt\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(8),
	combout => \CA_reg|ram3|mem_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X27_Y19_N11
\CA_reg|ram3|mem_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram3|mem_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(13));

-- Location: LCCOMB_X27_Y19_N0
\CA_reg|ram3|mem~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem~3_combout\ = (\CA_reg|ram3|mem_rtl_0_bypass\(0) & (\CA_reg|ram3|mem_rtl_0_bypass\(14) $ (!\CA_reg|ram3|mem_rtl_0_bypass\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram3|mem_rtl_0_bypass\(0),
	datac => \CA_reg|ram3|mem_rtl_0_bypass\(14),
	datad => \CA_reg|ram3|mem_rtl_0_bypass\(13),
	combout => \CA_reg|ram3|mem~3_combout\);

-- Location: LCCOMB_X30_Y20_N18
\CA_reg|ram3|mem_rtl_0_bypass[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem_rtl_0_bypass[6]~feeder_combout\ = \FSM|rd_addr[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|rd_addr[2]~3_combout\,
	combout => \CA_reg|ram3|mem_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X30_Y20_N19
\CA_reg|ram3|mem_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram3|mem_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(6));

-- Location: FF_X30_Y20_N13
\CA_reg|ram3|mem_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(8));

-- Location: LCCOMB_X30_Y20_N0
\CA_reg|ram3|mem_rtl_0_bypass[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem_rtl_0_bypass[5]~feeder_combout\ = \main_counter|cnt\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(4),
	combout => \CA_reg|ram3|mem_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X30_Y20_N1
\CA_reg|ram3|mem_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram3|mem_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(5));

-- Location: LCCOMB_X30_Y20_N12
\CA_reg|ram3|mem~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem~1_combout\ = (\CA_reg|ram3|mem_rtl_0_bypass\(7) & (\CA_reg|ram3|mem_rtl_0_bypass\(8) & (\CA_reg|ram3|mem_rtl_0_bypass\(6) $ (!\CA_reg|ram3|mem_rtl_0_bypass\(5))))) # (!\CA_reg|ram3|mem_rtl_0_bypass\(7) & 
-- (!\CA_reg|ram3|mem_rtl_0_bypass\(8) & (\CA_reg|ram3|mem_rtl_0_bypass\(6) $ (!\CA_reg|ram3|mem_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram3|mem_rtl_0_bypass\(7),
	datab => \CA_reg|ram3|mem_rtl_0_bypass\(6),
	datac => \CA_reg|ram3|mem_rtl_0_bypass\(8),
	datad => \CA_reg|ram3|mem_rtl_0_bypass\(5),
	combout => \CA_reg|ram3|mem~1_combout\);

-- Location: FF_X26_Y18_N5
\CA_reg|ram3|mem_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|rd_addr[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(12));

-- Location: FF_X26_Y18_N11
\CA_reg|ram3|mem_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[4]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(10));

-- Location: LCCOMB_X26_Y18_N20
\CA_reg|ram3|mem_rtl_0_bypass[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem_rtl_0_bypass[9]~feeder_combout\ = \main_counter|cnt\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(6),
	combout => \CA_reg|ram3|mem_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X26_Y18_N21
\CA_reg|ram3|mem_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram3|mem_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(9));

-- Location: LCCOMB_X26_Y18_N10
\CA_reg|ram3|mem~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem~2_combout\ = (\CA_reg|ram3|mem_rtl_0_bypass\(11) & (\CA_reg|ram3|mem_rtl_0_bypass\(12) & (\CA_reg|ram3|mem_rtl_0_bypass\(10) $ (!\CA_reg|ram3|mem_rtl_0_bypass\(9))))) # (!\CA_reg|ram3|mem_rtl_0_bypass\(11) & 
-- (!\CA_reg|ram3|mem_rtl_0_bypass\(12) & (\CA_reg|ram3|mem_rtl_0_bypass\(10) $ (!\CA_reg|ram3|mem_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram3|mem_rtl_0_bypass\(11),
	datab => \CA_reg|ram3|mem_rtl_0_bypass\(12),
	datac => \CA_reg|ram3|mem_rtl_0_bypass\(10),
	datad => \CA_reg|ram3|mem_rtl_0_bypass\(9),
	combout => \CA_reg|ram3|mem~2_combout\);

-- Location: LCCOMB_X27_Y20_N16
\CA_reg|ram3|mem~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem~4_combout\ = (\CA_reg|ram3|mem~0_combout\ & (\CA_reg|ram3|mem~3_combout\ & (\CA_reg|ram3|mem~1_combout\ & \CA_reg|ram3|mem~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram3|mem~0_combout\,
	datab => \CA_reg|ram3|mem~3_combout\,
	datac => \CA_reg|ram3|mem~1_combout\,
	datad => \CA_reg|ram3|mem~2_combout\,
	combout => \CA_reg|ram3|mem~4_combout\);

-- Location: FF_X27_Y20_N31
\CA_reg|ram3|mem_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \V_block|q_value[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram3|mem_rtl_0_bypass\(19));

-- Location: LCCOMB_X27_Y20_N30
\CA_reg|ram3|mem~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram3|mem~6_combout\ = (\CA_reg|ram3|mem_rtl_0_bypass\(20) & ((\CA_reg|ram3|mem~4_combout\ & (\CA_reg|ram3|mem_rtl_0_bypass\(19))) # (!\CA_reg|ram3|mem~4_combout\ & ((\CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a2\))))) # 
-- (!\CA_reg|ram3|mem_rtl_0_bypass\(20) & (((\CA_reg|ram3|mem_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram3|mem_rtl_0_bypass\(20),
	datab => \CA_reg|ram3|mem~4_combout\,
	datac => \CA_reg|ram3|mem_rtl_0_bypass\(19),
	datad => \CA_reg|ram3|mem_rtl_0|auto_generated|ram_block1a2\,
	combout => \CA_reg|ram3|mem~6_combout\);

-- Location: FF_X27_Y20_N25
\vec_D|x_minus_delayed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CA_reg|ram3|mem~6_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vec_D|x_minus_delayed\(1));

-- Location: LCCOMB_X27_Y20_N24
\SDVM_q_Vec|vec_out_minus[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|vec_out_minus[1]~2_combout\ = \SDVM_q_Vec|D1|out\(1) $ (((\vec_D|always1~0_combout\ & ((!\vec_D|x_minus_delayed\(1)))) # (!\vec_D|always1~0_combout\ & (!\CA_reg|ram3|mem~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram3|mem~6_combout\,
	datab => \SDVM_q_Vec|D1|out\(1),
	datac => \vec_D|x_minus_delayed\(1),
	datad => \vec_D|always1~0_combout\,
	combout => \SDVM_q_Vec|vec_out_minus[1]~2_combout\);

-- Location: LCCOMB_X26_Y21_N0
\V_block|q_minus_add~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|q_minus_add~2_combout\ = (\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & (!\FSM|en_shift[1]~0_combout\ & (\SDVM_q_Vec|vec_out_minus[1]~2_combout\ & \FSM|en_d~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datab => \FSM|en_shift[1]~0_combout\,
	datac => \SDVM_q_Vec|vec_out_minus[1]~2_combout\,
	datad => \FSM|en_d~0_combout\,
	combout => \V_block|q_minus_add~2_combout\);

-- Location: FF_X26_Y21_N1
\V_block|q_minus_add[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|q_minus_add~2_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_block|q_minus_add\(1));

-- Location: LCCOMB_X26_Y21_N22
\W_block|ram1|mem_rtl_0_bypass[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \W_block|ram1|mem_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X26_Y21_N23
\W_block|ram1|mem_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|ram1|mem_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(18));

-- Location: FF_X24_Y21_N1
\W_block|ram1|mem_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder1|adder_chain[0].Block|FA2|Add1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(17));

-- Location: LCCOMB_X25_Y21_N20
\W_block|ram1|mem~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem~7_combout\ = (\W_block|ram1|mem~4_combout\ & (((\W_block|ram1|mem_rtl_0_bypass\(17))))) # (!\W_block|ram1|mem~4_combout\ & ((\W_block|ram1|mem_rtl_0_bypass\(18) & ((\W_block|ram1|mem_rtl_0|auto_generated|ram_block1a1\))) # 
-- (!\W_block|ram1|mem_rtl_0_bypass\(18) & (\W_block|ram1|mem_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram1|mem~4_combout\,
	datab => \W_block|ram1|mem_rtl_0_bypass\(18),
	datac => \W_block|ram1|mem_rtl_0_bypass\(17),
	datad => \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a1\,
	combout => \W_block|ram1|mem~7_combout\);

-- Location: LCCOMB_X25_Y21_N28
\V_block|adder1|adder_chain[1].Block|FA2|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[1].Block|FA2|Add0~0_combout\ = \V_block|q_plus_add\(1) $ (\W_block|ram2|mem~7_combout\ $ (\V_block|q_minus_add\(1) $ (\W_block|ram1|mem~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|q_plus_add\(1),
	datab => \W_block|ram2|mem~7_combout\,
	datac => \V_block|q_minus_add\(1),
	datad => \W_block|ram1|mem~7_combout\,
	combout => \V_block|adder1|adder_chain[1].Block|FA2|Add0~0_combout\);

-- Location: LCCOMB_X26_Y21_N4
\V_block|v_plus_vec[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_plus_vec[1]~3_combout\ = (!\asyn_reset~input_o\ & (\V_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\ $ (\V_block|adder1|adder_chain[1].Block|FA2|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datac => \V_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\,
	datad => \V_block|adder1|adder_chain[1].Block|FA2|Add0~0_combout\,
	combout => \V_block|v_plus_vec[1]~3_combout\);

-- Location: LCCOMB_X25_Y21_N26
\V_block|adder1|adder_chain[1].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[1].Block|FA2|Add1~0_combout\ = (\W_block|ram2|mem~7_combout\) # (\V_block|q_plus_add\(1) $ (\V_block|q_minus_add\(1) $ (\W_block|ram1|mem~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|q_plus_add\(1),
	datab => \W_block|ram2|mem~7_combout\,
	datac => \V_block|q_minus_add\(1),
	datad => \W_block|ram1|mem~7_combout\,
	combout => \V_block|adder1|adder_chain[1].Block|FA2|Add1~0_combout\);

-- Location: LCCOMB_X25_Y21_N2
\V_block|v_minus_vec[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_minus_vec[2]~1_combout\ = (!\asyn_reset~input_o\ & (\V_block|adder1|adder_chain[1].Block|FA2|Add1~0_combout\ & ((!\V_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\) # (!\V_block|adder1|adder_chain[1].Block|FA2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datab => \V_block|adder1|adder_chain[1].Block|FA2|Add0~0_combout\,
	datac => \V_block|adder1|adder_chain[1].Block|FA2|Add1~0_combout\,
	datad => \V_block|adder1|adder_chain[0].Block|FA1|Add1~0_combout\,
	combout => \V_block|v_minus_vec[2]~1_combout\);

-- Location: LCCOMB_X24_Y18_N24
\W_block|adder1|adder_chain[2].Block|FA2|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\ = \W_block|d_minus_delayed\(2) $ (\W_block|d_plus_delayed\(2) $ (\V_block|v_plus_vec[2]~1_combout\ $ (\V_block|v_minus_vec[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|d_minus_delayed\(2),
	datab => \W_block|d_plus_delayed\(2),
	datac => \V_block|v_plus_vec[2]~1_combout\,
	datad => \V_block|v_minus_vec[2]~1_combout\,
	combout => \W_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\);

-- Location: LCCOMB_X24_Y18_N30
\W_block|adder1|adder_chain[2].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[2].Block|FA2|Add1~0_combout\ = \W_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\ $ (((\W_block|d_plus_delayed\(1) & ((\V_block|v_plus_vec[1]~3_combout\) # (!\W_block|d_minus_delayed\(1)))) # (!\W_block|d_plus_delayed\(1) 
-- & (\V_block|v_plus_vec[1]~3_combout\ & !\W_block|d_minus_delayed\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|d_plus_delayed\(1),
	datab => \V_block|v_plus_vec[1]~3_combout\,
	datac => \W_block|d_minus_delayed\(1),
	datad => \W_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\,
	combout => \W_block|adder1|adder_chain[2].Block|FA2|Add1~0_combout\);

-- Location: FF_X24_Y18_N7
\W_block|ram1|mem_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \W_block|adder1|adder_chain[2].Block|FA2|Add1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram1|mem_rtl_0_bypass\(21));

-- Location: LCCOMB_X23_Y21_N4
\W_block|ram1|mem~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram1|mem~5_combout\ = (\W_block|ram1|mem~4_combout\ & (((\W_block|ram1|mem_rtl_0_bypass\(21))))) # (!\W_block|ram1|mem~4_combout\ & ((\W_block|ram1|mem_rtl_0_bypass\(22) & ((\W_block|ram1|mem_rtl_0|auto_generated|ram_block1a3\))) # 
-- (!\W_block|ram1|mem_rtl_0_bypass\(22) & (\W_block|ram1|mem_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram1|mem~4_combout\,
	datab => \W_block|ram1|mem_rtl_0_bypass\(22),
	datac => \W_block|ram1|mem_rtl_0_bypass\(21),
	datad => \W_block|ram1|mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \W_block|ram1|mem~5_combout\);

-- Location: LCCOMB_X23_Y21_N0
\V_block|adder1|adder_chain[3].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\ = (\W_block|ram2|mem~5_combout\ & ((\V_block|adder1|adder_chain[3].Block|FA1|Add0~0_combout\ $ (\W_block|ram1|mem~5_combout\)) # (!\V_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\))) # 
-- (!\W_block|ram2|mem~5_combout\ & (!\V_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\ & (\V_block|adder1|adder_chain[3].Block|FA1|Add0~0_combout\ $ (\W_block|ram1|mem~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram2|mem~5_combout\,
	datab => \V_block|adder1|adder_chain[3].Block|FA1|Add0~0_combout\,
	datac => \W_block|ram1|mem~5_combout\,
	datad => \V_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\,
	combout => \V_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\);

-- Location: LCCOMB_X26_Y21_N30
\V_block|cin_one~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|cin_one~0_combout\ = (\FSM|en_d~0_combout\ & \V_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|en_d~0_combout\,
	datad => \V_block|adder1|adder_chain[3].Block|FA2|Add1~0_combout\,
	combout => \V_block|cin_one~0_combout\);

-- Location: FF_X26_Y21_N31
\V_block|cin_one[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|cin_one~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_block|cin_one\(0));

-- Location: LCCOMB_X24_Y21_N16
\W_block|adder1|adder_chain[0].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\ = (\W_block|cin_one\(1) & (!\asyn_reset~input_o\ & (\V_block|cin_one\(0) & \W_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\))) # (!\W_block|cin_one\(1) & 
-- ((\W_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\) # ((!\asyn_reset~input_o\ & \V_block|cin_one\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|cin_one\(1),
	datab => \asyn_reset~input_o\,
	datac => \V_block|cin_one\(0),
	datad => \W_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\,
	combout => \W_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\);

-- Location: FF_X24_Y21_N9
\W_block|ram2|mem_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \W_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|ram2|mem_rtl_0_bypass\(19));

-- Location: LCCOMB_X24_Y21_N8
\W_block|ram2|mem~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|ram2|mem~6_combout\ = (\W_block|ram2|mem_rtl_0_bypass\(20) & ((\W_block|ram2|mem~4_combout\ & (\W_block|ram2|mem_rtl_0_bypass\(19))) # (!\W_block|ram2|mem~4_combout\ & ((\W_block|ram2|mem_rtl_0|auto_generated|ram_block1a2\))))) # 
-- (!\W_block|ram2|mem_rtl_0_bypass\(20) & (((\W_block|ram2|mem_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram2|mem_rtl_0_bypass\(20),
	datab => \W_block|ram2|mem~4_combout\,
	datac => \W_block|ram2|mem_rtl_0_bypass\(19),
	datad => \W_block|ram2|mem_rtl_0|auto_generated|ram_block1a2\,
	combout => \W_block|ram2|mem~6_combout\);

-- Location: LCCOMB_X24_Y21_N14
\V_block|adder1|adder_chain[2].Block|FA2|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\ = \V_block|q_minus_add\(2) $ (\V_block|q_plus_add\(2) $ (\W_block|ram2|mem~6_combout\ $ (\W_block|ram1|mem~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|q_minus_add\(2),
	datab => \V_block|q_plus_add\(2),
	datac => \W_block|ram2|mem~6_combout\,
	datad => \W_block|ram1|mem~6_combout\,
	combout => \V_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\);

-- Location: LCCOMB_X25_Y21_N8
\V_block|v_plus_vec[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_plus_vec[2]~1_combout\ = (!\asyn_reset~input_o\ & (\V_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\ $ (\V_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|adder1|adder_chain[1].Block|FA1|Add1~0_combout\,
	datab => \asyn_reset~input_o\,
	datad => \V_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\,
	combout => \V_block|v_plus_vec[2]~1_combout\);

-- Location: LCCOMB_X24_Y18_N0
\W_block|adder1|adder_chain[2].Block|FA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\ = (\W_block|d_minus_delayed\(2) & (\W_block|d_plus_delayed\(2) & \V_block|v_plus_vec[2]~1_combout\)) # (!\W_block|d_minus_delayed\(2) & ((\W_block|d_plus_delayed\(2)) # 
-- (\V_block|v_plus_vec[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|d_minus_delayed\(2),
	datab => \W_block|d_plus_delayed\(2),
	datac => \V_block|v_plus_vec[2]~1_combout\,
	combout => \W_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\);

-- Location: LCCOMB_X24_Y21_N12
\W_block|adder1|adder_chain[3].Block|FA2|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[3].Block|FA2|Add1~1_combout\ = (\V_block|v_minus_vec[3]~0_combout\ & ((\W_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\) # (!\W_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\))) # 
-- (!\V_block|v_minus_vec[3]~0_combout\ & (!\W_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\ & \W_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_minus_vec[3]~0_combout\,
	datac => \W_block|adder1|adder_chain[2].Block|FA1|Add1~0_combout\,
	datad => \W_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\,
	combout => \W_block|adder1|adder_chain[3].Block|FA2|Add1~1_combout\);

-- Location: FF_X24_Y20_N17
\FSM|q_prev_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \V_block|q_value[0]~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|q_prev_value\(0));

-- Location: FF_X24_Y20_N31
\FSM|q_prev_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \V_block|q_value[1]~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|q_prev_value\(1));

-- Location: LCCOMB_X23_Y20_N28
\W_block|always6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|always6~0_combout\ = (\W_block|Equal3~0_combout\ & ((\FSM|fixing~q\) # (\FSM|q_prev_value\(1) $ (!\V_block|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|fixing~q\,
	datab => \FSM|q_prev_value\(1),
	datac => \W_block|Equal3~0_combout\,
	datad => \V_block|WideOr0~0_combout\,
	combout => \W_block|always6~0_combout\);

-- Location: LCCOMB_X23_Y20_N30
\W_block|always6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|always6~1_combout\ = (\W_block|always6~0_combout\ & ((\FSM|fixing~q\) # (\FSM|q_prev_value\(0) $ (!\V_block|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|fixing~q\,
	datab => \FSM|q_prev_value\(0),
	datac => \V_block|WideOr1~0_combout\,
	datad => \W_block|always6~0_combout\,
	combout => \W_block|always6~1_combout\);

-- Location: FF_X24_Y21_N13
\W_block|res_upper_minus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder1|adder_chain[3].Block|FA2|Add1~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \W_block|always6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|res_upper_minus\(1));

-- Location: LCCOMB_X23_Y21_N14
\V_block|Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add3~2_combout\ = (\W_block|res_upper_minus\(1) & (!\V_block|Add3~1\)) # (!\W_block|res_upper_minus\(1) & ((\V_block|Add3~1\) # (GND)))
-- \V_block|Add3~3\ = CARRY((!\V_block|Add3~1\) # (!\W_block|res_upper_minus\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \W_block|res_upper_minus\(1),
	datad => VCC,
	cin => \V_block|Add3~1\,
	combout => \V_block|Add3~2_combout\,
	cout => \V_block|Add3~3\);

-- Location: IOIBUF_X33_Y24_N1
\x_value[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_value(0),
	o => \x_value[0]~input_o\);

-- Location: LCCOMB_X29_Y18_N12
\FSM|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux11~0_combout\ = (!\FSM|STATE\(2) & \x_value[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|STATE\(2),
	datad => \x_value[0]~input_o\,
	combout => \FSM|Mux11~0_combout\);

-- Location: FF_X29_Y18_N13
\FSM|x_value_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux11~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|x_value_reg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|x_value_reg\(0));

-- Location: LCCOMB_X29_Y18_N14
\V_block|tmp_out[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|tmp_out[0]~1_combout\ = (!\asyn_reset~input_o\ & \FSM|x_value_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datad => \FSM|x_value_reg\(0),
	combout => \V_block|tmp_out[0]~1_combout\);

-- Location: LCCOMB_X22_Y20_N18
\V_block|Add5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add5~0_combout\ = (\V_block|Add3~0_combout\ & (\V_block|Add4~0_combout\ $ (VCC))) # (!\V_block|Add3~0_combout\ & (\V_block|Add4~0_combout\ & VCC))
-- \V_block|Add5~1\ = CARRY((\V_block|Add3~0_combout\ & \V_block|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|Add3~0_combout\,
	datab => \V_block|Add4~0_combout\,
	datad => VCC,
	combout => \V_block|Add5~0_combout\,
	cout => \V_block|Add5~1\);

-- Location: LCCOMB_X22_Y20_N20
\V_block|Add5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add5~2_combout\ = (\V_block|Add4~2_combout\ & ((\V_block|Add3~2_combout\ & (\V_block|Add5~1\ & VCC)) # (!\V_block|Add3~2_combout\ & (!\V_block|Add5~1\)))) # (!\V_block|Add4~2_combout\ & ((\V_block|Add3~2_combout\ & (!\V_block|Add5~1\)) # 
-- (!\V_block|Add3~2_combout\ & ((\V_block|Add5~1\) # (GND)))))
-- \V_block|Add5~3\ = CARRY((\V_block|Add4~2_combout\ & (!\V_block|Add3~2_combout\ & !\V_block|Add5~1\)) # (!\V_block|Add4~2_combout\ & ((!\V_block|Add5~1\) # (!\V_block|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|Add4~2_combout\,
	datab => \V_block|Add3~2_combout\,
	datad => VCC,
	cin => \V_block|Add5~1\,
	combout => \V_block|Add5~2_combout\,
	cout => \V_block|Add5~3\);

-- Location: LCCOMB_X22_Y20_N30
\V_block|v_upper_minus[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_minus[1]~2_combout\ = (\W_block|res_upper_minus\(1) & (((\FSM|en_shift[1]~0_combout\ & \V_block|Add5~2_combout\)) # (!\V_block|v_upper_minus[0]~0_combout\))) # (!\W_block|res_upper_minus\(1) & (\FSM|en_shift[1]~0_combout\ & 
-- ((\V_block|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_minus\(1),
	datab => \FSM|en_shift[1]~0_combout\,
	datac => \V_block|v_upper_minus[0]~0_combout\,
	datad => \V_block|Add5~2_combout\,
	combout => \V_block|v_upper_minus[1]~2_combout\);

-- Location: LCCOMB_X23_Y21_N2
\V_block|adder1|adder_chain[3].Block|FA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\ = (\V_block|q_minus_add\(3) & (\V_block|q_plus_add\(3) & \W_block|ram1|mem~5_combout\)) # (!\V_block|q_minus_add\(3) & ((\V_block|q_plus_add\(3)) # (\W_block|ram1|mem~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|q_minus_add\(3),
	datab => \V_block|q_plus_add\(3),
	datac => \W_block|ram1|mem~5_combout\,
	combout => \V_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\);

-- Location: LCCOMB_X23_Y18_N0
\V_block|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add0~0_combout\ = (\W_block|res_upper_plus\(0) & (\V_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\ $ (VCC))) # (!\W_block|res_upper_plus\(0) & (\V_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\ & VCC))
-- \V_block|Add0~1\ = CARRY((\W_block|res_upper_plus\(0) & \V_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_plus\(0),
	datab => \V_block|adder1|adder_chain[3].Block|FA1|Add1~0_combout\,
	datad => VCC,
	combout => \V_block|Add0~0_combout\,
	cout => \V_block|Add0~1\);

-- Location: LCCOMB_X23_Y18_N2
\V_block|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add0~2_combout\ = (\W_block|res_upper_plus\(1) & (!\V_block|Add0~1\)) # (!\W_block|res_upper_plus\(1) & ((\V_block|Add0~1\) # (GND)))
-- \V_block|Add0~3\ = CARRY((!\V_block|Add0~1\) # (!\W_block|res_upper_plus\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_plus\(1),
	datad => VCC,
	cin => \V_block|Add0~1\,
	combout => \V_block|Add0~2_combout\,
	cout => \V_block|Add0~3\);

-- Location: LCCOMB_X23_Y18_N14
\V_block|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add2~0_combout\ = (\V_block|Add1~0_combout\ & (\V_block|Add0~0_combout\ $ (VCC))) # (!\V_block|Add1~0_combout\ & (\V_block|Add0~0_combout\ & VCC))
-- \V_block|Add2~1\ = CARRY((\V_block|Add1~0_combout\ & \V_block|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|Add1~0_combout\,
	datab => \V_block|Add0~0_combout\,
	datad => VCC,
	combout => \V_block|Add2~0_combout\,
	cout => \V_block|Add2~1\);

-- Location: LCCOMB_X23_Y18_N16
\V_block|Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add2~2_combout\ = (\V_block|Add1~2_combout\ & ((\V_block|Add0~2_combout\ & (\V_block|Add2~1\ & VCC)) # (!\V_block|Add0~2_combout\ & (!\V_block|Add2~1\)))) # (!\V_block|Add1~2_combout\ & ((\V_block|Add0~2_combout\ & (!\V_block|Add2~1\)) # 
-- (!\V_block|Add0~2_combout\ & ((\V_block|Add2~1\) # (GND)))))
-- \V_block|Add2~3\ = CARRY((\V_block|Add1~2_combout\ & (!\V_block|Add0~2_combout\ & !\V_block|Add2~1\)) # (!\V_block|Add1~2_combout\ & ((!\V_block|Add2~1\) # (!\V_block|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|Add1~2_combout\,
	datab => \V_block|Add0~2_combout\,
	datad => VCC,
	cin => \V_block|Add2~1\,
	combout => \V_block|Add2~2_combout\,
	cout => \V_block|Add2~3\);

-- Location: LCCOMB_X23_Y18_N26
\V_block|v_upper_plus[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_plus[1]~1_combout\ = (\W_block|res_upper_plus\(1) & (((\FSM|en_shift[1]~0_combout\ & \V_block|Add2~2_combout\)) # (!\V_block|v_upper_minus[0]~0_combout\))) # (!\W_block|res_upper_plus\(1) & (((\FSM|en_shift[1]~0_combout\ & 
-- \V_block|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_plus\(1),
	datab => \V_block|v_upper_minus[0]~0_combout\,
	datac => \FSM|en_shift[1]~0_combout\,
	datad => \V_block|Add2~2_combout\,
	combout => \V_block|v_upper_plus[1]~1_combout\);

-- Location: LCCOMB_X23_Y19_N8
\W_block|adder2|adder_chain[1].Block|FA1|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[1].Block|FA1|Add1~1_combout\ = (\V_block|v_upper_minus[1]~2_combout\ & (!\SDVM_d_Vec|Mux2~0_combout\ & (\W_block|add_operand_plus[1]~0_combout\ & \V_block|v_upper_plus[1]~1_combout\))) # (!\V_block|v_upper_minus[1]~2_combout\ & 
-- ((\V_block|v_upper_plus[1]~1_combout\) # ((!\SDVM_d_Vec|Mux2~0_combout\ & \W_block|add_operand_plus[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_d_Vec|Mux2~0_combout\,
	datab => \W_block|add_operand_plus[1]~0_combout\,
	datac => \V_block|v_upper_minus[1]~2_combout\,
	datad => \V_block|v_upper_plus[1]~1_combout\,
	combout => \W_block|adder2|adder_chain[1].Block|FA1|Add1~1_combout\);

-- Location: FF_X24_Y19_N7
\CA_reg|ram2|mem_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|d_value_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(17));

-- Location: LCCOMB_X24_Y19_N6
\CA_reg|ram2|mem~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem~8_combout\ = (\CA_reg|ram2|mem_rtl_0_bypass\(18) & ((\CA_reg|ram2|mem~4_combout\ & ((\CA_reg|ram2|mem_rtl_0_bypass\(17)))) # (!\CA_reg|ram2|mem~4_combout\ & (\CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a1\)))) # 
-- (!\CA_reg|ram2|mem_rtl_0_bypass\(18) & (((\CA_reg|ram2|mem_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram2|mem_rtl_0_bypass\(18),
	datab => \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a1\,
	datac => \CA_reg|ram2|mem_rtl_0_bypass\(17),
	datad => \CA_reg|ram2|mem~4_combout\,
	combout => \CA_reg|ram2|mem~8_combout\);

-- Location: LCCOMB_X23_Y19_N4
\SDVM_d_Vec|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_d_Vec|Mux1~0_combout\ = \SDVM_d_Vec|D1|out\(1) $ (\CA_reg|ram2|mem~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDVM_d_Vec|D1|out\(1),
	datad => \CA_reg|ram2|mem~8_combout\,
	combout => \SDVM_d_Vec|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y21_N16
\V_block|Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add3~4_combout\ = (\W_block|res_upper_minus\(2) & (\V_block|Add3~3\ $ (GND))) # (!\W_block|res_upper_minus\(2) & (!\V_block|Add3~3\ & VCC))
-- \V_block|Add3~5\ = CARRY((\W_block|res_upper_minus\(2) & !\V_block|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_minus\(2),
	datad => VCC,
	cin => \V_block|Add3~3\,
	combout => \V_block|Add3~4_combout\,
	cout => \V_block|Add3~5\);

-- Location: LCCOMB_X22_Y20_N22
\V_block|Add5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add5~4_combout\ = ((\V_block|Add4~4_combout\ $ (\V_block|Add3~4_combout\ $ (!\V_block|Add5~3\)))) # (GND)
-- \V_block|Add5~5\ = CARRY((\V_block|Add4~4_combout\ & ((\V_block|Add3~4_combout\) # (!\V_block|Add5~3\))) # (!\V_block|Add4~4_combout\ & (\V_block|Add3~4_combout\ & !\V_block|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|Add4~4_combout\,
	datab => \V_block|Add3~4_combout\,
	datad => VCC,
	cin => \V_block|Add5~3\,
	combout => \V_block|Add5~4_combout\,
	cout => \V_block|Add5~5\);

-- Location: LCCOMB_X22_Y20_N8
\V_block|v_upper_minus[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_minus[2]~1_combout\ = (\W_block|res_upper_minus\(2) & (((\V_block|Add5~4_combout\ & \FSM|en_shift[1]~0_combout\)) # (!\V_block|v_upper_minus[0]~0_combout\))) # (!\W_block|res_upper_minus\(2) & (((\V_block|Add5~4_combout\ & 
-- \FSM|en_shift[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_minus\(2),
	datab => \V_block|v_upper_minus[0]~0_combout\,
	datac => \V_block|Add5~4_combout\,
	datad => \FSM|en_shift[1]~0_combout\,
	combout => \V_block|v_upper_minus[2]~1_combout\);

-- Location: LCCOMB_X23_Y19_N18
\W_block|adder2|adder_chain[2].Block|FA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[2].Block|FA1|Add1~0_combout\ = \V_block|v_upper_plus[2]~0_combout\ $ (\V_block|v_upper_minus[2]~1_combout\ $ (((!\SDVM_d_Vec|Mux1~0_combout\ & \W_block|add_operand_plus[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_upper_plus[2]~0_combout\,
	datab => \SDVM_d_Vec|Mux1~0_combout\,
	datac => \W_block|add_operand_plus[1]~0_combout\,
	datad => \V_block|v_upper_minus[2]~1_combout\,
	combout => \W_block|adder2|adder_chain[2].Block|FA1|Add1~0_combout\);

-- Location: LCCOMB_X23_Y19_N28
\W_block|adder2|adder_chain[2].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[2].Block|FA2|Add1~0_combout\ = \W_block|adder2|adder_chain[1].Block|FA1|Add1~1_combout\ $ (\W_block|adder2|adder_chain[2].Block|FA1|Add1~0_combout\ $ (((!\SDVM_d_Vec|Mux5~0_combout\ & \W_block|add_operand_plus[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_d_Vec|Mux5~0_combout\,
	datab => \W_block|add_operand_plus[1]~0_combout\,
	datac => \W_block|adder2|adder_chain[1].Block|FA1|Add1~1_combout\,
	datad => \W_block|adder2|adder_chain[2].Block|FA1|Add1~0_combout\,
	combout => \W_block|adder2|adder_chain[2].Block|FA2|Add1~0_combout\);

-- Location: FF_X23_Y19_N29
\W_block|res_upper_plus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder2|adder_chain[2].Block|FA2|Add1~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \W_block|always6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|res_upper_plus\(3));

-- Location: IOIBUF_X33_Y22_N1
\x_value[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_value(1),
	o => \x_value[1]~input_o\);

-- Location: LCCOMB_X29_Y18_N16
\FSM|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux10~0_combout\ = (!\FSM|STATE\(2) & \x_value[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|STATE\(2),
	datad => \x_value[1]~input_o\,
	combout => \FSM|Mux10~0_combout\);

-- Location: FF_X29_Y18_N17
\FSM|x_value_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux10~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|x_value_reg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|x_value_reg\(1));

-- Location: LCCOMB_X29_Y18_N22
\V_block|tmp_out[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|tmp_out[1]~0_combout\ = (!\asyn_reset~input_o\ & \FSM|x_value_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datad => \FSM|x_value_reg\(1),
	combout => \V_block|tmp_out[1]~0_combout\);

-- Location: LCCOMB_X24_Y18_N14
\V_block|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add1~4_combout\ = (\V_block|Add1~3\ & (\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & (\SDVM_q_Vec|vec_out_plus[2]~2_combout\ & VCC))) # (!\V_block|Add1~3\ & ((((\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & \SDVM_q_Vec|vec_out_plus[2]~2_combout\)))))
-- \V_block|Add1~5\ = CARRY((\SDVM_q_Vec|vec_out_minus[0]~0_combout\ & (\SDVM_q_Vec|vec_out_plus[2]~2_combout\ & !\V_block|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datab => \SDVM_q_Vec|vec_out_plus[2]~2_combout\,
	datad => VCC,
	cin => \V_block|Add1~3\,
	combout => \V_block|Add1~4_combout\,
	cout => \V_block|Add1~5\);

-- Location: LCCOMB_X24_Y18_N16
\V_block|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add1~6_combout\ = (\V_block|Add1~5\ & (((!\SDVM_q_Vec|vec_out_minus[0]~0_combout\)) # (!\SDVM_q_Vec|vec_out_plus[3]~5_combout\))) # (!\V_block|Add1~5\ & (((\SDVM_q_Vec|vec_out_plus[3]~5_combout\ & \SDVM_q_Vec|vec_out_minus[0]~0_combout\)) # 
-- (GND)))
-- \V_block|Add1~7\ = CARRY(((!\V_block|Add1~5\) # (!\SDVM_q_Vec|vec_out_minus[0]~0_combout\)) # (!\SDVM_q_Vec|vec_out_plus[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_q_Vec|vec_out_plus[3]~5_combout\,
	datab => \SDVM_q_Vec|vec_out_minus[0]~0_combout\,
	datad => VCC,
	cin => \V_block|Add1~5\,
	combout => \V_block|Add1~6_combout\,
	cout => \V_block|Add1~7\);

-- Location: LCCOMB_X23_Y18_N18
\V_block|Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add2~4_combout\ = ((\V_block|Add0~4_combout\ $ (\V_block|Add1~4_combout\ $ (!\V_block|Add2~3\)))) # (GND)
-- \V_block|Add2~5\ = CARRY((\V_block|Add0~4_combout\ & ((\V_block|Add1~4_combout\) # (!\V_block|Add2~3\))) # (!\V_block|Add0~4_combout\ & (\V_block|Add1~4_combout\ & !\V_block|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|Add0~4_combout\,
	datab => \V_block|Add1~4_combout\,
	datad => VCC,
	cin => \V_block|Add2~3\,
	combout => \V_block|Add2~4_combout\,
	cout => \V_block|Add2~5\);

-- Location: LCCOMB_X23_Y18_N20
\V_block|Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add2~6_combout\ = (\V_block|Add0~6_combout\ & ((\V_block|Add1~6_combout\ & (\V_block|Add2~5\ & VCC)) # (!\V_block|Add1~6_combout\ & (!\V_block|Add2~5\)))) # (!\V_block|Add0~6_combout\ & ((\V_block|Add1~6_combout\ & (!\V_block|Add2~5\)) # 
-- (!\V_block|Add1~6_combout\ & ((\V_block|Add2~5\) # (GND)))))
-- \V_block|Add2~7\ = CARRY((\V_block|Add0~6_combout\ & (!\V_block|Add1~6_combout\ & !\V_block|Add2~5\)) # (!\V_block|Add0~6_combout\ & ((!\V_block|Add2~5\) # (!\V_block|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|Add0~6_combout\,
	datab => \V_block|Add1~6_combout\,
	datad => VCC,
	cin => \V_block|Add2~5\,
	combout => \V_block|Add2~6_combout\,
	cout => \V_block|Add2~7\);

-- Location: LCCOMB_X23_Y18_N30
\V_block|v_upper_plus[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_plus[3]~3_combout\ = (\FSM|en_shift[1]~0_combout\ & ((\V_block|Add2~6_combout\) # ((!\V_block|v_upper_minus[0]~0_combout\ & \W_block|res_upper_plus\(3))))) # (!\FSM|en_shift[1]~0_combout\ & (!\V_block|v_upper_minus[0]~0_combout\ & 
-- (\W_block|res_upper_plus\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|en_shift[1]~0_combout\,
	datab => \V_block|v_upper_minus[0]~0_combout\,
	datac => \W_block|res_upper_plus\(3),
	datad => \V_block|Add2~6_combout\,
	combout => \V_block|v_upper_plus[3]~3_combout\);

-- Location: LCCOMB_X27_Y18_N30
\CA_reg|ram1|mem_rtl_0_bypass[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CA_reg|ram1|mem_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X27_Y18_N31
\CA_reg|ram1|mem_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram1|mem_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(18));

-- Location: FF_X27_Y18_N9
\CA_reg|ram1|mem_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|d_value_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram1|mem_rtl_0_bypass\(17));

-- Location: LCCOMB_X27_Y18_N8
\CA_reg|ram1|mem~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram1|mem~8_combout\ = (\CA_reg|ram1|mem~4_combout\ & (((\CA_reg|ram1|mem_rtl_0_bypass\(17))))) # (!\CA_reg|ram1|mem~4_combout\ & ((\CA_reg|ram1|mem_rtl_0_bypass\(18) & ((\CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a1\))) # 
-- (!\CA_reg|ram1|mem_rtl_0_bypass\(18) & (\CA_reg|ram1|mem_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram1|mem~4_combout\,
	datab => \CA_reg|ram1|mem_rtl_0_bypass\(18),
	datac => \CA_reg|ram1|mem_rtl_0_bypass\(17),
	datad => \CA_reg|ram1|mem_rtl_0|auto_generated|ram_block1a1\,
	combout => \CA_reg|ram1|mem~8_combout\);

-- Location: LCCOMB_X22_Y19_N6
\W_block|add_operand_plus[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|add_operand_plus[3]~1_combout\ = (\W_block|add_operand_plus[1]~0_combout\ & (\SDVM_d_Vec|D1|out\(1) $ (!\CA_reg|ram1|mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDVM_d_Vec|D1|out\(1),
	datac => \W_block|add_operand_plus[1]~0_combout\,
	datad => \CA_reg|ram1|mem~8_combout\,
	combout => \W_block|add_operand_plus[3]~1_combout\);

-- Location: LCCOMB_X23_Y19_N20
\W_block|adder2|adder_chain[2].Block|FA2|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[2].Block|FA2|Add1~1_combout\ = (\W_block|adder2|adder_chain[1].Block|FA1|Add1~1_combout\ & (!\SDVM_d_Vec|Mux5~0_combout\ & (\W_block|add_operand_plus[1]~0_combout\ & \W_block|adder2|adder_chain[2].Block|FA1|Add1~0_combout\))) # 
-- (!\W_block|adder2|adder_chain[1].Block|FA1|Add1~1_combout\ & ((\W_block|adder2|adder_chain[2].Block|FA1|Add1~0_combout\) # ((!\SDVM_d_Vec|Mux5~0_combout\ & \W_block|add_operand_plus[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_d_Vec|Mux5~0_combout\,
	datab => \W_block|add_operand_plus[1]~0_combout\,
	datac => \W_block|adder2|adder_chain[1].Block|FA1|Add1~1_combout\,
	datad => \W_block|adder2|adder_chain[2].Block|FA1|Add1~0_combout\,
	combout => \W_block|adder2|adder_chain[2].Block|FA2|Add1~1_combout\);

-- Location: FF_X23_Y19_N21
\W_block|res_upper_minus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder2|adder_chain[2].Block|FA2|Add1~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \W_block|always6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|res_upper_minus\(4));

-- Location: LCCOMB_X23_Y21_N18
\V_block|Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add3~6_combout\ = (\W_block|res_upper_minus\(3) & (!\V_block|Add3~5\)) # (!\W_block|res_upper_minus\(3) & ((\V_block|Add3~5\) # (GND)))
-- \V_block|Add3~7\ = CARRY((!\V_block|Add3~5\) # (!\W_block|res_upper_minus\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_minus\(3),
	datad => VCC,
	cin => \V_block|Add3~5\,
	combout => \V_block|Add3~6_combout\,
	cout => \V_block|Add3~7\);

-- Location: LCCOMB_X22_Y20_N24
\V_block|Add5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add5~6_combout\ = (\V_block|Add4~6_combout\ & ((\V_block|Add3~6_combout\ & (\V_block|Add5~5\ & VCC)) # (!\V_block|Add3~6_combout\ & (!\V_block|Add5~5\)))) # (!\V_block|Add4~6_combout\ & ((\V_block|Add3~6_combout\ & (!\V_block|Add5~5\)) # 
-- (!\V_block|Add3~6_combout\ & ((\V_block|Add5~5\) # (GND)))))
-- \V_block|Add5~7\ = CARRY((\V_block|Add4~6_combout\ & (!\V_block|Add3~6_combout\ & !\V_block|Add5~5\)) # (!\V_block|Add4~6_combout\ & ((!\V_block|Add5~5\) # (!\V_block|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|Add4~6_combout\,
	datab => \V_block|Add3~6_combout\,
	datad => VCC,
	cin => \V_block|Add5~5\,
	combout => \V_block|Add5~6_combout\,
	cout => \V_block|Add5~7\);

-- Location: LCCOMB_X22_Y20_N16
\V_block|v_upper_minus[4]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_minus[4]~5_combout\ = (\W_block|res_upper_minus\(4) & (((\FSM|en_shift[1]~0_combout\ & \V_block|Add5~8_combout\)) # (!\V_block|v_upper_minus[0]~0_combout\))) # (!\W_block|res_upper_minus\(4) & (\FSM|en_shift[1]~0_combout\ & 
-- (\V_block|Add5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_minus\(4),
	datab => \FSM|en_shift[1]~0_combout\,
	datac => \V_block|Add5~8_combout\,
	datad => \V_block|v_upper_minus[0]~0_combout\,
	combout => \V_block|v_upper_minus[4]~5_combout\);

-- Location: LCCOMB_X22_Y19_N0
\SDVM_d_Vec|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_d_Vec|Mux4~0_combout\ = \SDVM_d_Vec|D1|out\(1) $ (\CA_reg|ram1|mem~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDVM_d_Vec|D1|out\(1),
	datad => \CA_reg|ram1|mem~7_combout\,
	combout => \SDVM_d_Vec|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y19_N0
\W_block|adder2|adder_chain[1].Block|FA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[1].Block|FA1|Add1~0_combout\ = \V_block|v_upper_minus[1]~2_combout\ $ (\V_block|v_upper_plus[1]~1_combout\ $ (((!\SDVM_d_Vec|Mux2~0_combout\ & \W_block|add_operand_plus[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_d_Vec|Mux2~0_combout\,
	datab => \W_block|add_operand_plus[1]~0_combout\,
	datac => \V_block|v_upper_minus[1]~2_combout\,
	datad => \V_block|v_upper_plus[1]~1_combout\,
	combout => \W_block|adder2|adder_chain[1].Block|FA1|Add1~0_combout\);

-- Location: LCCOMB_X24_Y18_N4
\W_block|adder1|adder_chain[2].Block|FA2|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[2].Block|FA2|Add1~1_combout\ = ((\W_block|d_plus_delayed\(1) & (!\V_block|v_plus_vec[1]~3_combout\ & \W_block|d_minus_delayed\(1))) # (!\W_block|d_plus_delayed\(1) & ((\W_block|d_minus_delayed\(1)) # 
-- (!\V_block|v_plus_vec[1]~3_combout\)))) # (!\W_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|d_plus_delayed\(1),
	datab => \V_block|v_plus_vec[1]~3_combout\,
	datac => \W_block|d_minus_delayed\(1),
	datad => \W_block|adder1|adder_chain[2].Block|FA2|Add0~0_combout\,
	combout => \W_block|adder1|adder_chain[2].Block|FA2|Add1~1_combout\);

-- Location: LCCOMB_X24_Y18_N20
\W_block|adder1|adder_chain[2].Block|FA2|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder1|adder_chain[2].Block|FA2|Add1~2_combout\ = (\W_block|adder1|adder_chain[2].Block|FA2|Add1~1_combout\ & ((\V_block|v_minus_vec[2]~1_combout\) # (\W_block|adder1|adder_chain[2].Block|FA1|Add0~0_combout\ $ 
-- (\V_block|v_plus_vec[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|adder1|adder_chain[2].Block|FA1|Add0~0_combout\,
	datab => \W_block|adder1|adder_chain[2].Block|FA2|Add1~1_combout\,
	datac => \V_block|v_plus_vec[2]~1_combout\,
	datad => \V_block|v_minus_vec[2]~1_combout\,
	combout => \W_block|adder1|adder_chain[2].Block|FA2|Add1~2_combout\);

-- Location: FF_X24_Y18_N21
\W_block|res_upper_minus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder1|adder_chain[2].Block|FA2|Add1~2_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \W_block|always6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|res_upper_minus\(0));

-- Location: LCCOMB_X22_Y20_N12
\V_block|v_upper_minus[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_minus[0]~3_combout\ = (\FSM|en_shift[1]~0_combout\ & ((\V_block|Add5~0_combout\) # ((!\V_block|v_upper_minus[0]~0_combout\ & \W_block|res_upper_minus\(0))))) # (!\FSM|en_shift[1]~0_combout\ & (!\V_block|v_upper_minus[0]~0_combout\ & 
-- (\W_block|res_upper_minus\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|en_shift[1]~0_combout\,
	datab => \V_block|v_upper_minus[0]~0_combout\,
	datac => \W_block|res_upper_minus\(0),
	datad => \V_block|Add5~0_combout\,
	combout => \V_block|v_upper_minus[0]~3_combout\);

-- Location: LCCOMB_X23_Y18_N28
\V_block|v_upper_plus[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_plus[0]~2_combout\ = (\W_block|res_upper_plus\(0) & (((\V_block|Add2~0_combout\ & \FSM|en_shift[1]~0_combout\)) # (!\V_block|v_upper_minus[0]~0_combout\))) # (!\W_block|res_upper_plus\(0) & (((\V_block|Add2~0_combout\ & 
-- \FSM|en_shift[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_plus\(0),
	datab => \V_block|v_upper_minus[0]~0_combout\,
	datac => \V_block|Add2~0_combout\,
	datad => \FSM|en_shift[1]~0_combout\,
	combout => \V_block|v_upper_plus[0]~2_combout\);

-- Location: LCCOMB_X22_Y19_N12
\W_block|adder2|adder_chain[0].Block|FA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[0].Block|FA1|Add1~0_combout\ = (\V_block|v_upper_minus[0]~3_combout\ & (!\SDVM_d_Vec|Mux3~0_combout\ & (\W_block|add_operand_plus[1]~0_combout\ & \V_block|v_upper_plus[0]~2_combout\))) # (!\V_block|v_upper_minus[0]~3_combout\ & 
-- ((\V_block|v_upper_plus[0]~2_combout\) # ((!\SDVM_d_Vec|Mux3~0_combout\ & \W_block|add_operand_plus[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_d_Vec|Mux3~0_combout\,
	datab => \W_block|add_operand_plus[1]~0_combout\,
	datac => \V_block|v_upper_minus[0]~3_combout\,
	datad => \V_block|v_upper_plus[0]~2_combout\,
	combout => \W_block|adder2|adder_chain[0].Block|FA1|Add1~0_combout\);

-- Location: LCCOMB_X23_Y19_N10
\W_block|adder2|adder_chain[1].Block|FA2|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[1].Block|FA2|Add1~1_combout\ = (\W_block|adder2|adder_chain[1].Block|FA1|Add1~0_combout\ & (((!\SDVM_d_Vec|Mux6~0_combout\ & \W_block|add_operand_plus[1]~0_combout\)) # 
-- (!\W_block|adder2|adder_chain[0].Block|FA1|Add1~0_combout\))) # (!\W_block|adder2|adder_chain[1].Block|FA1|Add1~0_combout\ & (!\SDVM_d_Vec|Mux6~0_combout\ & (\W_block|add_operand_plus[1]~0_combout\ & 
-- !\W_block|adder2|adder_chain[0].Block|FA1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDVM_d_Vec|Mux6~0_combout\,
	datab => \W_block|adder2|adder_chain[1].Block|FA1|Add1~0_combout\,
	datac => \W_block|add_operand_plus[1]~0_combout\,
	datad => \W_block|adder2|adder_chain[0].Block|FA1|Add1~0_combout\,
	combout => \W_block|adder2|adder_chain[1].Block|FA2|Add1~1_combout\);

-- Location: FF_X23_Y19_N11
\W_block|res_upper_minus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder2|adder_chain[1].Block|FA2|Add1~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \W_block|always6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|res_upper_minus\(3));

-- Location: LCCOMB_X22_Y20_N10
\V_block|v_upper_minus[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_minus[3]~4_combout\ = (\V_block|v_upper_minus[0]~0_combout\ & (\FSM|en_shift[1]~0_combout\ & ((\V_block|Add5~6_combout\)))) # (!\V_block|v_upper_minus[0]~0_combout\ & ((\W_block|res_upper_minus\(3)) # ((\FSM|en_shift[1]~0_combout\ & 
-- \V_block|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_upper_minus[0]~0_combout\,
	datab => \FSM|en_shift[1]~0_combout\,
	datac => \W_block|res_upper_minus\(3),
	datad => \V_block|Add5~6_combout\,
	combout => \V_block|v_upper_minus[3]~4_combout\);

-- Location: LCCOMB_X22_Y20_N0
\W_block|adder2|adder_chain[3].Block|FA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[3].Block|FA1|Add1~0_combout\ = \V_block|v_upper_plus[3]~3_combout\ $ (\W_block|add_operand_plus[3]~1_combout\ $ (\V_block|v_upper_minus[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_upper_plus[3]~3_combout\,
	datab => \W_block|add_operand_plus[3]~1_combout\,
	datad => \V_block|v_upper_minus[3]~4_combout\,
	combout => \W_block|adder2|adder_chain[3].Block|FA1|Add1~0_combout\);

-- Location: LCCOMB_X23_Y19_N6
\W_block|adder2|adder_chain[2].Block|FA1|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[2].Block|FA1|Add1~1_combout\ = (\V_block|v_upper_plus[2]~0_combout\ & (((\W_block|add_operand_plus[1]~0_combout\ & !\SDVM_d_Vec|Mux1~0_combout\)) # (!\V_block|v_upper_minus[2]~1_combout\))) # 
-- (!\V_block|v_upper_plus[2]~0_combout\ & (\W_block|add_operand_plus[1]~0_combout\ & (!\SDVM_d_Vec|Mux1~0_combout\ & !\V_block|v_upper_minus[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_upper_plus[2]~0_combout\,
	datab => \W_block|add_operand_plus[1]~0_combout\,
	datac => \SDVM_d_Vec|Mux1~0_combout\,
	datad => \V_block|v_upper_minus[2]~1_combout\,
	combout => \W_block|adder2|adder_chain[2].Block|FA1|Add1~1_combout\);

-- Location: LCCOMB_X23_Y20_N2
\W_block|adder2|adder_chain[3].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[3].Block|FA2|Add1~0_combout\ = \W_block|adder2|adder_chain[3].Block|FA1|Add1~0_combout\ $ (\W_block|adder2|adder_chain[2].Block|FA1|Add1~1_combout\ $ (((\W_block|add_operand_plus[1]~0_combout\ & !\SDVM_d_Vec|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|add_operand_plus[1]~0_combout\,
	datab => \SDVM_d_Vec|Mux4~0_combout\,
	datac => \W_block|adder2|adder_chain[3].Block|FA1|Add1~0_combout\,
	datad => \W_block|adder2|adder_chain[2].Block|FA1|Add1~1_combout\,
	combout => \W_block|adder2|adder_chain[3].Block|FA2|Add1~0_combout\);

-- Location: FF_X23_Y20_N3
\W_block|res_upper_plus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder2|adder_chain[3].Block|FA2|Add1~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \W_block|always6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|res_upper_plus\(4));

-- Location: LCCOMB_X24_Y18_N18
\V_block|Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add1~8_combout\ = !\V_block|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \V_block|Add1~7\,
	combout => \V_block|Add1~8_combout\);

-- Location: LCCOMB_X23_Y18_N22
\V_block|Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add2~8_combout\ = ((\V_block|Add0~8_combout\ $ (\V_block|Add1~8_combout\ $ (!\V_block|Add2~7\)))) # (GND)
-- \V_block|Add2~9\ = CARRY((\V_block|Add0~8_combout\ & ((\V_block|Add1~8_combout\) # (!\V_block|Add2~7\))) # (!\V_block|Add0~8_combout\ & (\V_block|Add1~8_combout\ & !\V_block|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|Add0~8_combout\,
	datab => \V_block|Add1~8_combout\,
	datad => VCC,
	cin => \V_block|Add2~7\,
	combout => \V_block|Add2~8_combout\,
	cout => \V_block|Add2~9\);

-- Location: LCCOMB_X23_Y20_N4
\V_block|v_upper_plus[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_plus[4]~4_combout\ = (\FSM|en_shift[1]~0_combout\ & ((\V_block|Add2~8_combout\) # ((\W_block|res_upper_plus\(4) & !\V_block|v_upper_minus[0]~0_combout\)))) # (!\FSM|en_shift[1]~0_combout\ & (\W_block|res_upper_plus\(4) & 
-- (!\V_block|v_upper_minus[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|en_shift[1]~0_combout\,
	datab => \W_block|res_upper_plus\(4),
	datac => \V_block|v_upper_minus[0]~0_combout\,
	datad => \V_block|Add2~8_combout\,
	combout => \V_block|v_upper_plus[4]~4_combout\);

-- Location: LCCOMB_X22_Y20_N14
\W_block|adder2|adder_chain[4].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[4].Block|FA2|Add1~0_combout\ = \V_block|v_upper_minus[4]~5_combout\ $ (\V_block|v_upper_plus[4]~4_combout\ $ (((!\V_block|v_upper_minus[3]~4_combout\ & \V_block|v_upper_plus[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_upper_minus[3]~4_combout\,
	datab => \V_block|v_upper_minus[4]~5_combout\,
	datac => \V_block|v_upper_plus[3]~3_combout\,
	datad => \V_block|v_upper_plus[4]~4_combout\,
	combout => \W_block|adder2|adder_chain[4].Block|FA2|Add1~0_combout\);

-- Location: LCCOMB_X23_Y20_N6
\W_block|adder2|adder_chain[4].Block|FA2|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W_block|adder2|adder_chain[4].Block|FA2|Add1~1_combout\ = \W_block|adder2|adder_chain[4].Block|FA2|Add1~0_combout\ $ (((\W_block|add_operand_plus[3]~1_combout\ & (\V_block|v_upper_minus[3]~4_combout\ $ (!\V_block|v_upper_plus[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_upper_minus[3]~4_combout\,
	datab => \V_block|v_upper_plus[3]~3_combout\,
	datac => \W_block|add_operand_plus[3]~1_combout\,
	datad => \W_block|adder2|adder_chain[4].Block|FA2|Add1~0_combout\,
	combout => \W_block|adder2|adder_chain[4].Block|FA2|Add1~1_combout\);

-- Location: FF_X23_Y20_N7
\W_block|res_upper_plus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \W_block|adder2|adder_chain[4].Block|FA2|Add1~1_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \W_block|always6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W_block|res_upper_plus\(5));

-- Location: LCCOMB_X23_Y18_N10
\V_block|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add0~10_combout\ = \V_block|Add0~9\ $ (\W_block|res_upper_plus\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \W_block|res_upper_plus\(5),
	cin => \V_block|Add0~9\,
	combout => \V_block|Add0~10_combout\);

-- Location: LCCOMB_X23_Y18_N24
\V_block|Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add2~10_combout\ = \V_block|Add2~9\ $ (\V_block|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \V_block|Add0~10_combout\,
	cin => \V_block|Add2~9\,
	combout => \V_block|Add2~10_combout\);

-- Location: LCCOMB_X23_Y20_N0
\V_block|v_upper_plus[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_plus[5]~5_combout\ = (\FSM|en_shift[1]~0_combout\ & ((\V_block|Add2~10_combout\) # ((\W_block|res_upper_plus\(5) & !\V_block|v_upper_minus[0]~0_combout\)))) # (!\FSM|en_shift[1]~0_combout\ & (\W_block|res_upper_plus\(5) & 
-- (!\V_block|v_upper_minus[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|en_shift[1]~0_combout\,
	datab => \W_block|res_upper_plus\(5),
	datac => \V_block|v_upper_minus[0]~0_combout\,
	datad => \V_block|Add2~10_combout\,
	combout => \V_block|v_upper_plus[5]~5_combout\);

-- Location: LCCOMB_X25_Y21_N4
\V_block|adder1|adder_chain[0].Block|FA2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\ = (\V_block|cin_one\(1) & (\W_block|ram2|mem~8_combout\ & \V_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\)) # (!\V_block|cin_one\(1) & ((\W_block|ram2|mem~8_combout\) # 
-- (\V_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|cin_one\(1),
	datac => \W_block|ram2|mem~8_combout\,
	datad => \V_block|adder1|adder_chain[0].Block|FA1|Add1~1_combout\,
	combout => \V_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\);

-- Location: LCCOMB_X25_Y21_N22
\V_block|adder1|adder_chain[1].Block|FA2|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|adder1|adder_chain[1].Block|FA2|Add1~1_combout\ = \V_block|adder1|adder_chain[1].Block|FA2|Add0~0_combout\ $ (((\W_block|ram1|mem~8_combout\ & ((\V_block|q_plus_add\(0)) # (!\V_block|q_minus_add\(0)))) # (!\W_block|ram1|mem~8_combout\ & 
-- (!\V_block|q_minus_add\(0) & \V_block|q_plus_add\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|ram1|mem~8_combout\,
	datab => \V_block|q_minus_add\(0),
	datac => \V_block|q_plus_add\(0),
	datad => \V_block|adder1|adder_chain[1].Block|FA2|Add0~0_combout\,
	combout => \V_block|adder1|adder_chain[1].Block|FA2|Add1~1_combout\);

-- Location: LCCOMB_X25_Y21_N16
\V_block|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|LessThan0~0_combout\ = (\V_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\ & (((\V_block|cin_one\(0) & !\V_block|v_plus_vec[0]~2_combout\)) # (!\V_block|adder1|adder_chain[1].Block|FA2|Add1~1_combout\))) # 
-- (!\V_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\ & (\V_block|cin_one\(0) & (!\V_block|adder1|adder_chain[1].Block|FA2|Add1~1_combout\ & !\V_block|v_plus_vec[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|cin_one\(0),
	datab => \V_block|adder1|adder_chain[0].Block|FA2|Add1~0_combout\,
	datac => \V_block|adder1|adder_chain[1].Block|FA2|Add1~1_combout\,
	datad => \V_block|v_plus_vec[0]~2_combout\,
	combout => \V_block|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y21_N30
\V_block|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|LessThan0~1_combout\ = (\V_block|v_minus_vec[2]~1_combout\ & (((!\asyn_reset~input_o\ & \V_block|LessThan0~0_combout\)) # (!\V_block|v_plus_vec[2]~1_combout\))) # (!\V_block|v_minus_vec[2]~1_combout\ & (!\asyn_reset~input_o\ & 
-- (!\V_block|v_plus_vec[2]~1_combout\ & \V_block|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datab => \V_block|v_minus_vec[2]~1_combout\,
	datac => \V_block|v_plus_vec[2]~1_combout\,
	datad => \V_block|LessThan0~0_combout\,
	combout => \V_block|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y20_N4
\V_block|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|LessThan0~2_combout\ = (\V_block|v_minus_vec[3]~0_combout\ & ((\V_block|LessThan0~1_combout\) # (!\V_block|v_plus_vec[3]~0_combout\))) # (!\V_block|v_minus_vec[3]~0_combout\ & (\V_block|LessThan0~1_combout\ & !\V_block|v_plus_vec[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_block|v_minus_vec[3]~0_combout\,
	datac => \V_block|LessThan0~1_combout\,
	datad => \V_block|v_plus_vec[3]~0_combout\,
	combout => \V_block|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y20_N14
\V_block|Add7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add7~1_cout\ = CARRY((!\V_block|LessThan0~2_combout\) # (!\W_block|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|Equal3~0_combout\,
	datab => \V_block|LessThan0~2_combout\,
	datad => VCC,
	cout => \V_block|Add7~1_cout\);

-- Location: LCCOMB_X23_Y20_N16
\V_block|Add7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add7~3_cout\ = CARRY((\V_block|v_upper_minus[0]~3_combout\ & ((!\V_block|Add7~1_cout\) # (!\V_block|v_upper_plus[0]~2_combout\))) # (!\V_block|v_upper_minus[0]~3_combout\ & (!\V_block|v_upper_plus[0]~2_combout\ & !\V_block|Add7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_upper_minus[0]~3_combout\,
	datab => \V_block|v_upper_plus[0]~2_combout\,
	datad => VCC,
	cin => \V_block|Add7~1_cout\,
	cout => \V_block|Add7~3_cout\);

-- Location: LCCOMB_X23_Y20_N18
\V_block|Add7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add7~5_cout\ = CARRY((\V_block|v_upper_plus[1]~1_combout\ & ((!\V_block|Add7~3_cout\) # (!\V_block|v_upper_minus[1]~2_combout\))) # (!\V_block|v_upper_plus[1]~1_combout\ & (!\V_block|v_upper_minus[1]~2_combout\ & !\V_block|Add7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_upper_plus[1]~1_combout\,
	datab => \V_block|v_upper_minus[1]~2_combout\,
	datad => VCC,
	cin => \V_block|Add7~3_cout\,
	cout => \V_block|Add7~5_cout\);

-- Location: LCCOMB_X23_Y20_N20
\V_block|Add7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add7~6_combout\ = (\V_block|v_upper_minus[2]~1_combout\ & ((\V_block|v_upper_plus[2]~0_combout\ & (!\V_block|Add7~5_cout\)) # (!\V_block|v_upper_plus[2]~0_combout\ & ((\V_block|Add7~5_cout\) # (GND))))) # (!\V_block|v_upper_minus[2]~1_combout\ & 
-- ((\V_block|v_upper_plus[2]~0_combout\ & (\V_block|Add7~5_cout\ & VCC)) # (!\V_block|v_upper_plus[2]~0_combout\ & (!\V_block|Add7~5_cout\))))
-- \V_block|Add7~7\ = CARRY((\V_block|v_upper_minus[2]~1_combout\ & ((!\V_block|Add7~5_cout\) # (!\V_block|v_upper_plus[2]~0_combout\))) # (!\V_block|v_upper_minus[2]~1_combout\ & (!\V_block|v_upper_plus[2]~0_combout\ & !\V_block|Add7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_upper_minus[2]~1_combout\,
	datab => \V_block|v_upper_plus[2]~0_combout\,
	datad => VCC,
	cin => \V_block|Add7~5_cout\,
	combout => \V_block|Add7~6_combout\,
	cout => \V_block|Add7~7\);

-- Location: LCCOMB_X23_Y20_N24
\V_block|Add7~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add7~10_combout\ = (\V_block|v_upper_minus[4]~5_combout\ & ((\V_block|v_upper_plus[4]~4_combout\ & (!\V_block|Add7~9\)) # (!\V_block|v_upper_plus[4]~4_combout\ & ((\V_block|Add7~9\) # (GND))))) # (!\V_block|v_upper_minus[4]~5_combout\ & 
-- ((\V_block|v_upper_plus[4]~4_combout\ & (\V_block|Add7~9\ & VCC)) # (!\V_block|v_upper_plus[4]~4_combout\ & (!\V_block|Add7~9\))))
-- \V_block|Add7~11\ = CARRY((\V_block|v_upper_minus[4]~5_combout\ & ((!\V_block|Add7~9\) # (!\V_block|v_upper_plus[4]~4_combout\))) # (!\V_block|v_upper_minus[4]~5_combout\ & (!\V_block|v_upper_plus[4]~4_combout\ & !\V_block|Add7~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_upper_minus[4]~5_combout\,
	datab => \V_block|v_upper_plus[4]~4_combout\,
	datad => VCC,
	cin => \V_block|Add7~9\,
	combout => \V_block|Add7~10_combout\,
	cout => \V_block|Add7~11\);

-- Location: LCCOMB_X23_Y20_N26
\V_block|Add7~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|Add7~12_combout\ = \V_block|v_upper_minus[5]~6_combout\ $ (\V_block|Add7~11\ $ (\V_block|v_upper_plus[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|v_upper_minus[5]~6_combout\,
	datad => \V_block|v_upper_plus[5]~5_combout\,
	cin => \V_block|Add7~11\,
	combout => \V_block|Add7~12_combout\);

-- Location: LCCOMB_X23_Y20_N12
\V_block|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|WideOr0~0_combout\ = (!\V_block|Add7~12_combout\ & ((\V_block|Add7~8_combout\) # ((\V_block|Add7~6_combout\) # (\V_block|Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|Add7~8_combout\,
	datab => \V_block|Add7~6_combout\,
	datac => \V_block|Add7~12_combout\,
	datad => \V_block|Add7~10_combout\,
	combout => \V_block|WideOr0~0_combout\);

-- Location: LCCOMB_X24_Y20_N14
\V_block|q_fixing_value[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|q_fixing_value[0]~0_combout\ = (!\FSM|fixing~q\ & (\W_block|Equal3~0_combout\ & ((\FSM|Equal2~1_combout\) # (\FSM|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|fixing~q\,
	datab => \W_block|Equal3~0_combout\,
	datac => \FSM|Equal2~1_combout\,
	datad => \FSM|Equal2~0_combout\,
	combout => \V_block|q_fixing_value[0]~0_combout\);

-- Location: FF_X23_Y20_N13
\V_block|q_fixing_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|WideOr0~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \V_block|q_fixing_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_block|q_fixing_value\(1));

-- Location: LCCOMB_X24_Y20_N30
\FSM|Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Equal2~1_combout\ = \FSM|q_prev_value\(1) $ (((\FSM|fixing~q\ & (\V_block|q_fixing_value\(1))) # (!\FSM|fixing~q\ & ((\V_block|WideOr0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|fixing~q\,
	datab => \V_block|q_fixing_value\(1),
	datac => \FSM|q_prev_value\(1),
	datad => \V_block|WideOr0~0_combout\,
	combout => \FSM|Equal2~1_combout\);

-- Location: LCCOMB_X24_Y20_N18
\FSM|computation_cycle[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[1]~4_combout\ = (!\FSM|fixing~q\ & (!\FSM|prev_STATE.ERROR~q\ & ((\FSM|Equal2~1_combout\) # (\FSM|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|fixing~q\,
	datab => \FSM|prev_STATE.ERROR~q\,
	datac => \FSM|Equal2~1_combout\,
	datad => \FSM|Equal2~0_combout\,
	combout => \FSM|computation_cycle[1]~4_combout\);

-- Location: LCCOMB_X24_Y20_N28
\FSM|computation_cycle[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[1]~5_combout\ = (\FSM|STATE\(2)) # ((\FSM|STATE\(0) & (\W_block|Equal3~0_combout\ & \FSM|computation_cycle[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(2),
	datab => \FSM|STATE\(0),
	datac => \W_block|Equal3~0_combout\,
	datad => \FSM|computation_cycle[1]~4_combout\,
	combout => \FSM|computation_cycle[1]~5_combout\);

-- Location: LCCOMB_X24_Y20_N10
\FSM|computation_cycle[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[1]~6_combout\ = (\FSM|STATE\(1) & (!\FSM|computation_cycle[1]~5_combout\ & ((\FSM|STATE\(0)) # (\FSM|Equal0~1_combout\)))) # (!\FSM|STATE\(1) & ((\FSM|STATE\(0) & (\FSM|Equal0~1_combout\)) # (!\FSM|STATE\(0) & 
-- ((\FSM|computation_cycle[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(1),
	datab => \FSM|STATE\(0),
	datac => \FSM|Equal0~1_combout\,
	datad => \FSM|computation_cycle[1]~5_combout\,
	combout => \FSM|computation_cycle[1]~6_combout\);

-- Location: LCCOMB_X25_Y20_N6
\FSM|computation_cycle[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[3]~16_combout\ = (\FSM|computation_cycle[1]~6_combout\ & (((\FSM|computation_cycle\(3))))) # (!\FSM|computation_cycle[1]~6_combout\ & ((\FSM|computation_cycle[3]~15_combout\) # ((\FSM|computation_cycle[6]~3_combout\ & 
-- \FSM|computation_cycle\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[3]~15_combout\,
	datab => \FSM|computation_cycle[6]~3_combout\,
	datac => \FSM|computation_cycle\(3),
	datad => \FSM|computation_cycle[1]~6_combout\,
	combout => \FSM|computation_cycle[3]~16_combout\);

-- Location: FF_X25_Y20_N7
\FSM|computation_cycle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|computation_cycle[3]~16_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|computation_cycle\(3));

-- Location: LCCOMB_X27_Y17_N16
\FSM|Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add1~8_combout\ = (\FSM|computation_cycle\(4) & ((GND) # (!\FSM|Add1~7\))) # (!\FSM|computation_cycle\(4) & (\FSM|Add1~7\ $ (GND)))
-- \FSM|Add1~9\ = CARRY((\FSM|computation_cycle\(4)) # (!\FSM|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|computation_cycle\(4),
	datad => VCC,
	cin => \FSM|Add1~7\,
	combout => \FSM|Add1~8_combout\,
	cout => \FSM|Add1~9\);

-- Location: LCCOMB_X26_Y17_N4
\FSM|computation_cycle[4]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[4]~12_combout\ = (\FSM|computation_cycle[1]~0_combout\ & (((\FSM|Add1~8_combout\)))) # (!\FSM|computation_cycle[1]~0_combout\ & (\FSM|computation_cycle[4]~11_combout\ & (!\FSM|wr_addr_RAM[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[4]~11_combout\,
	datab => \FSM|wr_addr_RAM[2]~4_combout\,
	datac => \FSM|computation_cycle[1]~0_combout\,
	datad => \FSM|Add1~8_combout\,
	combout => \FSM|computation_cycle[4]~12_combout\);

-- Location: LCCOMB_X24_Y20_N4
\FSM|computation_cycle[4]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[4]~13_combout\ = (\FSM|computation_cycle[1]~6_combout\ & (((\FSM|computation_cycle\(4))))) # (!\FSM|computation_cycle[1]~6_combout\ & ((\FSM|computation_cycle[4]~12_combout\) # ((\FSM|computation_cycle[6]~3_combout\ & 
-- \FSM|computation_cycle\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[6]~3_combout\,
	datab => \FSM|computation_cycle[4]~12_combout\,
	datac => \FSM|computation_cycle\(4),
	datad => \FSM|computation_cycle[1]~6_combout\,
	combout => \FSM|computation_cycle[4]~13_combout\);

-- Location: FF_X24_Y20_N5
\FSM|computation_cycle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|computation_cycle[4]~13_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|computation_cycle\(4));

-- Location: LCCOMB_X26_Y17_N18
\FSM|computation_cycle[5]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[5]~9_combout\ = (\FSM|computation_cycle[1]~0_combout\ & (((\FSM|Add1~10_combout\)))) # (!\FSM|computation_cycle[1]~0_combout\ & (\FSM|computation_cycle[5]~8_combout\ & (!\FSM|wr_addr_RAM[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[5]~8_combout\,
	datab => \FSM|wr_addr_RAM[2]~4_combout\,
	datac => \FSM|computation_cycle[1]~0_combout\,
	datad => \FSM|Add1~10_combout\,
	combout => \FSM|computation_cycle[5]~9_combout\);

-- Location: LCCOMB_X24_Y20_N22
\FSM|computation_cycle[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[5]~10_combout\ = (\FSM|computation_cycle[1]~6_combout\ & (((\FSM|computation_cycle\(5))))) # (!\FSM|computation_cycle[1]~6_combout\ & ((\FSM|computation_cycle[5]~9_combout\) # ((\FSM|computation_cycle[6]~3_combout\ & 
-- \FSM|computation_cycle\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[6]~3_combout\,
	datab => \FSM|computation_cycle[5]~9_combout\,
	datac => \FSM|computation_cycle\(5),
	datad => \FSM|computation_cycle[1]~6_combout\,
	combout => \FSM|computation_cycle[5]~10_combout\);

-- Location: FF_X24_Y20_N23
\FSM|computation_cycle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|computation_cycle[5]~10_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|computation_cycle\(5));

-- Location: LCCOMB_X26_Y18_N4
\FSM|rd_addr[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|rd_addr[5]~6_combout\ = (!\asyn_reset~input_o\ & ((\FSM|rd_addr[0]~0_combout\ & (\main_counter|cnt\(7))) # (!\FSM|rd_addr[0]~0_combout\ & ((\FSM|computation_cycle\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_counter|cnt\(7),
	datab => \FSM|computation_cycle\(5),
	datac => \asyn_reset~input_o\,
	datad => \FSM|rd_addr[0]~0_combout\,
	combout => \FSM|rd_addr[5]~6_combout\);

-- Location: FF_X24_Y19_N29
\CA_reg|ram2|mem_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[5]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(12));

-- Location: FF_X24_Y19_N19
\CA_reg|ram2|mem_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[4]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(10));

-- Location: LCCOMB_X24_Y19_N20
\CA_reg|ram2|mem_rtl_0_bypass[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem_rtl_0_bypass[9]~feeder_combout\ = \main_counter|cnt\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(6),
	combout => \CA_reg|ram2|mem_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X24_Y19_N21
\CA_reg|ram2|mem_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram2|mem_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(9));

-- Location: LCCOMB_X24_Y19_N18
\CA_reg|ram2|mem~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem~2_combout\ = (\CA_reg|ram2|mem_rtl_0_bypass\(11) & (\CA_reg|ram2|mem_rtl_0_bypass\(12) & (\CA_reg|ram2|mem_rtl_0_bypass\(10) $ (!\CA_reg|ram2|mem_rtl_0_bypass\(9))))) # (!\CA_reg|ram2|mem_rtl_0_bypass\(11) & 
-- (!\CA_reg|ram2|mem_rtl_0_bypass\(12) & (\CA_reg|ram2|mem_rtl_0_bypass\(10) $ (!\CA_reg|ram2|mem_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram2|mem_rtl_0_bypass\(11),
	datab => \CA_reg|ram2|mem_rtl_0_bypass\(12),
	datac => \CA_reg|ram2|mem_rtl_0_bypass\(10),
	datad => \CA_reg|ram2|mem_rtl_0_bypass\(9),
	combout => \CA_reg|ram2|mem~2_combout\);

-- Location: FF_X25_Y19_N29
\CA_reg|ram2|mem_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(2));

-- Location: FF_X25_Y19_N31
\CA_reg|ram2|mem_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|rd_addr[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(4));

-- Location: LCCOMB_X25_Y19_N16
\CA_reg|ram2|mem_rtl_0_bypass[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem_rtl_0_bypass[3]~feeder_combout\ = \main_counter|cnt\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_counter|cnt\(3),
	combout => \CA_reg|ram2|mem_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X25_Y19_N17
\CA_reg|ram2|mem_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram2|mem_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(3));

-- Location: LCCOMB_X25_Y19_N30
\CA_reg|ram2|mem~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem~0_combout\ = (\CA_reg|ram2|mem_rtl_0_bypass\(1) & (\CA_reg|ram2|mem_rtl_0_bypass\(2) & (\CA_reg|ram2|mem_rtl_0_bypass\(4) $ (!\CA_reg|ram2|mem_rtl_0_bypass\(3))))) # (!\CA_reg|ram2|mem_rtl_0_bypass\(1) & 
-- (!\CA_reg|ram2|mem_rtl_0_bypass\(2) & (\CA_reg|ram2|mem_rtl_0_bypass\(4) $ (!\CA_reg|ram2|mem_rtl_0_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram2|mem_rtl_0_bypass\(1),
	datab => \CA_reg|ram2|mem_rtl_0_bypass\(2),
	datac => \CA_reg|ram2|mem_rtl_0_bypass\(4),
	datad => \CA_reg|ram2|mem_rtl_0_bypass\(3),
	combout => \CA_reg|ram2|mem~0_combout\);

-- Location: FF_X26_Y19_N25
\CA_reg|ram2|mem_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|rd_addr[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(14));

-- Location: FF_X26_Y19_N7
\CA_reg|ram2|mem_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \main_counter|cnt\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(13));

-- Location: LCCOMB_X26_Y19_N28
\CA_reg|ram2|mem_rtl_0_bypass[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem_rtl_0_bypass[0]~feeder_combout\ = \CA_reg|we_two~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CA_reg|we_two~0_combout\,
	combout => \CA_reg|ram2|mem_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X26_Y19_N29
\CA_reg|ram2|mem_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CA_reg|ram2|mem_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(0));

-- Location: LCCOMB_X26_Y19_N6
\CA_reg|ram2|mem~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem~3_combout\ = (\CA_reg|ram2|mem_rtl_0_bypass\(0) & (\CA_reg|ram2|mem_rtl_0_bypass\(14) $ (!\CA_reg|ram2|mem_rtl_0_bypass\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CA_reg|ram2|mem_rtl_0_bypass\(14),
	datac => \CA_reg|ram2|mem_rtl_0_bypass\(13),
	datad => \CA_reg|ram2|mem_rtl_0_bypass\(0),
	combout => \CA_reg|ram2|mem~3_combout\);

-- Location: LCCOMB_X25_Y19_N14
\CA_reg|ram2|mem~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem~4_combout\ = (\CA_reg|ram2|mem~1_combout\ & (\CA_reg|ram2|mem~2_combout\ & (\CA_reg|ram2|mem~0_combout\ & \CA_reg|ram2|mem~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram2|mem~1_combout\,
	datab => \CA_reg|ram2|mem~2_combout\,
	datac => \CA_reg|ram2|mem~0_combout\,
	datad => \CA_reg|ram2|mem~3_combout\,
	combout => \CA_reg|ram2|mem~4_combout\);

-- Location: FF_X25_Y19_N11
\CA_reg|ram2|mem_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \V_block|q_value[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CA_reg|ram2|mem_rtl_0_bypass\(21));

-- Location: LCCOMB_X25_Y19_N10
\CA_reg|ram2|mem~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CA_reg|ram2|mem~5_combout\ = (\CA_reg|ram2|mem_rtl_0_bypass\(22) & ((\CA_reg|ram2|mem~4_combout\ & (\CA_reg|ram2|mem_rtl_0_bypass\(21))) # (!\CA_reg|ram2|mem~4_combout\ & ((\CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a3\))))) # 
-- (!\CA_reg|ram2|mem_rtl_0_bypass\(22) & (((\CA_reg|ram2|mem_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CA_reg|ram2|mem_rtl_0_bypass\(22),
	datab => \CA_reg|ram2|mem~4_combout\,
	datac => \CA_reg|ram2|mem_rtl_0_bypass\(21),
	datad => \CA_reg|ram2|mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \CA_reg|ram2|mem~5_combout\);

-- Location: FF_X25_Y19_N25
\vec_D|x_plus_delayed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CA_reg|ram2|mem~5_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vec_D|x_plus_delayed\(2));

-- Location: LCCOMB_X25_Y19_N24
\SDVM_q_Vec|vec_out_plus[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SDVM_q_Vec|vec_out_plus[2]~2_combout\ = \SDVM_q_Vec|D1|out\(1) $ (((\vec_D|always1~0_combout\ & (!\vec_D|x_plus_delayed\(2))) # (!\vec_D|always1~0_combout\ & ((!\CA_reg|ram2|mem~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vec_D|always1~0_combout\,
	datab => \SDVM_q_Vec|D1|out\(1),
	datac => \vec_D|x_plus_delayed\(2),
	datad => \CA_reg|ram2|mem~5_combout\,
	combout => \SDVM_q_Vec|vec_out_plus[2]~2_combout\);

-- Location: LCCOMB_X23_Y18_N12
\V_block|v_upper_plus[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|v_upper_plus[2]~0_combout\ = (\W_block|res_upper_plus\(2) & (((\FSM|en_shift[1]~0_combout\ & \V_block|Add2~4_combout\)) # (!\V_block|v_upper_minus[0]~0_combout\))) # (!\W_block|res_upper_plus\(2) & (((\FSM|en_shift[1]~0_combout\ & 
-- \V_block|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|res_upper_plus\(2),
	datab => \V_block|v_upper_minus[0]~0_combout\,
	datac => \FSM|en_shift[1]~0_combout\,
	datad => \V_block|Add2~4_combout\,
	combout => \V_block|v_upper_plus[2]~0_combout\);

-- Location: LCCOMB_X23_Y20_N8
\V_block|WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V_block|WideOr1~0_combout\ = (\V_block|Add7~12_combout\ & (((!\V_block|Add7~10_combout\) # (!\V_block|Add7~6_combout\)) # (!\V_block|Add7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|Add7~8_combout\,
	datab => \V_block|Add7~6_combout\,
	datac => \V_block|Add7~12_combout\,
	datad => \V_block|Add7~10_combout\,
	combout => \V_block|WideOr1~0_combout\);

-- Location: FF_X23_Y20_N9
\V_block|q_fixing_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_block|WideOr1~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \V_block|q_fixing_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_block|q_fixing_value\(0));

-- Location: LCCOMB_X24_Y20_N16
\FSM|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Equal2~0_combout\ = \FSM|q_prev_value\(0) $ (((\FSM|fixing~q\ & (\V_block|q_fixing_value\(0))) # (!\FSM|fixing~q\ & ((\V_block|WideOr1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|fixing~q\,
	datab => \V_block|q_fixing_value\(0),
	datac => \FSM|q_prev_value\(0),
	datad => \V_block|WideOr1~0_combout\,
	combout => \FSM|Equal2~0_combout\);

-- Location: LCCOMB_X25_Y20_N22
\FSM|fixing~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|fixing~1_combout\ = (\FSM|STATE\(0) & ((\FSM|STATE\(2) & (\FSM|Equal0~1_combout\ & !\FSM|STATE\(1))) # (!\FSM|STATE\(2) & ((\FSM|STATE\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Equal0~1_combout\,
	datab => \FSM|STATE\(0),
	datac => \FSM|STATE\(2),
	datad => \FSM|STATE\(1),
	combout => \FSM|fixing~1_combout\);

-- Location: LCCOMB_X24_Y20_N20
\FSM|fixing~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|fixing~0_combout\ = (!\FSM|prev_STATE.ERROR~q\ & (\W_block|Equal3~0_combout\ & ((\FSM|Equal2~0_combout\) # (\FSM|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|prev_STATE.ERROR~q\,
	datab => \FSM|Equal2~0_combout\,
	datac => \W_block|Equal3~0_combout\,
	datad => \FSM|Equal2~1_combout\,
	combout => \FSM|fixing~0_combout\);

-- Location: LCCOMB_X24_Y20_N6
\FSM|fixing~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|fixing~2_combout\ = (\FSM|fixing~1_combout\ & ((\FSM|STATE\(2)) # ((!\FSM|fixing~q\ & \FSM|fixing~0_combout\)))) # (!\FSM|fixing~1_combout\ & (((\FSM|fixing~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(2),
	datab => \FSM|fixing~1_combout\,
	datac => \FSM|fixing~q\,
	datad => \FSM|fixing~0_combout\,
	combout => \FSM|fixing~2_combout\);

-- Location: FF_X24_Y20_N7
\FSM|fixing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|fixing~2_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|fixing~q\);

-- Location: LCCOMB_X25_Y20_N8
\FSM|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux2~0_combout\ = (\FSM|STATE\(1) & (\W_block|Equal3~0_combout\ & (!\FSM|fixing~q\))) # (!\FSM|STATE\(1) & (((!\FSM|always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_block|Equal3~0_combout\,
	datab => \FSM|fixing~q\,
	datac => \FSM|always1~0_combout\,
	datad => \FSM|STATE\(1),
	combout => \FSM|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y20_N24
\FSM|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux2~1_combout\ = (\FSM|Mux2~0_combout\ & (((\FSM|Equal2~0_combout\) # (\FSM|Equal2~1_combout\)) # (!\FSM|STATE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(1),
	datab => \FSM|Equal2~0_combout\,
	datac => \FSM|Equal2~1_combout\,
	datad => \FSM|Mux2~0_combout\,
	combout => \FSM|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y20_N28
\FSM|STATE[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|STATE[0]~0_combout\ = (\FSM|Mux2~2_combout\ & (\FSM|Equal0~1_combout\)) # (!\FSM|Mux2~2_combout\ & ((\FSM|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Equal0~1_combout\,
	datab => \FSM|Mux2~2_combout\,
	datad => \FSM|Mux2~1_combout\,
	combout => \FSM|STATE[0]~0_combout\);

-- Location: FF_X25_Y20_N29
\FSM|STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|STATE[0]~0_combout\,
	asdata => \FSM|Mux2~3_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	sload => \FSM|STATE\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|STATE\(0));

-- Location: LCCOMB_X26_Y17_N26
\FSM|computation_cycle[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[1]~0_combout\ = \FSM|STATE\(1) $ (((\FSM|STATE\(2)) # (\FSM|STATE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|STATE\(2),
	datac => \FSM|STATE\(0),
	datad => \FSM|STATE\(1),
	combout => \FSM|computation_cycle[1]~0_combout\);

-- Location: LCCOMB_X25_Y17_N4
\FSM|computation_cycle[1]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[1]~20_combout\ = (\FSM|STATE\(1) & (((\FSM|Add0~2_combout\)))) # (!\FSM|STATE\(1) & (!\FSM|always1~0_combout\ & (\main_counter|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|always1~0_combout\,
	datab => \main_counter|cnt\(3),
	datac => \FSM|STATE\(1),
	datad => \FSM|Add0~2_combout\,
	combout => \FSM|computation_cycle[1]~20_combout\);

-- Location: LCCOMB_X27_Y17_N10
\FSM|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Add1~2_combout\ = (\FSM|computation_cycle\(1) & (\FSM|Add1~1\ & VCC)) # (!\FSM|computation_cycle\(1) & (!\FSM|Add1~1\))
-- \FSM|Add1~3\ = CARRY((!\FSM|computation_cycle\(1) & !\FSM|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|computation_cycle\(1),
	datad => VCC,
	cin => \FSM|Add1~1\,
	combout => \FSM|Add1~2_combout\,
	cout => \FSM|Add1~3\);

-- Location: LCCOMB_X25_Y17_N12
\FSM|computation_cycle[1]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[1]~21_combout\ = (\FSM|computation_cycle[1]~0_combout\ & (((\FSM|Add1~2_combout\)))) # (!\FSM|computation_cycle[1]~0_combout\ & (!\FSM|wr_addr_RAM[2]~4_combout\ & (\FSM|computation_cycle[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|wr_addr_RAM[2]~4_combout\,
	datab => \FSM|computation_cycle[1]~0_combout\,
	datac => \FSM|computation_cycle[1]~20_combout\,
	datad => \FSM|Add1~2_combout\,
	combout => \FSM|computation_cycle[1]~21_combout\);

-- Location: LCCOMB_X24_Y20_N12
\FSM|computation_cycle[1]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[1]~22_combout\ = (\FSM|computation_cycle[1]~6_combout\ & (((\FSM|computation_cycle\(1))))) # (!\FSM|computation_cycle[1]~6_combout\ & ((\FSM|computation_cycle[1]~21_combout\) # ((\FSM|computation_cycle[6]~3_combout\ & 
-- \FSM|computation_cycle\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[6]~3_combout\,
	datab => \FSM|computation_cycle[1]~21_combout\,
	datac => \FSM|computation_cycle\(1),
	datad => \FSM|computation_cycle[1]~6_combout\,
	combout => \FSM|computation_cycle[1]~22_combout\);

-- Location: FF_X24_Y20_N13
\FSM|computation_cycle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|computation_cycle[1]~22_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|computation_cycle\(1));

-- Location: LCCOMB_X26_Y17_N8
\FSM|computation_cycle[2]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[2]~18_combout\ = (\FSM|computation_cycle[1]~0_combout\ & (((\FSM|Add1~4_combout\)))) # (!\FSM|computation_cycle[1]~0_combout\ & (\FSM|computation_cycle[2]~17_combout\ & ((!\FSM|wr_addr_RAM[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[2]~17_combout\,
	datab => \FSM|Add1~4_combout\,
	datac => \FSM|computation_cycle[1]~0_combout\,
	datad => \FSM|wr_addr_RAM[2]~4_combout\,
	combout => \FSM|computation_cycle[2]~18_combout\);

-- Location: LCCOMB_X24_Y20_N2
\FSM|computation_cycle[2]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|computation_cycle[2]~19_combout\ = (\FSM|computation_cycle[1]~6_combout\ & (((\FSM|computation_cycle\(2))))) # (!\FSM|computation_cycle[1]~6_combout\ & ((\FSM|computation_cycle[2]~18_combout\) # ((\FSM|computation_cycle[6]~3_combout\ & 
-- \FSM|computation_cycle\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle[6]~3_combout\,
	datab => \FSM|computation_cycle[2]~18_combout\,
	datac => \FSM|computation_cycle\(2),
	datad => \FSM|computation_cycle[1]~6_combout\,
	combout => \FSM|computation_cycle[2]~19_combout\);

-- Location: FF_X24_Y20_N3
\FSM|computation_cycle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|computation_cycle[2]~19_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|computation_cycle\(2));

-- Location: LCCOMB_X27_Y17_N28
\FSM|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Equal0~0_combout\ = (!\FSM|computation_cycle\(5) & (!\FSM|computation_cycle\(4) & (!\FSM|computation_cycle\(3) & !\FSM|computation_cycle\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle\(5),
	datab => \FSM|computation_cycle\(4),
	datac => \FSM|computation_cycle\(3),
	datad => \FSM|computation_cycle\(6),
	combout => \FSM|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y17_N2
\FSM|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Equal0~1_combout\ = (!\FSM|computation_cycle\(1) & (!\FSM|computation_cycle\(2) & (\FSM|Equal0~0_combout\ & !\FSM|computation_cycle\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|computation_cycle\(1),
	datab => \FSM|computation_cycle\(2),
	datac => \FSM|Equal0~0_combout\,
	datad => \FSM|computation_cycle\(0),
	combout => \FSM|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y20_N20
\FSM|STATE[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|STATE[1]~3_combout\ = (\FSM|STATE\(2) & (\FSM|Equal0~1_combout\ & (!\FSM|STATE\(1) & \FSM|STATE\(0)))) # (!\FSM|STATE\(2) & ((\FSM|STATE\(1) $ (\FSM|STATE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(2),
	datab => \FSM|Equal0~1_combout\,
	datac => \FSM|STATE\(1),
	datad => \FSM|STATE\(0),
	combout => \FSM|STATE[1]~3_combout\);

-- Location: FF_X29_Y20_N21
\FSM|STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|STATE[1]~3_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|STATE\(1));

-- Location: LCCOMB_X26_Y17_N20
\FSM|wr_addr_RAM[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|wr_addr_RAM[2]~4_combout\ = (\FSM|STATE\(2) & \FSM|STATE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|STATE\(2),
	datad => \FSM|STATE\(1),
	combout => \FSM|wr_addr_RAM[2]~4_combout\);

-- Location: LCCOMB_X29_Y18_N24
\FSM|Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Decoder0~0_combout\ = (!\FSM|STATE\(1) & !\FSM|STATE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|STATE\(1),
	datad => \FSM|STATE\(0),
	combout => \FSM|Decoder0~0_combout\);

-- Location: IOIBUF_X33_Y22_N8
\data_out_rdy~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_rdy,
	o => \data_out_rdy~input_o\);

-- Location: LCCOMB_X29_Y18_N18
\FSM|hd_z~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|hd_z~0_combout\ = (\FSM|STATE\(2) & ((\FSM|Decoder0~0_combout\ & (!\FSM|hd_z~q\ & \data_out_rdy~input_o\)) # (!\FSM|Decoder0~0_combout\ & (\FSM|hd_z~q\)))) # (!\FSM|STATE\(2) & (((\FSM|hd_z~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE\(2),
	datab => \FSM|Decoder0~0_combout\,
	datac => \FSM|hd_z~q\,
	datad => \data_out_rdy~input_o\,
	combout => \FSM|hd_z~0_combout\);

-- Location: FF_X29_Y18_N19
\FSM|hd_z\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|hd_z~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|hd_z~q\);

-- Location: LCCOMB_X29_Y18_N28
\FSM|Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux16~0_combout\ = (\FSM|STATE\(2) & !\FSM|hd_z~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|STATE\(2),
	datad => \FSM|hd_z~q\,
	combout => \FSM|Mux16~0_combout\);

-- Location: LCCOMB_X26_Y17_N0
\FSM|STATE[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|STATE[2]~2_combout\ = (!\FSM|STATE[2]~1_combout\ & (!\FSM|wr_addr_RAM[2]~4_combout\ & ((\FSM|STATE\(0)) # (\FSM|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|STATE[2]~1_combout\,
	datab => \FSM|wr_addr_RAM[2]~4_combout\,
	datac => \FSM|STATE\(0),
	datad => \FSM|Mux16~0_combout\,
	combout => \FSM|STATE[2]~2_combout\);

-- Location: FF_X26_Y17_N1
\FSM|STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|STATE[2]~2_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|STATE\(2));

-- Location: LCCOMB_X25_Y20_N14
\FSM|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux15~0_combout\ = (!\FSM|STATE\(2) & ((\FSM|fixing~q\ & (\V_block|q_fixing_value\(0))) # (!\FSM|fixing~q\ & ((\V_block|WideOr1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|q_fixing_value\(0),
	datab => \FSM|STATE\(2),
	datac => \FSM|fixing~q\,
	datad => \V_block|WideOr1~0_combout\,
	combout => \FSM|Mux15~0_combout\);

-- Location: LCCOMB_X25_Y20_N12
\FSM|q_value[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|q_value[1]~0_combout\ = (\FSM|STATE\(1) & ((\FSM|STATE\(0)) # (\FSM|STATE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|STATE\(0),
	datac => \FSM|STATE\(2),
	datad => \FSM|STATE\(1),
	combout => \FSM|q_value[1]~0_combout\);

-- Location: FF_X25_Y20_N15
\FSM|q_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux15~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|q_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|q_value\(0));

-- Location: LCCOMB_X25_Y20_N4
\FSM|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|Mux14~0_combout\ = (!\FSM|STATE\(2) & ((\FSM|fixing~q\ & (\V_block|q_fixing_value\(1))) # (!\FSM|fixing~q\ & ((\V_block|WideOr0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_block|q_fixing_value\(1),
	datab => \FSM|fixing~q\,
	datac => \V_block|WideOr0~0_combout\,
	datad => \FSM|STATE\(2),
	combout => \FSM|Mux14~0_combout\);

-- Location: FF_X25_Y20_N5
\FSM|q_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Mux14~0_combout\,
	clrn => \ALT_INV_asyn_reset~inputclkctrl_outclk\,
	ena => \FSM|q_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|q_value\(1));

-- Location: LCCOMB_X29_Y18_N6
\FSM|data_out_vld~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FSM|data_out_vld~0_combout\ = (\asyn_reset~input_o\) # (((\FSM|hd_z~q\) # (!\FSM|STATE\(2))) # (!\FSM|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asyn_reset~input_o\,
	datab => \FSM|Decoder0~0_combout\,
	datac => \FSM|STATE\(2),
	datad => \FSM|hd_z~q\,
	combout => \FSM|data_out_vld~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\data_x_rdy~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_x_rdy,
	o => \data_x_rdy~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\data_d_rdy~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_d_rdy,
	o => \data_d_rdy~input_o\);

ww_q_value(0) <= \q_value[0]~output_o\;

ww_q_value(1) <= \q_value[1]~output_o\;

ww_data_out_vld <= \data_out_vld~output_o\;
END structure;


