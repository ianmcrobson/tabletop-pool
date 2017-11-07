//called by scr_foulCheckAndTurnHandover

//return 1 if foul occurred: check for the many possible ways for foul.
return (global.blackPot == 1 && onBlack == 0) 
         || global.whitePot == 1 
         || (justSetColours == 0 && (global.turn == 0 && (global.whiteFirstTouch != global.P1col   || global.justPotted[2-global.P1col] == 1)) 
                          || (global.turn == 1 && (global.whiteFirstTouch != 3-global.P1col || global.justPotted[global.P1col-1] == 1)));
