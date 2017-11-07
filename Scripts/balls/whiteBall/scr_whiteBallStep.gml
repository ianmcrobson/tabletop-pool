//EVENT: Step event for white ball. Occurs every frame

if (global.firing == 1){
    script_execute(scr_checkKeyboardInputs);
}

//other step commands as for other balls
script_execute(scr_allBallStep);
