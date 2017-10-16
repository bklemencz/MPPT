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
Sheet 4 4
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
AR Path="/59DF9317/59DF93D1" Ref="Q?"  Part="1" 
AR Path="/59E49FD0/59DF93D1" Ref="Q?"  Part="1" 
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
AR Path="/59DF9317/59DF948D" Ref="Q?"  Part="1" 
AR Path="/59E49FD0/59DF948D" Ref="Q?"  Part="1" 
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
AR Path="/59DF9317/59DF94ED" Ref="Q?"  Part="1" 
AR Path="/59E49FD0/59DF94ED" Ref="Q?"  Part="1" 
F 0 "Q?" H 5100 3550 50  0000 R CNN
F 1 "2N4401" H 5300 3450 50  0000 R CNN
F 2 "" H 5000 3600 50  0000 C CNN
F 3 "" H 4800 3500 50  0000 C CNN
	1    4800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2900 5100 2300
Wire Wire Line
	5400 2000 5400 2100
Connection ~ 4900 2600
Connection ~ 5100 2600
Connection ~ 4900 2000
Wire Wire Line
	5400 2500 5400 2700
$Comp
L GND #PWR01
U 1 1 59DF9916
P 5400 3200
AR Path="/59DF9317/59DF9916" Ref="#PWR01"  Part="1" 
AR Path="/59E49FD0/59DF9916" Ref="#PWR01"  Part="1" 
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
Text Notes 5150 4000 0    60   ~ 0
PWM: 3.3V RFE 2N4401: 40 min \n400ma/40 = 10mA Base current.\n(3.3-0.7)/10mA = 260R Collector resistor
Text Notes 2800 2350 0    60   ~ 0
To have 8V static gate voltage:\n8V/Ic = 8V/10mA = 800R\nP = 0.08W -> 0805\n
Wire Wire Line
	5400 2600 5850 2600
Text Notes 6450 2950 0    60   ~ 0
Gate Resistor:\n600mA peak at 8V\n8/600mA = 15R
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
Wire Wire Line
	4900 3700 4900 4200
$Comp
L R_SMD_0805 R?
U 1 1 59E4A3D8
P 4300 3500
F 0 "R?" V 4400 3450 50  0000 L CNN
F 1 "260" V 4200 3450 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4350 3350 50  0001 C CNN
F 3 "" H 4300 3500 50  0000 C CNN
	1    4300 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 3500 4600 3500
Wire Wire Line
	4200 3500 4000 3500
Wire Wire Line
	5100 2600 4900 2600
Wire Wire Line
	4900 2000 6250 2000
$Comp
L ZENER D?
U 1 1 59E4A5C2
P 6250 2250
F 0 "D?" H 6250 2350 50  0000 C CNN
F 1 "ZENER" H 6250 2150 50  0000 C CNN
F 2 "" H 6250 2250 50  0000 C CNN
F 3 "" H 6250 2250 50  0000 C CNN
	1    6250 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 2000 6250 2050
Connection ~ 5400 2000
Wire Wire Line
	6250 2450 6250 2800
Connection ~ 6250 2600
$Comp
L SS14 D?
U 1 1 59E4A66C
P 5950 2800
F 0 "D?" H 5900 2880 50  0000 L CNN
F 1 "SS14" H 5850 2700 50  0000 L CNN
F 2 "Diodes_SMD:SMA_Standard" H 6000 2600 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88746/ss12.pdf" H 6000 2500 50  0001 C CNN
	1    5950 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 2600 6500 2600
Wire Wire Line
	5850 2800 5750 2800
Wire Wire Line
	5750 2800 5750 2600
Connection ~ 5750 2600
Wire Wire Line
	6250 2800 6050 2800
$Comp
L R_SMD_0805 R?
U 1 1 59E4A7F8
P 5950 2600
F 0 "R?" H 5980 2620 50  0000 L CNN
F 1 "15" H 5980 2560 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6000 2450 50  0001 C CNN
F 3 "" H 5950 2600 50  0000 C CNN
	1    5950 2600
	0    -1   -1   0   
$EndComp
$Comp
L R_SMD_0805 R?
U 1 1 59E4A883
P 4900 2300
F 0 "R?" H 4930 2320 50  0000 L CNN
F 1 "800" H 4930 2260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4950 2150 50  0001 C CNN
F 3 "" H 4900 2300 50  0000 C CNN
	1    4900 2300
	-1   0    0    1   
$EndComp
$EndSCHEMATC
