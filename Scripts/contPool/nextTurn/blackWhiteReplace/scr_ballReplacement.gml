//called by: scr_blackReplace for black object and scr_whiteReplace for white object

if (!place_meeting(rx,ry,normalBall)&&!place_meeting(rx,ry,whiteBall)){
        x = rx;
        y = ry;
}
else{
    counter = 0;
    //a less-than-perfect algorithm for replacing the black or white if the starting space is not free
    do{
        xpls = irandom(64)-32;
        ypls = irandom(64)-32;
        if (!place_meeting(rx+xpls,ry+ypls,normalBall)&&!place_meeting(rx+xpls,ry+ypls,whiteBall)){
            x = rx+xpls;
            y = ry+ypls;
            counter = 10000;
        }
        counter += 1;
    }
    until (counter>=1000);
    if (counter == 1000){
        show_message('ERROR: NO FREE SPACE');
    }
}
