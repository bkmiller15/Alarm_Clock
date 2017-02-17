
//   AD.c
//   Alarm Clock
//
//   Created by Brandon Miller

#include "AD.h"

/* AD_init
 * Initialize A/D
 */
void AD_init()
{


	ADCON0 = 0x00;
	ADCON0 = 0b0000 << 2;
	
	//ADCON0bits.ADON = 0; // Disable A/D module
	//ADCON0bits.GO_DONE = 0;

	ADCON1bits.VCFG1 = 0; // Use VSS for Vref- source
	ADCON1bits.VCFG0 = 0; // Use VDD for Vref+ source
	 
	ADCON1bits.PCFG3 = 1;
	ADCON1bits.PCFG2 = 1;
	ADCON1bits.PCFG1 = 0;
	ADCON1bits.PCFG0 = 0;

	ADCON2bits.ADFM = 1;  // A/D result is right justified
	 
	ADCON2bits.ACQT2 = 0;
	ADCON2bits.ACQT1 = 0;
	ADCON2bits.ACQT0 = 1; // Acquisition time
	 
	ADCON2bits.ADCS2 = 0;
	ADCON2bits.ADCS1 = 1;
	ADCON2bits.ADCS0 = 0; // A/D conversion clock

	//ADCON1 = 0x0c;
	//ADCON2 = 0x80;
	//ADCON0 = 0x09;
	
	TRISAbits.TRISA2 = 1; // 
	
	ADCON0bits.ADON = 1; // Enable A/D module
}


/* AD_done
 * Deturmines when the A/D conversion is done 0=Done 1=Still running
 */
int AD_done()
{
	return ADCON0bits.GO_DONE;
}


/* AD_starts
 * Starts A/D conversion
 */
void AD_start()
{
	ADCON0bits.GO_DONE = 1;
}


/* AD_select
 * Select which A/D to sample
 */
void AD_select( BYTE channel )
{
	ADCON0 = 0x00;

	ADCON0 = channel << 2;
	ADCON0bits.ADON = 1; // Enable A/D module
}




