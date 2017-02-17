/*
 * SPI.h
 * Alarm Clock
 * 
 * Brandon Miller
 */

#ifndef SPI_H 
#define SPI_H

	// Includes:
	// ---------------------------------------------------------------------
	#include "generic_typedefs.h"
	#include "PIC.h"
	

	// Forward Declaration
	// ---------------------------------------------------------------------
	void SPI_init ( BYTE sync_mode, BYTE bus_mode, BYTE Sample_mode );
   BYTE SPI_write8 ( BYTE data );
   WORD SPI_write16 ( BYTE data1, BYTE data2 );
	

#endif /* SPI_H */

