//EVENT: Collision event for whiteBall object, with any other ball. 
//Needed to determine the first ball touched by the white each turn

script_execute(scr_allBallCollision);

if (global.whiteFirstTouch == 0){
    global.whiteFirstTouch = other.image_index+1;
}
