//draw_triangle_color(x, y, x + lengthdir_x(100, direction - 10), y + lengthdir_y(100, direction - 10), x + lengthdir_x(100, direction + 10), y + lengthdir_y(100, direction + 10), c_white, color, color, true);
for(var i = angle_bottom_range; i < angle_top_range; i += 1){
	draw_set_alpha(.1);
	draw_line_color(x, y, x + lengthdir_x(vision_range, i), y + lengthdir_y(vision_range, i), line_color, line_color);
	draw_set_alpha(1);
}

//if(path_exists(path) && path_index == path) draw_path(path, x, y, true);
//draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, color, 1);

//Draw dress
draw_sprite_ext(dress_sprite, sub_image, x, y, x_scale, y_scale, rot, dress_color, alpha);
//Skin dress
draw_sprite_ext(skin_sprite, sub_image, x, y, x_scale, y_scale, rot, skin_color, alpha);
//Hair dress
draw_sprite_ext(hair_sprite, sub_image, x, y, x_scale, y_scale, rot, hair_color, alpha);

