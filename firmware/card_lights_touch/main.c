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


#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#include "main.h"

/* Funciton Prototypes */
void initPCINT0(void);

int main (void) {
    /* setup PB0 to PB2 as outputs for LEDs */
    DDRB |= (BIT0 | BIT1 | BIT2);

    /* setup PB3 as input with internal pullup */
    //DDRB &= ~BIT3;
    //PUEB |= BIT3;

    /* interrupt on PB3 */
    initPCINT0();

    /* set sleep mode */
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);

    while (1)
    {
        sleep_enable();
        sleep_cpu();        /* go to sleep */
        sleep_disable();    /* wake from sleep here */

        //cli();
        PORTB |= BIT0;      /* turn on light */
        _delay_ms(5000);
        PORTB &= !BIT0;     /* turn off light, go to sleep */
        //sei();
    }
    
}
/* initialize pin change interrupt service routine */
void initPCINT0(void) {
    PCICR |= BIT0;  /* pin change interrupt enable */
    PCMSK |= BIT3;  /* pin change interrupt on PB3/PCINT3 */
    sei();          /* set global interrupt enable bit */
}

/* pin change interrupt service routine */
ISR(PCINT0_vect){
    /*    
    if (bit_is_clear(PINB, PB3)) {
        PORTB |= BIT1;
    } else {
        PORTB &= !BIT1;
    } */
}