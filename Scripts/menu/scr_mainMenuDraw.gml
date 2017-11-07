//EVENT: Draw event for object contMainMenu, showing buttons for navigating to a game.

draw_set_color(10323332);
draw_rectangle(bleft,room_height*3/20,bright,room_height*5/20,0);
draw_rectangle(bleft,room_height*6/20,bright,room_height*8/20,0);
//draw_rectangle(bleft,room_height*9/20,bright,room_height*11/20,0); //for future

draw_set_color(c_black);
draw_set_font(font0_big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((bleft+bright)/2,room_height*4/20,'Standard Pool');
draw_text((bleft+bright)/2,room_height*7/20,'Table "Plus"');
//draw_text((bleft+bright)/2,room_height*10/20,'TBA');
