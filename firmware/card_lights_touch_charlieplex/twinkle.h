#ifndef _TWINKLE_H_
#define _TWINKLE_H_

#include "random.h"
#include "charlieplex.h"

#define TWINKLE_LOOP_MAX    8
#define TWINKLE_CHANCE      96  /* this is upper value of next random led that will twinkle 
                                 * with only 6 LEDs higher values will not twinkel 
                                 * so settng this higher will give a 6 in N chance an LED will twinkle */

void twinkleLED(void);

#endif