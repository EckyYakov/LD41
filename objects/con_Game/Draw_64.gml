draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_tome_unknown_sm);
draw_text_color(20, 5, "Score: " + string(global.player_score), score_color, score_color, score_color, score_color, score_alpha);
draw_text_color(20, 22, "Goal:  " + string(global.win_score), c_white, c_white, c_white, c_white, score_alpha);
draw_text_color(11, 42, "Weed: " + string(global.weed_harvested), bp_color, bp_color, bp_color, bp_color, 1);
draw_text_color(75, 42, "Lvl " + string(global.level), c_aqua, c_aqua, c_aqua, c_aqua, score_alpha);


