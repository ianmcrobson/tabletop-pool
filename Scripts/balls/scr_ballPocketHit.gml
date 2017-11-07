//EVENT: Collision event for any ball when hitting the pocket

//check if not already in the pocketing phase
if (falling == 0){
    falling = 1;
    
    //slow down but not stop, for visual effect
    speed *= 0.4;
    if (speed > 0.5){
        speed = 0.5;
    }
}
