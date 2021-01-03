# Greeting Card LEDs

**NOTE** This project is in progress and info may change. More details will be added soon

Add LEDs to your greeting cards. A simple touch of the back side of the device turns on the LEDs. Touch again to turn the LEDs off. A 60 second auto off feature will turn off the LEDs for you when left on to extend battery life.

## Installation

Position the LEDs and PCB on your card in whatever orientation you would like. Avoid bending the LED wires at sharp angles or too many times as the wire will fatigue and break. The back side of the PCB is touch sensitive (the side labeled touch) but may not be the same sensitivity over the entire back. Touch different areas to determine the most sensitive area and position that on your card where you would like the recipient to touch to turn on the LEDs. Attache the PCB using double sided tape or another method of your choosing that will firmly attache it to the greeting card. The LEDs can also be taped down or affixed however you would like.

After installing remove the battery and wait for 30 seconds before reinstalling the battery. Try not to turn on the LEDs while installing the battery. Do not turn on the LEDs for about 60 seconds. During this time the touch controller is calibrating to ensure that it recognizes your finger tip when you touch it.

## Tips and Tricks

### Don't need so many LEDs? 
You can cut them off near the PCB using scissors (probably best to use an pair you don't care about) or wire cutters.

### Increasing Touch Sensitivity
If you find the LEDs do not light up when you touch the back of the PCB you can increase the sensitivity of the touch controller by cutting the jumper JP2. 
TODO: add photos and more

### Adding your own Touch Pad
To add your own touch pad to for example make the whole front of the greeting card touch sensitive cut JP4 and then add solder to bridge JP3. Solder a connection to your new touch pad to the square pad at the bottom of the PCB. You can directly connect the the new touch pad or use wire. Copper tape works great to make a new touch pad. For a lower cost option aluminum foil will also work. Attach it to the greeting card using double sided tape. Tape can be used to attach a wire from the PCB to the aluminum touch pad. TODO: photos

### Ghosts
Does the LEDs appear to turn on without anyone touching them? While we cannot rule out ghosts it is most likely the touch controller being super sensitive. Remove the battery for at least a minute and then reinstall the battery while trying not to trigger the LEDs. Don't touch the PCB for a few  minutes. If that does not solve the problem try changing the battery for a new one. A battery near the end of its light maybe causing the touch controller to act up. If all else fails treat is as a feature and not a bug. The touch controller maybe acting up in your specific situation due to a number of reasons such as the paper material nearby, other items nearby, electrical interference, and more.

## Directory Outline
- [`~/pcb/`](pcb) is for KiCAD design files. Inside is the touch PCB design along with a simple PCB design. The simple PCB design uses a tactile button to turn on the LEDs when held down. It was a prototype and is left in this repository just incase it is needed again. Both designs are single sided (if you don't count the touch pad) and can be easily manufactured at home using a PCB router. The POGO programmer PCB design files are for makeing a POGO board to program the ATTINY10 in circuit. You will need additional devices to program the ATTINY10 in HV mode. Details to be added at a later date.
- [`~/firmware/`](firmware) is for firmware souce code and binaries for the touch PCB. If you want to write you own code start here.
- [`~/enclosure/`](enclosure) is for the POGO programmer and is a holder. 