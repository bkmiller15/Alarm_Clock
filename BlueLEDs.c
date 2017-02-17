
/*
 * BlueLED.c
 * Alarm Clock
 * 
 * Brandon Miller
 *
 */

#include "BlueLEDs.h"

/* BlueLEDs_set_value
 * Set value that coresponds to the brightness of the blue LEDs
 */
void BlueLEDs_set_value(int value)
{
   SPI_write16 ( 0x00 , (BYTE)value );
}

/* BlueLEDs_increment
 * Increments value/brightness of Blue LEDs
 */
void BlueLEDs_increment()
{
	SPI_write8 ( 0x04 );
}

/* BlueLEDs_decrement
 * Decreses value/brightness of Blue LEDs
 */
void BlueLEDs_decrement()
{
	SPI_write8 ( 0x08 );
}
