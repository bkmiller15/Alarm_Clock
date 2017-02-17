
/*
 * PIC.c
 * Alarm Clock
 * 
 * Brandon Miller
 *
 */

#include "PIC.h"

void PIC_init(){

	// Port A
	// -----------------------------------------------------------------------------------------
	
	PORTA = 0x00;				// Clear out port A
	LATA = 0x00; 				// Clear latch of port A
	TRISA = 0x00;				// Set all pins to outputs to start

	ADCON1 = 0x0C; 			// Set first three A ports to A/D

	Wall_TRIS = 1; 			// Set 9Wall_TRIS to input and set to A/D
	BATT_TRIS = 1; 			// Set BATT_TRIS to input and set to A/D
	PHOTO_TRIS = 1; 			// Set PHOTOR_TRIS to input and set to A/D

	SW5_PORT = 0;				// Clear SW3 port 
	SW5_TRIS = 1;				// Set to input 	

	LCD_RS_LAT  = 0;			// Clear LCD RS latch  
	LCD_RS_TRIS = 0; 			// Set LCD RS to output

	SPI_CS_LAT  = 0;			// Clear SPI CS latch 
	SPI_CS_TRIS = 0;   		// Set SPI CS to output

	LCD_RW_LAT  = 0;			// Clear LCD RS latch  
	LCD_RW_TRIS = 0; 			// Set LCD RS to output

	// Port B
	// -----------------------------------------------------------------------------------------

	PORTB = 0x00;				// Clear out port A
	LATB = 0x00; 				// Clear latch of port A
	TRISB = 0x00;				// Set all pins to outputs to start


	SPI_SDI_PORT  = 0;
	SPI_SDI_TRIS  = 1;
	
	SPI_SCK_LAT   = 0;
	SPI_SCK_TRIS  = 0;

	SW1_PORT 	  = 0;
	SW1_TRIS 	  = 1;

	SWA_PORT 	  = 0;
	SWA_TRIS 	  = 1;

	SWB_PORT 	  = 0;
	SWB_TRIS 	  = 1;

	BATTSW_LAT 	  = 0;
	BATTSW_TRIS	  = 0;



	// Port C
	// -----------------------------------------------------------------------------------------
	
	PORTC = 0x00;				// Clear out port A
	LATC = 0x00; 				// Clear latch of port A
	TRISC = 0x00;				// Set all pins to outputs to start

	SW2_PORT = 0;				// Clear SW2 port 
	SW2_TRIS = 1;				// Set to input 	
	
	SW3_PORT = 0;				// Clear SW4 port 	 
	SW3_TRIS = 1;				// Set to input

	SW4_PORT = 0;				// Clear SW4 port  
	SW4_TRIS = 1;				// Set to input

	//#define VUSB 	 	NOT USED
	//#define RC4 	 		NOT USED
	//#define RC5 	 		NOT USED
	
	LCD_E_LAT 	= 0; 		// Clear LCD enable latch
	LCD_E_TRIS = 0;		// Set to output


	// Port D
	// -----------------------------------------------------------------------------------------
		
	LCD_Data_PORT = 0x00;		// Clear LCD data port
	LCD_Data_LAT  = 0x00; 	// Clear LCD data latch
	LCD_Data_TRIS = 0x00;		// Set to output
	
	
	// Port E
	// -----------------------------------------------------------------------------------------
	
	PORTE = 0x00;				// Clear out port A
	LATE = 0x00; 				// Clear latch of port A
	//TRISE = 0x00;				// Set all pins to outputs to start

	TXGPS_LAT = 0; 			// Clear TXGPS Latch
	TXGPS_TRIS = 0;			// Set to output

	RXGPS_PORT = 0;			// Clear RXGPS Port 
	RXGPS_TRIS = 1; 			// Set to input

	//BUZZER_LAT = 0;
	//BUZZER_TRI = 0;

}













