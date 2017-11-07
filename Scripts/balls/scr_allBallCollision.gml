//EVENT: Collision event between any two balls, regardless of colour

//to halve the number of times this script is executed:
if (other.id < id) {    
    //moved the working velocity calculations to a separate script
    script_execute(scr_calculateNewVelocities);
}

