-- Samuel Johnson
-- 10/24/2024
-- PCB ADC Project, VHDL Code
-- Intro to Microcomputers
-- Dr. Joon Wan Kim
--
-- Oscillator runs at 32MHz
-- ADC returns 31250 KSPS
-- Display operates at selected speeds: 7800Hz, 3.8Hz, 1Hz or 0.5Hz
--
-- OPERATIONAL
--
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.std_logic_unsigned.ALL;

ENTITY main IS PORT(
    CLK : IN std_logic;

    ADC_CS : OUT std_logic;
    ADC_RD : OUT std_logic;
    ADC_RDY : IN std_logic;
    ADC_INT : IN std_logic;

    RST : IN std_logic;

    ADC0 : IN std_logic;
    ADC1 : IN std_logic;
    ADC2 : IN std_logic;
    ADC3 : IN std_logic;
    ADC4 : IN std_logic;
    ADC5 : IN std_logic;
    ADC6 : IN std_logic;
    ADC7 : IN std_logic;

    LED0 : OUT std_logic;
    LED1 : OUT std_logic;
    LED2 : OUT std_logic;
    LED3 : OUT std_logic;
    LED4 : OUT std_logic;
    LED5 : OUT std_logic;
    LED6 : OUT std_logic;
    LED7 : OUT std_logic;

    MODE0 : IN std_logic;
    MODE1 : IN std_logic;
    MODE2 : IN std_logic;
    MODE3 : IN std_logic;
    SPEED0 : IN std_logic;
    SPEED1 : IN std_logic;
    SPEED2 : IN std_logic;
    SPEED3 : IN std_logic

);
END main;

ARCHITECTURE adc OF main IS
    TYPE FSM IS (pause, absVal, binary, ref, diag, LEDoff, LEDon);
    SIGNAL state : FSM;
	-- Two seperate counters, one for ADC and another for Display
    SIGNAL timer7800: unsigned(24 downto 0) := "0000000000000000000000000";
    SIGNAL timer62500: unsigned(9 downto 0) := "0000000000";
    SIGNAL ADC_CLK: std_logic := '0';
    SIGNAL DSP_CLK: std_logic := '0';

    SIGNAL diagFlag: std_logic := '0';
	 SIGNAL pauseFlag: std_logic := '0';

    BEGIN

	--Simple Clock Divider to run ADC off of at 62.5 KSPS
    ADCClockDivider: PROCESS(CLK) IS BEGIN
        IF RISING_EDGE(CLK) THEN
            ADC_CLK <= timer62500(8);
			timer62500 <= timer62500 + 1;
        END if;
    END PROCESS;

	--Clock Divider to control Display with several speed options.
	--Oscillates clock when certain digits of timer7800 change. Index of that digit change depending on 'speed' switches
	--Pauses clock counter if pause button is hit.
    DisplayClockDivider: PROCESS(CLK) IS BEGIN
        IF RISING_EDGE(CLK) THEN
			IF SPEED0 = '1' THEN
				IF SPEED1 = '1' THEN
					--7800HZ
					DSP_CLK <= timer7800(10);
				ELSIF SPEED1 = '0' THEN
					--1HZ
					DSP_CLK <= timer7800(23);
				END IF;
			ELSIF SPEED0 = '0' THEN
				IF SPEED1 = '1' THEN
					--3.8HZ
					DSP_CLK <= timer7800(21);
				ELSIF SPEED1 = '0' THEN
					--0.5HZ
					DSP_CLK <= timer7800(24);
				END IF;
			END IF;
			IF pauseFlag = '0' THEN
				timer7800 <= timer7800 + 1;
			END IF;
        END IF;
    END PROCESS;
	 
	--Flips the pause flag if the RST button is pressed.
	SetReset: PROCESS(RST) IS BEGIN
		IF RST = '1' AND RST'EVENT THEN
			IF pauseFlag = '0' THEN
					pauseFlag <= '1';
			ELSIF pauseFlag = '1' THEN
					pauseFlag <= '0';
			END IF;
		END IF;
	END PROCESS;

	--Reads 'mode' switches to determine the state.
    ChangeState: PROCESS(CLK) IS BEGIN
        IF RISING_EDGE(CLK) THEN
            IF MODE0 = '1' THEN
                IF MODE1 = '1' THEN
                    IF MODE2 = '1' THEN
                        --0111, LEDon
                        state <= LEDon;
                    ELSE
                        --0011, diag
                        state <= diag;
                    END if;
                ELSIF MODE2 = '1' THEN
                    --0101, binary
                    state <= binary;
                ELSE
                    --0001, absVal
                    state <= absVal;
                END if;
            ELSIF MODE1 = '1' THEN
                --0010, ref
                state <= ref;
            ELSE
                --0000, off
                state <= LEDoff;
            END if;
        END if;
    END PROCESS;

	--Runs at display speed, determined by speed switches
	--Defines action of display depending on current state.
    Modes: PROCESS(DSP_CLK) IS BEGIN
		IF RISING_EDGE(DSP_CLK) THEN
        CASE state IS
			--Do nothing.
            WHEN pause =>
					
			--Absolute Value mode - each led ~32 from ADC output, so only read MSB top three 32-128
            WHEN absVal =>
                IF(ADC7 AND ADC6 AND ADC5 AND ADC4 AND ADC3 AND ADC2 AND ADC1 AND ADC0) = '1' THEN
                    LED0 <= '1';
                    LED1 <= '1';
                    LED2 <= '1';
                    LED3 <= '1';
                    LED4 <= '1';
                    LED5 <= '1';
                    LED6 <= '1';
                    LED7 <= '1';
                --if value is 111
                ELSIF(ADC7 AND ADC6 AND ADC5) = '1' THEN
                    LED0 <= '1';
                    LED1 <= '1';
                    LED2 <= '1';
                    LED3 <= '1';
                    LED4 <= '1';
                    LED5 <= '1';
                    LED6 <= '1';
                    LED7 <= '0';
                --if value is 110
                ELSIF(ADC7 AND ADC6 AND NOT(ADC5)) = '1' THEN
                    LED0 <= '1';
                    LED1 <= '1';
                    LED2 <= '1';
                    LED3 <= '1';
                    LED4 <= '1';
                    LED5 <= '1';
                    LED6 <= '0';
                    LED7 <= '0';
                --if value is 101
                ELSIF(ADC7 AND NOT(ADC6) AND ADC5) = '1' THEN
                    LED0 <= '1';
                    LED1 <= '1';
                    LED2 <= '1';
                    LED3 <= '1';
                    LED4 <= '1';
                    LED5 <= '0';
                    LED6 <= '0';
                    LED7 <= '0';
                --if value is 100
                ELSIF(ADC7 AND NOT(ADC6) AND NOT(ADC5)) = '1' THEN
                    LED0 <= '1';
                    LED1 <= '1';
                    LED2 <= '1';
                    LED3 <= '1';
                    LED4 <= '0';
                    LED5 <= '0';
                    LED6 <= '0';
                    LED7 <= '0';
                --if value is 011
                ELSIF(NOT(ADC7) AND ADC6 AND ADC5) = '1' THEN
                    LED0 <= '1';
                    LED1 <= '1';
                    LED2 <= '1';
                    LED3 <= '0';
                    LED4 <= '0';
                    LED5 <= '0';
                    LED6 <= '0';
                    LED7 <= '0';
                --if value is 010
                ELSIF(NOT(ADC7) AND ADC6 AND NOT(ADC5)) = '1' THEN
                    LED0 <= '1';
                    LED1 <= '1';
                    LED2 <= '0';
                    LED3 <= '0';
                    LED4 <= '0';
                    LED5 <= '0';
                    LED6 <= '0';
                    LED7 <= '0';
                --if value is 001
                ELSIF(NOT(ADC7) AND NOT(ADC6) AND ADC5) = '1' THEN 
                    LED0 <= '1';
                    LED1 <= '0';
                    LED2 <= '0';
                    LED3 <= '0';
                    LED4 <= '0';
                    LED5 <= '0';
                    LED6 <= '0';
                    LED7 <= '0';
                --if value is 000
                ELSIF(NOT(ADC7) AND NOT(ADC6) AND NOT(ADC5)) = '1' THEN 
                    LED0 <= '0';
                    LED1 <= '0';
                    LED2 <= '0';
                    LED3 <= '0';
                    LED4 <= '0';
                    LED5 <= '0';
                    LED6 <= '0';
                    LED7 <= '0';
                END IF;
			
			--Simply forward data from ADC
            WHEN binary =>
                LED0 <= ADC0;
                LED1 <= ADC1;
                LED2 <= ADC2;
                LED3 <= ADC3;
                LED4 <= ADC4;
                LED5 <= ADC5;
                LED6 <= ADC6;
                LED7 <= ADC7;
			
			--Similar to asbVal in operation, just light different LEDS from midpoint
            WHEN ref =>
                IF(ADC7 AND ADC6 AND ADC5 AND ADC4 AND ADC3 AND ADC2 AND ADC1 AND ADC0) = '1' THEN
                    LED0 <= '0';
                    LED1 <= '0';
                    LED2 <= '0';
                    LED3 <= '0';
                    LED4 <= '1';
                    LED5 <= '1';
                    LED6 <= '1';
                    LED7 <= '1';
                --if value is 111
                ELSIF(ADC7 AND ADC6 AND ADC5) = '1' THEN
                    LED0 <= '0';
                    LED1 <= '0';
                    LED2 <= '0';
                    LED3 <= '0';
                    LED4 <= '1';
                    LED5 <= '1';
                    LED6 <= '1';
                    LED7 <= '0';
                --if value is 110
                ELSIF(ADC7 AND ADC6 AND NOT(ADC5)) = '1' THEN
                    LED0 <= '0';
                    LED1 <= '0';
                    LED2 <= '0';
                    LED3 <= '0';
                    LED4 <= '1';
                    LED5 <= '1';
                    LED6 <= '0';
                    LED7 <= '0';
                --if value is 101
                ELSIF(ADC7 AND NOT(ADC6) AND ADC5) = '1' THEN
                    LED0 <= '0';
                    LED1 <= '0';
                    LED2 <= '0';
                    LED3 <= '0';
                    LED4 <= '1';
                    LED5 <= '0';
                    LED6 <= '0';
                    LED7 <= '0';
                --if value is 100
                ELSIF(ADC7 AND NOT(ADC6) AND NOT(ADC5)) = '1' THEN
                    LED0 <= '0';
                    LED1 <= '0';
                    LED2 <= '0';
                    LED3 <= '0';
                    LED4 <= '0';
                    LED5 <= '0';
                    LED6 <= '0';
                    LED7 <= '0';
                --if value is 011
                ELSIF(NOT(ADC7) AND ADC6 AND ADC5) = '1' THEN
                    LED0 <= '0';
                    LED1 <= '0';
                    LED2 <= '0';
                    LED3 <= '1';
                    LED4 <= '0';
                    LED5 <= '0';
                    LED6 <= '0';
                    LED7 <= '0';
                --if value is 010
                ELSIF(NOT(ADC7) AND ADC6 AND NOT(ADC5)) = '1' THEN
                    LED0 <= '0';
                    LED1 <= '0';
                    LED2 <= '1';
                    LED3 <= '1';
                    LED4 <= '0';
                    LED5 <= '0';
                    LED6 <= '0';
                    LED7 <= '0';
                --if value is 001
                ELSIF(NOT(ADC7) AND NOT(ADC6) AND ADC5) = '1' THEN 
                    LED0 <= '0';
                    LED1 <= '1';
                    LED2 <= '1';
                    LED3 <= '1';
                    LED4 <= '0';
                    LED5 <= '0';
                    LED6 <= '0';
                    LED7 <= '0';
                --if value is 000
                ELSIF(NOT(ADC7) AND NOT(ADC6) AND NOT(ADC5)) = '1' THEN 
                    LED0 <= '1';
                    LED1 <= '1';
                    LED2 <= '1';
                    LED3 <= '1';
                    LED4 <= '0';
                    LED5 <= '0';
                    LED6 <= '0';
                    LED7 <= '0';
                END IF;

			--Flip led operation to provide check for speed of display and LED operation
            WHEN diag =>
                IF diagFlag = '1' THEN
                    LED0 <= '0';
                    LED1 <= '1';
                    LED2 <= '0';
                    LED3 <= '1';
                    LED4 <= '0';
                    LED5 <= '1';
                    LED6 <= '0';
                    LED7 <= '1';
                    diagFlag <= NOT(diagFlag);
                ELSIF diagFlag = '0' THEN
                    LED0 <= '1';
                    LED1 <= '0';
                    LED2 <= '1';
                    LED3 <= '0';
                    LED4 <= '1';
                    LED5 <= '0';
                    LED6 <= '1';
                    LED7 <= '0';
                    diagFlag <= NOT(diagFlag);
                END if;

			--Turn LEDs off
            WHEN LEDoff =>
                LED0 <= '0';
                LED1 <= '0';
                LED2 <= '0';
                LED3 <= '0';
                LED4 <= '0';
                LED5 <= '0';
                LED6 <= '0';
                LED7 <= '0';

			--Turn LEDs on
            WHEN LEDon =>
                LED0 <= '1';
                LED1 <= '1';
                LED2 <= '1';
                LED3 <= '1';
                LED4 <= '1';
                LED5 <= '1';
                LED6 <= '1';
                LED7 <= '1';
        END CASE;
		END IF;
    END PROCESS;

	--Always be polling from ADC. ADC begins reading when CS and RD are low, and is ready when INT is low.
    RecieveADC: PROCESS(ADC_CLK) IS BEGIN
        IF (RISING_EDGE(ADC_CLK)) THEN
            ADC_CS <= '0';
            ADC_RD <= '0';
            IF (ADC_INT = '0') THEN
                ADC_RD <= '1';
                ADC_CS <= '1';
            END if;
        END if;
    END PROCESS;

END adc;