
/*
 * main.c
 * Alarm Clock
 * 
 * Brandon Miller
 */

//Configuration Bits:
#pragma config WDT = OFF
#pragma config MCLRE = OFF
#pragma config DEBUG = ON
#pragma config LVP = OFF
#pragma config FOSC = ECIO_EC


#include "main.h"
#include <stdio.h> 
#include <p18cxxx.h>
#define BOOTTEXTTIME 5000000000


/* main
 * Main function for alarm clock project
 */ 
void main()
{
	// Initialize
	PIC_init();		                 // Initialize Ports
	SPI_init( 0x02, 0x11, 0x00 );   // Initialize SPI
	LCD_init();                     // Initialize LCD
   LCD_set_backlight(500);         // Set initial value for backlight
	LCD_set_constrast(5);           // Set initial value for contrast
	BlueLEDs_set_value(50);         // Set initial value for Blue LEDs

	// LCD Screen is functiona:
	LCD_clear();
	Delay1KTCYx(10);
	Boot_Mesg(1);
	Delay10KTCYx(BOOTTEXTTIME);
	LCD_clear();
	Delay1KTCYx(10);
	Boot_Mesg(2);
	Delay10KTCYx(BOOTTEXTTIME);
	LCD_clear();
	Delay1KTCYx(10);
	Boot_Mesg(3);
	Delay10KTCYx(BOOTTEXTTIME);

	// Setup Timers
	timer0_init();
	LCD_clear();
	Delay1KTCYx(10);
	Boot_Mesg(4);
	Delay10KTCYx(BOOTTEXTTIME);

	// Setup A/D
	AD_init();
	LCD_clear();
	Delay1KTCYx(10);
	Boot_Mesg(5);
	Delay10KTCYx(BOOTTEXTTIME);

	// Setup Database 
	DB_init();
	Boot_Mesg(6);
	Delay10KTCYx(BOOTTEXTTIME);


		Delay1KTCYx(10);
		LCD_clear();
		Delay1KTCYx(10);


	while(1){
		LCD_clear();
		Delay1KTCYx(10);
		Screen_paint();
		Delay10KTCYx(10000);
		if ( SW1_PORT == 1) {
			BlueLEDs_increment();
			//LCD_insert_char('B');

		}

		Delay10KTCYx(10000);
		Delay10KTCYx(10000);

	}

}	
