///scr_wall_get_speed()

var bp = blood_pressure[blood_condition];

if(blood_condition == systolic) {
    if(bp < min_bp_sys) {
        return -1 * min_wall_speed_sys;
    } else if(bp < ave_bp_sys) {
        return -1 * (min_wall_speed_sys + (ave_wall_speed_sys - min_wall_speed_sys) * (bp - min_bp_sys)/min_bp_sys);
    } else if(bp == ave_bp_sys) {
        return -1 * ave_wall_speed_sys;
    } else if(bp < max_bp_sys) {
        return -1 * (ave_wall_speed_sys + (max_wall_speed_sys - ave_wall_speed_sys) * (1 - ((max_bp_sys - ave_bp_sys) - (bp - ave_bp_sys))/(max_bp_sys - ave_bp_sys)));
    } else {
        return -1 * max_wall_speed_sys;
    } 
} else {
    if(bp < min_bp_dia) {
        return -1 * min_wall_speed_dia;
    } else if(bp < ave_bp_dia) {
        return -1 * (min_wall_speed_dia + (ave_wall_speed_dia - min_wall_speed_dia) * (bp - min_bp_dia)/min_bp_dia);
    } else if(bp == ave_bp_dia) {
        return -1 * ave_wall_speed_dia;
    } else if(bp < max_bp_dia) {
        return -1 * (ave_wall_speed_dia + (max_wall_speed_dia - ave_wall_speed_dia) * (1 - ((max_bp_dia - ave_bp_dia) - (bp - ave_bp_dia))/(max_bp_dia - ave_bp_dia)));
    } else {
        return -1 * max_wall_speed_dia;
    } 
}