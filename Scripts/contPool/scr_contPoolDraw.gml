//EVENT: Draw event for contPool object. Displays graphical overlays.

if (global.firing == 1){
    graticulex = iden[totalBalls].x + 120*cos(iden[totalBalls].direction*pi/180);
    graticuley = iden[totalBalls].y - 120*sin(iden[totalBalls].direction*pi/180);
    draw_sprite(sprite6,0,graticulex,graticuley);
    draw_set_color(c_teal);
    linex = iden[totalBalls].x + 120*cos(iden[totalBalls].direction*pi/180);
    liney = iden[totalBalls].y - 120*sin(iden[totalBalls].direction*pi/180);
    draw_line(iden[totalBalls].x,iden[totalBalls].y,linex,liney);
    
    draw_set_color(3282);
    if (global.gameMode == 1){
        draw_rectangle(240,80,288,240,0);
        for (i=1; i<=152*whiteBall.charge/global.maxcharge; i+=1){
            draw_set_color(i*256);
            draw_line(244,236-i,284,236-i);
        }
    }
    else if (global.gameMode == 2){
        draw_rectangle(140,80,188,240,0);
        for (i=1; i<=152*whiteBall.charge/global.maxcharge; i+=1){
            draw_set_color(i*256);
            draw_line(144,236-i,184,236-i);
        }
    }
}

draw_set_font(font0_medium);
draw_set_color(0);
draw_set_halign(fa_left);
draw_text(780,30,'Current Turn: Player '+string(global.turn+1));
if ((global.P1col == 1 && global.turn == 0) || (global.P1col == 2 && global.turn == 1)){
    if (global.numberPotted[0] == 7){
        draw_text(780,65,'ONTO THE BLACK!');
    }
    else{
        draw_text(780,65,'Potting: Blue');
    }
}
else if (global.P1col != 0){
    if (global.numberPotted[1] == 7){
        draw_text(780,65,'ONTO THE BLACK!');
    }
    else{
        draw_text(780,65,'Potting: Red');
    }
}
//draw_text(780,145,'P1col: '+string(global.P1col)+' and global.justPotted[0]: '+string(global.justPotted[0])+ ' [1] ' +string(global.justPotted[1]))
draw_set_color(c_blue);
if (global.fouled == 1){
    draw_text(780,110,'Extra turn due to foul');
}

draw_set_halign(fa_center);
if (global.won != 0){
    if global.gameMode == 1{
        draw_set_color(42323332);
        draw_rectangle(780,room_height/2+10,1180,room_height/2+85,0);
        draw_set_color(c_blue);
        draw_text(980,room_height/2+30,'Congratulations Player '+string(global.won)+'!');
        draw_text(980,room_height/2+65,'Click here to return to menu');
    }
    else if global.gameMode == 2{
        draw_set_color(42323332);
        draw_rectangle(860,room_height/2+10,1260,room_height/2+85,0);
        draw_set_color(c_blue);
        draw_text(1060,room_height/2+30,'Congratulations Player '+string(global.won)+'!');
        draw_text(1060,room_height/2+65,'Click here to return to menu');   
    }
}
else{
    draw_set_color(42323332);
    draw_rectangle(0,room_height-64,192,room_height,0);
    draw_set_color(c_blue);
    draw_text(96,room_height-32,'Main Menu');
}
