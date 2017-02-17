
//   helper.c
//	  Alarm Clock
//
//   Created by Brandon Miller


#include "helper.h"



void Int2SPIw16 (BYTE address, INT16 value) 
{

	BYTE highbyte;
	BYTE lowbyte;
	Int2BYTES T1;
	WORD WORDvalue = 0x0000;

	if (value > 1023) {
		value = 1023;
	}

	WORDvalue = (WORD)value;

	T1.Val = WORDvalue;

	lowbyte = T1.CONBYTE.LB;
	highbyte = T1.CONBYTE.HB | address;

   SPI_write16 ( highbyte, lowbyte );
	
}
