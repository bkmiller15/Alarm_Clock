
/*
 * Screens.c
 * Alarm Clock
 * 
 * Brandon Miller
 */

#include "Screens.h"
char TopLine[20];
char BottomLine[20];
char Scratch[20];
extern struct MTD MT;


void Screen_paint()
{
	MT_screen();
}


/*
 *   Main Time (MT)
 *
 *  ----------------
 * |    12:00 AM    |
 * | Wednesday 2011 |
 *  ----------------
 *
 *  ----------------
 * |    12:00 AM    |
 * |Alarm at 8:00 AM|
 *  ----------------
 */
void MT_screen()
{
	sprintf(TopLine, "    %2i:%02d %s \n", MT.hour, MT.min, getAMPM(MT.hour) );

	if (MT.screen) {	
		sprintf(BottomLine, " %s %i \n", getDay(MT.wday), MT.year );
	}
	else {
		sprintf(BottomLine, "Alarm at 8:00 AM \n");
	}

	MT.scount++;
	if (MT.scount > MT.scmax) {
		//sprintf(BottomLine, "                \n");
		MT.screen = !MT.screen;
		MT.scount = 0;
	}

   LCD_insert_string(TopLine); 
   LCD_return();  
   LCD_insert_string(BottomLine); 

}

char* getAMPM(int hour)
{
	if( hour <= 11)
	{
		sprintf(Scratch, "AM");
	}
	else
	{
		sprintf(Scratch, "PM");
	}

	return Scratch; 
}

char* getDay(int day)
{
	switch (day) 
	{   

		case 0:       
			sprintf(Scratch, "Monday   "); 
		break;

		case 1:       
			sprintf(Scratch, "Tuesday  ");
		break;

		case 2:       
			sprintf(Scratch, "Wednesday");
		break;

		case 3:       
			sprintf(Scratch, "Thursday ");
		break;   

		case 4:       
			sprintf(Scratch, "Friday   ");
		break; 

		case 5:       
			sprintf(Scratch, "Saturday ");
		break;

		case 6:       
			sprintf(Scratch, "Sunday   ");
		break;

		default:
			sprintf(Scratch, "Fail Day ");  
		break;

	}

	return Scratch; 
}

/*
 *  Alarm Clock (AC)
 *
 *  ----------------
 * |   Alarm Clock  |
 * | M*T*W*T*F*S*S* |
 *  ----------------
 *
 *  ----------------
 * | Next alarm at  |
 * |  Wed  12:00 AM |
 *  ----------------
 *
 */

/*
 *  Alarm Clock Set Menus
 *
 *  ----------------
 * |  Mon 12:00 PM  |
 * | Song: Funky TW |
 *  ----------------
 *
 *  ----------------
 * | Tues 12:00 PM  |
 * | Song: Beep 1   |
 *  ----------------
 *
 */



/*
 *  Stop Watch	(SW) 
 *
 *  ----------------
 * |   Stop Watch   |
 * |    00:00:00    |
 *  ----------------
 *
 */

/*
 *  Egg Timer (ET)  
 *
 *  ----------------
 * |   Egg Timer    |
 * |    00:00:00    |
 *  ----------------
 *
 */



/*
 *  Nap Timer (NT)  
 *
 *  ----------------
 * |   Nap Timer    |
 * |    120 Min     |
 *  ----------------
 *
 */

//-----------------------------------------------------------------

/*
 *  Nap Over 
 *
 *  ----------------
 * | Nap time over! |
 * |Time to get up! |
 *  ----------------
 *
 */


/*
void print_banner(INT bannernum)
{

    switch (bannernum) {   
    
     case 1:       
    sprintf(TopLineB, ":)    Hello   :)\n");
    sprintf(BottomLineB, ":)   Brandon  :)\n"); 
     break;
     
     case 2:       
        sprintf(TopLineB, "Oh No! The Power\n"); 
        sprintf(BottomLineB, "    Went Out!   \n"); 
     break;

     case 3:       
        sprintf(TopLineB, "!     Alarm    !\n"); 
        sprintf(BottomLineB, "!   Going Off  !\n"); 
     break;

     case 4:       
        sprintf(TopLineB, "!    GET UP    !\n"); 
        sprintf(BottomLineB, "!   YOU BUM!   !\n"); 
     break;   
     
     case 5:       
        sprintf(TopLineB, "!    YAY    !\n"); 
        sprintf(BottomLineB, "! TEST BANNER! !\n"); 
     break;   

     default:
	sprintf(TopLineB, "   Fail Defualt\n");
	Lcd_Insert_Str(TopLineB);  
     break;

   }
 
    Lcd_Insert_Str(TopLineB); 
    Lcd_Return();  
    Lcd_Insert_Str( BottomLineB);


}
*/

void Boot_Mesg(INT mesg)
{


    switch (mesg) {   
    
     case 1:       
    	sprintf(TopLine, "Booting. \n");
    	sprintf(BottomLine, "PIC        Done! \n"); 
     break;
     
     case 2:       
    	sprintf(TopLine, "Booting.. \n");
    	sprintf(BottomLine, "SPI        Done! \n"); 
     break;

     case 3:       
    	sprintf(TopLine, "Booting... \n");
    	sprintf(BottomLine, "LCD        Done! \n"); 
     break;

     case 4:       
    	sprintf(TopLine, "Booting. \n");
    	sprintf(BottomLine, "Timers     Done! \n"); 
     break;   
     
     case 5:       
    	sprintf(TopLine, "Booting.. \n");
    	sprintf(BottomLine, "A/D        Done! \n"); 
     break;   

     case 6:       
    	sprintf(TopLine, "Booting... \n");
    	sprintf(BottomLine, "Database   Done! \n"); 
     break;   


     default:
     break;

   }
 
    LCD_insert_string(TopLine); 
    LCD_return();  
    LCD_insert_string( BottomLine);


}










