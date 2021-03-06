EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L power:GND #PWR061
U 1 1 5F7951A3
P 1350 4450
F 0 "#PWR061" H 1350 4200 50  0001 C CNN
F 1 "GND" V 1355 4277 50  0000 C CNN
F 2 "" H 1350 4450 50  0001 C CNN
F 3 "" H 1350 4450 50  0001 C CNN
	1    1350 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 5F796344
P 1250 4450
F 0 "#PWR060" H 1250 4200 50  0001 C CNN
F 1 "GND" V 1255 4277 50  0000 C CNN
F 2 "" H 1250 4450 50  0001 C CNN
F 3 "" H 1250 4450 50  0001 C CNN
	1    1250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4450 1250 4400
Wire Wire Line
	1350 4450 1350 4400
$Comp
L Device:C C?
U 1 1 5F79F055
P 1850 1900
AR Path="/5F79F055" Ref="C?"  Part="1" 
AR Path="/5F7D3F49/5F79F055" Ref="C?"  Part="1" 
AR Path="/5FB8CB32/5F79F055" Ref="C?"  Part="1" 
AR Path="/5FB8D754/5F79F055" Ref="C17"  Part="1" 
F 0 "C17" H 1965 1946 50  0000 L CNN
F 1 "100n" H 1965 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1888 1750 50  0001 C CNN
F 3 "~" H 1850 1900 50  0001 C CNN
	1    1850 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 1600 1850 1750
$Comp
L power:GND #PWR?
U 1 1 5F79F05C
P 1850 2100
AR Path="/5FB8CB32/5F79F05C" Ref="#PWR?"  Part="1" 
AR Path="/5FB8D754/5F79F05C" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 1850 1850 50  0001 C CNN
F 1 "GND" V 1855 1972 50  0000 R CNN
F 2 "" H 1850 2100 50  0001 C CNN
F 3 "" H 1850 2100 50  0001 C CNN
	1    1850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2100 1850 2050
$Comp
L power:GND #PWR?
U 1 1 5F79F063
P 2200 2100
AR Path="/5F79F063" Ref="#PWR?"  Part="1" 
AR Path="/5F7D3F49/5F79F063" Ref="#PWR?"  Part="1" 
AR Path="/5FB8CB32/5F79F063" Ref="#PWR?"  Part="1" 
AR Path="/5FB8D754/5F79F063" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 2200 1850 50  0001 C CNN
F 1 "GND" H 2205 1927 50  0000 C CNN
F 2 "" H 2200 2100 50  0001 C CNN
F 3 "" H 2200 2100 50  0001 C CNN
	1    2200 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5F79F069
P 2200 1900
AR Path="/5F79F069" Ref="C?"  Part="1" 
AR Path="/5F7D3F49/5F79F069" Ref="C?"  Part="1" 
AR Path="/5FB8CB32/5F79F069" Ref="C?"  Part="1" 
AR Path="/5FB8D754/5F79F069" Ref="C18"  Part="1" 
F 0 "C18" H 2318 1946 50  0000 L CNN
F 1 "150uF" H 2318 1855 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-31_Kemet-D" H 2238 1750 50  0001 C CNN
F 3 "~" H 2200 1900 50  0001 C CNN
	1    2200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2100 2200 2050
Wire Wire Line
	2200 1600 2200 1750
$Comp
L power:VBUS #PWR058
U 1 1 5F7A01B5
P 1850 1600
F 0 "#PWR058" H 1850 1450 50  0001 C CNN
F 1 "VBUS" H 1865 1773 50  0000 C CNN
F 2 "" H 1850 1600 50  0001 C CNN
F 3 "" H 1850 1600 50  0001 C CNN
	1    1850 1600
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR062
U 1 1 5F7A0345
P 2200 1600
F 0 "#PWR062" H 2200 1450 50  0001 C CNN
F 1 "VBUS" H 2215 1773 50  0000 C CNN
F 2 "" H 2200 1600 50  0001 C CNN
F 3 "" H 2200 1600 50  0001 C CNN
	1    2200 1600
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:FT230XQ U4
U 1 1 5F7A0DEC
P 4700 4000
F 0 "U4" H 4346 4881 50  0000 C CNN
F 1 "FT230XQ" H 4346 4790 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_4x4mm_P0.65mm_EP2.1x2.1mm" H 6050 3400 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT230X.pdf" H 4700 4000 50  0001 C CNN
	1    4700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4100 1700 4100
$Comp
L power:GND #PWR070
U 1 1 5F7C0DDC
P 4700 4750
F 0 "#PWR070" H 4700 4500 50  0001 C CNN
F 1 "GND" V 4705 4577 50  0000 C CNN
F 2 "" H 4700 4750 50  0001 C CNN
F 3 "" H 4700 4750 50  0001 C CNN
	1    4700 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR069
U 1 1 5F7C0DE2
P 4600 4750
F 0 "#PWR069" H 4600 4500 50  0001 C CNN
F 1 "GND" V 4605 4577 50  0000 C CNN
F 2 "" H 4600 4750 50  0001 C CNN
F 3 "" H 4600 4750 50  0001 C CNN
	1    4600 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR071
U 1 1 5F7C1467
P 4800 4750
F 0 "#PWR071" H 4800 4500 50  0001 C CNN
F 1 "GND" V 4805 4577 50  0000 C CNN
F 2 "" H 4800 4750 50  0001 C CNN
F 3 "" H 4800 4750 50  0001 C CNN
	1    4800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4750 4600 4700
Wire Wire Line
	4700 4750 4700 4700
Wire Wire Line
	4800 4750 4800 4700
Text GLabel 9000 5250 2    50   Input ~ 0
TX1
Wire Wire Line
	5400 3700 5650 3700
$Comp
L Device:C C?
U 1 1 5F7CF274
P 3700 3600
AR Path="/5F7CF274" Ref="C?"  Part="1" 
AR Path="/5F7D3F49/5F7CF274" Ref="C?"  Part="1" 
AR Path="/5FB8CB32/5F7CF274" Ref="C?"  Part="1" 
AR Path="/5FB8D754/5F7CF274" Ref="C21"  Part="1" 
F 0 "C21" H 3815 3646 50  0000 L CNN
F 1 "100n" H 3815 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3738 3450 50  0001 C CNN
F 3 "~" H 3700 3600 50  0001 C CNN
	1    3700 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 3600 3950 3600
$Comp
L power:GND #PWR?
U 1 1 5F7CF27B
P 3500 3600
AR Path="/5FB8CB32/5F7CF27B" Ref="#PWR?"  Part="1" 
AR Path="/5FB8D754/5F7CF27B" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 3500 3350 50  0001 C CNN
F 1 "GND" V 3505 3472 50  0000 R CNN
F 2 "" H 3500 3600 50  0001 C CNN
F 3 "" H 3500 3600 50  0001 C CNN
	1    3500 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 3600 3550 3600
$Comp
L Connector:USB_B_Micro J9
U 1 1 5F794242
P 1350 4000
F 0 "J9" H 1407 4467 50  0000 C CNN
F 1 "USB_B_Micro" H 1407 4376 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Wuerth_65100516121_Horizontal" H 1500 3950 50  0001 C CNN
F 3 "~" H 1500 3950 50  0001 C CNN
	1    1350 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7DC03C
P 3350 3900
AR Path="/5F7DC03C" Ref="R?"  Part="1" 
AR Path="/5F7D3F49/5F7DC03C" Ref="R?"  Part="1" 
AR Path="/5FB8D754/5F7DC03C" Ref="R7"  Part="1" 
F 0 "R7" V 3143 3900 50  0000 C CNN
F 1 "27R" V 3234 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3280 3900 50  0001 C CNN
F 3 "~" H 3350 3900 50  0001 C CNN
	1    3350 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7DC78F
P 3350 4000
AR Path="/5F7DC78F" Ref="R?"  Part="1" 
AR Path="/5F7D3F49/5F7DC78F" Ref="R?"  Part="1" 
AR Path="/5FB8D754/5F7DC78F" Ref="R8"  Part="1" 
F 0 "R8" V 3143 4000 50  0000 C CNN
F 1 "27R" V 3234 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3280 4000 50  0001 C CNN
F 3 "~" H 3350 4000 50  0001 C CNN
	1    3350 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 4000 4000 4000
Wire Wire Line
	3500 3900 4000 3900
Wire Wire Line
	1700 4100 1700 3900
$Comp
L Device:C C?
U 1 1 5F7E436E
P 3150 4300
AR Path="/5F7E436E" Ref="C?"  Part="1" 
AR Path="/5F7D3F49/5F7E436E" Ref="C?"  Part="1" 
AR Path="/5FB8CB32/5F7E436E" Ref="C?"  Part="1" 
AR Path="/5FB8D754/5F7E436E" Ref="C20"  Part="1" 
F 0 "C20" H 3265 4346 50  0000 L CNN
F 1 "47p" H 3265 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3188 4150 50  0001 C CNN
F 3 "~" H 3150 4300 50  0001 C CNN
	1    3150 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 4000 3150 4150
$Comp
L power:GND #PWR?
U 1 1 5F7E4375
P 3150 4500
AR Path="/5FB8CB32/5F7E4375" Ref="#PWR?"  Part="1" 
AR Path="/5FB8D754/5F7E4375" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 3150 4250 50  0001 C CNN
F 1 "GND" V 3155 4372 50  0000 R CNN
F 2 "" H 3150 4500 50  0001 C CNN
F 3 "" H 3150 4500 50  0001 C CNN
	1    3150 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4500 3150 4450
$Comp
L Device:C C?
U 1 1 5F7E4BD8
P 2750 4300
AR Path="/5F7E4BD8" Ref="C?"  Part="1" 
AR Path="/5F7D3F49/5F7E4BD8" Ref="C?"  Part="1" 
AR Path="/5FB8CB32/5F7E4BD8" Ref="C?"  Part="1" 
AR Path="/5FB8D754/5F7E4BD8" Ref="C19"  Part="1" 
F 0 "C19" H 2865 4346 50  0000 L CNN
F 1 "47p" H 2865 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2788 4150 50  0001 C CNN
F 3 "~" H 2750 4300 50  0001 C CNN
	1    2750 4300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F7E4BDF
P 2750 4500
AR Path="/5FB8CB32/5F7E4BDF" Ref="#PWR?"  Part="1" 
AR Path="/5FB8D754/5F7E4BDF" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 2750 4250 50  0001 C CNN
F 1 "GND" V 2755 4372 50  0000 R CNN
F 2 "" H 2750 4500 50  0001 C CNN
F 3 "" H 2750 4500 50  0001 C CNN
	1    2750 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4500 2750 4450
Wire Wire Line
	3150 4000 3200 4000
Wire Wire Line
	2750 4150 2750 3900
Wire Wire Line
	2750 3900 3200 3900
Wire Wire Line
	1650 3800 1800 3800
Wire Wire Line
	4600 3150 4600 3300
Wire Wire Line
	4800 3300 4800 3250
Wire Wire Line
	4800 3250 3950 3250
Wire Wire Line
	3950 4200 4000 4200
Wire Wire Line
	3950 3250 3950 3600
Connection ~ 3950 3600
Wire Wire Line
	3950 3600 3850 3600
Wire Wire Line
	3950 3600 3950 4200
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 5F805CBB
P 6750 3600
F 0 "Q1" H 6954 3646 50  0000 L CNN
F 1 "BSS138" H 6954 3555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6950 3525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 6750 3600 50  0001 L CNN
	1    6750 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F809ABF
P 6850 3100
AR Path="/5F809ABF" Ref="R?"  Part="1" 
AR Path="/5F7D3F49/5F809ABF" Ref="R?"  Part="1" 
AR Path="/5FB8D754/5F809ABF" Ref="R9"  Part="1" 
F 0 "R9" V 6643 3100 50  0000 C CNN
F 1 "4k7" V 6734 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6780 3100 50  0001 C CNN
F 3 "~" H 6850 3100 50  0001 C CNN
	1    6850 3100
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR072
U 1 1 5F80D518
P 6850 2900
F 0 "#PWR072" H 6850 2750 50  0001 C CNN
F 1 "VDD" H 6865 3073 50  0000 C CNN
F 2 "" H 6850 2900 50  0001 C CNN
F 3 "" H 6850 2900 50  0001 C CNN
	1    6850 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F8126C0
P 6850 3900
AR Path="/5FB8CB32/5F8126C0" Ref="#PWR?"  Part="1" 
AR Path="/5FB8D754/5F8126C0" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 6850 3650 50  0001 C CNN
F 1 "GND" V 6855 3772 50  0000 R CNN
F 2 "" H 6850 3900 50  0001 C CNN
F 3 "" H 6850 3900 50  0001 C CNN
	1    6850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3900 6850 3800
Wire Wire Line
	6850 2950 6850 2900
$Comp
L Transistor_FET:BSS138 Q3
U 1 1 5F819F17
P 7750 3600
F 0 "Q3" H 7954 3646 50  0000 L CNN
F 1 "BSS138" H 7954 3555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7950 3525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 7750 3600 50  0001 L CNN
	1    7750 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F819F1D
P 7850 3100
AR Path="/5F819F1D" Ref="R?"  Part="1" 
AR Path="/5F7D3F49/5F819F1D" Ref="R?"  Part="1" 
AR Path="/5FB8D754/5F819F1D" Ref="R11"  Part="1" 
F 0 "R11" V 7643 3100 50  0000 C CNN
F 1 "4k7" V 7734 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7780 3100 50  0001 C CNN
F 3 "~" H 7850 3100 50  0001 C CNN
	1    7850 3100
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR075
U 1 1 5F819F23
P 7850 2900
F 0 "#PWR075" H 7850 2750 50  0001 C CNN
F 1 "VDD" H 7865 3073 50  0000 C CNN
F 2 "" H 7850 2900 50  0001 C CNN
F 3 "" H 7850 2900 50  0001 C CNN
	1    7850 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F819F29
P 7850 3900
AR Path="/5FB8CB32/5F819F29" Ref="#PWR?"  Part="1" 
AR Path="/5FB8D754/5F819F29" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 7850 3650 50  0001 C CNN
F 1 "GND" V 7855 3772 50  0000 R CNN
F 2 "" H 7850 3900 50  0001 C CNN
F 3 "" H 7850 3900 50  0001 C CNN
	1    7850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3900 7850 3800
Wire Wire Line
	7850 2950 7850 2900
Wire Wire Line
	6850 3250 6850 3350
Wire Wire Line
	7850 3250 7850 3350
Wire Wire Line
	6850 3350 7450 3350
Wire Wire Line
	7450 3350 7450 3600
Wire Wire Line
	7450 3600 7550 3600
Connection ~ 6850 3350
Wire Wire Line
	6850 3350 6850 3400
Text GLabel 9000 3350 2    50   Input ~ 0
RX1
Connection ~ 7850 3350
Wire Wire Line
	7850 3350 7850 3400
$Comp
L Transistor_FET:BSS138 Q2
U 1 1 5F82FB0B
P 6950 5250
F 0 "Q2" H 7154 5296 50  0000 L CNN
F 1 "BSS138" H 7154 5205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7150 5175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 6950 5250 50  0001 L CNN
	1    6950 5250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F82FB11
P 6850 4750
AR Path="/5F82FB11" Ref="R?"  Part="1" 
AR Path="/5F7D3F49/5F82FB11" Ref="R?"  Part="1" 
AR Path="/5FB8D754/5F82FB11" Ref="R10"  Part="1" 
F 0 "R10" V 6643 4750 50  0000 C CNN
F 1 "4k7" V 6734 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6780 4750 50  0001 C CNN
F 3 "~" H 6850 4750 50  0001 C CNN
	1    6850 4750
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F82FB1D
P 6850 5550
AR Path="/5FB8CB32/5F82FB1D" Ref="#PWR?"  Part="1" 
AR Path="/5FB8D754/5F82FB1D" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 6850 5300 50  0001 C CNN
F 1 "GND" V 6855 5422 50  0000 R CNN
F 2 "" H 6850 5550 50  0001 C CNN
F 3 "" H 6850 5550 50  0001 C CNN
	1    6850 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 5550 6850 5450
Wire Wire Line
	6850 4900 6850 5000
Connection ~ 6850 5000
Wire Wire Line
	6850 5000 6850 5050
Wire Wire Line
	4800 3250 6350 3250
Wire Wire Line
	6350 3250 6350 4450
Wire Wire Line
	6350 4450 6850 4450
Wire Wire Line
	6850 4450 6850 4600
Connection ~ 4800 3250
$Comp
L Transistor_FET:BSS138 Q4
U 1 1 5F83BFBE
P 7950 5250
F 0 "Q4" H 8154 5296 50  0000 L CNN
F 1 "BSS138" H 8154 5205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8150 5175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 7950 5250 50  0001 L CNN
	1    7950 5250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F83BFC4
P 7850 4750
AR Path="/5F83BFC4" Ref="R?"  Part="1" 
AR Path="/5F7D3F49/5F83BFC4" Ref="R?"  Part="1" 
AR Path="/5FB8D754/5F83BFC4" Ref="R12"  Part="1" 
F 0 "R12" V 7643 4750 50  0000 C CNN
F 1 "4k7" V 7734 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7780 4750 50  0001 C CNN
F 3 "~" H 7850 4750 50  0001 C CNN
	1    7850 4750
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F83BFCA
P 7850 5550
AR Path="/5FB8CB32/5F83BFCA" Ref="#PWR?"  Part="1" 
AR Path="/5FB8D754/5F83BFCA" Ref="#PWR077"  Part="1" 
F 0 "#PWR077" H 7850 5300 50  0001 C CNN
F 1 "GND" V 7855 5422 50  0000 R CNN
F 2 "" H 7850 5550 50  0001 C CNN
F 3 "" H 7850 5550 50  0001 C CNN
	1    7850 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 5550 7850 5450
Wire Wire Line
	7850 4900 7850 5000
Wire Wire Line
	7850 5000 7250 5000
Connection ~ 7850 5000
Wire Wire Line
	7850 5000 7850 5050
Wire Wire Line
	6850 4450 7850 4450
Wire Wire Line
	7850 4450 7850 4600
Connection ~ 6850 4450
Wire Wire Line
	7150 5250 7250 5250
Wire Wire Line
	7250 5250 7250 5000
Wire Wire Line
	5650 5000 5650 3700
Wire Wire Line
	5650 5000 6850 5000
Wire Wire Line
	5400 3600 6550 3600
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 5FDE9906
P 8450 5250
AR Path="/5FDE9906" Ref="JP?"  Part="1" 
AR Path="/5FB8D754/5FDE9906" Ref="JP3"  Part="1" 
F 0 "JP3" H 8450 5462 50  0000 C CNN
F 1 "RX" H 8450 5371 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8450 5250 50  0001 C CNN
F 3 "~" H 8450 5250 50  0001 C CNN
	1    8450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 5FDE990C
P 8450 3350
AR Path="/5FDE990C" Ref="JP?"  Part="1" 
AR Path="/5FB8D754/5FDE990C" Ref="JP2"  Part="1" 
F 0 "JP2" H 8450 3562 50  0000 C CNN
F 1 "TX" H 8450 3471 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8450 3350 50  0001 C CNN
F 3 "~" H 8450 3350 50  0001 C CNN
	1    8450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3350 8350 3350
Wire Wire Line
	8550 3350 9000 3350
Wire Wire Line
	8550 5250 9000 5250
Wire Wire Line
	8150 5250 8350 5250
Wire Wire Line
	1800 3800 1800 3700
Wire Wire Line
	1800 3350 1800 3400
$Comp
L power:VBUS #PWR064
U 1 1 5F796F55
P 1800 3350
F 0 "#PWR064" H 1800 3200 50  0001 C CNN
F 1 "VBUS" H 1815 3523 50  0000 C CNN
F 2 "" H 1800 3350 50  0001 C CNN
F 3 "" H 1800 3350 50  0001 C CNN
	1    1800 3350
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR068
U 1 1 5F7CA49C
P 4600 3150
F 0 "#PWR068" H 4600 3000 50  0001 C CNN
F 1 "VBUS" H 4615 3323 50  0000 C CNN
F 2 "" H 4600 3150 50  0001 C CNN
F 3 "" H 4600 3150 50  0001 C CNN
	1    4600 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite L1
U 1 1 5F7EE783
P 1800 3550
F 0 "L1" H 1888 3596 50  0000 L CNN
F 1 "600Ohm 100MHz" H 1888 3505 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 1800 3550 50  0001 C CNN
F 3 "https://www.mouser.at/ProductDetail/875-MI0805K601R-10" H 1800 3550 50  0001 C CNN
	1    1800 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FA1234C
P 1800 4450
AR Path="/5FA1234C" Ref="C?"  Part="1" 
AR Path="/5F7D3F49/5FA1234C" Ref="C?"  Part="1" 
AR Path="/5FB8CB32/5FA1234C" Ref="C?"  Part="1" 
AR Path="/5FB8D754/5FA1234C" Ref="C22"  Part="1" 
F 0 "C22" H 1915 4496 50  0000 L CNN
F 1 "10n" H 1915 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1838 4300 50  0001 C CNN
F 3 "~" H 1800 4450 50  0001 C CNN
	1    1800 4450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FA12352
P 1800 4650
AR Path="/5FB8CB32/5FA12352" Ref="#PWR?"  Part="1" 
AR Path="/5FB8D754/5FA12352" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 1800 4400 50  0001 C CNN
F 1 "GND" V 1805 4522 50  0000 R CNN
F 2 "" H 1800 4650 50  0001 C CNN
F 3 "" H 1800 4650 50  0001 C CNN
	1    1800 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4650 1800 4600
Wire Wire Line
	1650 4000 3150 4000
Connection ~ 3150 4000
Wire Wire Line
	1700 3900 2750 3900
Connection ~ 2750 3900
Wire Wire Line
	1800 4300 1800 3800
Connection ~ 1800 3800
$EndSCHEMATC
