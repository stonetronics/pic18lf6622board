#include "uart.h"
#include "circularBuffer.h"

#define BUFFERSIZE_RX   16
#define BUFFERSIZE_TX   64

volatile uint8_t rxBufferMemory[BUFFERSIZE_RX];
volatile uint8_t txBufferMemory[BUFFERSIZE_TX];

volatile CircularBuffer rxBuffer;
volatile CircularBuffer txBuffer;

volatile uint8_t sending;


void uart_init(const uint32_t baudrate)
{
  //init buffers
    circularBuffer_init(&rxBuffer, rxBufferMemory, BUFFERSIZE_RX);
    circularBuffer_init(&txBuffer, txBufferMemory, BUFFERSIZE_TX);
    
    sending = 0;
    
    int16_t a = ( F_OSC / (16 * baudrate) ) - 1;

    if (a < 0)
      a = 0;

    if (a > 255) //low speed
    {
      a = ( F_OSC / (64 * baudrate) ) - 1;
      if (a > 255)
        a = 255;
      SPBRG1 = a;
      TXSTA1 = (1<<5);  // transmit enabled, low speed mode
    }

    else //high speed
    {
      SPBRG1 = a;
      TXSTA1 = (1<<5) | (1<<2);  // transmit enabled, high speed mode
    }

    RCSTA1 = (1<<7) | (1<<4);  // serial port enabled, continues receive enabled

    //enable receive interrupt
    PIE1bits.RC1IE = 1;
 
}
 
uint8_t uart_dataReady()
{
  if(circularBuffer_isEmpty(&rxBuffer))
    return 0;
  return 1;
}

uint8_t uart_testAndGetc(char* c)
{
    return circularBuffer_read(&rxBuffer, c);
}
 
uint8_t readReg()
{
    while (RCIF == 0);  //wait until there is data in the TXREG
    if (OERR1)
    {  // clear eventual overrun error
        CREN1 = 0;
        CREN1 = 1;
    }
    return RCREG1;  //read the received data
}
 
void uart_putc(const char a)
{
    
    if (!sending)
    {
        while (TRMT1 == 0); //wait until there is no transmission going on
        
        TXREG1 = a;     //start next transmission
        sending = 1;
        //enable tx interrupt
        PIE1bits.TX1IE = 1;
        
    } else {
        while (circularBuffer_isFull(&txBuffer)); //wait until tx buffer can take new data
        circularBuffer_write(&txBuffer, a);
    }
    
}

void uart_print(const char* a)
{
    uint8_t i = 0;
    while (a[i] != '\0')
        uart_putc(a[i++]);
}

void uart_newline()
{
    uart_putc('\n');
    uart_putc('\r');
}

void uart_println(const char* a)
{
    uart_print(a);
    uart_newline();
}

void uart_printUint8(uint8_t a)
{
    uint8_t divisor = 1;
    if (a == 0)
    {
        uart_putc('0');
    } else {   
        while (divisor < a)
        {
            divisor *= 10;
            if (divisor == 100)
                break;
        }

        if ((a%(divisor*10))/(divisor) == 0)
            divisor /= 10; //skip first zero if necessary

        while (divisor >= 1)
        {
            uart_putc('0' + (a%(divisor*10))/(divisor));
            divisor /= 10;
        }
    }
}

void uart_printByteBinary(uint8_t a)
{
    uint8_t i;
    
    uart_putc('0');
    uart_putc('b');
    
    for (i = 0; i < 8; i++)
    {
        if (a & (1 << (7-i)))
            uart_putc('1');
        else
            uart_putc('0');
    }
}

void uart_printByteHex(uint8_t a)
{
    uart_putc('0');
    uart_putc('x');
    if (((a&0xF0)>>4) < 10)
        uart_putc('0' + ((a&0xF0)>>4) );
    else
        uart_putc('A' - 10 + ((a&0xF0)>>4));
    if ((a&0x0F) < 10)
        uart_putc('0' + a&0x0F);
    else
        uart_putc('A' - 10 + (a&0x0F));
}

void uart_printInt32(int32_t a)
{
    int32_t modulor = 1;
    
    if (a == 0)
    {
        uart_putc('0');
    } else {
        if (a < 0)
        {
            uart_putc('-');
            a *= -1;
        }

        while (modulor < a)
        {
            modulor *= 10;
            if (modulor == 1000000000)
                break;
        }

        while (modulor > 1)
        {
            uart_putc('0' + (a%modulor)/(modulor/10));
            modulor /= 10;
        }
    }
    
}

void uart_printFloat(float a, uint8_t digitsAfterComma)
{
    uint8_t d;
    uint8_t i =0;
    
    uart_printInt32((int32_t)a);
    uart_putc('.');
    
    a = a - (int32_t) a;
    if (a < 0.0)
        a *= -1;
    
    while (i++ < digitsAfterComma)
    {
        a *= 10.0;
        d = (uint8_t) a;
        uart_putc('0'+d%10);
    }
}

//transmission complete interrupt
void uart_txInterrupt(void)
{
    
    uint8_t txChar;
    if (circularBuffer_isEmpty(&txBuffer))
    {
        sending = 0;
        //enable tx interrupt
        PIE1bits.TX1IE = 0;
    } else {
        circularBuffer_read(&txBuffer, &txChar);
        uart_putc(txChar);
    }
    
    return;
}

//reception interrupt
void uart_rxInterrupt(void)
{
    circularBuffer_write(&rxBuffer, RCREG1);
    
    return;
}
