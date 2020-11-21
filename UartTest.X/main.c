/*
 * File:   main.c
 * Author: stone
 *
 * Created on November 7, 2020, 6:30 PM
 */


#include "config.h"
#include <xc.h>
#include <stdint.h>

#include "uart.h"
#include "circularBuffer.h"

void main(void) {
    uint8_t rxChar;
    
    uart_init(19200);
    
    //IO Test
    //TRISE |= (1<<0); //RE0 input
    TRISE &= ~(1<<1); //RE1 output
    //PORTE |= (1<<1); //set RE1 HIGH
    PORTE &= ~(1<<1); //set RE1 LOW
    
    //enable interrupts
    INTCONbits.PEIE = 1;
    INTCONbits.GIE = 1;

    while(1)
    {
        if(uart_testAndGetc(&rxChar))
        {
            uart_print("got character: '");
            uart_putc(rxChar);
            uart_println("' I hope you like this one:");
            uart_printUint8(1);
            uart_println("");
            uart_printUint8(12);
            uart_println("");
            uart_printUint8(123);
            uart_println("");
            uart_printByteBinary(0x55);
            uart_println("");
            uart_printByteHex(255);
            uart_println("");
            uart_printInt32(-16);
            uart_println("");
            uart_printInt32(23232323);
            uart_println("");
            uart_printFloat(12.777, 2);
            uart_println("");
            uart_printFloat(-7.2, 5);
            uart_println("");
        }
        
       /*
        * 
        
        if (PORTE &(1<<0)) //RE0 high
        {
            LATE |= (1<<1); //RE1 high
        } else {
            LATE &= ~(1<<1); //RE1 low
        }
         * 
         * */
        
    }
    
    return;
}

void __interrupt () theInterrupt(void)
{
    if(PIE1bits.RC1IE && PIR1bits.RC1IF)
    {
        uart_rxInterrupt();
    }
    if(PIE1bits.TX1IE && PIR1bits.TX1IF)
    {
        uart_txInterrupt();
    }
}
