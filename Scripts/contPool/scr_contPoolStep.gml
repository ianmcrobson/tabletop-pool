//EVENT: Step event for contPool object. Occurs every frame

//this block is for end of turn effects
if global.firing == 0{
    //check if the balls have all come to rest yet
    stillMoving = 0;
    for (i=1; i<=totalBalls; i+=1){
        if (iden[i].speed != 0){
            stillMoving = 1;
        }
    }
    
    if (stillMoving == 0 && whiteBall.falling == 0) {
        someFalling = 0;
        //only worth checking fof falling if they've all stopped moving already
        for (i=1; i<= totalBalls; i+=1){
            if (iden[i].falling >= 1){
                someFalling = 1;
            }
        }
        if (someFalling == 0){ 
            //now we finally begin the next turn phase!
            script_execute(scr_nextTurnStart);
        }
    }
}

script_execute(scr_poolMouseClickButtons);
