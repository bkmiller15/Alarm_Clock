
/*
 * Timers.c
 * Alarm Clock
 * 
 * Brandon Miller
 */

#include "Timers.h"

int value = 0;
int mytime = 0;

void timer0_init()
{

  RCONbits.IPEN = 1;            //enable priority levels

  INTCON = 0x24;                //disable global and enable TMR0 interrupt
  INTCON2 = 0x84;               //TMR0 high priority

  TMR0H = 0;                    //clear timer
  TMR0L = 0;                    //clear timer

  T0CON = 0xC8;                 //set up timer0 - prescaler 1:256

  INTCONbits.GIEH = 1;          //enable interrupts
    mytime = 0;
 
}



int timer0_getvalue()
{
   return mytime;
}

void timer0_clear()
{
   mytime = 0;
}







//----------------------------------------------------------------------------
// High priority interrupt vector

#pragma code InterruptVectorHigh = 0x08

void InterruptVectorHigh()
{
  _asm
    goto InterruptHandlerHigh //jump to interrupt routine
  _endasm
}

//----------------------------------------------------------------------------
// High priority interrupt routine

#pragma code
#pragma interrupt InterruptHandlerHigh




void InterruptHandlerHigh ()
{
  if (INTCONbits.T0IF)
    {                                   //check for TMR0 overflow
      INTCONbits.T0IF = 0;            //clear interrupt flag
	    
      TMR0H = 0;                    //clear timer
      TMR0L = 0;                    //clear timer
		if ( value == 0 ) {
			TXGPS_LAT  = 1;			// Clear LCD RS latch
			value = 1;			  
		}
		else {
			TXGPS_LAT  = 0;			// Clear LCD RS latch
			value = 0;			  

		}


      mytime++;
    }
}


