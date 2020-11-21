/* 
 * File:   circularBuffer.h
 * Author: stone
 *
 * Created on November 21, 2020, 12:10 AM
 */

#ifndef CIRCULARBUFFER_H
#define	CIRCULARBUFFER_H

#include <xc.h>
#include <stdint.h>

typedef struct{
	volatile uint8_t* buffer;
    uint8_t size;
    uint8_t readPointer;
    uint8_t writePointer;
	} CircularBuffer;

void circularBuffer_init(volatile CircularBuffer* theCircularBuffer, volatile uint8_t* theBuffer, uint8_t size);

//returns 1 on success, 0 on fail
uint8_t circularBuffer_write(volatile CircularBuffer* theCircularBuffer, uint8_t toWrite);

//returns 1 on success, 0 on fail
uint8_t circularBuffer_read(volatile CircularBuffer* theCircularBuffer, uint8_t* toRead);

//returns 1 if empty, 0 if not
uint8_t circularBuffer_isEmpty(volatile CircularBuffer* theCircularBuffer);

//returns 1 if full, 0 if not
uint8_t circularBuffer_isFull(volatile CircularBuffer* theCircularBuffer);

//returns 1 on success, 0 on fail
uint8_t circularBuffer_writeString(volatile CircularBuffer* theCircularBuffer, const char* toWrite);

#endif	/* CIRCULARBUFFER_H */

