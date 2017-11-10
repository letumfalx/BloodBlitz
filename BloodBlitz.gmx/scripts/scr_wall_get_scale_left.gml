///scr_wall_get_scale_left()

/*
below 120 -> [1.00 - 2.25)
above 120 -> (2.25 - 6.00)


*/
var bp = blood_pressure[systolic];
if(bp < min_bp_sys) {
    return min_wall_scale; 
} else if(bp < ave_bp_sys) {
    return min_wall_scale + ((blood_pressure[systolic] - min_bp_sys)/(ave_bp_sys - min_bp_sys)) * (ave_wall_scale - min_wall_scale);
} else if(bp == ave_bp_sys) {
    return ave_wall_scale;
} else if(bp < max_bp_sys) {
    return ave_wall_scale + (max_wall_scale - ave_wall_scale) * (1 - ((max_bp_sys - ave_bp_sys) - (blood_pressure[systolic] - ave_bp_sys))/(max_bp_sys - ave_bp_sys)); ;
} else {
    return max_wall_scale;
}