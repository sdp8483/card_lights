EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
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
L Connector:AVR-TPI-6 J1
U 1 1 5FEFB34C
P 5100 3500
F 0 "J1" H 4850 3850 50  0000 L CNN
F 1 "AVR-TPI-6" H 5100 3850 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 4850 3450 50  0001 C CNN
F 3 " ~" H 3825 2950 50  0001 C CNN
	1    5100 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 5FEFBF44
P 6200 2900
F 0 "J2" H 6200 3000 50  0000 C CNN
F 1 "POGO_PIN" H 6200 2800 50  0000 C CNN
F 2 "pl_pogo:pl_pogo_D1mm" H 6200 2900 50  0001 C CNN
F 3 "~" H 6200 2900 50  0001 C CNN
	1    6200 2900
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 5FEFC463
P 6200 3200
F 0 "J3" H 6200 3300 50  0000 C CNN
F 1 "POGO_PIN" H 6200 3100 50  0000 C CNN
F 2 "pl_pogo:pl_pogo_D1mm" H 6200 3200 50  0001 C CNN
F 3 "~" H 6200 3200 50  0001 C CNN
	1    6200 3200
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 5FEFC58E
P 6200 3500
F 0 "J4" H 6200 3600 50  0000 C CNN
F 1 "POGO_PIN" H 6200 3400 50  0000 C CNN
F 2 "pl_pogo:pl_pogo_D1mm" H 6200 3500 50  0001 C CNN
F 3 "~" H 6200 3500 50  0001 C CNN
	1    6200 3500
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 5FEFDB1E
P 6200 3800
F 0 "J5" H 6200 3900 50  0000 C CNN
F 1 "POGO_PIN" H 6200 3700 50  0000 C CNN
F 2 "pl_pogo:pl_pogo_D1mm" H 6200 3800 50  0001 C CNN
F 3 "~" H 6200 3800 50  0001 C CNN
	1    6200 3800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 5FEFDEB7
P 6200 4100
F 0 "J6" H 6200 4200 50  0000 C CNN
F 1 "POGO_PIN" H 6200 4000 50  0000 C CNN
F 2 "pl_pogo:pl_pogo_D1mm" H 6200 4100 50  0001 C CNN
F 3 "~" H 6200 4100 50  0001 C CNN
	1    6200 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 2900 5000 2900
Wire Wire Line
	5000 2900 5000 3100
Wire Wire Line
	6000 3500 5500 3500
Wire Wire Line
	6000 4100 5000 4100
Wire Wire Line
	5000 4100 5000 3900
Wire Wire Line
	6000 3800 5700 3800
Wire Wire Line
	5700 3800 5700 3600
Wire Wire Line
	5700 3600 5500 3600
Wire Wire Line
	6000 3200 5700 3200
Wire Wire Line
	5700 3200 5700 3400
Wire Wire Line
	5700 3400 5500 3400
Text Label 5900 2900 2    50   ~ 0
Vcc
Text Label 5900 4100 2    50   ~ 0
GND
Text Label 5900 3200 2    50   ~ 0
PB0
Text Label 5900 3500 2    50   ~ 0
PB1
Text Label 5900 3800 2    50   ~ 0
PB3
$EndSCHEMATC
