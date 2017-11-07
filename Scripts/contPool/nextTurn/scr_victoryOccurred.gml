if (global.whitePot == 0){
    if (global.turn == 0){
        show_message('The winner is Player 1!');
        global.won = 1;
    }
    else{
        show_message('The winner is Player 2!');
        global.won = 2;
    }
}
else{
    if (global.turn == 0){
        show_message('White and black both potted! The winner is instead Player 2!');
        global.won = 2;
    }
    else{
        show_message('White and black both potted! The winner is instead Player 1!');
        global.won = 1;
    }
}
