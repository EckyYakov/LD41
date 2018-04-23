draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text_color(5, 10, "Score: " + string(global.player_score), score_color, score_color, score_color, score_color, score_alpha);
draw_text_color(5, 25, "Goal:  " + string(global.win_score), c_white, c_white, c_white, c_white, score_alpha);
draw_sprite_ext(spr_UI_backpack, 0, 4, 28, .5, .5, 0, bp_color, 1);
draw_text_color(32, 43, string(global.weed_harvested), bp_color, bp_color, bp_color, bp_color, 1);
draw_text_color(58, 46, "Lvl " + string(global.level), c_aqua, c_aqua, c_aqua, c_aqua, score_alpha);


