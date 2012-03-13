# MarkBot

This will be the CAD/CAM files and software for building a telepresense
remote rebot.

This is for a telecommuter to have a physical presence at a remote office.

## Status:
Wheel started.  http://www.thingiverse.com/thing:18784
Rough robot plan started, researching motors, gearing

## Should include:
* quiet mobile platform for carpet and hard flooring
* navigation omni-camera
* 2-way video conferencing with multiple microphones
* multiple wifi connections for overlapping hand off, possibly backup low-rate link
* a way to move locally for dealing with a failure
* ability to dock/undock for charging without local help
* ability to open (heavy) doors
* battery power for a few hours minimum of teleconference plus 15 minutes of movement




## Major components:
### Chassis
- Heavy enough to push doors open
- easy to open for maintnance
- soundproofed
- low CG, but tall enough for a comfortable converation
- low chance of collision/spin injury to other people -- round, no protrusions, covered wheels 
- casters for moving when broken
- tower should be able to have ne things added on easily, and sturdy enough to operate an arm (for door knobs)

### Batteries
- low fire hazard (no lipo?)

### Motor / drivetrain with encoders
- 3-4mph top speed
- power to open doors
- quiet

### Mecanum wheels / suspension
- some suspension so you don't get lift-off of Mecanum wheel going over bumps/thresholds

### motor servoing controllers

### Core cpu (sheevaplug/dockstar/raspberry pi)
- enough capacity to process cameras, mics for transmition
- ideally enough CPU to process mics for source separation on-board
- ideally enough CPU to have some visual self-driving ability to help overcome control lag

### wifi links
- multiple links for smooth hand-off

### microphone array (6ish MEMS mics -> PIC32 -> usb)

### omnidirectional camera

### front camera
- movable -- direction, and height (for interacting with sitting people). maybe should be able to move in to / over a table (for sitting at a meeting)

### speakers

### display
- 7ish inches.  (Nook color since I have one?)
- movable -- direction, and height (for interacting with sitting people). maybe should be able to move in to / over a table (for sitting at a meeting)

### chassis sensors
- internal mic
- accelerometer (vibration and jarring)
- temperature

### charger/dock
- self docking
- low voltage
- smart connection monitoring (current imbalance or high voltage drop across connector)

### local control
- emergency power off

### remote controller
- web, hardware, or software?  all three?

