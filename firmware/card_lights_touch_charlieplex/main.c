/* Card Lights Touch Edition
 *  using external capacitive touch controller to trigger LEDs
 * 
 * Simple Conneciton Diagram
 *       ATTINY10
 *       ---------
 *   3v | 5  1 PB0| -> LED1
 *   GND| 2  3 PB1| -> LED2
 *      |    4 PB2| -> LED3
 *      |    6 PB3| -> TOUCH_INPUT
 *       ---------
 *        SOT23-6
 */

#include <stdint.h>
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#include "main.h"
#include "state_machine.h"
#include "random.h"

#define TIMER_PRELOAD   (58594) /* set to achive desired auto off delay
                                 * with precaler of 1024 on Timer0 58594 is ~60s 
                                 * when sys clock is 1MHz */

/* state machine state, volatile since ISR can change it */
volatile States_t state = SLEEP;

uint8_t twinkle_led = 0;        /* current led to twinkel is leave off for N loop */
uint8_t loop_count = 0;         /* current loop number */
uint8_t loop_off = 0;           /* twinkle led is off for this many loops
                                 * set using rand() and is between 0 and LOOP_MAX */
#define LOOP_MAX    16

/* Funciton Prototypes */
void initPCINT0(void);
void initTimer0(void);
void charliePlex(int8_t led);

int main (void) {
    /* make sure LEDs are off */
    charliePlex(0);

    /* setup PB3 as input with internal pullup */
    DDRB &= ~BIT3;
    PUEB |= BIT3;

    /* initialize interrupt on PB3 */
    initPCINT0();

    /* initialize Timer0 as auto power off delay */
    initTimer0();

    /* initialize prng */
    random_init(0xabcd);

    /* set sleep mode */
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);

    /* enable global interrupts */
    sei();          

    while (1) {   
        switch (state) {
            case SLEEP:
                charliePlex(0);     /* turn off LEDs */
                sleep_enable();     /* enable sleep */
                sleep_cpu();        /* go to sleep */
                sleep_disable();    /* wake from sleep here on PB3 pin change interrupt */
                break;
            case RUN:
                for (uint8_t j=0; j<6; j++) {
                    if (j != twinkle_led) {
                        charliePlex(j+1);
                    }
                }

                loop_count++;

                if (loop_count > loop_off) {
                    loop_count = 0;     /* reset loop count */
                    loop_off = random() % LOOP_MAX;  /* set a new led off for n loop counts */
                    twinkle_led = random() % 24; /* select random led to twinkle */
                }

                break;
            default:            /* something is wrong, just sleep */
                state = SLEEP;
                break;
        } /* switch(state) */
    } /* while(1) */
} /* main(void) */
/* initialize pin change interrupt service routine */
void initPCINT0(void) {
    PCICR |= BIT0;  /* pin change interrupt enable */
    PCMSK |= BIT3;  /* pin change interrupt on PB3/PCINT3 */
}

/* pin change interrupt service routine */
ISR(PCINT0_vect){
    state = RUN;    /* wake up and run */
}

/* initialize timer0 to trigger ISR for auto power off */
void initTimer0(void) {
    TCCR0A = 0;                         /* OC0A/OC0B disconnected ie no output on pins*/
    TCCR0B = (BIT3 + BIT2 + BIT0);      /* clear timer on compare,  timer prescaler is 1024*/

    OCR0AH = (TIMER_PRELOAD >> 8);      /* set output compare register high byte */
    OCR0AL = (TIMER_PRELOAD & 0xFF);    /* set output compare register low byte */

    TIMSK0 |= (1 << OCIE0A);            /* enable ISR on Output compare A match */
}

ISR(TIM0_COMPA_vect) {
    state = SLEEP;  /* auto power off */
}

/* charlieplex, turn on LED number */
void charliePlex(int8_t led) {
    switch (led) {
        case 0:
            /* set all as input to tristate */
            DDRB &= ~(BIT0 + BIT1 + BIT2);
            PORTB &= ~(BIT0 + BIT1 + BIT2);
            break;
        case 1:
            DDRB |= (BIT0 + BIT1);  /* set PB0 and PB1 as outputs */
            DDRB &= ~BIT2;          /* set PB3 as input to tristate */
            PORTB &= ~BIT2;
            PORTB |= BIT0;          /* set PB0 high */
            PORTB &= ~BIT1;         /* set PB1 low */
            break;
        case 2:
            DDRB |= (BIT0 + BIT1);  /* set PB0 and PB1 as outputs */
            DDRB &= ~BIT2;          /* set PB3 as input to tristate */
            PORTB &= ~BIT2;
            PORTB |= BIT1;          /* set PB1 high */
            PORTB &= ~BIT0;         /* set PB0 low */
            break;
        case 3:
            DDRB |= (BIT1 + BIT2);  /* set PB1 and PB2 as outputs */
            DDRB &= ~BIT0;          /* set PB0 as input to tristate */
            PORTB &= ~BIT0;
            PORTB |= BIT1;          /* set PB1 high */
            PORTB &= ~BIT2;         /* set PB2 low */
            break;
        case 4:
            DDRB |= (BIT1 + BIT2);  /* set PB1 and PB2 as outputs */
            DDRB &= ~BIT0;          /* set PB0 as input to tristate */
            PORTB &= ~BIT0;
            PORTB |= BIT2;          /* set PB2 high */
            PORTB &= ~BIT1;         /* set PB1 low */
            break;
        case 5:
            DDRB |= (BIT0 + BIT2);  /* set PB0 and PB2 as outputs */
            DDRB &= ~BIT1;          /* set PB1 as input to tristate */
            PORTB &= ~BIT1;
            PORTB |= BIT0;          /* set PB0 high */
            PORTB &= ~BIT2;         /* set PB2 low */
            break;
        case 6:
            DDRB |= (BIT0 + BIT2);  /* set PB0 and PB2 as outputs */
            DDRB &= ~BIT1;          /* set PB1 as input to tristate */
            PORTB &= ~BIT1;
            PORTB |= BIT2;          /* set PB2 high */
            PORTB &= ~BIT0;         /* set PB0 low */
            break;    
        default:
            /* set all as input to tristate */
            DDRB &= ~(BIT0 + BIT1 + BIT2);
            PORTB &= ~(BIT0 + BIT1 + BIT2);
            break;
    }

}