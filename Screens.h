/*
 * Screens.h
 * Alarm Clock
 * 
 * Brandon Miller
 */

#ifndef SCREENS_H 
#define SCREENS_H

	// Includes:
	// ---------------------------------------------------------------------
	#include "generic_typedefs.h"
	#include "LCD.h"
	#include <stdio.h> 
	#include "ACDB.h"

	// Variables and Defines:
	// ---------------------------------------------------------------------
 	#define BOOTTEXT 1
	
	// Forward Declaration
	// ---------------------------------------------------------------------
	void Boot_Mesg(INT mesg);
	void print_banner(INT bannernum);
	void MT_screen();
	void Screen_paint();
	char* getAMPM(int hour);
	char* getDay(int day);

#endif /* SCREENS_H */
