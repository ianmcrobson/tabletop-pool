//called by scr_contPoolStep

if mouse_check_button_released(mb_left){
    if global.won != 0{
        //game has been won, so the exit buttons have appeared
        if global.gameMode == 1{
            if (mouse_x >= 780 && mouse_x <= 1180 && mouse_y >= room_height/2+10 && mouse_y <= room_height/2+85){
                room_goto(r_mainMenu);
            }
        }
        else if global.gameMode == 2{
            if (mouse_x >= 860 && mouse_x <= 1260 && mouse_y >= room_height/2+10 && mouse_y <= room_height/2+85){
                room_goto(r_mainMenu);
            }
        }
    }
    else{
        //game in progress, but still possible to go to menu
        if (mouse_x >= 0 && mouse_x <= 192 && mouse_y >= room_height-64 && mouse_y <= room_height){
            if show_question('Are you sure you want to leave the game?'){
                room_goto(r_mainMenu);
            }
        }
    }
}
