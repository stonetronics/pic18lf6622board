#include "circularBuffer.h"
#include <stdlib.h>

void circularBuffer_init(volatile CircularBuffer* theCircularBuffer, volatile uint8_t* theBuffer, uint8_t size)
{
    theCircularBuffer->buffer = theBuffer;
    theCircularBuffer->size = size;
    theCircularBuffer->readPointer = 0;
    theCircularBuffer->writePointer = 0;
}

//returns 1 on success, 0 on fail
uint8_t circularBuffer_write(volatile CircularBuffer* theCircularBuffer, uint8_t toWrite)
{
    uint8_t gieSet = 0;
    if(INTCONbits.GIE == 1)
    {
        gieSet = 1;// save GIE bit
        INTCONbits.GIE = 0; //disable interrupts
    }
    if (((theCircularBuffer->readPointer == 0) && (theCircularBuffer->writePointer == theCircularBuffer->size-1)) || (theCircularBuffer->writePointer == theCircularBuffer->readPointer-1) )
    {
        //restore GIE bit
        if(gieSet) INTCONbits.GIE = 1;
        return 0;
    } else {
        theCircularBuffer->buffer[theCircularBuffer->writePointer++] = toWrite;
        if (theCircularBuffer->writePointer == theCircularBuffer->size)
            theCircularBuffer->writePointer = 0;
        //restore GIE bit
        if(gieSet) INTCONbits.GIE = 1;
        return 1;
    }
}

//returns 1 on success, 0 on fail
uint8_t circularBuffer_read(volatile CircularBuffer* theCircularBuffer, uint8_t* toRead)
{
    uint8_t gieSet = 0;
    if(INTCONbits.GIE == 1)
    {
        gieSet = 1;// save GIE bit
        INTCONbits.GIE = 0; //disable interrupts
    }
    if (theCircularBuffer->readPointer == theCircularBuffer->writePointer)
    {
        (*toRead) = theCircularBuffer->buffer[theCircularBuffer->readPointer];
        //restore GIE bit
        if(gieSet) INTCONbits.GIE = 1;
        return 0;
    } else {
        (*toRead) = theCircularBuffer->buffer[theCircularBuffer->readPointer++];
        if (theCircularBuffer->readPointer == theCircularBuffer->size)
            theCircularBuffer->readPointer = 0;
        //restore GIE bit
        if(gieSet) INTCONbits.GIE = 1;
        return 1;
    }
}

//returns 1 if empty, 0 if not
uint8_t circularBuffer_isEmpty(volatile CircularBuffer* theCircularBuffer)
{
    uint8_t gieSet = 0;
    if(INTCONbits.GIE == 1)
    {
        gieSet = 1;// save GIE bit
        INTCONbits.GIE = 0; //disable interrupts
    }
    if (theCircularBuffer->readPointer == theCircularBuffer->writePointer)
    {
        //restore GIE bit
        if(gieSet) INTCONbits.GIE = 1;
        return 1;
    } else {
        //restore GIE bit
        if(gieSet) INTCONbits.GIE = 1;
        return 0;
    }
}

//returns 1 if full, 0 if not
uint8_t circularBuffer_isFull(volatile CircularBuffer* theCircularBuffer)
{
    uint8_t gieSet = 0;
    if(INTCONbits.GIE == 1)
    {
        gieSet = 1;// save GIE bit
        INTCONbits.GIE = 0; //disable interrupts
    }
    if (((theCircularBuffer->readPointer == 0) && (theCircularBuffer->writePointer == theCircularBuffer->size - 1)) ||
       (theCircularBuffer->writePointer == theCircularBuffer->readPointer -1) )
    {
        //restore GIE bit
        if(gieSet) INTCONbits.GIE = 1;
        return 1;
    } else {
        //restore GIE bit
        if(gieSet) INTCONbits.GIE = 1;
        return 0;
    }
}

//returns 1 on success, 0 on fail
uint8_t circularBuffer_writeString(volatile CircularBuffer* theCircularBuffer, const char* toWrite)
{
    uint8_t success = 1;
    while (*toWrite != '\0')
    {
        success &= circularBuffer_write(theCircularBuffer, *toWrite);
        toWrite++;
    }
    return success;        
}