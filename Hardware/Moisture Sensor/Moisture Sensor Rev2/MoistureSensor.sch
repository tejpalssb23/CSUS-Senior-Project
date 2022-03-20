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
L Timer:NE555D U2
U 1 1 5FFE948C
P 3600 2575
F 0 "U2" H 3625 2575 50  0000 C CNN
F 1 "TLC555CDR" H 3325 2975 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4450 2175 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 4450 2175 50  0001 C CNN
	1    3600 2575
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5FFED521
P 2575 2950
F 0 "C1" H 2483 2996 50  0000 R CNN
F 1 "470pF" H 2483 2905 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2575 2950 50  0001 C CNN
F 3 "~" H 2575 2950 50  0001 C CNN
	1    2575 2950
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5FFEF666
P 2575 2175
F 0 "R1" H 2507 2221 50  0000 R CNN
F 1 "330" H 2507 2130 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2575 2175 50  0001 C CNN
F 3 "~" H 2575 2175 50  0001 C CNN
	1    2575 2175
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5FFF14C3
P 2575 2625
F 0 "R2" H 2507 2671 50  0000 R CNN
F 1 "1.5k" H 2507 2580 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2575 2625 50  0001 C CNN
F 3 "~" H 2575 2625 50  0001 C CNN
	1    2575 2625
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FFF19EE
P 3600 3150
F 0 "#PWR0102" H 3600 2900 50  0001 C CNN
F 1 "GND" H 3605 2977 50  0000 C CNN
F 2 "" H 3600 3150 50  0001 C CNN
F 3 "" H 3600 3150 50  0001 C CNN
	1    3600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2775 2575 2775
Wire Wire Line
	2575 2775 2575 2725
Connection ~ 2575 2775
Wire Wire Line
	2575 2775 2575 2850
Wire Wire Line
	3100 2575 3100 2775
Connection ~ 3100 2775
Wire Wire Line
	2575 2275 2575 2375
Wire Wire Line
	2575 2375 3100 2375
Connection ~ 2575 2375
Wire Wire Line
	2575 2375 2575 2525
Text Notes 2450 1450 0    50   ~ 0
Appx 700khz
Wire Wire Line
	3600 3050 3600 2975
$Comp
L power:+5V #PWR0103
U 1 1 5FFFA0D2
P 3600 1825
F 0 "#PWR0103" H 3600 1675 50  0001 C CNN
F 1 "+5V" H 3615 1998 50  0000 C CNN
F 2 "" H 3600 1825 50  0001 C CNN
F 3 "" H 3600 1825 50  0001 C CNN
	1    3600 1825
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5FFFC47F
P 2575 2075
F 0 "#PWR0104" H 2575 1925 50  0001 C CNN
F 1 "+5V" H 2590 2248 50  0000 C CNN
F 2 "" H 2575 2075 50  0001 C CNN
F 3 "" H 2575 2075 50  0001 C CNN
	1    2575 2075
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5FFFC8AB
P 3875 1875
F 0 "C4" V 3646 1875 50  0000 C CNN
F 1 "100nF" V 3737 1875 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3875 1875 50  0001 C CNN
F 3 "~" H 3875 1875 50  0001 C CNN
	1    3875 1875
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FFFE466
P 3975 1875
F 0 "#PWR0105" H 3975 1625 50  0001 C CNN
F 1 "GND" H 3975 1725 50  0000 C CNN
F 2 "" H 3975 1875 50  0001 C CNN
F 3 "" H 3975 1875 50  0001 C CNN
	1    3975 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1825 3600 1875
Wire Wire Line
	3600 1875 3775 1875
Connection ~ 3600 1875
$Comp
L Device:C_Small C5
U 1 1 6000238B
P 4100 2875
F 0 "C5" H 4008 2921 50  0000 R CNN
F 1 "10nF" H 4008 2830 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4100 2875 50  0001 C CNN
F 3 "~" H 4100 2875 50  0001 C CNN
	1    4100 2875
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2575 3050 3600 3050
Wire Wire Line
	4100 3050 4100 2975
Connection ~ 3600 3050
Wire Wire Line
	3600 3050 4100 3050
Wire Wire Line
	3600 3050 3600 3150
Wire Wire Line
	4100 2375 4100 2175
Wire Wire Line
	4100 2175 3600 2175
Text Notes 2425 1375 0    94   ~ 0
Square Wave Sensor Exciter
$Comp
L Diode:1N4148 D1
U 1 1 60015DA9
P 9125 2300
F 0 "D1" H 9125 2083 50  0000 C CNN
F 1 "1N4148" H 9125 2174 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323F" H 9125 2125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9125 2300 50  0001 C CNN
	1    9125 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 6001579C
P 9350 2400
F 0 "C6" H 9442 2446 50  0000 L CNN
F 1 "1uF" H 9442 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9350 2400 50  0001 C CNN
F 3 "~" H 9350 2400 50  0001 C CNN
	1    9350 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 6001B2D2
P 9700 2400
F 0 "R4" H 9768 2446 50  0000 L CNN
F 1 "1M" H 9768 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9700 2400 50  0001 C CNN
F 3 "~" H 9700 2400 50  0001 C CNN
	1    9700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1875 3600 2175
Connection ~ 3600 2175
$Comp
L power:GND #PWR0106
U 1 1 6002970A
P 9525 2500
F 0 "#PWR0106" H 9525 2250 50  0001 C CNN
F 1 "GND" H 9530 2327 50  0000 C CNN
F 2 "" H 9525 2500 50  0001 C CNN
F 3 "" H 9525 2500 50  0001 C CNN
	1    9525 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2500 9525 2500
Connection ~ 9525 2500
Wire Wire Line
	9525 2500 9700 2500
Wire Wire Line
	9275 2300 9350 2300
Connection ~ 9350 2300
Wire Wire Line
	9350 2300 9700 2300
Connection ~ 9700 2300
Wire Wire Line
	9700 2300 9950 2300
$Comp
L Amplifier_Operational:OP07 U3
U 1 1 60039FFF
P 10250 2400
F 0 "U3" H 9900 2750 50  0000 L CNN
F 1 "OP07" H 9800 2675 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 10300 2450 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/OP07.pdf" H 10300 2550 50  0001 C CNN
	1    10250 2400
	1    0    0    -1  
$EndComp
NoConn ~ 10350 2700
NoConn ~ 10250 2700
$Comp
L power:GND #PWR0108
U 1 1 6003B436
P 10150 3050
F 0 "#PWR0108" H 10150 2800 50  0001 C CNN
F 1 "GND" H 10155 2877 50  0000 C CNN
F 2 "" H 10150 3050 50  0001 C CNN
F 3 "" H 10150 3050 50  0001 C CNN
	1    10150 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 6003C379
P 10150 2025
F 0 "#PWR0109" H 10150 1875 50  0001 C CNN
F 1 "+5V" H 10165 2198 50  0000 C CNN
F 2 "" H 10150 2025 50  0001 C CNN
F 3 "" H 10150 2025 50  0001 C CNN
	1    10150 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2775 10550 2775
Wire Wire Line
	10550 2775 10550 2400
Wire Wire Line
	10150 2700 10150 3050
Wire Wire Line
	9950 2500 9950 2775
Text GLabel 4300 2575 2    50   Output ~ 0
MoistureSensor
$Comp
L LocalLibrary:MoistureSensor S1
U 1 1 60069A07
P 6400 2875
F 0 "S1" H 6930 3228 50  0000 L CNN
F 1 "MoistureSensor" H 6930 3137 50  0000 L CNN
F 2 "MoistureSensor:MoistureSensor" H 6400 2875 94  0001 C CNN
F 3 "" H 6400 2875 94  0001 C CNN
	1    6400 2875
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 60017B58
P 4200 2575
F 0 "R3" V 3995 2575 50  0000 C CNN
F 1 "10k" V 4086 2575 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4200 2575 50  0001 C CNN
F 3 "~" H 4200 2575 50  0001 C CNN
	1    4200 2575
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 60074BB0
P 5775 1775
F 0 "#PWR0110" H 5775 1525 50  0001 C CNN
F 1 "GND" H 5780 1602 50  0000 C CNN
F 2 "" H 5775 1775 50  0001 C CNN
F 3 "" H 5775 1775 50  0001 C CNN
	1    5775 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	5775 1775 6000 1775
$Comp
L power:GND #PWR0111
U 1 1 600755FA
P 7075 1775
F 0 "#PWR0111" H 7075 1525 50  0001 C CNN
F 1 "GND" H 7080 1602 50  0000 C CNN
F 2 "" H 7075 1775 50  0001 C CNN
F 3 "" H 7075 1775 50  0001 C CNN
	1    7075 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1775 7075 1775
Text GLabel 6475 1575 2    50   Output ~ 0
MoistureSensor
Text GLabel 8975 2300 0    50   Input ~ 0
MoistureSensor
Wire Wire Line
	6475 1575 6400 1575
Wire Wire Line
	6400 1575 6400 1775
Text Notes 5900 1375 0    94   ~ 0
Moisture Sensor
Text Notes 9150 1400 0    94   ~ 0
Signal Conditioning\n
Text GLabel 10550 2400 2    50   Input ~ 0
Sig
$Comp
L Device:C_Small C7
U 1 1 60087025
P 10400 2025
F 0 "C7" V 10171 2025 50  0000 C CNN
F 1 "100nF" V 10262 2025 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10400 2025 50  0001 C CNN
F 3 "~" H 10400 2025 50  0001 C CNN
	1    10400 2025
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 6008702B
P 10500 2025
F 0 "#PWR0112" H 10500 1775 50  0001 C CNN
F 1 "GND" H 10500 1875 50  0000 C CNN
F 2 "" H 10500 2025 50  0001 C CNN
F 3 "" H 10500 2025 50  0001 C CNN
	1    10500 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 2025 10150 2025
Wire Wire Line
	10150 2100 10150 2025
Connection ~ 10150 2025
Text Notes 2850 4225 0    94   ~ 0
5V 100mA Regulator\n
$Comp
L power:GND #PWR0113
U 1 1 600A05FB
P 3550 5200
F 0 "#PWR0113" H 3550 4950 50  0001 C CNN
F 1 "GND" H 3555 5027 50  0000 C CNN
F 2 "" H 3550 5200 50  0001 C CNN
F 3 "" H 3550 5200 50  0001 C CNN
	1    3550 5200
	1    0    0    -1  
$EndComp
Connection ~ 4125 4700
Wire Wire Line
	4000 4700 4125 4700
Wire Wire Line
	2900 4700 3100 4700
Connection ~ 2900 4700
$Comp
L Device:C C3
U 1 1 6009C941
P 4125 4850
F 0 "C3" H 4240 4896 50  0000 L CNN
F 1 "10uF" H 4240 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4163 4700 50  0001 C CNN
F 3 "~" H 4125 4850 50  0001 C CNN
	1    4125 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6009B609
P 2900 4850
F 0 "C2" H 3015 4896 50  0000 L CNN
F 1 "10uF" H 3015 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2938 4700 50  0001 C CNN
F 3 "~" H 2900 4850 50  0001 C CNN
	1    2900 4850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0114
U 1 1 6009A86F
P 2300 4700
F 0 "#PWR0114" H 2300 4550 50  0001 C CNN
F 1 "VCC" H 2315 4873 50  0000 C CNN
F 2 "" H 2300 4700 50  0001 C CNN
F 3 "" H 2300 4700 50  0001 C CNN
	1    2300 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 60099F8D
P 4675 4700
F 0 "#PWR0115" H 4675 4550 50  0001 C CNN
F 1 "+5V" H 4690 4873 50  0000 C CNN
F 2 "" H 4675 4700 50  0001 C CNN
F 3 "" H 4675 4700 50  0001 C CNN
	1    4675 4700
	1    0    0    -1  
$EndComp
$Comp
L HT75501SOT89TRLF:HT7550-1-SOT89TRLF U1
U 1 1 600949BF
P 3550 4650
F 0 "U1" H 3550 4750 60  0000 C CNN
F 1 "HT7550" H 3550 4850 60  0000 C CNN
F 2 "HT75501SOT89TRLF:HT7550-1-SOT89TRLF" H 4350 4890 60  0001 C CNN
F 3 "" H 3550 4650 60  0000 C CNN
	1    3550 4650
	1    0    0    -1  
$EndComp
Wire Notes Line
	5050 600  5050 6225
Wire Notes Line
	5050 6225 5200 6225
Wire Notes Line
	2275 3900 10625 3900
Wire Notes Line
	7850 3900 7850 650 
Wire Notes Line
	7850 650  7875 650 
Wire Notes Line
	2150 625  2150 6275
Wire Notes Line
	2150 6275 2125 6275
Text Notes 800  1775 0    94   ~ 0
Connector
Text Notes 2850 5875 0    50   ~ 0
Dropout: 55mV\n\n= VCC must be greater than 5.055V + drop across wire!
$Comp
L Connector:RJ45 J1
U 1 1 601BD060
P 1000 2750
F 0 "J1" H 1057 3417 50  0000 C CNN
F 1 "RJ45" H 1057 3326 50  0000 C CNN
F 2 "54602-908LF:AMPHENOL_54602-908LF" V 1000 2775 50  0001 C CNN
F 3 "~" V 1000 2775 50  0001 C CNN
	1    1000 2750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0116
U 1 1 601D649F
P 1600 4000
F 0 "#PWR0116" H 1600 3850 50  0001 C CNN
F 1 "VCC" H 1615 4173 50  0000 C CNN
F 2 "" H 1600 4000 50  0001 C CNN
F 3 "" H 1600 4000 50  0001 C CNN
	1    1600 4000
	1    0    0    -1  
$EndComp
Text GLabel 1700 4775 2    50   Input ~ 0
Sig
$Comp
L Connector:RJ45 J2
U 1 1 601D64A6
P 1025 4575
F 0 "J2" H 1082 5242 50  0000 C CNN
F 1 "RJ45" H 1082 5151 50  0000 C CNN
F 2 "54602-908LF:AMPHENOL_54602-908LF" V 1025 4600 50  0001 C CNN
F 3 "~" V 1025 4600 50  0001 C CNN
	1    1025 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	1425 4175 1600 4175
Wire Wire Line
	1600 4175 1600 4000
Wire Wire Line
	1425 4775 1700 4775
Text GLabel 1700 4375 2    50   Input ~ 0
LED_AUX
Text Notes 8075 5825 0    50   ~ 0
Rev2 Changelog:\n\n- Replaced 1x03 header with RJ45 connector x2  \n\n- Added LED signal to input\n\n- Added fuse before LDO\n\n- Added LED power on indicator\n\n- Added LED_AUX for misc signalling\n\n- Reverted to downloaded HT7550 footprint\n\n- Changed 1.6k JLC extended resistor to 1.5k JLC basic resistor
$Comp
L Device:Polyfuse_Small F1
U 1 1 601E8645
P 2600 4700
F 0 "F1" V 2395 4700 50  0000 C CNN
F 1 "50mA" V 2486 4700 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 2650 4500 50  0001 L CNN
F 3 "~" H 2600 4700 50  0001 C CNN
	1    2600 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 4700 2900 4700
Wire Wire Line
	2300 4700 2500 4700
Text Notes 6000 4200 0    94   ~ 0
Indicator LED\n
Connection ~ 3550 5200
Wire Wire Line
	4125 5000 4125 5200
Wire Wire Line
	3550 5200 3550 5150
Connection ~ 4125 5200
Wire Wire Line
	3550 5200 4125 5200
Wire Wire Line
	3550 5200 2900 5200
Wire Wire Line
	2900 5000 2900 5200
Wire Wire Line
	4125 5200 4575 5200
Connection ~ 4575 4700
Wire Wire Line
	4575 4700 4675 4700
Wire Wire Line
	4125 4700 4575 4700
$Comp
L Device:R_Small_US R5
U 1 1 60219AA9
P 4575 5100
F 0 "R5" H 4700 5100 50  0000 L CNN
F 1 "1.1k" H 4700 5025 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4575 5100 50  0001 C CNN
F 3 "~" H 4575 5100 50  0001 C CNN
	1    4575 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 601E9D88
P 4575 4850
F 0 "D2" V 4625 4625 50  0000 L CNN
F 1 "RED LED" V 4550 4400 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 4575 4850 50  0001 C CNN
F 3 "~" H 4575 4850 50  0001 C CNN
	1    4575 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 6025915F
P 6400 5550
F 0 "#PWR0118" H 6400 5300 50  0001 C CNN
F 1 "GND" H 6405 5377 50  0000 C CNN
F 2 "" H 6400 5550 50  0001 C CNN
F 3 "" H 6400 5550 50  0001 C CNN
	1    6400 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 60257511
P 6400 5050
F 0 "R6" H 6525 5050 50  0000 L CNN
F 1 "1.1k" H 6525 4975 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6400 5050 50  0001 C CNN
F 3 "~" H 6400 5050 50  0001 C CNN
	1    6400 5050
	1    0    0    -1  
$EndComp
Text GLabel 5900 5350 0    50   Input ~ 0
LED_AUX
$Comp
L Device:LED D3
U 1 1 60212DDC
P 6400 4800
F 0 "D3" V 6425 4575 50  0000 L CNN
F 1 "BLUE LED" V 6350 4300 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6400 4800 50  0001 C CNN
F 3 "~" H 6400 4800 50  0001 C CNN
	1    6400 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 6020DA5E
P 6400 4650
F 0 "#PWR0119" H 6400 4500 50  0001 C CNN
F 1 "+5V" H 6415 4823 50  0000 C CNN
F 2 "" H 6400 4650 50  0001 C CNN
F 3 "" H 6400 4650 50  0001 C CNN
	1    6400 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q1
U 1 1 60275821
P 6300 5350
F 0 "Q1" H 6491 5396 50  0000 L CNN
F 1 "Q_NPN_BEC" H 6491 5305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6500 5450 50  0001 C CNN
F 3 "~" H 6300 5350 50  0001 C CNN
	1    6300 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 60280265
P 6000 5350
F 0 "R7" V 5795 5350 50  0000 C CNN
F 1 "10k" V 5886 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6000 5350 50  0001 C CNN
F 3 "~" H 6000 5350 50  0001 C CNN
	1    6000 5350
	0    1    1    0   
$EndComp
Text Notes 7050 6975 0    197  Italic 0
Capacitive Moisture Sensor
Wire Wire Line
	1425 4375 1700 4375
Wire Wire Line
	1500 4875 1500 4975
Wire Wire Line
	1425 4875 1500 4875
Wire Wire Line
	1500 4575 1500 4675
Wire Wire Line
	1425 4575 1500 4575
$Comp
L power:GND #PWR0101
U 1 1 6023A230
P 1500 4975
F 0 "#PWR0101" H 1500 4725 50  0001 C CNN
F 1 "GND" H 1505 4802 50  0000 C CNN
F 2 "" H 1500 4975 50  0001 C CNN
F 3 "" H 1500 4975 50  0001 C CNN
	1    1500 4975
	1    0    0    -1  
$EndComp
Wire Wire Line
	1425 4275 1500 4275
Connection ~ 1500 4575
Wire Wire Line
	1425 4675 1500 4675
Wire Wire Line
	1500 4275 1500 4475
Wire Wire Line
	1500 4475 1500 4575
Wire Wire Line
	1425 4475 1500 4475
Connection ~ 1500 4475
$Comp
L power:VCC #PWR0107
U 1 1 6024E97E
P 1575 2175
F 0 "#PWR0107" H 1575 2025 50  0001 C CNN
F 1 "VCC" H 1590 2348 50  0000 C CNN
F 2 "" H 1575 2175 50  0001 C CNN
F 3 "" H 1575 2175 50  0001 C CNN
	1    1575 2175
	1    0    0    -1  
$EndComp
Text GLabel 1675 2950 2    50   Input ~ 0
Sig
Wire Wire Line
	1400 2350 1575 2350
Wire Wire Line
	1575 2350 1575 2175
Wire Wire Line
	1400 2950 1675 2950
Text GLabel 1675 2550 2    50   Input ~ 0
LED_AUX
Wire Wire Line
	1400 2550 1675 2550
Wire Wire Line
	1475 3050 1475 3150
Wire Wire Line
	1400 3050 1475 3050
Wire Wire Line
	1475 2750 1475 2850
Wire Wire Line
	1400 2750 1475 2750
$Comp
L power:GND #PWR0117
U 1 1 6024E98E
P 1475 3150
F 0 "#PWR0117" H 1475 2900 50  0001 C CNN
F 1 "GND" H 1480 2977 50  0000 C CNN
F 2 "" H 1475 3150 50  0001 C CNN
F 3 "" H 1475 3150 50  0001 C CNN
	1    1475 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2450 1475 2450
Connection ~ 1475 2750
Wire Wire Line
	1400 2850 1475 2850
Wire Wire Line
	1475 2450 1475 2650
Wire Wire Line
	1475 2650 1475 2750
Wire Wire Line
	1400 2650 1475 2650
Connection ~ 1475 2650
Wire Wire Line
	1500 4875 1500 4675
Connection ~ 1500 4875
Connection ~ 1500 4675
Wire Wire Line
	1475 3050 1475 2850
Connection ~ 1475 3050
Connection ~ 1475 2850
$EndSCHEMATC