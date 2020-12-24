#include "charlieplex.h"

/* charlieplex, turn on LED number */
void charliePlex(int8_t led) {
    /* set all as input to tristate before setting up pin modes below */
    charliePlexTristateAll();

    switch (led) {
        case 0:
            /* do nothing since outputs are already tristated */
            break;
        case 1:
            DDRB |= (BIT0 + BIT1);  /* set PB0 and PB1 as outputs */
            PORTB |= BIT0;          /* set PB0 high */
            PORTB &= ~BIT1;         /* set PB1 low */
            break;
        case 2:
            DDRB |= (BIT0 + BIT1);  /* set PB0 and PB1 as outputs */
            PORTB |= BIT1;          /* set PB1 high */
            PORTB &= ~BIT0;         /* set PB0 low */
            break;
        case 3:
            DDRB |= (BIT1 + BIT2);  /* set PB1 and PB2 as outputs */
            PORTB |= BIT1;          /* set PB1 high */
            PORTB &= ~BIT2;         /* set PB2 low */
            break;
        case 4:
            DDRB |= (BIT1 + BIT2);  /* set PB1 and PB2 as outputs */
            PORTB |= BIT2;          /* set PB2 high */
            PORTB &= ~BIT1;         /* set PB1 low */
            break;
        case 5:
            DDRB |= (BIT0 + BIT2);  /* set PB0 and PB2 as outputs */
            PORTB |= BIT0;          /* set PB0 high */
            PORTB &= ~BIT2;         /* set PB2 low */
            break;
        case 6:
            DDRB |= (BIT0 + BIT2);  /* set PB0 and PB2 as outputs */
            PORTB |= BIT2;          /* set PB2 high */
            PORTB &= ~BIT0;         /* set PB0 low */
            break;    
        default:
            /* something is wrong */
            break;
    }

    _delay_us(ON_DELAY_US);

}

void charliePlexTristateAll(void) {
    /* set all as input to tristate */
    DDRB &= ~(BIT0 + BIT1 + BIT2);
    PORTB &= ~(BIT0 + BIT1 + BIT2);
}