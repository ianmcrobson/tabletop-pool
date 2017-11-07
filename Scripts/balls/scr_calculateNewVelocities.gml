//called by scr_allBallCollision, for any ball colour

incline = point_direction(x,y,other.x,other.y);
    
alpha = direction-incline;
vParallelSelf       = speed*cos(degtorad(alpha));
vPerpendicularSelf  = speed*sin(degtorad(alpha));
beta = other.direction - incline;
vParallelOther      = other.speed*cos(degtorad(beta));
vPerpendicularOther = other.speed*sin(degtorad(beta));

//IDEA: only if they're moving towards each other does this all occur
if (vParallelSelf - vParallelOther > 0){
    //coeff of elasticity is taken as 1
    e = global.e 
    
    //CLM and NEL combined:
    vParallelOtherNew = 0.5*(vParallelSelf + vParallelOther - (e*(vParallelOther - vParallelSelf)));
    vParallelSelfNew  = vParallelSelf + vParallelOther - vParallelOtherNew;
    
    hspeed =  vParallelSelfNew *     cos(degtorad(incline));
    hspeed += vPerpendicularSelf *   cos(degtorad(incline+90));
    //negative sign because y direction is downwards
    vspeed =  -(vParallelSelfNew *   sin(degtorad(incline)));
    vspeed += -(vPerpendicularSelf * sin(degtorad(incline+90)));
    
    other.hspeed =  vParallelOtherNew *      cos(degtorad(incline));
    other.hspeed += vPerpendicularOther *    cos(degtorad(incline+90));
    other.vspeed =  -(vParallelOtherNew *    sin(degtorad(incline)));
    other.vspeed += -(vPerpendicularOther *  sin(degtorad(incline+90)));
}
