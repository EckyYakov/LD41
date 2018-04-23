growth_timer += growth_rate;

if(growth_timer > growth_threshold){
	growth++;
	growth_timer = 0;
	if(growth >= full_growth) growth_rate = 0;
}

