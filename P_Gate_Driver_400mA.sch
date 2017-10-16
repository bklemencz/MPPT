EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:BK_Common
LIBS:MPPT-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Q_PNP_BEC Q?
U 1 1 59DF93D1
P 5300 2900
F 0 "Q?" H 5600 2950 50  0000 R CNN
F 1 "2N4403" H 5800 2850 50  0000 R CNN
F 2 "" H 5500 3000 50  0000 C CNN
F 3 "" H 5300 2900 50  0000 C CNN
	1    5300 2900
	1    0    0    1   
$EndComp
$Comp
L Q_NPN_BEC Q?
U 1 1 59DF948D
P 5300 2300
F 0 "Q?" H 5600 2350 50  0000 R CNN
F 1 "2N4401" H 5800 2250 50  0000 R CNN
F 2 "" H 5500 2400 50  0000 C CNN
F 3 "" H 5300 2300 50  0000 C CNN
	1    5300 2300
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BEC Q?
U 1 1 59DF94ED
P 4800 3500
F 0 "Q?" H 5100 3550 50  0000 R CNN
F 1 "2N4401" H 5300 3450 50  0000 R CNN
F 2 "" H 5000 3600 50  0000 C CNN
F 3 "" H 4800 3500 50  0000 C CNN
	1    4800 3500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 59DF95F8
P 4900 3900
F 0 "R?" H 4930 3920 50  0000 L CNN
F 1 "260" H 4930 3860 50  0000 L CNN
F 2 "" H 4900 3900 50  0000 C CNN
F 3 "" H 4900 3900 50  0000 C CNN
	1    4900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3500 4000 3500
Wire Wire Line
	4900 3700 4900 3800
Wire Wire Line
	4900 4000 4900 4200
Wire Wire Line
	5100 2900 5100 2300
$Comp
L R_Small R?
U 1 1 59DF96F8
P 4900 2300
F 0 "R?" H 4930 2320 50  0000 L CNN
F 1 "800" H 4930 2260 50  0000 L CNN
F 2 "" H 4900 2300 50  0000 C CNN
F 3 "" H 4900 2300 50  0000 C CNN
	1    4900 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 2000 5400 2100
Wire Wire Line
	4450 2000 5400 2000
Wire Wire Line
	4450 2600 5100 2600
Connection ~ 4900 2600
Connection ~ 5100 2600
$Comp
L ZENERsmall D?
U 1 1 59DF97DC
P 4450 2300
F 0 "D?" H 4450 2400 50  0000 C CNN
F 1 "9.1V" H 4450 2200 50  0000 C CNN
F 2 "" H 4450 2300 50  0000 C CNN
F 3 "" H 4450 2300 50  0000 C CNN
	1    4450 2300
	0    1    1    0   
$EndComp
Connection ~ 4900 2000
Wire Wire Line
	5400 2500 5400 2700
$Comp
L GND #PWR01
U 1 1 59DF9916
P 5400 3200
F 0 "#PWR01" H 5400 2950 50  0001 C CNN
F 1 "GND" H 5400 3050 50  0000 C CNN
F 2 "" H 5400 3200 50  0000 C CNN
F 3 "" H 5400 3200 50  0000 C CNN
	1    5400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3100 5400 3200
Wire Wire Line
	4900 1800 4900 2200
Wire Wire Line
	4900 2400 4900 3300
Connection ~ 5400 2600
Wire Wire Line
	4450 2200 4450 2000
Wire Wire Line
	4450 2400 4450 2600
$Comp
L C_Small C?
U 1 1 59DF9BC8
P 4750 3900
F 0 "C?" H 4760 3970 50  0000 L CNN
F 1 "100pF" H 4760 3820 50  0000 L CNN
F 2 "" H 4750 3900 50  0000 C CNN
F 3 "" H 4750 3900 50  0000 C CNN
	1    4750 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 3800 4750 3750
Wire Wire Line
	4750 3750 4900 3750
Connection ~ 4900 3750
Wire Wire Line
	4750 4000 4750 4100
Wire Wire Line
	4750 4100 4900 4100
Connection ~ 4900 4100
Text Notes 5150 4000 0    60   ~ 0
PWM: 3.3V RFE 2N4401: 40 min \n400ma/40 = 10mA Base current.\n(3.3-0.7)/10mA = 260R Collector resistor\n100pF speeding Cap, at switch stransient.
Text Notes 2800 2350 0    60   ~ 0
To have 8V static gate voltage:\n8V/Ic = 8V/10mA = 800R\n
$Comp
L R_Small R?
U 1 1 59DFA08D
P 5800 2600
F 0 "R?" H 5830 2620 50  0000 L CNN
F 1 "15R" H 5830 2560 50  0000 L CNN
F 2 "" H 5800 2600 50  0000 C CNN
F 3 "" H 5800 2600 50  0000 C CNN
	1    5800 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 2600 5700 2600
Wire Wire Line
	5900 2600 6500 2600
Text Notes 5950 2900 0    60   ~ 0
Gate Resistor:\n600mA peak at 9.1V\n9.1/600mA = 15R
Text HLabel 6500 2600 2    60   Input ~ 0
Gate
Text HLabel 4000 3500 0    60   Input ~ 0
PWM_In
Text HLabel 4000 4200 0    60   Input ~ 0
GND
Wire Wire Line
	4900 4200 4000 4200
Text HLabel 4000 1800 0    60   Input ~ 0
VCC
Wire Wire Line
	4000 1800 4900 1800
$EndSCHEMATC
