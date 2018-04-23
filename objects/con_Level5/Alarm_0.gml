//Pick a random community spawn point
for(var m = 0; m < init_members; m++){
	var community_spawn = instance_find(con_community_spawn, irandom_range(0, instance_number(con_community_spawn) -1))
	var color = global.game_colors[| c_position]
	var member = instance_create_depth(community_spawn.x, community_spawn.y, 0, obj_community_member);
	member.color = color;

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
			new_plant.color = color;
			planter.plant_id = new_plant;
			number_of_plants--;
		}
	}

	members_to_spawn--;
	plants_left = 0;
	number_of_plants = 0;
	number_of_planters = 0;
	community_spawn_time -= 5;
	c_position++;
}
// If we still have more memeber to spawn, reset alarm
if(members_to_spawn > 0) alarm[0] = community_spawn_time;