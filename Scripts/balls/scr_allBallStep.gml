//EVENT: Step event for non-white balls, ALSO called by scr_whiteBallStep

//if the current ball is mid-potting (triggered by collision with pocket)
if (falling >= 1){
    falling += 1;
    if (frac(falling/10) == 0){
        if (falling < 50){
            //progress the sprite index every 10 steps
            image_index += 4;
        }
        else{
            //at step 50, the ball is fully potted. Reset image and move object
            image_index -= 16;
            if (image_index < 2){
                //potting a colour - send the objects to a visible location on the left
                x = 20 + image_index*40;
                y = 40 + 40*global.numberPotted[image_index];
                global.numberPotted[image_index] += 1;
                global.justPotted[image_index] = 1;
            }
            else if (image_index == 2){
                //potting black - send to invisible location
                global.blackPot = 1;
                x=-100;
            }
            else if (image_index == 3){
                //potting white - send to invisible location
                global.whitePot = 1;
                x=-100;
            }
            speed = 0;
            falling = 0;
        }            
    }
}

//if going too slowly, just stop
if (floor(speed*10)==0){ 
    speed = 0;
}

//slow down with friction
speed *= (1-global.friction);

