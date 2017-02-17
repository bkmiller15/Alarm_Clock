/*
 * ACDB.h
 * Alarm Clock
 * 
 * Brandon Miller
 */

#ifndef ACDB_H 
#define ACDB_H

	// Includes:
	// ---------------------------------------------------------------------
	#include "generic_typedefs.h"
	

	// Forward Declaration
	// ---------------------------------------------------------------------
	void DB_init( void );
	void DB_update_sec( void);

	void MT_set(BOOL inc, BOOL dec, BOOL next, BOOL prev );
	void MT_unset( void ); 
	void MT_cleanup( void );
	void MT_increment_scount( void );

	void AC_increment_scount( void );

	void ET_set(BOOL inc, BOOL dec, BOOL next, BOOL prev );
	void ET_cleanup( void );
	void ET_enable( int value );
	void ET_clear( int value );

	void SW_enable( int value );
	void SW_clear( int value );
	void SW_cleanup( void );

	void NT_enable( int value );
	void NT_clear( int value );
	void NT_cleanup( void );

	void Menu_increment();
	void Menu_decrement();
	
	// Structs
	// ---------------------------------------------------------------------

typedef struct GenD  
{
	int Mode;
};


typedef struct ConfigD
{
	BOOL snooze_enable;
	int snooze_delay;  // Snooze delay in minutes
};

typedef struct MenuD 
{
	int smin;
	int selected;
	int smax;
};

typedef struct MTD
{
	// Set values data
	BOOL set;
	int svmin;
	int svalue;
	int svmax;

	int hour;
	int min;
	int sec;

	int wday;
	int yday;
	int year;
	
	int screen;
	int scount;
	int scmax;

};

typedef struct ACD
{
	// Set values data
	int ssmin;
	BOOL set_screen;
	int ssmax;

	int svmin;
	int svalue;
	int svmax;

	// Snooze
	BOOL snooze;
	int snooze_hour;
	int snooze_min;
	

	int screen;
	int scount;
	int scmax;

	BOOL Mon_enable;
	int Mon_hour;		
	int Mon_min;	
	int Mon_song;		

	BOOL Tues_enable;
	int Tues_hour;		
	int Tues_min;		
	int Tues_song;		

	BOOL Wen_enable;
	int Wen_hour;		
	int Wen_min;	
	int Wen_song;		

	BOOL Thur_enable;
	int Thur_hour;		
	int Thur_min;		
	int Thur_song;		

	BOOL Fri_enable;
	int Fri_hour;		
	int Fri_min;	
	int Fri_song;		

	BOOL Sat_enable;
	int Sat_hour;		
	int Sat_min;	
	int Sat_song;		

	BOOL Sun_enable;
	int Sun_hour;		
	int Sun_min;	
	int Sun_song;		
};


typedef struct SWD 
{
	// Set values data
	BOOL set;
	int svmin;
	int svalue;
	int svmax;

	BOOL enable;
	int hour;
	int min;
	int sec;

};


typedef struct ETD 
{
	BOOL set;
	BOOL enable;
	int hour;
	int min;
	int sec;
	BOOL done;

};

typedef struct NTD
{
	BOOL set;
	BOOL enable;
	int min;
	int sec;
	BOOL done;

};

typedef struct BannerD 
{
	int screen;
	//int scount;
	//int scmax;
};













#endif /* ACDB_H */
