weed_amount = argument0;

global.player_score += weed_amount;
global.weed_harvested -= weed_amount;
audio_play_sound(sfx_sold, 0, false);

instance_destroy();