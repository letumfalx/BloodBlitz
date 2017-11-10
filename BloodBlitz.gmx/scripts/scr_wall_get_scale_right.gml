///scr_wall_get_scale_right()

/*
below 80 -> [1.00 - 2.25)
above 80 -> (2.25 - 6.00)


*/
var bp = blood_pressure[diastolic];
if(bp < min_bp_dia) {
    return min_wall_scale; 
} else if(bp < ave_bp_dia) {
    return min_wall_scale + ((blood_pressure[diastolic] - min_bp_dia)/(ave_bp_dia - min_bp_dia)) * (ave_wall_scale - min_wall_scale);
} else if(bp == ave_bp_dia) {
    return ave_wall_scale;
} else if(bp < max_bp_dia) {
    return ave_wall_scale + (max_wall_scale - ave_wall_scale) * (1 - ((max_bp_dia - ave_bp_dia) - (blood_pressure[diastolic] - ave_bp_dia))/(max_bp_dia - ave_bp_dia)); ;
} else {
    return max_wall_scale;
}