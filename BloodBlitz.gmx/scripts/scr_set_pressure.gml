///scr_set_pressure(mode, value)

switch(argument0) {
    case systolic:
        blood_diff[systolic] += argument1;
        if(blood_diff[systolic] > max_bp_sys) blood_diff[systolic] = max_bp_sys;
        if(blood_diff[systolic] < min_bp_sys) blood_diff[systolic] = min_bp_sys;
        break;
    case diastolic:
        blood_diff[diastolic] += argument1;
        if(blood_diff[diastolic] > max_bp_dia) blood_diff[diastolic] = max_bp_dia;
        if(blood_diff[diastolic] < min_bp_dia) blood_diff[diastolic] = min_bp_dia;
        break;
}

if(blood_diff[diastolic] > 0.8 * blood_diff[systolic] && blood_diff[diastolic] > min_bp_dia) {
    blood_diff[diastolic] = floor(0.8 * blood_diff[systolic]);
}