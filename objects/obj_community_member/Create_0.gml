randomize();
dress_color = c_white	
color = con_Colors.maroon;
move_speed = 2;
found = false;
path = noone;

alarm[0] = room_speed;

path_refind_time = 15;

repath_threshold = room_speed * 2 + 5;
repath_timer = 0;

detection_size = 3;

player_check = false;
line_color = c_white;
vision_range = 150;

skin_color = con_Colors.skin_list[| irandom_range(0, ds_list_size(con_Colors.skin_list) - 1)];
dress_color = color;
hair_color = color;

hair_sprite = spr_cm_right_hair;
dress_sprite = spr_cm_right_dress;
skin_sprite = spr_cm_right_skin;

rot = 0;
x_scale = 1.5;
y_scale = 1.5;
alpha = 1;
sub_image = 0;
animation_speed = .33;
recycle = true;

