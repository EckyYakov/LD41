// Check to see if player is 1 pixel away from the planter
active = false;

if(place_meeting(x + 1, y, obj_Player)){
	if(can_plant) weedLogic();
	active = true;
}
if(place_meeting(x, y + 1, obj_Player)){
	if(can_plant) weedLogic();
	active = true;
}
if(place_meeting(x - 1, y, obj_Player)){
	if(can_plant) weedLogic();
	active = true;
}
if(place_meeting(x, y - 1, obj_Player)){
	if(can_plant) weedLogic();
	active = true;
}

if(!can_plant) timer++

if(timer > time_threshold){
	can_plant = true;
	timer = 0;
}

// Community Member logic
if(place_meeting(x + 2, y, obj_community_member)){
	var member = instance_place(x + 2, y, obj_community_member);
	if(plant_id != noone){;
		if(plant_id.type == "Weed"){
			if(plant_id.dead){
				with plant_id instance_destroy()
				var plant = instance_create_depth(x, y, -2, obj_plant);
				plant_id = plant;
				plant.color = member.color;
				return;
			}
		}
		if(plant_id.type == "Plant"){
			if(plant_id.color == member.color){
				if(plant_id.growth == plant_id.full_growth){
					with plant_id instance_destroy();
					plant_id = noone;
				}
			}
		}
	}
	active = true;
}
if(place_meeting(x, y + 8, obj_community_member)){
	var member = instance_place(x, y + 8, obj_community_member);
	if(plant_id != noone){;
		if(plant_id.type == "Weed"){
			if(plant_id.dead){
				with plant_id instance_destroy()
				var plant = instance_create_depth(x, y, -2, obj_plant);
				plant_id = plant;
				plant.color = member.color;
				return;
			}
		}
		if(plant_id.type == "Plant"){
			if(plant_id.color == member.color){
				if(plant_id.growth == plant_id.full_growth){
					with plant_id instance_destroy();
					plant_id = noone;
				}
			}
		}
	}
	else{
		// Do a probability check to see if we should plant a new plant in there
		randomize();
		var rand = irandom_range(0, 99);
		if(rand < probability){
			var plant = instance_create_depth(x, y, -2, obj_plant);
			plant_id = plant;
			plant.color = member.color;
			return;	
		}
	}
	active = true;
}
if(place_meeting(x - 2, y, obj_community_member)){
	var member = instance_place(x - 2, y, obj_community_member);
	if(plant_id != noone){;
		if(plant_id.type == "Weed"){
			if(plant_id.dead){
				with plant_id instance_destroy()
				var plant = instance_create_depth(x, y, -2, obj_plant);
				plant_id = plant;
				plant.color = member.color;
				return;
			}
		}
		if(plant_id.type == "Plant"){
			if(plant_id.color == member.color){
				if(plant_id.growth == plant_id.full_growth){
					with plant_id instance_destroy();
					plant_id = noone;
				}
			}
		}
	}	
	active = true;
}
if(place_meeting(x, y - 2, obj_community_member)){
	var member = instance_place(x, y - 2, obj_community_member);
	if(plant_id != noone){;
		if(plant_id.type == "Weed"){
			if(plant_id.dead){
				with plant_id instance_destroy()
				var plant = instance_create_depth(x, y, -2, obj_plant);
				plant_id = plant;
				plant.color = member.color;
				return;
			}
		}
		if(plant_id.type == "Plant"){
			if(plant_id.color == member.color){
				if(plant_id.growth == plant_id.full_growth){
					with plant_id instance_destroy();
					plant_id = noone;
				}
			}
		}
	}
	active = true;
}