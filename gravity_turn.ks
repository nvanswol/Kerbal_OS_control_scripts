// Created by: Nicholas Van Swol
// On: 9/30/2017
 
// Contains: 
// GRAVITY_TURN: mode 3 begins the gravity turn until apoapsis is the target height

set targetPitch to max( 8, 90 * (1 - ALT:RADAR / 70000)).
lock steering to heading (90, targetPitch).
