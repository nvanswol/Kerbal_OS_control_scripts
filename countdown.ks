// Created by: Nicholas Van Swol
// On: 9/30/2017
 
// Contains: 
// FIRE_CLAMPS: launches the rocket from the pad with clamps

print "Launch in T-MINUS 5 seconds".
lock steering to up.
wait 1.

print "T-MINUS 4 seconds".
lock throttle to 1.
wait 1.

FROM {local countdown is 3.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1.} DO {
    PRINT "... " + countdown.
    WAIT 1. // wait for 1 second.
}