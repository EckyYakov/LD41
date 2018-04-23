var community_spawn = instance_find(con_community_spawn, irandom_range(0, instance_number(con_community_spawn) -1))

var buyer = instance_create_depth(community_spawn.x, community_spawn.y, 0, obj_buyer);

alarm[1] = buyer_spawn;
