growth_timer += growth_rate;
if(needs_water){
	thirst++;
	color = c_blue;
}

if(growth_timer > growth_threshold){
	growth++;
	growth_timer = 0;
}

if(growth > full_growth) warning = true;
else warning = false;
// Plant death conditions
if(growth > full_growth + 1){
	dead = true;
}
if(thirst > thirst_threshold){
	dead = true;
	needs_water = false;
}
