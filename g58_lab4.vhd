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

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Thu Mar 23 21:22:31 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g58_lab4 IS 
	PORT
	(
		Clock :  IN  STD_LOGIC;
		Resetn :  IN  STD_LOGIC;
		Request_Deal :  IN  STD_LOGIC;
		RAND_LT_NUM :  IN  STD_LOGIC;
		Rand_Enable :  OUT  STD_LOGIC;
		Stack_Enable :  OUT  STD_LOGIC
	);
END g58_lab4;

ARCHITECTURE bdf_type OF g58_lab4 IS 

COMPONENT g58_dealerfsm
	PORT(Clock : IN STD_LOGIC;
		 Resetn : IN STD_LOGIC;
		 Request_Deal : IN STD_LOGIC;
		 RAND_LT_NUM : IN STD_LOGIC;
		 Rand_Enable : OUT STD_LOGIC;
		 Stack_Enable : OUT STD_LOGIC
	);
END COMPONENT;



BEGIN 



b2v_inst : g58_dealerfsm
PORT MAP(Clock => Clock,
		 Resetn => Resetn,
		 Request_Deal => Request_Deal,
		 RAND_LT_NUM => RAND_LT_NUM,
		 Rand_Enable => Rand_Enable,
		 Stack_Enable => Stack_Enable);


END bdf_type;