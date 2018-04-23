growth = 0;

growth_timer = 0;
growth_rate = 1;
full_growth = 4;
dead = false;
dead_sprite = spr_flower_dead;

needs_water = false;
water_indicator = spr_water;
warning_indicator = spr_alert;

thirst = 0;
thirst_threshold = room_speed * 20;

growth_threshold = growth_rate * room_speed * 15;

alarm[0] = thirst_threshold;

warning = false;

type = "Weed";
