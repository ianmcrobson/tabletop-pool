//called by scr_nextTurnStart

if (global.justPotted[0] && !global.justPotted[1]){ 
    //potted blue but not red
    global.P1col = global.turn+1;
}
else if (!global.justPotted[0] && global.justPotted[1]){ 
    //potted red but not blue
    global.P1col = 2-global.turn;
}
else if (global.justPotted[0] && global.justPotted[1]){
    global.P1col = show_message_ext('You potted both colours in one turn! Which would you like?','Blue','Red','');
    if (global.P1col == 0){ 
        //they didn't choose a valid option
        global.P1col = irandom(1)+1;
        if (global.P1col == 1){
            show_message('Assigned your colour randomly! You are blue')
        }
        else if (global.P1col == 2){
            show_message('Assigned your colour randomly! You are red')
        }
    }
    if (global.turn == 1){
        //if it's player 2's turn, we actually now need to invert the colour, after displaying all correct messages
        global.P1col = 3-global.P1col;
    }
}
