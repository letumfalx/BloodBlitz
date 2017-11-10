///scr_scale_to(which, origvalue)


if(argument0 == 0) {
    return argument1 * 480 / 1280;
} else if(argument0 == 1) {
    return argument1 * 270 / 720;
} else if(argument0 == 2) {
    return argument1 * 480 / (1280 - 720);
}

return argument1 * 270 / 720;

