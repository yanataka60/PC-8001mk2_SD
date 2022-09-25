EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 13780 8268
encoding utf-8
Sheet 1 1
Title "PC-8001mk2_SD"
Date "2022-08-15"
Rev "Rev1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:PWR_FLAG #FLG02
U 1 1 626B92AA
P 1150 5400
F 0 "#FLG02" H 1150 5475 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 5573 50  0000 C CNN
F 2 "" H 1150 5400 50  0001 C CNN
F 3 "~" H 1150 5400 50  0001 C CNN
	1    1150 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 62901E30
P 1450 5300
F 0 "#PWR01" H 1450 5150 50  0001 C CNN
F 1 "+5V" H 1465 5473 50  0000 C CNN
F 2 "" H 1450 5300 50  0001 C CNN
F 3 "" H 1450 5300 50  0001 C CNN
	1    1450 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5300 1450 5400
Wire Wire Line
	1150 5400 1450 5400
Connection ~ 1450 5400
$Comp
L Device:CP1 C1
U 1 1 61AFFCD6
P 1450 5550
F 0 "C1" H 1565 5596 50  0000 L CNN
F 1 "100uF" H 1565 5505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1450 5550 50  0001 C CNN
F 3 "~" H 1450 5550 50  0001 C CNN
	1    1450 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61B04D1B
P 1450 5850
F 0 "#PWR02" H 1450 5600 50  0001 C CNN
F 1 "GND" H 1455 5677 50  0000 C CNN
F 2 "" H 1450 5850 50  0001 C CNN
F 3 "" H 1450 5850 50  0001 C CNN
	1    1450 5850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U2
U 1 1 621DA5E3
P 4250 1800
F 0 "U2" H 4250 2325 50  0000 C CNN
F 1 "74LS30" H 4250 2234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4250 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 4250 1800 50  0001 C CNN
	1    4250 1800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U2
U 2 1 621FB49F
P 5950 6000
F 0 "U2" H 6180 6046 50  0000 L CNN
F 1 "74LS30" H 6180 5955 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5950 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 5950 6000 50  0001 C CNN
	2    5950 6000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 7 1 62200B27
P 4850 6000
F 0 "U1" H 5080 6046 50  0000 L CNN
F 1 "74LS04" H 5080 5955 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4850 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4850 6000 50  0001 C CNN
	7    4850 6000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 6 1 6232F73D
P 6300 1500
F 0 "U1" H 6500 1250 50  0000 C CNN
F 1 "74LS04" H 6150 1250 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6300 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6300 1500 50  0001 C CNN
	6    6300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2300 3750 2300
Wire Wire Line
	3750 2300 3750 2100
Wire Wire Line
	3750 2100 3950 2100
$Comp
L power:+5V #PWR04
U 1 1 6252FE80
P 4300 2300
F 0 "#PWR04" H 4300 2150 50  0001 C CNN
F 1 "+5V" H 4315 2473 50  0000 C CNN
F 2 "" H 4300 2300 50  0001 C CNN
F 3 "" H 4300 2300 50  0001 C CNN
	1    4300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2200 3900 2200
Wire Wire Line
	3900 2200 3900 2400
Wire Wire Line
	3900 2400 4300 2400
Wire Wire Line
	4300 2400 4300 2300
$Comp
L Device:C C2
U 1 1 628C00D7
P 4400 6050
F 0 "C2" V 4250 6150 50  0000 C CNN
F 1 "0.1uF" V 4250 5900 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4438 5900 50  0001 C CNN
F 3 "~" H 4400 6050 50  0001 C CNN
	1    4400 6050
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 628E1651
P 5500 6050
F 0 "C3" V 5350 6150 50  0000 C CNN
F 1 "0.1uF" V 5350 5900 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5538 5900 50  0001 C CNN
F 3 "~" H 5500 6050 50  0001 C CNN
	1    5500 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 5900 4400 5400
Wire Wire Line
	5950 5400 5950 5500
Wire Wire Line
	4400 6200 4400 6600
Wire Wire Line
	4400 6600 4850 6600
Wire Wire Line
	4850 6600 4850 6500
Wire Wire Line
	4850 6600 5500 6600
Wire Wire Line
	5950 6600 5950 6500
Connection ~ 4850 6600
Wire Wire Line
	5500 6200 5500 6600
Connection ~ 5500 6600
Wire Wire Line
	5500 6600 5950 6600
$Comp
L power:GND #PWR06
U 1 1 62BBAEEE
P 4400 6700
F 0 "#PWR06" H 4400 6450 50  0001 C CNN
F 1 "GND" H 4405 6527 50  0000 C CNN
F 2 "" H 4400 6700 50  0001 C CNN
F 3 "" H 4400 6700 50  0001 C CNN
	1    4400 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 62C0DD1E
P 4400 5300
F 0 "#PWR05" H 4400 5150 50  0001 C CNN
F 1 "+5V" H 4415 5473 50  0000 C CNN
F 2 "" H 4400 5300 50  0001 C CNN
F 3 "" H 4400 5300 50  0001 C CNN
	1    4400 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5300 4400 5400
Connection ~ 4400 5400
Wire Wire Line
	4400 6600 4400 6700
Connection ~ 4400 6600
$Comp
L 74xx:74LS04 U1
U 4 1 63D902FA
P 3200 2300
F 0 "U1" H 3000 2000 50  0000 C CNN
F 1 "74LS04" H 3300 2000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3200 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3200 2300 50  0001 C CNN
	4    3200 2300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 5 1 63D917E4
P 3200 1350
F 0 "U1" H 3200 1667 50  0000 C CNN
F 1 "74LS04" H 3200 1576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3200 1350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3200 1350 50  0001 C CNN
	5    3200 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4900 5900 4900
Wire Wire Line
	2450 4800 5800 4800
Wire Wire Line
	5900 800  8600 800 
Wire Wire Line
	5900 1500 5900 4900
Connection ~ 5900 1500
Wire Wire Line
	6000 1500 5900 1500
Wire Wire Line
	6600 1500 6750 1500
Wire Wire Line
	5900 800  5900 1500
Wire Wire Line
	8600 2200 8700 2200
Wire Wire Line
	8600 800  8600 2200
Wire Wire Line
	8150 4000 10250 4000
Wire Wire Line
	8150 2400 8700 2400
Wire Wire Line
	8150 2500 8700 2500
Wire Wire Line
	8150 2600 8700 2600
Wire Wire Line
	8150 2700 8700 2700
Wire Wire Line
	8150 2800 8700 2800
Wire Wire Line
	8150 2900 8700 2900
Wire Wire Line
	8150 3000 8700 3000
Wire Wire Line
	8150 3100 8700 3100
Wire Wire Line
	5100 3400 6750 3400
Wire Wire Line
	5100 3300 6750 3300
Wire Wire Line
	5100 3200 6750 3200
Wire Wire Line
	5100 3100 6750 3100
Wire Wire Line
	5100 3000 6750 3000
Wire Wire Line
	5100 2900 6750 2900
Wire Wire Line
	5100 2800 6750 2800
Wire Wire Line
	5100 2700 6750 2700
Wire Wire Line
	5800 2000 6750 2000
Wire Wire Line
	5800 4800 5800 2000
Wire Wire Line
	5700 1900 6750 1900
Wire Wire Line
	5700 4700 5700 1900
Wire Wire Line
	5100 2300 6750 2300
Wire Wire Line
	5100 2400 6750 2400
Wire Wire Line
	8150 1500 10350 1500
Wire Wire Line
	8150 1600 10250 1600
Wire Wire Line
	8150 1700 8500 1700
Wire Wire Line
	8150 1800 8400 1800
Wire Wire Line
	10100 2300 10100 2000
Wire Wire Line
	9900 2300 10100 2300
NoConn ~ 8700 2000
NoConn ~ 8700 2100
NoConn ~ 8700 2300
NoConn ~ 9200 3500
NoConn ~ 9300 3500
NoConn ~ 9900 2200
NoConn ~ 9900 2000
NoConn ~ 8150 3900
NoConn ~ 8150 3800
NoConn ~ 8150 3700
NoConn ~ 8150 3600
NoConn ~ 8150 3400
NoConn ~ 8150 3300
NoConn ~ 8150 2200
NoConn ~ 8150 2100
NoConn ~ 8150 2000
NoConn ~ 8150 1900
$Comp
L power:+5V #PWR012
U 1 1 621E99AD
P 10100 2000
F 0 "#PWR012" H 10100 1850 50  0001 C CNN
F 1 "+5V" H 10115 2173 50  0000 C CNN
F 2 "" H 10100 2000 50  0001 C CNN
F 3 "" H 10100 2000 50  0001 C CNN
	1    10100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2100 10000 3300
Wire Wire Line
	9900 2100 10000 2100
$Comp
L power:GND #PWR011
U 1 1 621A9C99
P 10000 3300
F 0 "#PWR011" H 10000 3050 50  0001 C CNN
F 1 "GND" H 10005 3127 50  0000 C CNN
F 2 "" H 10000 3300 50  0001 C CNN
F 3 "" H 10000 3300 50  0001 C CNN
	1    10000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3700 9500 3500
Wire Wire Line
	8400 3700 9500 3700
Wire Wire Line
	8400 1800 8400 3700
Wire Wire Line
	9400 3600 9400 3500
Wire Wire Line
	8500 3600 9400 3600
Wire Wire Line
	8500 1700 8500 3600
Wire Wire Line
	10250 2400 9900 2400
Wire Wire Line
	10250 1600 10250 2400
Wire Wire Line
	10350 2500 9900 2500
Wire Wire Line
	10350 1500 10350 2500
Wire Wire Line
	10350 2600 9900 2600
Wire Wire Line
	10350 4100 10350 2600
Wire Wire Line
	8300 4100 10350 4100
Wire Wire Line
	8300 3500 8300 4100
Wire Wire Line
	8150 3500 8300 3500
Wire Wire Line
	10250 2700 9900 2700
Wire Wire Line
	10250 4000 10250 2700
Connection ~ 7450 1200
$Comp
L power:+5V #PWR07
U 1 1 61F63930
P 7450 1200
F 0 "#PWR07" H 7450 1050 50  0001 C CNN
F 1 "+5V" H 7465 1373 50  0000 C CNN
F 2 "" H 7450 1200 50  0001 C CNN
F 3 "" H 7450 1200 50  0001 C CNN
	1    7450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1200 7450 1200
Wire Wire Line
	6700 4450 6700 1200
Wire Wire Line
	6800 4450 6700 4450
Connection ~ 7450 4450
Wire Wire Line
	7450 4400 7450 4450
Wire Wire Line
	7450 4450 7450 4500
Wire Wire Line
	7100 4450 7450 4450
$Comp
L power:GND #PWR08
U 1 1 61F38F70
P 7450 4500
F 0 "#PWR08" H 7450 4250 50  0001 C CNN
F 1 "GND" H 7455 4327 50  0000 C CNN
F 2 "" H 7450 4500 50  0001 C CNN
F 3 "" H 7450 4500 50  0001 C CNN
	1    7450 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61F2D5C6
P 6950 4450
F 0 "C4" V 6800 4550 50  0000 C CNN
F 1 "0.1uF" V 6800 4300 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 6988 4300 50  0001 C CNN
F 3 "~" H 6950 4450 50  0001 C CNN
	1    6950 4450
	0    -1   -1   0   
$EndComp
$Comp
L Interface:8255 U3
U 1 1 618A36EE
P 7450 2800
F 0 "U3" H 7050 4300 50  0000 C CNN
F 1 "8255" H 7850 4300 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_LongPads" H 7450 3100 50  0001 C CNN
F 3 "http://aturing.umcs.maine.edu/~meadow/courses/cos335/Intel8255A.pdf" H 7450 3100 50  0001 C CNN
	1    7450 2800
	1    0    0    -1  
$EndComp
$Comp
L Arduino:Arduino_Pro_Mini U4
U 1 1 61A254A8
P 9300 2600
F 0 "U4" H 9300 3489 60  0000 C CNN
F 1 "Arduino_Pro_Mini_5V" H 9300 3383 60  0000 C CNN
F 2 "Kicad2-2:Arduino_Pro_Mini" H 10100 1850 60  0001 C CNN
F 3 "https://www.sparkfun.com/products/11113" H 9500 1400 60  0001 C CNN
	1    9300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5400 5950 5400
Wire Wire Line
	5500 5900 5500 5400
Connection ~ 5500 5400
Connection ~ 4850 5400
Wire Wire Line
	4850 5400 4850 5500
Wire Wire Line
	4400 5400 4850 5400
Wire Wire Line
	4850 5400 5500 5400
Wire Wire Line
	2500 2300 2900 2300
Wire Wire Line
	1650 5400 1450 5400
Text Label 2500 2000 0    50   ~ 0
A2
Text Label 2500 1900 0    50   ~ 0
A3
Text Label 2500 1800 0    50   ~ 0
A4
Text Label 2500 1700 0    50   ~ 0
A5
Text Label 2500 1600 0    50   ~ 0
A6
Text Label 2500 1350 0    50   ~ 0
A7
Text Label 2450 4700 0    50   ~ 0
~RD
Text Label 2450 4800 0    50   ~ 0
~WR
Text Label 1650 5400 0    50   ~ 0
Vcc
Text Label 2500 2300 0    50   ~ 0
~IOREQ
Text Label 2450 4900 0    50   ~ 0
~RESET
Wire Wire Line
	850  5600 850  5750
$Comp
L power:PWR_FLAG #FLG01
U 1 1 61C4340B
P 850 5600
F 0 "#FLG01" H 850 5675 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 5700 50  0000 C CNN
F 2 "" H 850 5600 50  0001 C CNN
F 3 "~" H 850 5600 50  0001 C CNN
	1    850  5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5750 1450 5750
Wire Wire Line
	1450 5750 1450 5700
Wire Wire Line
	1450 5750 1450 5850
Connection ~ 1450 5750
Wire Wire Line
	3500 1350 3500 1500
Wire Wire Line
	3500 1500 3950 1500
Wire Wire Line
	2450 4700 5700 4700
Wire Wire Line
	4550 1800 6750 1800
Wire Wire Line
	2500 2000 3950 2000
Wire Wire Line
	2500 1900 3950 1900
Wire Wire Line
	2500 1800 3950 1800
Wire Wire Line
	2500 1700 3950 1700
Wire Wire Line
	2500 1600 3950 1600
Wire Wire Line
	2500 1350 2900 1350
Text Label 5100 2300 0    50   ~ 0
A0
Text Label 5100 2400 0    50   ~ 0
A1
Text Label 5100 2700 0    50   ~ 0
D0
Text Label 5100 2800 0    50   ~ 0
D1
Text Label 5100 2900 0    50   ~ 0
D2
Text Label 5100 3000 0    50   ~ 0
D3
Text Label 5100 3100 0    50   ~ 0
D4
Text Label 5100 3200 0    50   ~ 0
D5
Text Label 5100 3300 0    50   ~ 0
D6
Text Label 5100 3400 0    50   ~ 0
D7
$Comp
L Connector_Generic:Conn_02x36_Row_Letter_First J1
U 1 1 62EC7E2E
P 1400 2750
F 0 "J1" H 1450 4667 50  0000 C CNN
F 1 "Conn_02x36_Row_Letter_First" H 1450 4576 50  0000 C CNN
F 2 "pc8001mk2:BUS_PC8001MK2" H 1400 2750 50  0001 C CNN
F 3 "~" H 1400 2750 50  0001 C CNN
	1    1400 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1050 1000 1050
Wire Wire Line
	1200 1150 1000 1150
Wire Wire Line
	1200 1250 1000 1250
Wire Wire Line
	1200 1350 1000 1350
Wire Wire Line
	1200 1450 1000 1450
Wire Wire Line
	1200 1550 1000 1550
Wire Wire Line
	1200 1650 1000 1650
Wire Wire Line
	1200 1750 1000 1750
Wire Wire Line
	1200 1850 1000 1850
Wire Wire Line
	1200 1950 1000 1950
Wire Wire Line
	1200 2050 1000 2050
Wire Wire Line
	1200 2150 1000 2150
Wire Wire Line
	1200 3050 1000 3050
Wire Wire Line
	1200 3150 1000 3150
Wire Wire Line
	1200 3350 1000 3350
Wire Wire Line
	1200 4150 1000 4150
Wire Wire Line
	1700 1050 1900 1050
Wire Wire Line
	1700 1150 1900 1150
Wire Wire Line
	1700 1250 1900 1250
Wire Wire Line
	1700 1350 1900 1350
Wire Wire Line
	1700 2250 1900 2250
Wire Wire Line
	1700 2350 1900 2350
Wire Wire Line
	1700 2450 1900 2450
Wire Wire Line
	1700 2550 1900 2550
Wire Wire Line
	1700 2650 1900 2650
Wire Wire Line
	1700 2750 1900 2750
Wire Wire Line
	1700 2850 1900 2850
Wire Wire Line
	1700 2950 1900 2950
Text Label 1000 1050 0    50   ~ 0
GND
Text Label 1000 1150 0    50   ~ 0
GND
Text Label 1000 1250 0    50   ~ 0
+5V
Text Label 1000 1350 0    50   ~ 0
+5V
Text Label 1000 1450 0    50   ~ 0
A0
Text Label 1000 1550 0    50   ~ 0
A1
Text Label 1000 1650 0    50   ~ 0
A2
Text Label 1000 1750 0    50   ~ 0
A3
Text Label 1000 1850 0    50   ~ 0
A4
Text Label 1000 1950 0    50   ~ 0
A5
Text Label 1000 2050 0    50   ~ 0
A6
Text Label 1000 2150 0    50   ~ 0
A7
Text Label 1000 3050 0    50   ~ 0
~RD
Text Label 1000 3150 0    50   ~ 0
~WR
Text Label 1000 3350 0    50   ~ 0
~IOREQ
Text Label 1000 4150 0    50   ~ 0
~RESET
Text Label 1750 1050 0    50   ~ 0
GND
Text Label 1750 1150 0    50   ~ 0
GND
Text Label 1750 1250 0    50   ~ 0
+5V
Text Label 1750 1350 0    50   ~ 0
+5V
Text Label 1800 2250 0    50   ~ 0
D0
Text Label 1800 2350 0    50   ~ 0
D1
Text Label 1800 2450 0    50   ~ 0
D2
Text Label 1800 2550 0    50   ~ 0
D3
Text Label 1800 2650 0    50   ~ 0
D4
Text Label 1800 2750 0    50   ~ 0
D5
Text Label 1800 2850 0    50   ~ 0
D6
Text Label 1800 2950 0    50   ~ 0
D7
NoConn ~ 1700 1450
NoConn ~ 1700 1550
NoConn ~ 1700 1650
NoConn ~ 1700 1750
NoConn ~ 1700 1850
NoConn ~ 1700 1950
NoConn ~ 1700 2050
NoConn ~ 1700 2150
NoConn ~ 1700 3050
NoConn ~ 1700 3150
NoConn ~ 1700 3250
NoConn ~ 1700 3350
NoConn ~ 1700 3450
NoConn ~ 1700 3550
NoConn ~ 1700 3650
NoConn ~ 1700 3750
NoConn ~ 1700 3850
NoConn ~ 1700 3950
NoConn ~ 1700 4050
NoConn ~ 1700 4150
NoConn ~ 1700 4250
NoConn ~ 1700 4350
NoConn ~ 1700 4450
NoConn ~ 1700 4550
NoConn ~ 1200 3250
NoConn ~ 1200 3450
NoConn ~ 1200 3550
NoConn ~ 1200 3650
NoConn ~ 1200 3750
NoConn ~ 1200 3850
NoConn ~ 1200 3950
NoConn ~ 1200 4050
NoConn ~ 1200 4250
NoConn ~ 1200 4350
NoConn ~ 1200 4450
NoConn ~ 1200 4550
NoConn ~ 1200 2250
NoConn ~ 1200 2350
NoConn ~ 1200 2450
NoConn ~ 1200 2550
NoConn ~ 1200 2650
NoConn ~ 1200 2750
NoConn ~ 1200 2850
NoConn ~ 1200 2950
$Comp
L 74xx:74LS04 U1
U 1 1 6338269B
P 2900 5500
F 0 "U1" H 2900 5817 50  0000 C CNN
F 1 "74LS04" H 2900 5726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2900 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2900 5500 50  0001 C CNN
	1    2900 5500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 2 1 633835CF
P 2900 6050
F 0 "U1" H 2900 6367 50  0000 C CNN
F 1 "74LS04" H 2900 6276 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2900 6050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2900 6050 50  0001 C CNN
	2    2900 6050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 3 1 633842C9
P 2900 6600
F 0 "U1" H 2900 6917 50  0000 C CNN
F 1 "74LS04" H 2900 6826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2900 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2900 6600 50  0001 C CNN
	3    2900 6600
	1    0    0    -1  
$EndComp
NoConn ~ 3200 5500
NoConn ~ 3200 6050
NoConn ~ 3200 6600
Wire Wire Line
	2600 5500 2450 5500
Wire Wire Line
	2450 5500 2450 6050
Wire Wire Line
	2450 6050 2600 6050
Wire Wire Line
	2450 6050 2450 6600
Wire Wire Line
	2450 6600 2600 6600
Connection ~ 2450 6050
Wire Wire Line
	2450 6600 2450 6800
Connection ~ 2450 6600
$Comp
L power:GND #PWR03
U 1 1 633FB8A8
P 2450 6800
F 0 "#PWR03" H 2450 6550 50  0001 C CNN
F 1 "GND" H 2455 6627 50  0000 C CNN
F 2 "" H 2450 6800 50  0001 C CNN
F 3 "" H 2450 6800 50  0001 C CNN
	1    2450 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 2700 10650 3350
Wire Wire Line
	10800 2700 10650 2700
$Comp
L power:GND #PWR010
U 1 1 625DAB5A
P 10650 3350
F 0 "#PWR010" H 10650 3100 50  0001 C CNN
F 1 "GND" H 10655 3177 50  0000 C CNN
F 2 "" H 10650 3350 50  0001 C CNN
F 3 "" H 10650 3350 50  0001 C CNN
	1    10650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 2400 10800 2400
Wire Wire Line
	10650 2250 10650 2400
$Comp
L power:+5V #PWR09
U 1 1 625CD0DA
P 10650 2250
F 0 "#PWR09" H 10650 2100 50  0001 C CNN
F 1 "+5V" H 10665 2423 50  0000 C CNN
F 2 "" H 10650 2250 50  0001 C CNN
F 3 "" H 10650 2250 50  0001 C CNN
	1    10650 2250
	1    0    0    -1  
$EndComp
NoConn ~ 10800 3200
NoConn ~ 10800 2600
NoConn ~ 10800 2500
$Comp
L Memory_RAM2:Micro_SD_Card_Kit J2
U 1 1 6188B7C4
P 11700 2700
F 0 "J2" H 11200 3400 50  0000 L CNN
F 1 "Micro_SD_Card_Kit" H 11700 3400 50  0000 L CNN
F 2 "Kicad2-2:AE-microSD-LLCNV" H 12850 3000 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 11700 2700 50  0001 C CNN
	1    11700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3100 10800 3100
Wire Wire Line
	9900 3000 10800 3000
Wire Wire Line
	9900 2900 10800 2900
Wire Wire Line
	9900 2800 10800 2800
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 63161793
P 11850 4250
F 0 "J3" H 11800 3800 50  0000 L CNN
F 1 "MicroSD Card Adapter" H 11400 3650 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 11850 4250 50  0001 C CNN
F 3 "~" H 11850 4250 50  0001 C CNN
	1    11850 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 4050 11400 4050
Wire Wire Line
	11650 4150 11400 4150
Wire Wire Line
	11650 4250 11400 4250
Wire Wire Line
	11650 4350 11400 4350
Wire Wire Line
	11650 4450 11400 4450
Wire Wire Line
	11650 4550 11400 4550
Text Label 11400 4050 0    50   ~ 0
GND
Text Label 11400 4150 0    50   ~ 0
+5V
Text Label 11400 4250 0    50   ~ 0
MISO
Text Label 11400 4350 0    50   ~ 0
MOSI
Text Label 11400 4450 0    50   ~ 0
SCK
Text Label 11400 4550 0    50   ~ 0
CS
Text Label 10400 2800 0    50   ~ 0
SCK
Text Label 10400 2900 0    50   ~ 0
MISO
Text Label 10400 3000 0    50   ~ 0
MOSI
Text Label 10400 3100 0    50   ~ 0
CS
$EndSCHEMATC
