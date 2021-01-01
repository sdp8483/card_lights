EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Touch Card Lights"
Date "2020-12-31"
Rev "A"
Comp "Perry Leumas"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Battery_Cell BT1
U 1 1 5FAFD2A3
P 1400 2850
F 0 "BT1" H 1500 2950 50  0000 L CNN
F 1 "Battery_Cell" H 1500 2850 50  0000 L CNN
F 2 "pl_Linx_battery_holder:BAT-HLD-001" V 1400 2910 50  0001 C CNN
F 3 "~" V 1400 2910 50  0001 C CNN
	1    1400 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FAFED22
P 5550 4500
F 0 "R1" V 5630 4500 50  0000 C CNN
F 1 "91" V 5550 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5480 4500 50  0001 C CNN
F 3 "~" H 5550 4500 50  0001 C CNN
	1    5550 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FAFF166
P 5550 5000
F 0 "R2" V 5630 5000 50  0000 C CNN
F 1 "91" V 5550 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5480 5000 50  0001 C CNN
F 3 "~" H 5550 5000 50  0001 C CNN
	1    5550 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 2650 1400 2000
$Comp
L power:GND #PWR01
U 1 1 5FB01DBE
P 1400 3750
F 0 "#PWR01" H 1400 3500 50  0001 C CNN
F 1 "GND" H 1400 3600 50  0000 C CNN
F 2 "" H 1400 3750 50  0001 C CNN
F 3 "" H 1400 3750 50  0001 C CNN
	1    1400 3750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FB0630F
P 800 7650
F 0 "#FLG0101" H 800 7725 50  0001 C CNN
F 1 "PWR_FLAG" H 800 7800 50  0000 C CNN
F 2 "" H 800 7650 50  0001 C CNN
F 3 "~" H 800 7650 50  0001 C CNN
	1    800  7650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FB066C2
P 800 7750
F 0 "#PWR0101" H 800 7500 50  0001 C CNN
F 1 "GND" H 800 7600 50  0000 C CNN
F 2 "" H 800 7750 50  0001 C CNN
F 3 "" H 800 7750 50  0001 C CNN
	1    800  7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7750 800  7650
$Comp
L MCU_Microchip_ATtiny:ATtiny10-TS U1
U 1 1 5FDE147D
P 3400 2800
F 0 "U1" H 2900 3350 50  0000 L BNN
F 1 "ATtiny10-TS" H 3500 2250 50  0000 L TNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 3400 2800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8127-AVR-8-bit-Microcontroller-ATtiny4-ATtiny5-ATtiny9-ATtiny10_Datasheet.pdf" H 3400 2800 50  0001 C CNN
	1    3400 2800
	1    0    0    -1  
$EndComp
$Comp
L pl_tontek_touch_controller:TTP223E-HA6 U2
U 1 1 5FDEC827
P 6100 2400
F 0 "U2" H 6550 1450 50  0000 C CNN
F 1 "TTP223E-HA6" H 6100 2100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 6100 2400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810251711_Tontek-Design-Tech-TTP223E-HA6_C129459.pdf" H 6100 2400 50  0001 C CNN
	1    6100 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 2800 5000 2800
Wire Wire Line
	5000 2800 5000 2400
Text Label 4350 2800 2    50   ~ 0
PB3
Wire Wire Line
	1400 2000 3400 2000
Wire Wire Line
	6100 2000 6100 2200
Wire Wire Line
	3400 2200 3400 2000
Connection ~ 3400 2000
Wire Wire Line
	3400 2000 6100 2000
Wire Wire Line
	6100 3600 3400 3600
Wire Wire Line
	1400 2950 1400 3600
Connection ~ 1400 3600
Wire Wire Line
	1400 3600 1400 3750
Wire Wire Line
	6100 3600 6100 3400
Wire Wire Line
	3400 3400 3400 3600
Connection ~ 3400 3600
Text Notes 550  7400 0    50   ~ 0
ERC Happy Area
$Comp
L pl_tontek_touch_controller:touch_pad J1
U 1 1 5FE01661
P 8300 2400
F 0 "J1" H 8300 1850 50  0000 C CNN
F 1 "TOUCH PAD" H 8300 2400 50  0000 C CNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 8300 2400 50  0001 C CNN
F 3 "" H 8300 2400 50  0001 C CNN
	1    8300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2400 7500 2400
Text Label 7000 2400 2    50   ~ 0
TOUCH
$Comp
L power:+3V0 #PWR02
U 1 1 5FE032E1
P 1400 1850
F 0 "#PWR02" H 1400 1700 50  0001 C CNN
F 1 "+3V0" H 1400 1990 50  0000 C CNN
F 2 "" H 1400 1850 50  0001 C CNN
F 3 "" H 1400 1850 50  0001 C CNN
	1    1400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1850 1400 2000
Connection ~ 1400 2000
NoConn ~ 6700 2900
$Comp
L Device:C C2
U 1 1 5FE06C2D
P 6400 2000
F 0 "C2" H 6425 2100 50  0000 L CNN
F 1 "100n" H 6425 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6438 1850 50  0001 C CNN
F 3 "~" H 6400 2000 50  0001 C CNN
	1    6400 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FE06FA4
P 6700 2100
F 0 "#PWR04" H 6700 1850 50  0001 C CNN
F 1 "GND" H 6700 1950 50  0000 C CNN
F 2 "" H 6700 2100 50  0001 C CNN
F 3 "" H 6700 2100 50  0001 C CNN
	1    6700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2000 6700 2000
Wire Wire Line
	6700 2000 6700 2100
Wire Wire Line
	6250 2000 6100 2000
Connection ~ 6100 2000
$Comp
L Device:C C1
U 1 1 5FE09015
P 2500 2800
F 0 "C1" H 2525 2900 50  0000 L CNN
F 1 "100n" H 2525 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2538 2650 50  0001 C CNN
F 3 "~" H 2500 2800 50  0001 C CNN
	1    2500 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 3600 3400 3600
$Comp
L power:GND #PWR03
U 1 1 5FE0A626
P 2500 3050
F 0 "#PWR03" H 2500 2800 50  0001 C CNN
F 1 "GND" H 2500 2900 50  0000 C CNN
F 2 "" H 2500 3050 50  0001 C CNN
F 3 "" H 2500 3050 50  0001 C CNN
	1    2500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3050 2500 2950
Wire Wire Line
	3300 2100 3400 2000
Wire Wire Line
	3300 2100 2500 2100
Wire Wire Line
	2500 2100 2500 2650
$Comp
L Device:LED D1
U 1 1 5FE12AFB
P 7300 4750
F 0 "D1" H 7300 4850 50  0000 C CNN
F 1 "LED" H 7300 4650 50  0000 C CNN
F 2 "" H 7300 4750 50  0001 C CNN
F 3 "~" H 7300 4750 50  0001 C CNN
	1    7300 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5FE13239
P 7300 5250
F 0 "D3" H 7300 5350 50  0000 C CNN
F 1 "LED" H 7300 5150 50  0000 C CNN
F 2 "" H 7300 5250 50  0001 C CNN
F 3 "~" H 7300 5250 50  0001 C CNN
	1    7300 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5FE13901
P 8300 5000
F 0 "D5" H 8300 5100 50  0000 C CNN
F 1 "LED" H 8300 4900 50  0000 C CNN
F 2 "" H 8300 5000 50  0001 C CNN
F 3 "~" H 8300 5000 50  0001 C CNN
	1    8300 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5FE13D15
P 8800 5000
F 0 "D6" H 8800 5100 50  0000 C CNN
F 1 "LED" H 8800 4900 50  0000 C CNN
F 2 "" H 8800 5000 50  0001 C CNN
F 3 "~" H 8800 5000 50  0001 C CNN
	1    8800 5000
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5FE1423F
P 7800 5250
F 0 "D4" H 7800 5350 50  0000 C CNN
F 1 "LED" H 7800 5150 50  0000 C CNN
F 2 "" H 7800 5250 50  0001 C CNN
F 3 "~" H 7800 5250 50  0001 C CNN
	1    7800 5250
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5FE134DF
P 7800 4750
F 0 "D2" H 7800 4850 50  0000 C CNN
F 1 "LED" H 7800 4650 50  0000 C CNN
F 2 "" H 7800 4750 50  0001 C CNN
F 3 "~" H 7800 4750 50  0001 C CNN
	1    7800 4750
	0    -1   1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FE30139
P 5550 5500
F 0 "R3" V 5630 5500 50  0000 C CNN
F 1 "91" V 5550 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5480 5500 50  0001 C CNN
F 3 "~" H 5550 5500 50  0001 C CNN
	1    5550 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 4500 7300 4500
Wire Wire Line
	8800 4500 8800 4850
Wire Wire Line
	8800 5150 8800 5500
Wire Wire Line
	8800 5500 8300 5500
Wire Wire Line
	7300 5400 7300 5500
Connection ~ 7300 5500
Wire Wire Line
	7300 5500 6700 5500
Wire Wire Line
	7800 5400 7800 5500
Connection ~ 7800 5500
Wire Wire Line
	7800 5500 7300 5500
Wire Wire Line
	8300 5150 8300 5500
Connection ~ 8300 5500
Wire Wire Line
	8300 5500 7800 5500
Wire Wire Line
	8300 4850 8300 4500
Connection ~ 8300 4500
Wire Wire Line
	8300 4500 8800 4500
Wire Wire Line
	7800 4600 7800 4500
Connection ~ 7800 4500
Wire Wire Line
	7800 4500 8300 4500
Wire Wire Line
	7300 4600 7300 4500
Connection ~ 7300 4500
Wire Wire Line
	7300 4500 7800 4500
Wire Wire Line
	7300 4900 7300 5000
Wire Wire Line
	7800 4900 7800 5000
Wire Wire Line
	7800 5000 7300 5000
Connection ~ 7800 5000
Wire Wire Line
	7800 5000 7800 5100
Connection ~ 7300 5000
Wire Wire Line
	7300 5000 7300 5100
Wire Wire Line
	7300 5000 6700 5000
Text Label 4350 2500 2    50   ~ 0
PB0
Text Label 4350 2600 2    50   ~ 0
PB1
Text Label 4350 2700 2    50   ~ 0
PB2
Text Label 5050 4500 0    50   ~ 0
PB0
Text Label 5050 5000 0    50   ~ 0
PB1
Text Label 5050 5500 0    50   ~ 0
PB2
Wire Wire Line
	4850 2500 4850 4500
Wire Wire Line
	4000 2500 4850 2500
Wire Wire Line
	4750 5000 4750 2600
Wire Wire Line
	4000 2600 4750 2600
Wire Wire Line
	4650 2700 4650 5500
Wire Wire Line
	4000 2700 4650 2700
$Comp
L power:+3V0 #PWR0102
U 1 1 5FED4D9D
P 1300 7750
F 0 "#PWR0102" H 1300 7600 50  0001 C CNN
F 1 "+3V0" H 1300 7890 50  0000 C CNN
F 2 "" H 1300 7750 50  0001 C CNN
F 3 "" H 1300 7750 50  0001 C CNN
	1    1300 7750
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FED6909
P 1300 7650
F 0 "#FLG0102" H 1300 7725 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 7800 50  0000 C CNN
F 2 "" H 1300 7650 50  0001 C CNN
F 3 "~" H 1300 7650 50  0001 C CNN
	1    1300 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7650 1300 7750
Wire Notes Line
	550  7400 1550 7400
Wire Notes Line
	1550 7950 550  7950
Wire Notes Line
	550  7950 550  7300
Wire Notes Line
	550  7300 1550 7300
Wire Notes Line
	1550 7300 1550 7950
Text Notes 6300 4300 0    50   ~ 0
Offboard Charlieplex LEDs Wired Using Pads
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 5FF22C12
P 6000 4500
F 0 "J2" H 6000 4600 50  0000 C CNN
F 1 "LED_PAD" H 6000 4400 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 6000 4500 50  0001 C CNN
F 3 "~" H 6000 4500 50  0001 C CNN
	1    6000 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5800 4500 5700 4500
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 5FF27BC7
P 6000 5000
F 0 "J3" H 6000 5100 50  0000 C CNN
F 1 "LED_PAD" H 6000 4900 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 6000 5000 50  0001 C CNN
F 3 "~" H 6000 5000 50  0001 C CNN
	1    6000 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5800 5000 5700 5000
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 5FF28E57
P 6000 5500
F 0 "J4" H 6000 5600 50  0000 C CNN
F 1 "LED_PAD" H 6000 5400 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 6000 5500 50  0001 C CNN
F 3 "~" H 6000 5500 50  0001 C CNN
	1    6000 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5800 5500 5700 5500
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5FF2A82C
P 6500 4500
F 0 "J5" H 6500 4600 50  0000 C CNN
F 1 "LED_WIRE" H 6500 4400 50  0000 C CNN
F 2 "" H 6500 4500 50  0001 C CNN
F 3 "~" H 6500 4500 50  0001 C CNN
	1    6500 4500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J6
U 1 1 5FF2AF9D
P 6500 5000
F 0 "J6" H 6500 5100 50  0000 C CNN
F 1 "LED_WIRE" H 6500 4900 50  0000 C CNN
F 2 "" H 6500 5000 50  0001 C CNN
F 3 "~" H 6500 5000 50  0001 C CNN
	1    6500 5000
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J7
U 1 1 5FF2B2D1
P 6500 5500
F 0 "J7" H 6500 5600 50  0000 C CNN
F 1 "LED_WIRE" H 6500 5400 50  0000 C CNN
F 2 "" H 6500 5500 50  0001 C CNN
F 3 "~" H 6500 5500 50  0001 C CNN
	1    6500 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 4500 5400 4500
Wire Wire Line
	4750 5000 5400 5000
Wire Wire Line
	4650 5500 5400 5500
Wire Notes Line
	6300 4300 9000 4300
Wire Notes Line
	9000 5700 6300 5700
Wire Notes Line
	6300 5700 6300 4200
Wire Notes Line
	6300 4200 9000 4200
Wire Notes Line
	9000 4200 9000 5700
Text Notes 9000 5700 2    50   ~ 0
THIS AREA FOR REFERENCE ONLY
$Comp
L Device:C C3
U 1 1 5FEE0F0C
P 7500 2650
F 0 "C3" H 7525 2750 50  0000 L CNN
F 1 "10p" H 7525 2550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7538 2500 50  0001 C CNN
F 3 "~" H 7500 2650 50  0001 C CNN
	1    7500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2500 7500 2400
Connection ~ 7500 2400
Wire Wire Line
	7500 2400 7700 2400
$Comp
L power:GND #PWR06
U 1 1 5FEE26DA
P 7500 2850
F 0 "#PWR06" H 7500 2600 50  0001 C CNN
F 1 "GND" H 7500 2700 50  0000 C CNN
F 2 "" H 7500 2850 50  0001 C CNN
F 3 "" H 7500 2850 50  0001 C CNN
	1    7500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2850 7500 2800
Text Notes 7500 1850 0    50   ~ 0
Use C3 to adjust touch sensitivity\n1pF to 50pF suggested in datasheet\n10pF seems to be about right in prototype testing
Wire Notes Line style solid
	7500 2350 7500 1600
Wire Notes Line style solid
	7500 1600 9450 1600
Wire Notes Line style solid
	9450 1600 9450 1850
Wire Notes Line style solid
	9450 1850 7500 1850
Text Notes 8850 2450 0    50   ~ 0
For touch pad use flood fill on PCB back
Wire Wire Line
	5000 2400 5150 2400
Wire Wire Line
	5350 2400 5500 2400
$Comp
L Connector:TestPoint TP4
U 1 1 5FF0CDEF
P 3400 4600
F 0 "TP4" H 3400 4870 50  0000 C CNN
F 1 "TestPoint" H 3400 4800 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3600 4600 50  0001 C CNN
F 3 "~" H 3600 4600 50  0001 C CNN
	1    3400 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5FF0DBF1
P 3800 4600
F 0 "TP5" H 3800 4870 50  0000 C CNN
F 1 "TestPoint" H 3800 4800 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4000 4600 50  0001 C CNN
F 3 "~" H 4000 4600 50  0001 C CNN
	1    3800 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5FF0DEB0
P 3000 4600
F 0 "TP3" H 3000 4870 50  0000 C CNN
F 1 "TestPoint" H 3000 4800 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3200 4600 50  0001 C CNN
F 3 "~" H 3200 4600 50  0001 C CNN
	1    3000 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5FF0E406
P 2200 4600
F 0 "TP1" H 2200 4870 50  0000 C CNN
F 1 "TestPoint" H 2200 4800 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2400 4600 50  0001 C CNN
F 3 "~" H 2400 4600 50  0001 C CNN
	1    2200 4600
	1    0    0    -1  
$EndComp
Text Label 1600 4950 0    50   ~ 0
PB0
Text Label 1600 5050 0    50   ~ 0
PB1
Text Label 1600 5150 0    50   ~ 0
PB3
$Comp
L power:+3V0 #PWR0103
U 1 1 5FF139D5
P 1600 4800
F 0 "#PWR0103" H 1600 4650 50  0001 C CNN
F 1 "+3V0" H 1600 4940 50  0000 C CNN
F 2 "" H 1600 4800 50  0001 C CNN
F 3 "" H 1600 4800 50  0001 C CNN
	1    1600 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FF13F03
P 1600 5300
F 0 "#PWR0104" H 1600 5050 50  0001 C CNN
F 1 "GND" H 1600 5150 50  0000 C CNN
F 2 "" H 1600 5300 50  0001 C CNN
F 3 "" H 1600 5300 50  0001 C CNN
	1    1600 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5FF35544
P 2600 4600
F 0 "TP2" H 2600 4870 50  0000 C CNN
F 1 "TestPoint" H 2600 4800 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2800 4600 50  0001 C CNN
F 3 "~" H 2800 4600 50  0001 C CNN
	1    2600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4950 2600 4950
Wire Wire Line
	2600 4950 2600 4600
Wire Wire Line
	1600 5050 3000 5050
Wire Wire Line
	3000 5050 3000 4600
Wire Wire Line
	1600 5150 3400 5150
Wire Wire Line
	3400 5150 3400 4600
Wire Wire Line
	1600 4800 1600 4850
Wire Wire Line
	1600 4850 2200 4850
Wire Wire Line
	2200 4850 2200 4600
Wire Wire Line
	1600 5300 1600 5250
Wire Wire Line
	1600 5250 3800 5250
Wire Wire Line
	3800 5250 3800 4600
Text Notes 1400 4250 0    50   ~ 0
In System Programming Test Points
Wire Notes Line
	1400 4250 4000 4250
Wire Notes Line
	4000 5500 1400 5500
Wire Notes Line
	1400 5500 1400 4150
Wire Notes Line
	1400 4150 4000 4150
Wire Notes Line
	4000 4150 4000 5500
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 5FFB6D8B
P 5250 2400
F 0 "JP1" H 5250 2480 50  0000 C CNN
F 1 "PROG" H 5260 2340 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 5250 2400 50  0001 C CNN
F 3 "~" H 5250 2400 50  0001 C CNN
	1    5250 2400
	1    0    0    -1  
$EndComp
Text Notes 4750 2200 0    50   ~ 0
Cut jumper before programming
NoConn ~ 6700 3000
$EndSCHEMATC
