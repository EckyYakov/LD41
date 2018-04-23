Animate(spr_index, animation_speed, true);


if(global.weed_harvested >= 40) move_speed = 2;
else if(global.weed_harvested >= 20) move_speed = 4;
else move_speed = 8;

// Movement
gridMovement();