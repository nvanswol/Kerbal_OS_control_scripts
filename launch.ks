// Created by: Nicholas Van Swol
// On: 9/30/2017
 
// This file will launch a rocket straight upwards for maximum altitude
 
// Contains: 
// FIRE_CLAMPS: launches the rocket from the pad with clamps 
// FIRE_UTLAGE: launches the rocket from the pad with utlage requirements
// GRAVITY_TURN: begins the gravity turn until apoapsis is the target height
 
// /////////// SETUP ////////////
DECLARE GLOBAL orb to 10000000000.
DECLARE GLOBAL nav_start to 4000. // the start of the gravity turn
DECLARE GLOBAL display to 0.
DECLARE GLOBAL display to 0.
DECLARE GLOBAL running to 1.
SAS off.
lights off.
gear off.
clearscreen.
// ///////////////////////////////////



if ALT:RADAR < 200 AND SHIP:VERTICALSPEED < 0.1 AND SHIP:GROUNDSPEED < 0.1 {
    RUNPATH(COUNTDOWN).
    RUNPATH(FIRE_CLAMPS).
    WAIT 3.
}

until running = 0 {
// keep running until battery has 10% left?
    
    clearscreen.
    print "".
    print "".
    print "".       
    print "LAUNCH PLAN STAGE ". 
    print " ".
    print "Periapsis height: " + round(periapsis, 2) + " m".
    print " Apoapsis height: " + round(apoapsis, 2) + " m".
    print " ETA to Apoapsis: " + round(ETA:APOAPSIS) + " s".
    print "   Orbital speed: " + round(velocity:orbit:MAG, 2)+ " m/s".
    print "        Altitude: " + round(altitude, 2) + " m".
    print " ".
    print "Currently on Stage: " + stage:number.
    wait 0.2.

    RUNPATH(STAGE_FLAMEOUT).     
}