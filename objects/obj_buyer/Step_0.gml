//If the player runs by... 0 out weed, and give player score, then leave
if(place_meeting(x + 1, y, obj_Player)){
	buyWeed(global.weed_harvested);
}
if(place_meeting(x, y + 1, obj_Player)){
	buyWeed(global.weed_harvested);
}
if(place_meeting(x - 1, y, obj_Player)){
	buyWeed(global.weed_harvested);
}
if(place_meeting(x, y - 1, obj_Player)){
	buyWeed(global.weed_harvested);
}

money_scale += money_scale_growth
if(money_scale >= money_scale_top || money_scale <= money_scale_bot) money_scale_growth = -money_scale_growth;
