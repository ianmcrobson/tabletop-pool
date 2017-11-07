//called by scr_whiteBallStep

if keyboard_check(vk_left){
    direction += 3;
}
if keyboard_check(vk_right){
    direction -= 3;
}
if keyboard_check(ord('N')){
    direction += 1;
}
if keyboard_check(ord('M')){
    direction -= 1;
}
if keyboard_check_pressed(vk_up){
    charge = 0;
}
if keyboard_check(vk_up){
    //keep charging, unless the charge limit has been reached
    if (charge < global.maxcharge){
        charge += 0.25;
    }
    else{
        global.whiteFirstTouch = 0;
        speed = global.maxcharge;
        global.firing = 0;
    }        
}
if keyboard_check_released(vk_up){
    global.whiteFirstTouch = 0;
    speed = charge;
    global.firing = 0;
}
