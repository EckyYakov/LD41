//Find a random plant with the right color
randomize();
while(!found){
	plant = instance_find(obj_plant, irandom_range(0, instance_number(obj_plant) - 1))
	if(plant.color == color) found = true;
	if(distance_to_point(plant.x, plant.y) < 64) found = false;
}

path = path_add();

if(!plant.top){
	if mp_grid_path(global.motion_grid, path, x, y, plant.x + global.cell_size/2, plant.y - global.cell_size/2, false){
		path_start(path, move_speed, path_action_stop, true);
		return;
	}
}

if(!plant.bot){
	if mp_grid_path(global.motion_grid, path, x, y, plant.x + global.cell_size/2, plant.y + (1.5 * global.cell_size), false){
		path_start(path, move_speed, path_action_stop, true);
		return;
	}
}

if(!plant.left){
	if mp_grid_path(global.motion_grid, path, x, y, plant.x - global.cell_size/2, plant.y + global.cell_size/2, false){
		path_start(path, move_speed, path_action_stop, true);
		return;
	}
}

if(!plant.right){
	if mp_grid_path(global.motion_grid, path, x, y, plant.x + (1.5 * global.cell_size), plant.y + global.cell_size/2, false){
		path_start(path, move_speed, path_action_stop, true);
		return;
	}
}

//repath_threshold = room_speed * 2 + 5;
found = false;
alarm[0] = 1;


