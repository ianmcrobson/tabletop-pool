//called by scr_contPoolStep

justSetColours = 0;
//setting the colours for the first time, if this is the first pot
if (global.P1col == 0){ 
    justSetColours = 1;
    script_execute(scr_ballColourAssign);
}

//determine if all seven of their colour have been potted
onBlack = 0;
if (global.P1col != 0){
    if ((global.turn == 0 && global.numberPotted[global.P1col-1] == 7) || (global.turn == 1 && global.numberPotted[2-global.P1col] == 7)){
        onBlack = 1;
    }
}

//determine if a game-winning black pot occurred, and didn't just pot a colour too
//if black and white were simultaneously potted in this situation, victory is given to the other player
if (global.blackPot == 1 && global.won == 0 && onBlack == 1 && global.justPotted[1] == 0 && global.justPotted[0] == 0){ 
    //display victory message and set global.won to relevant player
    script_execute(scr_victoryOccurred);
}

//determine if foul just occurred, and update any previous fouls, and update turn handover
script_execute(scr_foulCheckAndTurnHandover);

//replace the black/white balls; iden[11] is the ID for the black and iden[totalBalls] is the ID for the white.
//put here to avoid complications 1) if pot both on same turn, or 2) if pot one + colour on first turn
if (global.whitePot == 1){
    with iden[totalBalls]{
        script_execute(scr_whiteReplace);
    }
    global.whitePot = 0;
}
if (global.blackPot == 1){
    with iden[11]{
        script_execute(scr_blackReplace);
    }
    global.blackPot = 0;
}

//reset variables for next turn
global.justPotted[0] = 0;
global.justPotted[1] = 0;
global.firing = 1;
whiteBall.charge = 0;
