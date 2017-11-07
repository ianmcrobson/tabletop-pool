//called by scr_nextTurnStart

if global.P1col != 0{
    if (script_execute(scr_foulCheck)){   
        //foul occurred
        global.fouled = 1;
        global.turn = 1-global.turn;
    }
    else{
        if (global.fouled == 1){ 
            //*previous* turn was a foul
            global.fouled = 0;
        }
        else if ((global.turn == 0 && (global.justPotted[global.P1col-1] == 0)) || (global.turn == 1 && (global.justPotted[2-global.P1col] == 0))){
            //didn't pot own colour
            global.turn = 1-global.turn
        }
    }
}
else{ 
    //P1 colour not yet set [and therefore nothing has been potted yet]
    if (global.whiteFirstTouch != 1 && global.whiteFirstTouch != 2){ 
        //the only possible foul: the first touch not being a colour
        global.fouled = 1;
        global.turn = 1-global.turn;
    }
    else{
        if (global.fouled == 1){
            //if *previous* turn was a foul
            global.fouled = 0;
        }
        else{
            global.turn = 1-global.turn;
        }
    }
}
