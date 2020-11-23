#ifndef __UART_H__
#define	__UART_H__

#include <xc.h> // include processor files - each processor file is guarded.  
#include <stdint.h>


/**
    <p><b>Function prototype:</b></p>
  
    <p><b>Summary:</b></p>

    <p><b>Description:</b></p>

    <p><b>Precondition:</b></p>

    <p><b>Parameters:</b></p>

    <p><b>Returns:</b></p>

    <p><b>Example:</b></p>
    <code>
 
    </code>

    <p><b>Remarks:</b></p>
 */
// TODO Insert declarations or function prototypes (right here) to leverage 
// live documentation



#define F_OSC 12000000UL 





void uart_init(const uint32_t baudrate);

uint8_t uart_dataReady();
 
uint8_t uart_testAndGetc(char* c);
 
void uart_putc(const char a);

void uart_print(const char* a);
 
void uart_newline();

void uart_println(const char* a);

void uart_printUint8(uint8_t a);

void uart_printByteBinary(uint8_t a);

void uart_printByteHex(uint8_t a);

void uart_printInt32(int32_t a);

void uart_printFloat(float a, uint8_t digitsAfterComma);

void uart_txInterrupt(void);

void uart_rxInterrupt(void);

#endif

