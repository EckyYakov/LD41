max_move_speed = 8;
starting_move_speed = max_move_speed;
min_move_speed = .5;
move_speed = starting_move_speed;
weed_harvested = 61;

marijuana_weight = .1;
max_marijuana = (starting_move_speed - min_move_speed)/marijuana_weight;

v_speed = 0;
h_speed = 0;

planter = noone;

harvested_plants = 0;

row = 0;
col = 0;

x = col * global.cell_size;
y = row;

row = 0;
col = 1;

moving = true;

animation_cooldown_timer = 0;
animation_cooldown_threshold = global.cell_size/move_speed;
animation_cooldown = false;

movement_dir = "Right";
input_dir = "Right";

spr_index = sprite_index;
sub_image = 0;
x_scale = 1.5;
y_scale = 1.5;
rot = 0;
color = c_white;
alpha = 1;
animation_speed = .33;
animation_completed = false;