//Pick a random community spawn point
var community_spawn = instance_find(con_community_spawn, irandom_range(0, instance_number(con_community_spawn) -1))

var member = instance_create_depth(community_spawn.x, community_spawn.y, 0, obj_community_member);

members_to_spawn--;
plants_left = 0;
number_of_plants = 0;
number_of_planters = 0;
community_spawn_time -= 5;

// If we still have more memeber to spawn, reset alarm
if(members_to_spawn > 0) alarm[0] = community_spawn_time;
