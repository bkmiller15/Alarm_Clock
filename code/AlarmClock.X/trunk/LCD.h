/*
 * LCD.h
 * Alarm Clocl
 * 
 * Brandon Miller
 */

#ifndef LCD_H 
#define LCD_H

	// Includes:
	// ---------------------------------------------------------------------
	#include "generic_typedefs.h"
	#include "PIC.h"
	#include "SPI.h"
	#include "delays.h"
	

	// Forward Declaration
	// ---------------------------------------------------------------------
   void LCD_set_backlight(int value);
	void LCD_set_constrast(int value);
	void LCD_init( void );
	void LCD_command( BYTE cmd ); 
	void LCD_write( BYTE cmd );
	void LCD_increment_contrast();
	void LCD_decrement_contrast();
	void LCD_increment_backlight();
	void LCD_decrement_backlight();
	void LCD_insert_int(int value);
	void LCD_insert_string(char* string);  
	void LCD_insert_char(char charactor);
	void LCD_goto(BYTE X, BYTE Y);
	void LCD_return( void );
	void LCD_clear( void );
	void LCD_debug(int display, char* string1 , char* string2);

#endif /* LCD_H */

