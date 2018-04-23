if(player_detected){
	if(!instance_exists(obj_PoliceFlasher)) instance_create_depth(x, y, -5, obj_PoliceFlasher);
	player_detected = false;
}

// TODO Check to see if all the obj_planters are taken with community plants

if(global.weed_harvested >= 40) bp_color = c_red;
else if(global.weed_harvested >= 20) bp_color = c_yellow;
else bp_color = c_lime;
