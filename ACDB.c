
/*
 * ACDB.c
 * Alarm Clock
 * 
 * Brandon Miller
 */

#include "ACDB.h"

struct GenD Gen;
struct ConfigD Config;
struct MenuD Menu;
struct MTD MT;
struct ACD AC;
struct SWD SW;
struct ETD ET;
struct NTD NT;
struct BannerD Banner;


int *MTSet[] = {&MT.hour, &MT.min, &MT.sec, &MT.wday, &MT.year, };

void DB_init()
{

	Gen.Mode;

	Config.snooze_enable = 1;
	Config.snooze_delay = 15;  

	Menu.smin = 1;
	Menu.selected = 1;
	Menu.smax = 5;

	MT.set = 0;
	MT.svmin = 0;
	MT.svalue = 0;
	MT.svmax = 4;

	MT.hour = 12;
	MT.min = 0;
	MT.sec = 0;

	MT.wday = 0;
	MT.yday = 0;
	MT.year = 1987;

	MT.screen = 1;
	MT.scount = 0;
	MT.scmax = 50;

	AC.ssmin = 0;
	AC.set_screen = 0;
	AC.ssmax = 6;

	AC.svmin = 0;
	AC.svalue = 0;
	AC.svmax = 0;

	AC.snooze = 0;
	AC.snooze_hour = 0;
	AC.snooze_min = 0;

	AC.screen = 0;
	AC.scount = 0;
	AC.scmax = 0;

	AC.Mon_enable = 0;
	AC.Mon_hour = 0;		
	AC.Mon_min = 0;	
	AC.Mon_song = 0;		

	AC.Tues_enable = 0;
	AC.Tues_hour = 0;		
	AC.Tues_min = 0;		
	AC.Tues_song = 0;		

	AC.Wen_enable = 0;
	AC.Wen_hour = 0;		
	AC.Wen_min = 0;	
	AC.Wen_song = 0;		

	AC.Thur_enable = 0;
	AC.Thur_hour = 0;		
	AC.Thur_min = 0;		
	AC.Thur_song = 0;		

	AC.Fri_enable = 0;
	AC.Fri_hour = 0;		
	AC.Fri_min = 0;	
	AC.Fri_song = 0;		

	AC.Sat_enable = 0;
	AC.Sat_hour = 0;		
	AC.Sat_min = 0;	
	AC.Sat_song = 0;		

	AC.Sun_enable = 0;
	AC.Sun_hour = 0;		
	AC.Sun_min = 0;	
	AC.Sun_song = 0;		

	SW.set = 0;
	SW.svmin = 0;
	SW.svalue = 0;
	SW.svmax = 0;

	SW.enable = 0;
	SW.hour = 0;
	SW.min = 0;
	SW.sec = 0;

	ET.set = 0;
	ET.enable = 0;
	ET.hour = 0;
	ET.min = 0;
	ET.sec = 0;
	ET.done = 0;

	NT.set = 0;
	NT.enable = 0;
	NT.min = 0;
	NT.sec = 0;
	NT.done = 0;

	Banner.screen = 0;
	//Banner.scount = 0;
	//Banner.scmax = 0;

}



void DB_update_sec()
{
	MT.sec++;
	if (SW.enable) {
		SW.sec++;
	}
	if (ET.enable) {
		ET.sec--;
	}
	if (NT.enable) {
		NT.sec--;
	}
	MT_cleanup();
	SW_cleanup();
	ET_cleanup();
	NT_cleanup();
}

void MT_cleanup()
{
	if( MT.sec > 60 ) {
		MT.sec = 0;
		MT.min++;

		if( MT.min > 60 ) {
			MT.min = 0;
			MT.hour++;

			if( MT.hour > 60 ) {
				MT.hour = 0;
				MT.wday++;
				MT.yday++;
			}
		}
	}
}


void SW_cleanup()
{
	if( SW.sec > 60 ) {
		SW.sec = 0;
		SW.min++;

		if( SW.min > 60 ) {
			SW.min = 0;
			SW.hour++;
		}
	}
}
	

void ET_cleanup()
{
	if( ET.sec < 0 ) {
		ET.sec = 0;
		ET.min--;

		if( ET.min < 0 ) {
			ET.min = 0;
			ET.hour--;

			if( ET.hour < 0 ) {
				ET.hour = 0;
				ET.done = 1;
				ET.enable = 0;
			}
		}
	}
}

void NT_cleanup()
{
	if( NT.sec < 0 ) {
		NT.sec = 0;
		NT.min--;

		if( NT.min < 0 ) {
			NT.min = 0;
			NT.done = 1;
			NT.enable = 0;
		}
	}
}




void SW_enable( int value )
{
	SW.enable = value;
}

void SW_clear( int value )
{
	SW.hour = 0;
	SW.min  = 0;
	SW.sec  = 0;
}

void ET_enable( int value )
{
	ET.enable = value;
}

void ET_clear( int value )
{
	ET.hour = 0;
	ET.min  = 0;
	ET.sec  = 0;
}


void NT_enable( int value )
{
	NT.enable = value;
}

void NT_clear( int value )
{
	NT.min  = 0;
	NT.sec  = 0;
}


void MT_increment_scount()
{
	MT.scount++;
	if (MT.scount > MT.scmax) {
		if (MT.screen == 0) {
			MT.screen = 1;	
		}
		else {
			MT.screen = 0;	
		}
		MT.scount = 0;
	}
}

void AC_increment_scount()
{
	AC.scount++;
	if (AC.scount > AC.scmax) {
		if (AC.screen == 0) {
			AC.screen = 1;	
		}
		else {
			AC.screen = 0;	
		}
		AC.scount = 0;
	}
}

void Menu_increment()
{
	Menu.selected++;
	if (Menu.selected > Menu.smax) {
		Menu.selected = Menu.smin;
	}
}

void Menu_decrement()
{
	Menu.selected--;
	if (Menu.selected < Menu.smin) {
		Menu.selected = Menu.smax;
	}
}






void MT_set(BOOL inc, BOOL dec, BOOL next, BOOL prev )
{
	MT.set = 1;
	MT.svalue = MT.svmin; // Set value of set positon back to min

	// array
	
	if (inc) {
		MTSet[MT.svalue] += 1; 
	}

	if (dec) {
		MTSet[MT.svalue] -= 1; 
	}

	if (next) {  
		MT.svalue++; 
		if (MT.svalue > MT.svmax) {
			MT.svalue = MT.svmin;
		}
	}

	if (prev) {
		MT.svalue--; 
		if (MT.svalue < MT.svmin) {
			MT.svalue = MT.svmax;
		}
	}
	MT_cleanup();
}

/*
void ET_set(BOOL inc, BOOL dec, BOOL next, BOOL prev )
{
	ET.set = 1;
	ET.enable = 0;
	ET.svalue = ET.smin; // Set value of set positon back to min

	// array
	
	if (inc) {
		ET.array[ET.svalue] += 1; 
	}

	if (dec) {
		ET.array[ET.svalue] -= 1; 
	}

	if (next) {  
		ET.svalue++; 
		if (ET.svalue > ET.smax) {
			ET.svalue = ET.smin;
		}
	}

	if (prev) {
		ET.svalue--; 
		if (ET.svalue < ET.smin) {
			ET.svalue = ET.smax;
		}
	}
	ET_cleanup();
}
*/

void MT_unset() 
{
	MT.set = 0;
}





