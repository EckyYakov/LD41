global.cell_size = 32;
global.motion_grid = mp_grid_create(0, 0, room_width/global.cell_size, room_height/global.cell_size, global.cell_size, global.cell_size);
mp_grid_add_instances(global.motion_grid, obj_planter, false);

global.game_grid = ds_grid_create(room_width/global.cell_size, room_height/global.cell_size);
global.game_colors = ds_list_create();

global.weed_harvested = 0;
global.player_score = 0;
global.win_score = 0;
global.level = 0;

score_color = c_white;
score_alpha = 1;

bp_color = c_lime;

// Populate which squares in the grid have plants in them
// Loop through all the squares in grid, check position in game for obj_planter
var col, row;
col = 0;
row= 0;
repeat (ds_grid_height(global.game_grid)){
   repeat (ds_grid_width(global.game_grid)){
		has_planter = position_meeting(col * global.cell_size, row * global.cell_size, obj_planter);
		show_debug_message("( " + string(col) + ", " + string(row) + "): " + string(has_planter));
		ds_grid_set(global.game_grid, col, row, has_planter);
		col += 1;
      }
   col = 0;
   row += 1;
}

player_detected = false;



