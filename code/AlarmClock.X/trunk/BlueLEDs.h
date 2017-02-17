
/*
 * BlueLEDs.h
 * Alarm Clock
 * 
 * $authur
 */

#ifndef BLUELEDS_H 
#define BLUELEDS_H

	// Includes:
	// ---------------------------------------------------------------------
	#include "generic_typedefs.h"
	#include "SPI.h"
	#include "helper.h"
	

	// Forward Declaration
	// ---------------------------------------------------------------------
   void BlueLEDs_set_value(int value);
	void BlueLEDs_increment( void );
	void BlueLEDs_decrement( void );
	
#endif /* BLUELEDS_H */

