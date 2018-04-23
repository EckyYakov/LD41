if(path_position == 1){
	if(path_exists(path)) path_delete(path);
	path_position = 0;
	repath_timer = 0;
	alarm[0] = path_refind_time;
	found = false;
}

//Check within a certain angle with
angle_bottom_range = direction - 15;
angle_top_range = direction + 15;

for(var i = angle_bottom_range; i < angle_top_range; i += 3){
	if(collision_line(x, y, x + lengthdir_x(vision_range, i), y + lengthdir_y(vision_range, i), obj_Player, false, false)){
		//Check to see if there is a planter in the way with the line
		if(collision_line(x, y, obj_Player.x, obj_Player.y, obj_planter, false, false)){
			return;
		}
		con_Game.player_detected = true;
		return;	
	}
}

dress_color = color;

//animate based on direction;
switch direction {
	case 0:
		hair_sprite = spr_cm_right_hair;
		dress_sprite = spr_cm_right_dress;
		skin_sprite = spr_cm_right_skin;
	break;
	case 90:
		hair_sprite = spr_cm_up_hair;
		dress_sprite = spr_cm_up_dress;
		skin_sprite = spr_cm_up_skin;	
	break;
	case 180:
		hair_sprite = spr_cm_left_hair;
		dress_sprite = spr_cm_left_dress;
		skin_sprite = spr_cm_left_skin;	
	break;
	case 270:
		hair_sprite = spr_cm_down_hair;
		dress_sprite = spr_cm_down_dress;
		skin_sprite = spr_cm_down_skin;		
	break;
}

sub_image += animation_speed;
if(sub_image >= sprite_get_number(hair_sprite)){
    if(recycle) sub_image = 0;
}