LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;

Library work;

ENTITY g58_lab4_test IS 
END g58_lab4_test;

ARCHITECTURE g58_lab4_arch OF g58_lab4_test IS 

SIGNAL Clock: STD_LOGIC := '0';
SIGNAL Resetn : STD_LOGIC;
SIGNAL Request_Deal : STD_LOGIC;
SIGNAL RAND_LT_NUM : STD_LOGIC;
SIGNAL Rand_Enable : STD_LOGIC;
SIGNAL Stack_Enable : STD_LOGIC;

COMPONENT g58_lab4
	PORT
	(	
		Clock, Resetn, Request_Deal, RAND_LT_NUM:  IN STD_LOGIC;
		Rand_Enable, Stack_Enable: OUT STD_LOGIC
	);
END COMPONENT;

BEGIN 

inst1 : g58_lab4
PORT MAP(Clock 		  => Clock,
		 Resetn 	  => Resetn,
		 Request_Deal => Request_Deal,
		 RAND_LT_NUM  => RAND_LT_NUM,
		 Rand_Enable  => Rand_Enable,
		 Stack_Enable => Stack_Enable
		 );

setup_clock: PROCESS

BEGIN
	Clock <= '0';
	wait for 5 ns;
	Clock <= '1';
	wait for 5 ns;

END PROCESS setup_clock;


generate_test : PROCESS

BEGIN

Resetn <= '0';
Request_Deal <= '0';
RAND_LT_NUM <= '0';
wait for 2 ns;
Request_Deal <= '1';
wait for 2 ns;
Request_Deal <= '1';
wait for 2 ns;
RAND_LT_NUM <= '0';
wait for 2 ns;
RAND_LT_NUM <= '1';
wait for 10 ns; -- wait for 2 clock cycles
Request_Deal <= '0';
wait for 20 ns;
Request_Deal <= '1';
wait for 2 ns;
--Resetn <= '1';
wait for 2 ns;
Request_Deal <= '0';
wait for 20 ns;
Request_Deal <= '1';
wait for 2 ns;
RAND_LT_NUM <= '0';
wait for 20 ns; -- wait for 2 clock cycles
RAND_LT_NUM <= '1';
wait for 2 ns;
wait for 80 ns;
Request_Deal <= '0';

Resetn <= '1';
Request_Deal <= '0';
RAND_LT_NUM <= '0';
wait for 2 ns;
Request_Deal <= '1';
wait for 2 ns;
Request_Deal <= '1';
wait for 2 ns;
RAND_LT_NUM <= '0';
wait for 2 ns;
RAND_LT_NUM <= '1';
wait for 10 ns; -- wait for 2 clock cycles
Request_Deal <= '0';
wait for 20 ns;
Request_Deal <= '1';
wait for 2 ns;
--Resetn <= '1';
wait for 2 ns;
Request_Deal <= '0';
wait for 20 ns;
Request_Deal <= '1';
wait for 2 ns;
RAND_LT_NUM <= '0';
wait for 20 ns; -- wait for 2 clock cycles
RAND_LT_NUM <= '1';
wait for 2 ns;
wait for 80 ns;
Request_Deal <= '0';

WAIT;

END PROCESS generate_test;

END g58_lab4_arch;