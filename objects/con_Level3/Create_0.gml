//Spawn community member
initial_spawn = room_speed * 5;
buyer_spawn = room_speed * 30;

win_score = 40;
//Set global win score
global.win_score = win_score;
global.level = 3;

alarm[0] = initial_spawn;
alarm[1] = buyer_spawn;

members_to_spawn = 3;
community_spawn_time = room_speed * 40;
plants_left = 0;
number_of_plants = 0;
number_of_planters = instance_number(obj_planter);


// Spawn in plants for the community member at the start
c1_position = 0;
color1 = con_Colors.color_list[| c1_position];
ds_list_delete(con_Colors.color_list, c1_position);
ds_list_add(global.game_colors, color1);

for(var i = 0; i < instance_number(obj_planter); i++){
	var planter = instance_find(obj_planter, i);
	var plant = planter.plant_id;
	if(plant == noone) plants_left++;
}

number_of_planters = instance_number(obj_planter);
number_of_plants = plants_left/5;

// Loop through the planters randomly, plant plants in planters without plants in them
while(number_of_plants > 0){
	var planter = instance_find(obj_planter, irandom_range(0, number_of_planters - 1));
	var plant = planter.plant_id
	if(plant == noone){
		//Plant a plant and decrement
		var new_plant = instance_create_depth(planter.x, planter.y, -1, obj_plant);
		new_plant.color = color1;
		planter.plant_id = new_plant;
		number_of_plants--;
	}
}
