if(!dead) draw_sprite(sprite_index, growth, x, y);
else draw_sprite(dead_sprite, growth, x, y); // Draw a dead plant instead

if(needs_water) draw_sprite_ext(water_indicator, 0, x, y - 10, 1, 1, 0, c_white, 1);
if(warning) draw_sprite_ext(warning_indicator, 0, x, y - 10, 1, 1, 0, c_white, 1);
