#ifndef _CHARLIEPLEX_H_
#define _CHARLIEPLEX_H_

#include "stdint.h"
#include <avr/io.h>
#include <util/delay.h>

#include "main.h"

#define ON_DELAY_US     100 /* delay in micrseconds after setting LED */

void charliePlex(int8_t led);
void charliePlexTristateAll(void);

#endif