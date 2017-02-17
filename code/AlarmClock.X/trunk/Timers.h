/*
 * Timers.h
 * Alarm Clock
 * 
 * Brandon Miller
 */

#ifndef TIMERS_H 
#define TIMERS_H

	// Includes:
	// ---------------------------------------------------------------------
	#include "generic_typedefs.h"
	#include "PIC.h"

	// Variables:
	// ---------------------------------------------------------------------
   //typedef int TICK;
   #define MILISECOND 10
   #define SECOND 1000*MILISECOND
	
	//TICK T0Now;


	// Forward Declaration
	// ---------------------------------------------------------------------
	    void timer0_init();
    void InterruptVectorHigh();
    void InterruptHandlerHigh();

    int timer0_getvalue( void );
    void timer0_clear( void );

#endif /* TIMERS_H */

