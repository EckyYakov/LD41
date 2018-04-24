//Spawn community member
initial_spawn = room_speed * 5;
buyer_spawn = room_speed * 55;

win_score = 60;
//Set global win score
global.win_score = win_score;
global.level = 3;
global.highest_level = global.level;

alarm[0] = initial_spawn;
alarm[1] = buyer_spawn;

init_members = 2;
members_to_spawn = 4;
community_spawn_time = room_speed * 40;
plants_left = 0;
number_of_plants = 0;
number_of_planters = instance_number(obj_planter);


// Spawn in plants for the community member at the start
c_position = 0;
color1 = global.game_colors[| c_position];

buyer_time = 20 * room_speed;
buyer_interval = 40 * room_speed;
