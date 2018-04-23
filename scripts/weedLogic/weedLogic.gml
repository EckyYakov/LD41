// If nothing exists in the planter
if(plant_id == noone){
	var weed = instance_create_depth(x, y, -2, obj_weed);
	plant_id = weed;
	audio_play_sound(sfx_plant, 0, false);
	return;
}
if(plant_id.type == "Weed"){
	if(plant_id.needs_water){
		plant_id.needs_water = false;
		audio_play_sound(sfx_water, 0, false);
	}
	if(plant_id.dead){
		with plant_id instance_destroy();
		can_plant = false;
		plant_id = noone;
		audio_play_sound(sfx_harvest_dead, 0, false);
		return;
	}
	if(plant_id.growth >= plant_id.full_growth){
		global.weed_harvested++;
		with plant_id instance_destroy();
		plant_id = noone;
		can_plant = false;
		audio_play_sound(sfx_harvest_succesful, 0, false);
	}
}