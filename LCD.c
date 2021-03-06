
/*
 * LCD.c
 * Alarm Clock
 * 
 * Brandon Miller
 *
 * This code is used to provide basic functionality for the LCD display.
 * The LCD on the alarm clock is a 2x16 display with the following
 *  layout:
 *
 *            01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16
 *   Line1:  |##|##|##|##|##|##|##|##|##|##|##|##|##|##|##|##|
 *   Line2:  |##|##|##|##|##|##|##|##|##|##|##|##|##|##|##|##|
 */

#include "LCD.h"
#include <stdio.h> 


/* LCD_set_backlight
 * Set a value for the LCD back light brightness
 */
void LCD_set_backlight(int value)
{
   SPI_write16 ( 0x60 , (BYTE)value );
}
 

/* LCD_set_contrast
 * Set a value for the LCD contrast
 */
void LCD_set_constrast(int value)
{
   SPI_write16 ( 0x10 , (BYTE)value );
}

/* LCD_init
 * Initializes the LCD display
 */
void LCD_init() 
{

	// Make sure pins are set right
	LCD_RS_LAT  = 0;			// Clear LCD RS latch  
	LCD_RS_TRIS = 0; 			// Set LCD RS to output

	LCD_RW_LAT  = 0;			// Clear LCD RS latch  
	LCD_RW_TRIS = 0; 			// Set LCD RS to output

	LCD_E_LAT 	= 0; 			// Clear LCD enable latch
	LCD_E_TRIS  = 0;			// Set to output

	LCD_Data_PORT = 0x00;	// Clear LCD data port
	LCD_Data_LAT  = 0x00; 	// Clear LCD data latch
	LCD_Data_TRIS = 0x00;	// Set to output

	// Wake up!
	Delay10KTCYx(100);
   LCD_command(0x30);      //Wake Up Command #1
	Delay10KTCYx(100);
   LCD_command(0x30);      //Wake Up Command #2
	Delay10KTCYx(100);
   LCD_command(0x30);      //Wake Up Command #3
	Delay10KTCYx(100);

   // Further Settings
   LCD_command(0x38);      //Function set: 8-bit/2-line
	Delay10KTCYx(10);
   LCD_command(0x10);      //Set cursor
	Delay10KTCYx(10);
  	//LCD_command(0x0d);      //Display: ON; Cursor: Blink
  	LCD_command(0x0c);      //Display: ON; Cursor: OFF
	Delay10KTCYx(10);
   LCD_command(0x06);      //Entry mode set Cursor Right Shift On
	Delay10KTCYx(100);
 	LCD_command(0x01);      //Clear Display
	Delay10KTCYx(100);
	

}


/* LCD_command
 * Send commands to the LCD display
 */
void LCD_command( BYTE cmd ) 
{

	LCD_Data_LAT = cmd;

	LCD_RS_LAT  = 0;			// Clear LCD RS latch  
	LCD_RW_LAT  = 0;			// Clear LCD RS latch  

	LCD_E_LAT 	= 1; 			// Set LCD enable latch
	Delay10TCYx(100);
	LCD_E_LAT 	= 0; 			// Clear LCD enable latch

}


/* LCD_write
 * Write to the LCD display
 */
void LCD_write( BYTE cmd ) 
{

	LCD_Data_LAT = cmd;

	LCD_RS_LAT  = 1;			// Clear LCD RS latch  
	LCD_RW_LAT  = 0;			// Clear LCD RS latch  

	LCD_E_LAT 	= 1; 			// Set LCD enable latch
	Delay10TCYx(100);
	LCD_E_LAT 	= 0; 			// Clear LCD enable latch

}

/* LCD_increment_constrast
 * Allows for increasing of contrast value
 */
void LCD_increment_contrast()
{
		  	SPI_write8 ( 0x14 );
}

/* LCD_decrement_constrast
 * Allows for decreasing of contrast value
 */
void LCD_decrement_contrast()
{
		  	SPI_write8 ( 0x18 );
}


	

/* LCD_increment_backlight
 * Allows for increasing of back light value
 */
void LCD_increment_backlight()
{
		  	SPI_write8 ( 0x64 );
}

/* LCD_decrement_backlight
 * Allows for decreasing of back light value
 */
void LCD_decrement_backlight()
{
		  	SPI_write8 ( 0x68 );
}



/* LCD_insert_int
 * Display int on LCD
 */
void LCD_insert_int(int value)
{
	char buf[20];
	sprintf( buf, "%i\n", value ); //%d
	LCD_insert_string(buf);  

}


/* LCD_insert_string
 * Display string on LCD
 */
void LCD_insert_string(char* string)  
{

   int count = 0;
   
   while(string[count] != '\n')
   {
      LCD_insert_char(string[count]);
      count++;
   }
   
}


/* LCD_insert_string
 * Display string on LCD
 */
void LCD_debug(int display, char* string1 , char* string2)  
{
	if (display) {
   	int count = 0;
   	
   	while(string1[count] != '\n')
   	{
   	   LCD_insert_char(string1[count]);
   	   count++;
   	}

		LCD_return();
		count = 0;

   	while(string2[count] != '\n')
   	{
   	   LCD_insert_char(string2[count]);
   	   count++;
   	}
	}
   
}


/* LCD_insert_char
 * Display charactor on LCD
 */
void LCD_insert_char(char charactor)
{

	LCD_write(charactor);     
			     
}






void LCD_goto(BYTE X, BYTE Y)
{
   BYTE address = 0;

   if(Y!=1)
     address = 0x40;
   else
     address = 0;

   address = address + X;
   address = address + 0x80;
   LCD_command(address-1);
   //Lcd_Command(0xc2); 
}



void LCD_return()  
{

   LCD_goto(1,2);
   
}

/* LCD_clear
 * Clears LCD
 */
void LCD_clear()  
{
 	LCD_command(0x01);      //Clear Display
	//Delay10TCYx(2000);
}















