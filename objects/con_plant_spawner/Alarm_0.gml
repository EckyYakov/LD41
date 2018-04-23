//Delayed spawn
randomize();
c1_position = irandom_range(0, ds_list_size(con_Colors.color_list) -1);
color1 = con_Colors.color_list[| c1_position];
ds_list_delete(con_Colors.color_list, c1_position);
c2_position = irandom_range(0, ds_list_size(con_Colors.color_list) -1);
color2 = con_Colors.color_list[| c2_position];
ds_list_delete(con_Colors.color_list, c2_position);
ds_list_add(global.game_colors, color1, color2);

// Loop through the planters randomly, plant plants in planters without plants in them
while(number_of_plants > 0){
	var planter = instance_find(obj_planter, irandom_range(0, number_of_planters - 1));
	var plant = planter.plant_id
	if(plant == noone){
		//Plant a plant and decrement
		var new_plant = instance_create_depth(planter.x, planter.y, -1, obj_plant);
		//TODO give plants unique colors to coordinate NPCs
		new_plant.color = choose(color1, color2);
		planter.plant_id = new_plant;
		number_of_plants--;
	}
}
