//Find a random plant with the right color
randomize();
while(!found){
	plant = instance_find(obj_plant, irandom_range(0, instance_number(obj_plant) - 1))
	if(plant.color == color) found = true;
	if(distance_to_point(plant.x, plant.y) < 64) found = false;
}

path = path_add();


script_execute(script_id);


