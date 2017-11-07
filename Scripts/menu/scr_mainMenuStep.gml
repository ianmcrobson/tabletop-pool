//EVENT: Step event for object contMainMenu. Deals with navigating between rooms

if mouse_check_button_released(mb_left){
    if (mouse_x >= bleft && mouse_x <= bright && mouse_y >= room_height*3/20 && mouse_y <= room_height*5/20){
        room_goto(r_table1)
    }
    if ((mouse_x >= bleft) && (mouse_x <= bright) && (mouse_y >= room_height*6/20) && (mouse_y <= room_height*8/20)){
        room_goto(r_table2)
    }
}  
