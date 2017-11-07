//EVENT: Create event for contPool object. Occurs at table start, to initialise variables.

//constants - change these as necessary
global.e = 1;
global.friction = 0.01;

//variables - making global is about same effect as making cont only anyway
global.firing = 1;
global.maxcharge = 15;

//lots of "magic numbers" here, unfortunately; no enum in GML!
global.turn = 0; //0=P1, 1=P2
global.whiteFirstTouch = 0; //0=none, 1=blue, 2=red, 3=black
global.P1col = 0; //0 = not set, 1=blue, 2=red
for (i=0; i<=3 i+=1){
    global.numberPotted[i] = 0;
    global.justPotted[i] = 0;
}
global.whitePot = 0;
global.blackPot = 0;
global.fouled = 0;
global.won = 0;

//game modes dependent on room for now
if (room == r_table1){
    global.gameMode = 1;
}
else if (room == r_table2){
    global.gameMode = 2;
}

//create the balls and give them their IDs
if (global.gameMode == 1 || global.gameMode == 2){
    global.whiteStartx = 536;
    global.whiteStarty = 400;
    for (i=1;i<=15;i+=1){
        crex = 536+36*(i==4||i==12)+72*(i==5)-36*(i==2||i==10)-72*(i==1)+18*(i==8||i==14)+52*(i==9)-18*(i==7||i==13)-52*(i==6);
        crey = 128+32*((i>=6)+(i>=10)+(i>=13)+(i==15));
        iden[i] = instance_create(crex,crey,normalBall);
        iden[i].image_index = 0+(i==2||i==5||i==6||i==8||i==12||i==13||i==15)+2*(i==11);
    }
    iden[16] = instance_create(global.whiteStartx,global.whiteStarty,whiteBall);
    iden[16].image_index = 3;
    totalBalls=16;
}
