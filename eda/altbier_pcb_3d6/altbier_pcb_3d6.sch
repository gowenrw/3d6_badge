EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "3d6 Badge"
Date ""
Rev "1"
Comp "Created by @alt_bier a.k.a. Richard Gowen"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 0_local:IC_CH552G IC1
U 1 1 5E67B430
P 2650 1350
F 0 "IC1" H 2650 2047 79  0000 C CNB
F 1 "IC_CH552G" H 2650 1934 50  0000 C CNB
F 2 "0_local:IC_SOIC-16_3.9x9.9mm_Pitch1.27mm" H 1850 300 50  0001 L CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1812131556_Jiangsu-Qin-Heng-CH552G_C111292.pdf" H 2300 2150 50  0001 C CNN
	1    2650 1350
	1    0    0    -1  
$EndComp
$Comp
L 0_local:USB_B_Micro J1
U 1 1 5E67D8B4
P 1000 3100
F 0 "J1" H 1057 3567 50  0000 C CNN
F 1 "USB_B_Micro" H 1057 3476 50  0000 C CNN
F 2 "0_local:USB_Micro-B_Jing" V 700 3050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Jing-Extension-of-the-Electronic-Co-LCSC-micro-5PAll-posts-are-not-guided-Flat-welding-High-temperature_C77238.pdf" H 1150 3050 50  0001 C CNN
	1    1000 3100
	1    0    0    -1  
$EndComp
Text GLabel 1600 2900 2    50   Input ~ 0
USB-PWR
Text GLabel 1600 3100 2    50   Input ~ 0
D+
Text GLabel 1600 3200 2    50   Input ~ 0
D-
Text GLabel 1600 3550 2    50   Input ~ 0
GND
NoConn ~ 1300 3300
Wire Wire Line
	1300 2900 1600 2900
Wire Wire Line
	1300 3100 1450 3100
Wire Wire Line
	1300 3200 1600 3200
Wire Wire Line
	1000 3500 1000 3550
Wire Wire Line
	900  3500 900  3550
Wire Wire Line
	900  3550 1000 3550
Connection ~ 1000 3550
Wire Wire Line
	1000 3550 1600 3550
Text GLabel 4250 900  2    50   Input ~ 0
V33
Text GLabel 4250 1100 2    50   Input ~ 0
VCC
Text GLabel 4250 1300 2    50   Input ~ 0
GND
Wire Wire Line
	1450 3100 1450 3000
Wire Wire Line
	1450 3000 2050 3000
Wire Wire Line
	2050 3000 2050 3050
Connection ~ 1450 3100
Wire Wire Line
	1450 3100 1600 3100
Text GLabel 4250 1500 2    50   Input ~ 0
D-
Text GLabel 4250 1700 2    50   Input ~ 0
D+
Wire Wire Line
	4000 1500 4250 1500
Wire Wire Line
	4000 1700 4250 1700
$Comp
L 0_local:Conn_01x02 J2
U 1 1 5E6957B4
P 950 4350
F 0 "J2" H 868 4025 50  0000 C CNN
F 1 "Conn_01x02" H 868 4116 50  0000 C CNN
F 2 "0_local:Conn_Pin_Header_Straight_1x02_Pitch2.54mm" H 1100 4050 50  0001 C CNN
F 3 "~" H 950 4350 50  0001 C CNN
	1    950  4350
	-1   0    0    1   
$EndComp
Text GLabel 1300 4250 2    50   Input ~ 0
BAT-PWR
Text GLabel 1300 4350 2    50   Input ~ 0
GND
Wire Wire Line
	1150 4250 1300 4250
Wire Wire Line
	1150 4350 1300 4350
Text GLabel 2950 2950 0    50   Input ~ 0
VCC
Text GLabel 3850 3050 2    50   Input ~ 0
USB-PWR
Text GLabel 3850 2850 2    50   Input ~ 0
BAT-PWR
Wire Wire Line
	3600 2850 3850 2850
Wire Wire Line
	3600 3050 3850 3050
Wire Wire Line
	2950 2950 3200 2950
Text GLabel 4250 1900 2    50   Input ~ 0
P3.4
Text Notes 2700 3400 0    50   ~ 0
SW1 switches between USB and BAT power.\nThis prevents an over voltage if both are connected.\nNote pins 1 and 3 can be swapped per pcb layout
Text Notes 2700 3750 0    50   ~ 0
SW2 applies a pull up resistor R2 on D+\nPress and hold SW2 while USB is connected\nto put IC1 into programming mode.
Text Notes 2700 4050 0    50   ~ 0
C1 and C2 provide decoupling (noise suppression)\non V33 and VCC respectivley
Wire Wire Line
	4000 1300 4250 1300
Text GLabel 3250 4550 2    50   Input ~ 0
GND
Text GLabel 4450 4550 2    50   Input ~ 0
GND
Text Notes 1850 4900 0    50   Italic 10
Boilerplate configuration for the CH552G IC
Text GLabel 4250 2100 2    50   Input ~ 0
P3.3
Text GLabel 4250 2300 2    50   Input ~ 0
P1.1
Wire Wire Line
	4000 1900 4250 1900
Wire Wire Line
	4000 2100 4250 2100
Wire Wire Line
	4000 2300 4250 2300
Text GLabel 1050 2300 0    50   Input ~ 0
P3.0
Wire Wire Line
	1050 2300 1300 2300
Text GLabel 1050 2100 0    50   Input ~ 0
P3.1
Text GLabel 1050 1900 0    50   Input ~ 0
RST
Text GLabel 1050 1700 0    50   Input ~ 0
P1.7
Text GLabel 1050 1500 0    50   Input ~ 0
P1.6
Text GLabel 1050 1300 0    50   Input ~ 0
P1.5
Text GLabel 1050 1100 0    50   Input ~ 0
P1.4
Text GLabel 1050 900  0    50   Input ~ 0
P3.2
Wire Wire Line
	1050 2100 1300 2100
Wire Wire Line
	1050 1900 1300 1900
Wire Wire Line
	1050 1700 1300 1700
Wire Wire Line
	1050 1500 1300 1500
Wire Wire Line
	1050 1300 1300 1300
Wire Wire Line
	1050 1100 1300 1100
Wire Wire Line
	1050 900  1300 900 
Text GLabel 3850 4550 0    50   Input ~ 0
VCC
Wire Wire Line
	4000 1100 4250 1100
Wire Wire Line
	4300 4550 4450 4550
Wire Wire Line
	3850 4550 4000 4550
Wire Wire Line
	3100 4550 3250 4550
Wire Wire Line
	2650 4550 2800 4550
Text GLabel 2650 4550 0    50   Input ~ 0
V33
Wire Wire Line
	4000 900  4250 900 
Text GLabel 2050 4250 3    50   Input ~ 0
V33
Wire Wire Line
	2050 3350 2050 3500
Wire Wire Line
	2050 4100 2050 4250
Text Notes 700  3900 0    50   ~ 0
J1 USB for program & power\nJ2 Terminal for battery power
Wire Notes Line
	600  4950 4800 4950
Wire Notes Line
	4800 4950 4800 550 
Wire Notes Line
	4800 550  600  550 
Wire Notes Line
	600  550  600  4950
Text GLabel 1150 5550 0    50   Input ~ 0
RST
$Comp
L 0_local:SW_SPDT_C136659 SW1
U 1 1 5E69513D
P 3400 2950
F 0 "SW1" H 3400 3235 50  0000 C CNN
F 1 "SPDT_C136659" H 3400 3144 50  0000 C CNN
F 2 "0_local:SW_SPDT_PCM12_C136659" H 3400 2650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K3-1296S-E2_C136659.pdf" H 3400 2950 50  0001 C CNN
	1    3400 2950
	1    0    0    -1  
$EndComp
$Comp
L 0_local:SW_TS2306A SW2
U 1 1 5E686746
P 2050 4100
F 0 "SW2" V 2396 4050 50  0000 R CNN
F 1 "TS2306A" V 2305 4050 50  0000 R CNN
F 2 "0_local:SW_TS2306A240GFMSM9_C388290" H 2350 3900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904241742_SHOU-HAN-TS2306A-240gf-MSM-9_C388290.pdf" H 2350 3800 50  0001 C CNN
F 4 "Tactile Switches SPST 3.00mm x 2.00mm 0.60mm 10mA @ 5VDC SMD RoHS" H 2350 3700 50  0001 C CNN "Description"
F 5 "1" H 2350 3600 50  0001 C CNN "Height"
F 6 "Shou Han" H 2350 3500 50  0001 C CNN "Manufacturer_Name"
F 7 "TS2306A-240GF-MSM-9_C388290" H 2350 3400 50  0001 C CNN "Manufacturer_Part_Number"
	1    2050 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 5550 1400 5550
Wire Wire Line
	2000 5550 2250 5550
Text Notes 1200 6250 0    59   ~ 0
SW3 will be used to reboot the IC \nwhich is the only way I can see to \nhave a 'roll dice' button given all \nthe other GPIO pins are used.
$Comp
L 0_local:R_0805 R2
U 1 1 602B2DC6
P 2050 3200
F 0 "R2" H 2120 3291 50  0000 L CNN
F 1 "10k Ohms" H 2120 3200 50  0000 L CNN
F 2 "0_local:R_0805_2012Metric" V 2180 3150 50  0001 C CNN
F 3 "~" H 2000 3200 50  0001 C CNN
F 4 "0805" H 2120 3109 50  0000 L CNN "Form"
	1    2050 3200
	1    0    0    -1  
$EndComp
$Comp
L 0_local:C_0805 C1
U 1 1 602B3A0F
P 2950 4550
F 0 "C1" V 2608 4550 50  0000 C CNN
F 1 "0.1uF/100nF" V 2699 4550 50  0000 C CNN
F 2 "0_local:C_0805_2012Metric" V 3138 4500 50  0001 C CNN
F 3 "~" H 2950 4550 50  0001 C CNN
F 4 "0805" V 2790 4550 50  0000 C CNN "Form"
	1    2950 4550
	0    1    1    0   
$EndComp
$Comp
L 0_local:C_0805 C2
U 1 1 602BEE4A
P 4150 4550
F 0 "C2" V 3808 4550 50  0000 C CNN
F 1 "0.1uF/100nF" V 3899 4550 50  0000 C CNN
F 2 "0_local:C_0805_2012Metric" V 4338 4500 50  0001 C CNN
F 3 "~" H 4150 4550 50  0001 C CNN
F 4 "0805" V 3990 4550 50  0000 C CNN "Form"
	1    4150 4550
	0    1    1    0   
$EndComp
$Comp
L 0_local:LED_0805 D11
U 1 1 602CAC6F
P 5650 1000
F 0 "D11" H 5643 1307 50  0000 C CNN
F 1 "Red" H 5643 1216 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 5650 750 50  0001 C CNN
F 3 "~" H 5650 1000 50  0001 C CNN
F 4 "0805" H 5643 1125 50  0000 C CNN "Form"
	1    5650 1000
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D12
U 1 1 602CBF0F
P 9250 2100
F 0 "D12" H 9243 2407 50  0000 C CNN
F 1 "Red" H 9243 2316 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 9250 1850 50  0001 C CNN
F 3 "~" H 9250 2100 50  0001 C CNN
F 4 "0805" H 9243 2225 50  0000 C CNN "Form"
	1    9250 2100
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D13
U 1 1 602CCAD8
P 5650 1550
F 0 "D13" H 5643 1857 50  0000 C CNN
F 1 "Red" H 5643 1766 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 5650 1300 50  0001 C CNN
F 3 "~" H 5650 1550 50  0001 C CNN
F 4 "0805" H 5643 1675 50  0000 C CNN "Form"
	1    5650 1550
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D14
U 1 1 602CD73B
P 9250 1550
F 0 "D14" H 9243 1857 50  0000 C CNN
F 1 "Red" H 9243 1766 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 9250 1300 50  0001 C CNN
F 3 "~" H 9250 1550 50  0001 C CNN
F 4 "0805" H 9243 1675 50  0000 C CNN "Form"
	1    9250 1550
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D15
U 1 1 602CE250
P 5650 2100
F 0 "D15" H 5643 2407 50  0000 C CNN
F 1 "Red" H 5643 2316 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 5650 1850 50  0001 C CNN
F 3 "~" H 5650 2100 50  0001 C CNN
F 4 "0805" H 5643 2225 50  0000 C CNN "Form"
	1    5650 2100
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D16
U 1 1 602CF014
P 9250 1000
F 0 "D16" H 9243 1307 50  0000 C CNN
F 1 "Red" H 9243 1216 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 9250 750 50  0001 C CNN
F 3 "~" H 9250 1000 50  0001 C CNN
F 4 "0805" H 9243 1125 50  0000 C CNN "Form"
	1    9250 1000
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D17
U 1 1 602CFFB5
P 7450 1550
F 0 "D17" H 7443 1857 50  0000 C CNN
F 1 "Red" H 7443 1766 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 7450 1300 50  0001 C CNN
F 3 "~" H 7450 1550 50  0001 C CNN
F 4 "0805" H 7443 1675 50  0000 C CNN "Form"
	1    7450 1550
	1    0    0    -1  
$EndComp
$Comp
L 0_local:R_0805 R16
U 1 1 602DBEC7
P 9750 1000
F 0 "R16" V 10047 1000 50  0000 C CNN
F 1 "200 Ohms" V 9956 1000 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 9880 950 50  0001 C CNN
F 3 "~" H 9700 1000 50  0001 C CNN
F 4 "0805" V 9865 1000 50  0000 C CNN "Form"
	1    9750 1000
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:R_0805 R11
U 1 1 602E230A
P 6150 1000
F 0 "R11" V 6447 1000 50  0000 C CNN
F 1 "200 Ohms" V 6356 1000 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 6280 950 50  0001 C CNN
F 3 "~" H 6100 1000 50  0001 C CNN
F 4 "0805" V 6265 1000 50  0000 C CNN "Form"
	1    6150 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 1000 5800 1000
Wire Wire Line
	9600 1000 9400 1000
$Comp
L 0_local:R_0805 R13
U 1 1 602E9B5A
P 6150 1550
F 0 "R13" V 6447 1550 50  0000 C CNN
F 1 "200 Ohms" V 6356 1550 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 6280 1500 50  0001 C CNN
F 3 "~" H 6100 1550 50  0001 C CNN
F 4 "0805" V 6265 1550 50  0000 C CNN "Form"
	1    6150 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 1550 5800 1550
$Comp
L 0_local:R_0805 R15
U 1 1 602EA9CC
P 6150 2100
F 0 "R15" V 6447 2100 50  0000 C CNN
F 1 "200 Ohms" V 6356 2100 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 6280 2050 50  0001 C CNN
F 3 "~" H 6100 2100 50  0001 C CNN
F 4 "0805" V 6265 2100 50  0000 C CNN "Form"
	1    6150 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 2100 5800 2100
$Comp
L 0_local:R_0805 R17
U 1 1 602ED900
P 7950 1550
F 0 "R17" V 8247 1550 50  0000 C CNN
F 1 "200 Ohms" V 8156 1550 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 8080 1500 50  0001 C CNN
F 3 "~" H 7900 1550 50  0001 C CNN
F 4 "0805" V 8065 1550 50  0000 C CNN "Form"
	1    7950 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 1550 7600 1550
$Comp
L 0_local:R_0805 R14
U 1 1 602F0D54
P 9750 1550
F 0 "R14" V 10047 1550 50  0000 C CNN
F 1 "200 Ohms" V 9956 1550 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 9880 1500 50  0001 C CNN
F 3 "~" H 9700 1550 50  0001 C CNN
F 4 "0805" V 9865 1550 50  0000 C CNN "Form"
	1    9750 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 1550 9400 1550
$Comp
L 0_local:R_0805 R12
U 1 1 602F1F08
P 9750 2100
F 0 "R12" V 10047 2100 50  0000 C CNN
F 1 "200 Ohms" V 9956 2100 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 9880 2050 50  0001 C CNN
F 3 "~" H 9700 2100 50  0001 C CNN
F 4 "0805" V 9865 2100 50  0000 C CNN "Form"
	1    9750 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 2100 9400 2100
Text GLabel 5300 1000 0    50   Input ~ 0
GND
Wire Wire Line
	5500 1000 5300 1000
Text GLabel 5300 1550 0    50   Input ~ 0
GND
Wire Wire Line
	5500 1550 5300 1550
Text GLabel 5300 2100 0    50   Input ~ 0
GND
Wire Wire Line
	5500 2100 5300 2100
Text GLabel 7100 1550 0    50   Input ~ 0
GND
Wire Wire Line
	7300 1550 7100 1550
Text GLabel 8900 1000 0    50   Input ~ 0
GND
Wire Wire Line
	9100 1000 8900 1000
Text GLabel 8900 1550 0    50   Input ~ 0
GND
Wire Wire Line
	9100 1550 8900 1550
Text GLabel 8900 2100 0    50   Input ~ 0
GND
Wire Wire Line
	9100 2100 8900 2100
Text GLabel 10100 1000 2    50   Input ~ 0
P1.5
Text GLabel 10100 1550 2    50   Input ~ 0
P1.4
Text GLabel 10100 2100 2    50   Input ~ 0
P3.2
Text GLabel 8300 1550 2    50   Input ~ 0
P1.6
Text GLabel 6500 2100 2    50   Input ~ 0
P1.5
Text GLabel 6500 1550 2    50   Input ~ 0
P1.4
Text GLabel 6500 1000 2    50   Input ~ 0
P3.2
Wire Wire Line
	6500 1000 6300 1000
Wire Wire Line
	6500 1550 6300 1550
Wire Wire Line
	6500 2100 6300 2100
Wire Wire Line
	8300 1550 8100 1550
Wire Wire Line
	10100 2100 9900 2100
Wire Wire Line
	10100 1550 9900 1550
Wire Wire Line
	10100 1000 9900 1000
Wire Notes Line
	4900 550  4900 2350
Wire Notes Line
	4900 2350 10400 2350
Wire Notes Line
	10400 2350 10400 550 
Wire Notes Line
	10400 550  4900 550 
Text Notes 7450 750  0    79   ~ 16
First d6
$Comp
L 0_local:LED_0805 D21
U 1 1 6036A6F9
P 5650 2900
F 0 "D21" H 5643 3207 50  0000 C CNN
F 1 "Green" H 5643 3116 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 5650 2650 50  0001 C CNN
F 3 "~" H 5650 2900 50  0001 C CNN
F 4 "0805" H 5643 3025 50  0000 C CNN "Form"
	1    5650 2900
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D22
U 1 1 6036A700
P 9250 4000
F 0 "D22" H 9243 4307 50  0000 C CNN
F 1 "Green" H 9243 4216 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 9250 3750 50  0001 C CNN
F 3 "~" H 9250 4000 50  0001 C CNN
F 4 "0805" H 9243 4125 50  0000 C CNN "Form"
	1    9250 4000
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D23
U 1 1 6036A707
P 5650 3450
F 0 "D23" H 5643 3757 50  0000 C CNN
F 1 "Green" H 5643 3666 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 5650 3200 50  0001 C CNN
F 3 "~" H 5650 3450 50  0001 C CNN
F 4 "0805" H 5643 3575 50  0000 C CNN "Form"
	1    5650 3450
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D24
U 1 1 6036A70E
P 9250 3450
F 0 "D24" H 9243 3757 50  0000 C CNN
F 1 "Green" H 9243 3666 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 9250 3200 50  0001 C CNN
F 3 "~" H 9250 3450 50  0001 C CNN
F 4 "0805" H 9243 3575 50  0000 C CNN "Form"
	1    9250 3450
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D25
U 1 1 6036A715
P 5650 4000
F 0 "D25" H 5643 4307 50  0000 C CNN
F 1 "Green" H 5643 4216 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 5650 3750 50  0001 C CNN
F 3 "~" H 5650 4000 50  0001 C CNN
F 4 "0805" H 5643 4125 50  0000 C CNN "Form"
	1    5650 4000
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D26
U 1 1 6036A71C
P 9250 2900
F 0 "D26" H 9243 3207 50  0000 C CNN
F 1 "Green" H 9243 3116 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 9250 2650 50  0001 C CNN
F 3 "~" H 9250 2900 50  0001 C CNN
F 4 "0805" H 9243 3025 50  0000 C CNN "Form"
	1    9250 2900
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D27
U 1 1 6036A723
P 7450 3450
F 0 "D27" H 7443 3757 50  0000 C CNN
F 1 "Green" H 7443 3666 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 7450 3200 50  0001 C CNN
F 3 "~" H 7450 3450 50  0001 C CNN
F 4 "0805" H 7443 3575 50  0000 C CNN "Form"
	1    7450 3450
	1    0    0    -1  
$EndComp
$Comp
L 0_local:R_0805 R26
U 1 1 6036A72A
P 9750 2900
F 0 "R26" V 10047 2900 50  0000 C CNN
F 1 "200 Ohms" V 9956 2900 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 9880 2850 50  0001 C CNN
F 3 "~" H 9700 2900 50  0001 C CNN
F 4 "0805" V 9865 2900 50  0000 C CNN "Form"
	1    9750 2900
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:R_0805 R21
U 1 1 6036A731
P 6150 2900
F 0 "R21" V 6447 2900 50  0000 C CNN
F 1 "200 Ohms" V 6356 2900 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 6280 2850 50  0001 C CNN
F 3 "~" H 6100 2900 50  0001 C CNN
F 4 "0805" V 6265 2900 50  0000 C CNN "Form"
	1    6150 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 2900 5800 2900
Wire Wire Line
	9600 2900 9400 2900
$Comp
L 0_local:R_0805 R23
U 1 1 6036A73A
P 6150 3450
F 0 "R23" V 6447 3450 50  0000 C CNN
F 1 "200 Ohms" V 6356 3450 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 6280 3400 50  0001 C CNN
F 3 "~" H 6100 3450 50  0001 C CNN
F 4 "0805" V 6265 3450 50  0000 C CNN "Form"
	1    6150 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 3450 5800 3450
$Comp
L 0_local:R_0805 R25
U 1 1 6036A742
P 6150 4000
F 0 "R25" V 6447 4000 50  0000 C CNN
F 1 "200 Ohms" V 6356 4000 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 6280 3950 50  0001 C CNN
F 3 "~" H 6100 4000 50  0001 C CNN
F 4 "0805" V 6265 4000 50  0000 C CNN "Form"
	1    6150 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 4000 5800 4000
$Comp
L 0_local:R_0805 R27
U 1 1 6036A74A
P 7950 3450
F 0 "R27" V 8247 3450 50  0000 C CNN
F 1 "200 Ohms" V 8156 3450 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 8080 3400 50  0001 C CNN
F 3 "~" H 7900 3450 50  0001 C CNN
F 4 "0805" V 8065 3450 50  0000 C CNN "Form"
	1    7950 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 3450 7600 3450
$Comp
L 0_local:R_0805 R24
U 1 1 6036A752
P 9750 3450
F 0 "R24" V 10047 3450 50  0000 C CNN
F 1 "200 Ohms" V 9956 3450 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 9880 3400 50  0001 C CNN
F 3 "~" H 9700 3450 50  0001 C CNN
F 4 "0805" V 9865 3450 50  0000 C CNN "Form"
	1    9750 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 3450 9400 3450
$Comp
L 0_local:R_0805 R22
U 1 1 6036A75A
P 9750 4000
F 0 "R22" V 10047 4000 50  0000 C CNN
F 1 "200 Ohms" V 9956 4000 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 9880 3950 50  0001 C CNN
F 3 "~" H 9700 4000 50  0001 C CNN
F 4 "0805" V 9865 4000 50  0000 C CNN "Form"
	1    9750 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 4000 9400 4000
Text GLabel 5300 2900 0    50   Input ~ 0
GND
Wire Wire Line
	5500 2900 5300 2900
Text GLabel 5300 3450 0    50   Input ~ 0
GND
Wire Wire Line
	5500 3450 5300 3450
Text GLabel 5300 4000 0    50   Input ~ 0
GND
Wire Wire Line
	5500 4000 5300 4000
Text GLabel 7100 3450 0    50   Input ~ 0
GND
Wire Wire Line
	7300 3450 7100 3450
Text GLabel 8900 2900 0    50   Input ~ 0
GND
Wire Wire Line
	9100 2900 8900 2900
Text GLabel 8900 3450 0    50   Input ~ 0
GND
Wire Wire Line
	9100 3450 8900 3450
Text GLabel 8900 4000 0    50   Input ~ 0
GND
Wire Wire Line
	9100 4000 8900 4000
Text GLabel 10100 2900 2    50   Input ~ 0
P3.0
Text GLabel 10100 3450 2    50   Input ~ 0
P3.1
Text GLabel 10100 4000 2    50   Input ~ 0
P1.7
Text GLabel 8300 3450 2    50   Input ~ 0
P1.1
Text GLabel 6500 4000 2    50   Input ~ 0
P3.0
Text GLabel 6500 3450 2    50   Input ~ 0
P3.1
Text GLabel 6500 2900 2    50   Input ~ 0
P1.7
Wire Wire Line
	6500 2900 6300 2900
Wire Wire Line
	6500 3450 6300 3450
Wire Wire Line
	6500 4000 6300 4000
Wire Wire Line
	8300 3450 8100 3450
Wire Wire Line
	10100 4000 9900 4000
Wire Wire Line
	10100 3450 9900 3450
Wire Wire Line
	10100 2900 9900 2900
Wire Notes Line
	4900 2450 4900 4250
Wire Notes Line
	4900 4250 10400 4250
Wire Notes Line
	10400 4250 10400 2450
Wire Notes Line
	10400 2450 4900 2450
Text Notes 7400 2650 0    79   ~ 16
Second d6
$Comp
L 0_local:LED_0805 D31
U 1 1 60379A52
P 5650 4800
F 0 "D31" H 5643 5107 50  0000 C CNN
F 1 "Blue" H 5643 5016 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 5650 4550 50  0001 C CNN
F 3 "~" H 5650 4800 50  0001 C CNN
F 4 "0805" H 5643 4925 50  0000 C CNN "Form"
	1    5650 4800
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D32
U 1 1 60379A59
P 9250 5900
F 0 "D32" H 9243 6207 50  0000 C CNN
F 1 "Blue" H 9243 6116 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 9250 5650 50  0001 C CNN
F 3 "~" H 9250 5900 50  0001 C CNN
F 4 "0805" H 9243 6025 50  0000 C CNN "Form"
	1    9250 5900
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D33
U 1 1 60379A60
P 5650 5350
F 0 "D33" H 5643 5657 50  0000 C CNN
F 1 "Blue" H 5643 5566 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 5650 5100 50  0001 C CNN
F 3 "~" H 5650 5350 50  0001 C CNN
F 4 "0805" H 5643 5475 50  0000 C CNN "Form"
	1    5650 5350
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D34
U 1 1 60379A67
P 9250 5350
F 0 "D34" H 9243 5657 50  0000 C CNN
F 1 "Blue" H 9243 5566 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 9250 5100 50  0001 C CNN
F 3 "~" H 9250 5350 50  0001 C CNN
F 4 "0805" H 9243 5475 50  0000 C CNN "Form"
	1    9250 5350
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D35
U 1 1 60379A6E
P 5650 5900
F 0 "D35" H 5643 6207 50  0000 C CNN
F 1 "Blue" H 5643 6116 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 5650 5650 50  0001 C CNN
F 3 "~" H 5650 5900 50  0001 C CNN
F 4 "0805" H 5643 6025 50  0000 C CNN "Form"
	1    5650 5900
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D36
U 1 1 60379A75
P 9250 4800
F 0 "D36" H 9243 5107 50  0000 C CNN
F 1 "Blue" H 9243 5016 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 9250 4550 50  0001 C CNN
F 3 "~" H 9250 4800 50  0001 C CNN
F 4 "0805" H 9243 4925 50  0000 C CNN "Form"
	1    9250 4800
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_0805 D37
U 1 1 60379A7C
P 7450 5350
F 0 "D37" H 7443 5657 50  0000 C CNN
F 1 "Blue" H 7443 5566 50  0000 C CNN
F 2 "0_local:LED_0805_2012Metric" H 7450 5100 50  0001 C CNN
F 3 "~" H 7450 5350 50  0001 C CNN
F 4 "0805" H 7443 5475 50  0000 C CNN "Form"
	1    7450 5350
	1    0    0    -1  
$EndComp
$Comp
L 0_local:R_0805 R36
U 1 1 60379A83
P 9750 4800
F 0 "R36" V 10047 4800 50  0000 C CNN
F 1 "200 Ohms" V 9956 4800 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 9880 4750 50  0001 C CNN
F 3 "~" H 9700 4800 50  0001 C CNN
F 4 "0805" V 9865 4800 50  0000 C CNN "Form"
	1    9750 4800
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:R_0805 R31
U 1 1 60379A8A
P 6150 4800
F 0 "R31" V 6447 4800 50  0000 C CNN
F 1 "200 Ohms" V 6356 4800 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 6280 4750 50  0001 C CNN
F 3 "~" H 6100 4800 50  0001 C CNN
F 4 "0805" V 6265 4800 50  0000 C CNN "Form"
	1    6150 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 4800 5800 4800
Wire Wire Line
	9600 4800 9400 4800
$Comp
L 0_local:R_0805 R33
U 1 1 60379A93
P 6150 5350
F 0 "R33" V 6447 5350 50  0000 C CNN
F 1 "200 Ohms" V 6356 5350 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 6280 5300 50  0001 C CNN
F 3 "~" H 6100 5350 50  0001 C CNN
F 4 "0805" V 6265 5350 50  0000 C CNN "Form"
	1    6150 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 5350 5800 5350
$Comp
L 0_local:R_0805 R35
U 1 1 60379A9B
P 6150 5900
F 0 "R35" V 6447 5900 50  0000 C CNN
F 1 "200 Ohms" V 6356 5900 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 6280 5850 50  0001 C CNN
F 3 "~" H 6100 5900 50  0001 C CNN
F 4 "0805" V 6265 5900 50  0000 C CNN "Form"
	1    6150 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 5900 5800 5900
$Comp
L 0_local:R_0805 R37
U 1 1 60379AA3
P 7950 5350
F 0 "R37" V 8247 5350 50  0000 C CNN
F 1 "200 Ohms" V 8156 5350 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 8080 5300 50  0001 C CNN
F 3 "~" H 7900 5350 50  0001 C CNN
F 4 "0805" V 8065 5350 50  0000 C CNN "Form"
	1    7950 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 5350 7600 5350
$Comp
L 0_local:R_0805 R34
U 1 1 60379AAB
P 9750 5350
F 0 "R34" V 10047 5350 50  0000 C CNN
F 1 "200 Ohms" V 9956 5350 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 9880 5300 50  0001 C CNN
F 3 "~" H 9700 5350 50  0001 C CNN
F 4 "0805" V 9865 5350 50  0000 C CNN "Form"
	1    9750 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 5350 9400 5350
$Comp
L 0_local:R_0805 R32
U 1 1 60379AB3
P 9750 5900
F 0 "R32" V 10047 5900 50  0000 C CNN
F 1 "200 Ohms" V 9956 5900 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 9880 5850 50  0001 C CNN
F 3 "~" H 9700 5900 50  0001 C CNN
F 4 "0805" V 9865 5900 50  0000 C CNN "Form"
	1    9750 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 5900 9400 5900
Text GLabel 5300 4800 0    50   Input ~ 0
GND
Wire Wire Line
	5500 4800 5300 4800
Text GLabel 5300 5350 0    50   Input ~ 0
GND
Wire Wire Line
	5500 5350 5300 5350
Text GLabel 5300 5900 0    50   Input ~ 0
GND
Wire Wire Line
	5500 5900 5300 5900
Text GLabel 7100 5350 0    50   Input ~ 0
GND
Wire Wire Line
	7300 5350 7100 5350
Text GLabel 8900 4800 0    50   Input ~ 0
GND
Wire Wire Line
	9100 4800 8900 4800
Text GLabel 8900 5350 0    50   Input ~ 0
GND
Wire Wire Line
	9100 5350 8900 5350
Text GLabel 8900 5900 0    50   Input ~ 0
GND
Wire Wire Line
	9100 5900 8900 5900
Text GLabel 10100 4800 2    50   Input ~ 0
D+
Text GLabel 10100 5350 2    50   Input ~ 0
P3.4
Text GLabel 10100 5900 2    50   Input ~ 0
P3.3
Text GLabel 8300 5350 2    50   Input ~ 0
D-
Text GLabel 6500 5900 2    50   Input ~ 0
D+
Text GLabel 6500 5350 2    50   Input ~ 0
P3.4
Text GLabel 6500 4800 2    50   Input ~ 0
P3.3
Wire Wire Line
	6500 4800 6300 4800
Wire Wire Line
	6500 5350 6300 5350
Wire Wire Line
	6500 5900 6300 5900
Wire Wire Line
	8300 5350 8100 5350
Wire Wire Line
	10100 5900 9900 5900
Wire Wire Line
	10100 5350 9900 5350
Wire Wire Line
	10100 4800 9900 4800
Wire Notes Line
	4900 4350 4900 6150
Wire Notes Line
	4900 6150 10400 6150
Wire Notes Line
	10400 6150 10400 4350
Wire Notes Line
	10400 4350 4900 4350
Text Notes 7450 4550 0    79   ~ 16
Third d6
Text Notes 3550 7800 0    79   ~ 16
Four pins will control each die as follows:\n  (X = ON/HIGH, o = OFF/LOW)\n\nDice/LED|-7-|1&2|3&4|5&6\n1        |-X-|-o-|-o-|-o-\n2        |-o-|-o-|-o-|-X-\n3        |-X-|-X-|-o-|-o-\n4        |-o-|-X-|-o-|-X-\n5        |-X-|-X-|-o-|-X-\n6        |-o-|-X-|-X-|-X-
Text GLabel 2800 5550 2    50   Input ~ 0
V33
$Comp
L 0_local:R_0805 R3
U 1 1 6037278F
P 2400 5550
F 0 "R3" V 2697 5550 50  0000 C CNN
F 1 "10k Ohms" V 2606 5550 50  0000 C CNN
F 2 "0_local:R_0805_2012Metric" V 2530 5500 50  0001 C CNN
F 3 "~" H 2350 5550 50  0001 C CNN
F 4 "0805" V 2515 5550 50  0000 C CNN "Form"
	1    2400 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 5550 2800 5550
Text Notes 1200 7200 0    59   ~ 0
Note on D+ and D- in this design:\nThese are normally assigned as USB pins\nso in the code you will need to clear\nthe bit named bUSB_IO_EN\nThis will allow thier use as GPIO pins
Text Notes 5850 4950 0    79   ~ 16
1
Text Notes 5850 5500 0    79   ~ 16
3
Text Notes 5850 6050 0    79   ~ 16
5
Text Notes 9450 4950 0    79   ~ 16
6
Text Notes 9450 5500 0    79   ~ 16
4
Text Notes 9450 6050 0    79   ~ 16
2
Text Notes 7650 5500 0    79   ~ 16
7
Text Notes 5850 3050 0    79   ~ 16
1
Text Notes 5850 3600 0    79   ~ 16
3
Text Notes 5850 4150 0    79   ~ 16
5
Text Notes 7650 3600 0    79   ~ 16
7
Text Notes 9450 3050 0    79   ~ 16
6
Text Notes 9450 3600 0    79   ~ 16
4
Text Notes 9450 4150 0    79   ~ 16
2
Text Notes 5850 1150 0    79   ~ 16
1
Text Notes 5850 1700 0    79   ~ 16
3
Text Notes 5850 2250 0    79   ~ 16
5
Text Notes 7650 1700 0    79   ~ 16
7
Text Notes 9450 1150 0    79   ~ 16
6
Text Notes 9450 1700 0    79   ~ 16
4
Text Notes 9450 2250 0    79   ~ 16
2
$Comp
L 0_local:SW_Push_SPST_4pin SW3
U 1 1 603712D3
P 1700 5650
F 0 "SW3" H 1700 6070 50  0000 C CNN
F 1 "SW_Push_SPST_4pin" H 1700 5980 50  0000 C CNN
F 2 "0_local:SW_TS3735PA250GF" H 1700 5350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1905211532_SHOU-HAN-3-7-3-7-0-35-SKRWAEE030_C393946.pdf" H 1700 5350 50  0001 C CNN
F 4 "TS3735PA_250GF" H 1700 5890 50  0000 C CNN "Model"
	1    1700 5650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
