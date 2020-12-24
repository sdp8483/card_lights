/* Card Lights Touch Edition
 *  using external capacitive touch controller to trigger LEDs
 * 
 * Clk: 1MHz
 * Simple Conneciton Diagram
 *       ATTINY10
 *       ---------
 *   3v | 5  1 PB0| -> LED1
 *   GND| 2  3 PB1| -> LED2
 *      |    4 PB2| -> LED3
 *      |    6 PB3| -> TOUCH_INPUT
 *       ---------
 *        SOT23-6
 * write fuse:
 *      avrdude -c usbasp -p t10 -U fuse:w:0xFE:m
 * 
 * verify fuse:
 *      avrdude -c usbasp -p t10 -t
 *      read fuse
 *      q
 * 
 */

#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#include "main.h"
#include "charlieplex.h"
#include "state_machine.h"

/* LED Patterns - choose one to uncomment */
//#define SIMPLE      /* No pattern, constant on */
#define TWINKLE     /* LEDs randomly twinkle */

#if defined(SIMPLE)
#elif defined(TWINKLE)
#include "twinkle.h"
#endif

/* set to achive desired auto off delay */
#define TIMER_PRELOAD   (58594) /* with precaler of 1024 on Timer0, 58,594 is ~60s when sys clock is 1MHz */
//#define TIMER_PRELOAD   (7500) /* with a prescaler of 1024 on Timer0, 7,500 is ~60s when sys clock is 128kHz */

/* state machine state, volatile since ISR can change it */
volatile States_t state = SLEEP;

/* Funciton Prototypes */
void initPCINT0(void);
void enableTimer0(void);
void disableTimer0(void);

int main (void) {
    /* Change Clk Frequency */
    //CCP = 0xD8;         /* write to config control protecitn reg to change CLK registers */
    //CLKMSR = 0b01;      /* use internal 128kHz */
    //CLKPSR = 0b0000;    /* set div by 1 */

    /* make sure LEDs are off */
    charliePlex(0);

    /* setup PB3 as input */
    DDRB &= ~BIT3;
    //PUEB |= BIT3; /* enable internal pullup */

    /* initialize interrupt on PB3 */
    initPCINT0();

    /* set sleep mode */
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);

    /* enable global interrupts */
    sei();          

    while (1) {   
        switch (state) {
            case SLEEP:
                charliePlex(0);     /* turn off LEDs */
                disableTimer0();    /* turn off timer0 to save power */
                sleep_enable();     /* enable sleep */
                sleep_cpu();        /* go to sleep */
                sleep_disable();    /* wake from sleep here on PB3 pin change interrupt */
                break;
            case RUN:
                #if defined(SIMPLE)
                for (uint8_t j=0; j<6; j++) {
                    charliePlex(j+1);
                }
                #elif defined(TWINKLE)
                twinkleLED();
                #endif

                break;
            default:            /* something is wrong, just sleep */
                state = SLEEP;
                break;
        } /* switch(state) */
    } /* while(1) */
} /* main(void) */

/* ==== Funcitons ==== */
/* initialize pin change interrupt service routine */
void initPCINT0(void) {
    PCICR |= BIT0;  /* pin change interrupt enable */
    PCMSK |= BIT3;  /* pin change interrupt on PB3/PCINT3 */
}

/* pin change interrupt service routine */
ISR(PCINT0_vect){
    state = RUN;    /* wake up and run */
    enableTimer0(); /* enable timer0 to set auto power off */
}

/* eanble timer0 to trigger ISR for auto power off */
void enableTimer0(void) {
    TCCR0A = 0;                         /* OC0A/OC0B disconnected ie no output on pins*/
    TCCR0B = (BIT3 + BIT2 + BIT0);      /* clear timer on compare,  timer prescaler is 1024*/

    OCR0AH = (TIMER_PRELOAD >> 8);      /* set output compare register high byte */
    OCR0AL = (TIMER_PRELOAD & 0xFF);    /* set output compare register low byte */

    TCNT0H = 0;                         /* set timer count to zero */
    TCNT0L = 0;

    TIMSK0 |= (1 << OCIE0A);            /* enable ISR on Output compare A match */
}

/* disable timer0 when sleeping to save power */
void disableTimer0(void) {
    TCCR0A = 0;
    TCCR0B &= ~(BIT2 + BIT1 + BIT0);    /* set timer prescaler to 0 to disable */

    TIMSK0 &= ~(1 << OCIE0A);           /* disable ISR */
}

ISR(TIM0_COMPA_vect) {
    state = SLEEP;  /* auto power off */
}