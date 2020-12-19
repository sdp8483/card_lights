EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Device:Battery_Cell BT1
U 1 1 5FAFD2A3
P 5500 3800
F 0 "BT1" H 5600 3900 50  0000 L CNN
F 1 "Battery_Cell" H 5600 3800 50  0000 L CNN
F 2 "pl_Linx_battery_holder:BAT-HLD-001" V 5500 3860 50  0001 C CNN
F 3 "~" V 5500 3860 50  0001 C CNN
	1    5500 3800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5FAFE65A
P 6000 3300
F 0 "SW1" H 6050 3400 50  0000 L CNN
F 1 "SW_Push" H 6000 3240 50  0000 C CNN
F 2 "pl_Tactile_Switch_SMD:Bright_TSA123G60-250" H 6000 3500 50  0001 C CNN
F 3 "~" H 6000 3500 50  0001 C CNN
	1    6000 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FAFED22
P 6650 3150
F 0 "R1" V 6730 3150 50  0000 C CNN
F 1 "1k" V 6650 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6580 3150 50  0001 C CNN
F 3 "~" H 6650 3150 50  0001 C CNN
	1    6650 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FAFF166
P 6650 3450
F 0 "R2" V 6730 3450 50  0000 C CNN
F 1 "1k" V 6650 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6580 3450 50  0001 C CNN
F 3 "~" H 6650 3450 50  0001 C CNN
	1    6650 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 3600 5500 3300
Wire Wire Line
	5500 3300 5800 3300
Wire Wire Line
	6500 3150 6400 3150
Wire Wire Line
	6400 3150 6400 3300
Wire Wire Line
	6400 3450 6500 3450
Wire Wire Line
	6200 3300 6400 3300
Connection ~ 6400 3300
Wire Wire Line
	6400 3300 6400 3450
Wire Wire Line
	6800 3150 6950 3150
Wire Wire Line
	6950 3150 6950 3300
Wire Wire Line
	6950 3450 6800 3450
Wire Wire Line
	7250 3300 6950 3300
Connection ~ 6950 3300
Wire Wire Line
	6950 3300 6950 3450
$Comp
L power:GND #PWR01
U 1 1 5FB01DBE
P 5500 4000
F 0 "#PWR01" H 5500 3750 50  0001 C CNN
F 1 "GND" H 5500 3850 50  0000 C CNN
F 2 "" H 5500 4000 50  0001 C CNN
F 3 "" H 5500 4000 50  0001 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FB02062
P 7650 3400
F 0 "#PWR02" H 7650 3150 50  0001 C CNN
F 1 "GND" H 7650 3250 50  0000 C CNN
F 2 "" H 7650 3400 50  0001 C CNN
F 3 "" H 7650 3400 50  0001 C CNN
	1    7650 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3200 7650 3400
Wire Wire Line
	5500 3900 5500 4000
$Comp
L Connector:TestPoint TP1
U 1 1 5FB035F9
P 7250 3200
F 0 "TP1" H 7250 3470 50  0000 C CNN
F 1 "TestPoint" H 7250 3400 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 7450 3200 50  0001 C CNN
F 3 "~" H 7450 3200 50  0001 C CNN
	1    7250 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5FB03966
P 7650 3200
F 0 "TP2" H 7650 3470 50  0000 C CNN
F 1 "TestPoint" H 7650 3400 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 7850 3200 50  0001 C CNN
F 3 "~" H 7850 3200 50  0001 C CNN
	1    7650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3300 7250 3200
Text Notes 7100 2800 0    50   ~ 0
Solder String LED to TP
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FB0630F
P 4500 4000
F 0 "#FLG0101" H 4500 4075 50  0001 C CNN
F 1 "PWR_FLAG" H 4500 4150 50  0000 C CNN
F 2 "" H 4500 4000 50  0001 C CNN
F 3 "~" H 4500 4000 50  0001 C CNN
	1    4500 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FB066C2
P 4500 4100
F 0 "#PWR0101" H 4500 3850 50  0001 C CNN
F 1 "GND" H 4500 3950 50  0000 C CNN
F 2 "" H 4500 4100 50  0001 C CNN
F 3 "" H 4500 4100 50  0001 C CNN
	1    4500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4100 4500 4000
$EndSCHEMATC