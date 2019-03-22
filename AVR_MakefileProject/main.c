#include "core.h"
#include "array.h"

#define _DEVELOP 0

#ifdef _EXEC // For logic tests ... windoes execution files.
#include <stdio.h>
int main( void )
{
	void ExecMain__ForTest();
	ExecMain__ForTest();
	return 0;
}
#else // ~_EXEC, means not test.
#if _DEVELOP
// Dev code
void main( void )
{

}

#else // !_DEVELOP == ON TEST
#include <avr/interrupt.h>
#include <util/delay.h>

enum {
	ESWITCH_MASK_0 = 0x10, 
	ESWITCH_MASK_1 = 0x20, 
	ESWITCH_MASK_2 = 0X40, 
	ESWITCH_MASK_3 = 0X80 
};

typedef uint8 FActiveSwitchList;
FActiveSwitchList ReadSwitchInput();
void UpdateLight();

ISR( TIMER0_COMP_vect )
{
	// PORTC = ~PORTC; 
}

void InitializeEnvironment()
{
	// Port RW
	DDRC = 0xff;
	DDRE = 0x00;
	DDRF = 0xf0;
	DDRB = 0xff;

	// Timer 0
	ASSR = 0;
	TCCR0 = mask( CS02, CS01, CS00 );
	TIMSK &= ~mask( OCIE0, TOIE0 );
	TIMSK |= mask( OCIE0 );
	OCR0 = 0x80;

	// EXT interrupt 
	EIMSK = mask( INT4, INT5 );
	EICRB = mask( 1, 3 );

	// Port init
	PORTC = mask( 0, 1, 2, 3, 4 );

	// enable interrupt
	SREG = 0x80;
}

int main( void )
{  
	InitializeEnvironment();
	// <code>

	while ( 1 )
	{
		UpdateLight();
	}

	return 0;
}

byte pos = 0;
byte N1000 = 0, N100 = 0, N10 = 0, N1 = 0;
bool bUpdate = 0;

ISR( INT4_vect )
{ 
	bUpdate = !bUpdate;

	/*static bool flag_ff = 0;
	const int SW1 = mask( PE4 ), SW2 = mask( PE5 );
	const int inp = ReadSwitchInput();

	if ( is_true( inp ) && !flag_ff )
	{
		flag_ff = true;
		if ( SW1 & inp )
		{
		}
		if ( SW2 & inp )
		{
			N1000 = N100 = N10 = N1 = 0;
		}
	}
	else if ( !is_true( inp ) )
	{
		flag_ff = false;
	}*/
} 

ISR( INT5_vect )
{
	N1000 = N100 = N10 = N1 = 0;
}

void UpdateLight()
{
	void update( void );
	void TrigInterrupt( void );
	static int num = 0;
	void Seg4_out( int num );
	void Seg2_out( int );

	while ( 1 )
	{
		TrigInterrupt();
		if ( bUpdate )
		{
			update();
		}
		num = N1000 * 1000 + N100 * 100 + N10 * 10 + N1;
		Seg4_out( num );
	}
}

void TrigInterrupt( void )
{
	const int flg = ReadSwitchInput();
	EIFR = flg;
}

// SW1 입력 처리 함수
void update( void )
{
	const bool bCnt10 = N1 == 9;
	const bool bCnt100 = bCnt10 && N10 == 9;
	const bool bCnt1000 = bCnt100 && bCnt10 && N100 == 9;
	if ( bCnt1000 ) N1000 = ( N1000 + 1 ) % 10;
	if ( bCnt100 ) N100 = ( N100 + 1 ) % 10;   // 100자리 +1
	if ( bCnt10 ) N10 = ( N10 + 1 ) % 10;     // 10자리 +1
	N1 = ( N1 + 1 ) % 10;            // 1자리 +1
}

// SW2 입력 처리 함수
void sw_key2( void )
{
	pos = ( pos + 1 ) % 4;        // 입력 자리 이동
}

const char seg_pat[16] = { 
	0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07,
	0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e, 0x79, 0x71 
};

void Seg4_out( int num )
{

	int i, buf;

	N1000 = num / 1000;             // 1000자리 추출
	buf = num % 1000;

	N100 = buf / 100;               // 100자리 추출
	buf = buf % 100;

	N10 = buf / 10;                 // 10자리 추출
	N1 = buf % 10;                  // 1자리 추출    

	for ( i = 0; i < 1; i++ ) {
		PORTF = 0b11100000;         // 맨 우측 7-Segment SEG1 ON (PF4=0)  
		PORTB = seg_pat[N1];        // 1자리 표시  
		_delay_ms( 2 );


		PORTF = 0b11010000;	        // 7-Segment SEG2 ON (PF5=0)  
		PORTB = seg_pat[N10];       // 10자리 표시  
		_delay_ms( 2 );

		PORTF = 0b10110000;	        // 7-Segment SEG3 ON  (PF6=0)  
		PORTB = seg_pat[N100];      // 100자리 표시  
		_delay_ms( 3 );

		PORTF = 0b01110000;	        // 7-Segment SEG4 ON (PF7=0)  
		PORTB = seg_pat[N1000];     // 1000자리 표시  
		_delay_ms( 3 );
	}
}
/*
void UpdateLight_1()
{
	const int delay = 5;
	static int iter = 0;
	PORTF = 0b11100000;
	PORTB = 0x06;
	_delay_ms( delay );
	PORTF = 0b11010000;
	PORTB = 0x5b;
	_delay_ms( delay );
	PORTF = 0b10110000;
	PORTB = 0x4f;
	_delay_ms( delay );
	PORTF = 0b01110000; 
	PORTB = 0x66;
	_delay_ms( delay );
}

void UpdateLight_0()
{
	uint8 LightState = 0;
	int i, Mask = ESWITCH_MASK_0, LightOverlayMask = 0x11;
	const int NumSwitches = 4;

	// <code>
	FActiveSwitchList ActiveLight = ReadSwitchInput();
	for ( i = 0; i < NumSwitches; ++i )
	{
		if ( ActiveLight & Mask )
		{
			LightState |= LightOverlayMask;
		}
		LightOverlayMask <<= 1;
		Mask <<= 1;
	}

	PORTC = LightState;
}
*/
FActiveSwitchList ReadSwitchInput()
{
	const int SWITCH_PIN_MASK = 0xf0;
	static uint8 PreviousSwitchState = 0;
	uint8 CurrentSwitchState = ~PINE & SWITCH_PIN_MASK;

	// <code>
	return CurrentSwitchState;
}
#endif
#endif