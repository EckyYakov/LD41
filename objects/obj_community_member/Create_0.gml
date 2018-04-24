randomize();
dress_color = c_white	
color = con_Colors.maroon;
move_speed = 2;
found = false;
path = noone;
sfx_frequency_bot = room_speed * 15;
sfx_frequency_top = room_speed * 40;

sfx = audio_play_sound(choose(sfx_cq_1, sfx_cq_2, sfx_cq_3, sfx_cq_4, sfx_cq_5, sfx_none, sfx_none), 50, false);
audio_sound_gain(sfx, 0, 0);
audio_sound_gain(sfx, .5, 1000);

script_id = choose(asset_get_index("enemyAI"), asset_get_index("enemyAI_2"))

alarm[1] = irandom_range(sfx_frequency_bot, sfx_frequency_top);

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

