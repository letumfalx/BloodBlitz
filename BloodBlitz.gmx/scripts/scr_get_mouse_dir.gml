///scr_get_mouse_dir()


var force = window_mouse_get_x() - window_get_width()/2;
var dir = dir_center;
var ret;

ret[FORCE] = force;
if(force < -1.5) {
    ret[DIR] = dir_left;
    if(abs(force) > 15) ret[FORCE] = -15;
} else if(force > 1.5) {
    ret[DIR] = dir_right;
    if(abs(force) > 15) ret[FORCE] = 15;
} else {
    ret[DIR] = dir_center;
    ret[FORCE] = 0;
}

/*
ret[FORCE] = force * mouse_sensitivity;
if(abs(dir) >= sprite_get_width(spr_wall)) {
    if(dir < 0) {
        dir = 0 - sprite_get_width(spr_wall) - 1;
    } else {
        dir = sprite_get_width(spr_wall) - 1;
    }
    
}*/

//ret[DIR] = dir;
window_mouse_set(window_get_width()/2, window_get_height()/2);
return ret;