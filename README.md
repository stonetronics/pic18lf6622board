# pic18lf6622board

A Arduino-like Microcontroller board with a PIC18LF6622 microcontroller

#### Features: #####

- PIC18LF6622 Microcontroller
 - PICKit header
 - 12MHz Crystal
- FT230XQ USB/Serial controller
 - Micro-USB connector
 - RX/TX disconnectable
- 5V and 3V3 Regulator
 - AMS1117: 1A
 - VDD and AVDD connectable to 5V, 3V3 and VUSB
- All useful pins on the controller are broken out on pinheaders
- 2 Layer Board
- drawn in KiCad
 
The Board is built to be programmed with a PICKit, altough one could also build a serial bootloader.

### Uart Driver ###
There is a MPLAB X Project UartTest.X that contains a test for a library that lets you use the uart. The driver is interrupt-driven and uses circular buffers to store incoming and outgoing data while not blocking the main program flow. This project can be used as template with integrated uart support + circular buffer middleware.
