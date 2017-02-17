
/*
 * SPI.c
 * Alarm Clock
 * 
 * Brandon Miller
 */

#include "SPI.h"

/******************************************************************************* 
 * SPI_init();
 *
 * Sync Modes:
 * 0X00 = SPI_FOSC_4      	SPI Master mode, clock = FOSC/4
 * 0X01 = SPI_FOSC_16     	SPI Master mode, clock = FOSC/16
 * 0X02 = SPI_FOSC_64     	SPI Master mode, clock = FOSC/64
 * 0X03 = SPI_FOSC_TMR2   	SPI Master mode, clock = TMR2 output/2
 * 0X04 = SLV_SSON SPI    	Slave mode, /SS pin control enabled
 * 0X05 = SLV_SSOFF SPI   	Slave mode, /SS pin control disabled
 *
 * Bus Mode:
 * 0x00 = MODE_00       	SPI bus Mode 0,0
 * 0x01 = MODE_01       	SPI bus Mode 0,1
 * 0x10 = MODE_10       	SPI bus Mode 1,0
 * 0x11 = MODE_11       	SPI bus Mode 1,1
 *  
 * Sample Mode
 * 0x00 = SMPMID        	Input data sample at middle of data out
 * 0x01 = SMPEND        	Input data sample at end of data out
 *
 */


void SPI_init ( BYTE sync_mode, BYTE bus_mode, BYTE sample_mode )
{
  	SSPSTAT = 0x00;  					 // Reset status regester 
  	SSPCON1 = 0x20; 					 // Reset control regester

	SSPCON1 |= sync_mode;          // Or sync mode

  	switch( bus_mode ) {
   	case 0x01:                     // SPI bus mode 0,1
  	SSPSTATbits.CKE = 0;        // data transmitted on rising edge
   	SSPCON1bits.CKP = 1;        // clock idle state high
   	break;
   	case 0x10:                     // SPI bus mode 1,0
   	SSPSTATbits.CKE = 1;        // data transmitted on falling edge
   	SSPCON1bits.CKP = 0;        // clock idle state low
   	break;
   	case 0x11:                     // SPI bus mode 1,1
   	SSPSTATbits.CKE = 1;        // data transmitted on falling edge
   	SSPCON1bits.CKP = 1;        // clock idle state high
   	break;
   	default:                    // default SPI bus mode 0,0
   	SSPSTATbits.CKE = 0;        // data transmitted on rising edge
   	SSPCON1bits.CKP = 0;        // clock idle state low
   	break;
  	}

	if ( sample_mode >= 1 ) {
   	SSPSTATbits.SMP = 1;
   }

	SPI_CS_LAT = 1;                // Raise select line
		
}


/******************************************************************************* 
 * SPI_write8();
 *
 * Writes and 8 bit string out the SDO line of the microcontroller 
 */

BYTE SPI_write8 ( BYTE data )
{

BYTE recieved;
SPI_CS_LAT = 0;					   // Lower select line
SSPBUF = data;             // Write byte to SSPBUF register
while( !SSPSTATbits.BF );  // Wait until bus cycle complete
SSPSTATbits.BF = 0;        // Clear bus cycle flag
recieved = SSPBUF;    // Save recieved data
SPI_CS_LAT = 1;                // Raise select line

}


/******************************************************************************* 
 * SPI_write16();
 *
 * Writes and two 8 bit string out the SDO line of the microcontroller 
 */

WORD SPI_write16 ( BYTE data1, BYTE data2 )
{

WORD recieved;
SPI_CS_LAT = 0;					   // Lower select line
SSPBUF = data1;            // Write byte to SSPBUF register
while( !SSPSTATbits.BF );  // Wait until bus cycle complete
SSPSTATbits.BF = 0;        // Clear bus cycle flag
recieved = SSPBUF;    // Save recieved data
recieved = recieved << 4;  // Shift byte to second half 

SSPBUF = data2;             // Write byte to SSPBUF register
while( !SSPSTATbits.BF );  // Wait until bus cycle complete
SSPSTATbits.BF = 0;        // Clear bus cycle flag
recieved = SSPBUF;         // Save recieved data
SPI_CS_LAT = 1;                // Raise select line

}
