/*
 * AD.h
 * Alarm Clock
 * 
 * Brandon Miller
 */

#ifndef AD_H 
#define AD_H

	// Includes:
	// ---------------------------------------------------------------------
	#include "generic_typedefs.h"
	#include "PIC.h"

	// Forward Declaration
	// ---------------------------------------------------------------------
	void AD_init();
	int AD_done();
	void AD_start();
	void AD_select( BYTE channel );
	

#endif /* AD_H */
