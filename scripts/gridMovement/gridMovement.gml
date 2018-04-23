up = keyboard_check(ord("W")) || keyboard_check(vk_up);
left = keyboard_check(ord("A")) || keyboard_check(vk_left);
down = keyboard_check(ord("S")) || keyboard_check(vk_down);
right = keyboard_check(ord("D")) || keyboard_check(vk_right);

if(up) input_dir = "Up";
if(down) input_dir = "Down";
if(left) input_dir = "Left";
if(right) input_dir = "Right";

switch(movement_dir){
	case "Left":
		spr_index = spr_player_walk_left;
		if(input_dir == "Right"){
			movement_dir = "Right";
			if(col + 1 < ds_grid_width(global.game_grid) && !ds_grid_get(global.game_grid, col + 1, row)){
				col += 1;
			}
			return;
		}
		if(x > col * global.cell_size){
			if(x - move_speed < col * global.cell_size){
				while(x != col * global.cell_size){
					x -= 1;
					
				}
				return;
			}
			x -= move_speed;
		}
		if(x == col * global.cell_size){
			if(input_dir == "Up"){
				if(row - 1 >= 0 && !ds_grid_get(global.game_grid, col, row - 1)){
					row -= 1;
					movement_dir = "Up";
					return;
				}
			}
			if(input_dir == "Down"){
				if(row + 1 < ds_grid_height(global.game_grid) && !ds_grid_get(global.game_grid, col, row + 1)){
					row += 1;
					movement_dir = "Down";
					return;
				}
			}
			if(col - 1 >= 0 && !ds_grid_get(global.game_grid, col - 1, row)){
				col -= 1;
			}
		}
	break;
	case "Right":
		spr_index = spr_player_walk_right;
		if(input_dir = "Left"){
			movement_dir = "Left";
			if(col - 1 >= 0 && !ds_grid_get(global.game_grid, col - 1, row)){
				col -= 1;
			}
			return;
		}
		if(x < col * global.cell_size){
			if(x + move_speed > col * global.cell_size){
				while(x != col * global.cell_size){
					x += 1;
				}
				return;
			}
			x += move_speed;
		}
		if(x == col * global.cell_size){
			if(input_dir == "Up"){
				if(row - 1 >= 0 && !ds_grid_get(global.game_grid, col, row - 1)){
					row -= 1;
					movement_dir = "Up";
					return;
				}
			}
			if(input_dir == "Down"){
				if(row + 1 < ds_grid_height(global.game_grid) && !ds_grid_get(global.game_grid, col, row + 1)){
					row += 1;
					movement_dir = "Down";
					return;
				}
			}
			if(col + 1 < ds_grid_width(global.game_grid) && !ds_grid_get(global.game_grid, col + 1, row)){
				col += 1;
			}
		}
	break;
	case "Down":
		spr_index = spr_player_walk_down;
		if(input_dir == "Up"){
			movement_dir = "Up";
			if(row - 1 >= 0 && !ds_grid_get(global.game_grid, col, row - 1)) row -= 1;
			return
		}
		if(y < row * global.cell_size){
			if(y - move_speed > row * global.cell_size){
				while(y != row * global.cell_size){
					y += 1;
				}
				return;
			}
			y += move_speed;
		}
		if(y == row * global.cell_size){
			if(input_dir == "Right"){
				if(col + 1 < ds_grid_width(global.game_grid) && !ds_grid_get(global.game_grid, col + 1, row)){
					col += 1;
					movement_dir = "Right";
					return;
				}				
			}
			if(input_dir == "Left"){
				if(col - 1 >= 0 && !ds_grid_get(global.game_grid, col - 1, row)){
					col -= 1;
					movement_dir = "Left";
					return;
				}				
			}
			if(row + 1 < ds_grid_height(global.game_grid) && !ds_grid_get(global.game_grid, col, row + 1)) row += 1;
		}
	break;
	case "Up":
		spr_index = spr_player_walk_up;
		if(input_dir == "Down"){
			movement_dir = "Down";
			if(row + 1 < ds_grid_height(global.game_grid) && !ds_grid_get(global.game_grid, col, row + 1)) row += 1;
			return;
		}
		if(y > row * global.cell_size){
			if(y - move_speed < row * global.cell_size){
				while(y != row * global.cell_size){
					y -= 1;
				}
				return;
			}
			y -= move_speed;
		}
		if(y == row * global.cell_size){
			if(input_dir == "Right"){
				if(col + 1 < ds_grid_width(global.game_grid) && !ds_grid_get(global.game_grid, col + 1, row)){
					col += 1;
					movement_dir = "Right";
					return;
				}				
			}
			if(input_dir == "Left"){
				if(col - 1 >= 0 && !ds_grid_get(global.game_grid, col - 1, row)){
					col -= 1;
					movement_dir = "Left";
					return;
				}				
			}
			if(row - 1 >= 0 && !ds_grid_get(global.game_grid, col, row - 1)) row -= 1;
		}		
	break;
}