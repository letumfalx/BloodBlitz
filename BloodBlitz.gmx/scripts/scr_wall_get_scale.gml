///scr_wall_get_scale()

if(blood_condition == systolic) {
    return (max_wall_scale - min_wall_scale) * blood_pressure[systolic] / 120;
}
else {
    return (max_wall_scale - min_wall_scale) * blood_pressure[diastolic] / 80;
}