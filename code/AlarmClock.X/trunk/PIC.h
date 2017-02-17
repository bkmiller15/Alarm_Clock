
/*
 * PIC.h
 * Alarm Clock
 * 
 * Brandon Miller
 */

#ifndef PIC_H 
#define PIC_H

	// Includes:
	// -----------------------------------------------------------------------------------------
	
	#include <p18cxxx.h>
	



	// Port A
	// -----------------------------------------------------------------------------------------
	
	#define Wall_TRIS 	TRISAbits.TRISA0 		// Define TRIS bit for 9VWall (1)
	#define BATT_TRIS 	TRISAbits.TRISA1 		// Define TRIS bit for Battery (1)
	#define PHOTO_TRIS 	TRISAbits.TRISA2 		// Define TRIS bit for Photoresistor (1)
	
	#define SW5_PORT 		PORTAbits.RA3			// Read from SW3 Port	(Input) 
	#define SW5_TRIS 		TRISAbits.TRISA3 		// Define TRIS bit for SW3 (1)

	#define LCD_RS_LAT 	LATAbits.LATA4			// Write to LCD RS Lat 		(Output) 
	#define LCD_RS_TRIS 	TRISAbits.TRISA4 		// Define TRIS bit for LCD RS (0)

	#define SPI_CS_LAT 	LATAbits.LATA5			// Write to SPI CS Lat 		(Output) 
	#define SPI_CS_TRIS 	TRISAbits.TRISA5 		// Define TRIS bit for SPI CS (0)

	#define LCD_RW_LAT 	LATAbits.LATA6			// Write to LCD RW Lat 		(Output) 
	#define LCD_RW_TRIS 	TRISAbits.TRISA6 		// Define TRIS bit for LCD RW (0)



	// Port B
	// -----------------------------------------------------------------------------------------

	#define SPI_SDI_PORT		PORTBbits.RB0			// Read from SPI SDI Port	(Input) 
	#define SPI_SDI_TRIS		TRISBbits.TRISB0 		// Define TRIS bit for SPI SDI  (1)
	
	#define SPI_SCK_LAT 		LATBbits.LATB1			// Write to SPI Clock Lat 		(Output) 
	#define SPI_SCK_TRIS		TRISBbits.TRISB1 		// Define TRIS bit for SPI Clock (0)

	#define SW1_PORT 			PORTBbits.RB2			// Read from SW1 Port	(Input) 
	#define SW1_TRIS 			TRISBbits.TRISB2 		// Define TRIS bit for SW1 (1)

	#define SWA_PORT 			PORTBbits.RB3			// Read from SWA Port	(Input) 
	#define SWA_TRIS 			TRISBbits.TRISB3 		// Define TRIS bit for SWA (1)

	#define SWB_PORT 			PORTBbits.RB4			// Read from SWB Port	(Input) 
	#define SWB_TRIS 			TRISBbits.TRISB4 		// Define TRIS bit for SWB (1)

	#define BATTSW_LAT 		LATBbits.LATB5			// Write to Battery Switch Lat 		(Output) 
	#define BATTSW_TRIS		TRISBbits.TRISB5 		// Define TRIS bit for Battery Switch (0)

	// Port C
	// -----------------------------------------------------------------------------------------
	
	#define SW2_PORT 		PORTCbits.RC0			// Read from SW2 Port	(Input) 
	#define SW2_TRIS 		TRISCbits.TRISC0 		// Define TRIS bit for SW2 (1)
	
	#define SW3_PORT 		PORTCbits.RC1			// Read from SW3 Port	(Input) 
	#define SW3_TRIS 		TRISCbits.TRISC1 		// Define TRIS bit for SW3 (1)

	#define SW4_PORT 		PORTCbits.RC2			// Read from SW4 Port	(Input) 
	#define SW4_TRIS 		TRISCbits.TRISC2 		// Define TRIS bit for SW4 (1)

	//#define VUSB 	 	NOT USED
	//#define RC4 	 		NOT USED
	//#define RC5 	 		NOT USED
	
	#define LCD_E_LAT 	LATCbits.LATC6			// Write to LCD enable Lat 		(Output) 
	#define LCD_E_TRIS 	TRISCbits.TRISC6 		// Define TRIS bit for LCD enable (0)


	// Port D
	// -----------------------------------------------------------------------------------------
	
	#define LCD_Data_PORT 	PORTD
	#define LCD_Data_LAT  	LATD
	#define LCD_Data_TRIS 	TRISD

	// Port E
	// -----------------------------------------------------------------------------------------
	
	#define TXGPS_LAT 	LATEbits.LATE0			// Write to TX Lat 		(Output) 
	#define TXGPS_TRIS 	TRISEbits.TRISE0 		// Define TRIS bit for TXGPS (0)
	
	#define RXGPS_PORT 	PORTEbits.RE1			// Read from RX Port		(Input) 
	#define RXGPS_TRIS 	TRISEbits.TRISE1 		// Define TRIS bit for RXGPS (1)
	
	#define BUZZER_LAT 	LATEbits.LATE2			// Write to Buzzer Lat 	(Output) 
	#define BUZZER_TRIS 	TRISEbits.TRISE2 		// Define TRIS bit for BUZZER_TRIS (0)
	
	//#define RESET 	 	NOT USED



	// Forward Declaration
	// -----------------------------------------------------------------------------------------
	
	void PIC_init( void );
	

#endif /* PIC.H */

