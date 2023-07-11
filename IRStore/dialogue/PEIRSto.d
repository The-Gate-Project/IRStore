BEGIN ~PEIRSto~

// Base first meeting

IF ~Global("JoIrfirst","GLOBAL",0) AreaCheck("AR0700")~ THEN BEGIN 0   // ~True() AreaCheck("AR0700")~
  SAY @10
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("JoIrfirst","GLOBAL",1) StartStore("PEIRSto",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @13 DO ~SetGlobal("JoIrfirst","GLOBAL",1)~ GOTO 2
END

IF ~Global("JoIrfirst","GLOBAL",1) AreaCheck("AR0700")~ THEN BEGIN JoIr1   // ~NumTimesTalkedToGT(0) AreaCheck("AR0700")~
  SAY @400
  IF ~~ THEN REPLY @12 DO ~StartStore("PEIRSto",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @13 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @14
= @15
 IF ~~ THEN EXIT
END


// ToB second meeting

IF ~Global("JoIrfirst","GLOBAL",1) AreaCheck("AR5000")~ THEN BEGIN JoIrToB1
  SAY @401
  IF ~~ THEN GOTO JoIr1
END

IF ~Global("JoIrfirst","GLOBAL",1) AreaCheck("AR6400")~ THEN BEGIN JoIrToB3
  SAY @402
  IF ~~ THEN GOTO JoIr1
END


// ToB first meeting


IF ~Global("JoIrfirst","GLOBAL",0)  AreaCheck("AR5000")~ THEN BEGIN JoIrToB2   // Global("JoIrfirst","GLOBAL",0)
  SAY @10
  IF ~~ THEN DO ~SetGlobal("JoIrfirst","GLOBAL",1)~ GOTO JoIr1
END

IF ~Global("JoIrfirst","GLOBAL",0)  AreaCheck("AR6400")~ THEN BEGIN JoIrToB4   // Global("JoIrfirst","GLOBAL",0)
  SAY @10
  IF ~~ THEN DO ~SetGlobal("JoIrfirst","GLOBAL",1)~ GOTO JoIr1
END

