#include "twinkle.h"

void twinkleLED(void) {
    static uint8_t twinkle_led = 0;        /* current led to twinkel is leave off for N loop */
    static uint8_t loop_count = 0;         /* current loop number */
    static uint8_t loop_off = 0;           /* twinkle led is off for this many loops
                                            * set using rand() and is between 0 and TWINKLE_LOOP_MAX */

    for (uint8_t j=0; j<6; j++) {
        if (j != twinkle_led) {
            charliePlex(j+1);
        }
    }

    loop_count++;

    if (loop_count > loop_off) {
        loop_count = 0;                             /* reset loop count */
        loop_off = random() % TWINKLE_LOOP_MAX;     /* set a new led off for n loop counts */
        twinkle_led = random() % TWINKLE_CHANCE;    /* select random led to twinkle */
    }
}