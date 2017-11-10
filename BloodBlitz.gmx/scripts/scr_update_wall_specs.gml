///scr_update_wall_specs()

for(var i=0; i < instance_number(obj_wall); i++) {
    var wall = instance_find(obj_wall, i);
    wall.vspeed = scr_wall_get_speed();
}