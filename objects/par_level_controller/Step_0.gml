if(play_sound){
	if(!sound_played){
		sfx = audio_play_sound(choose(sfx_sell_1, sfx_sell_2, sfx_sell_3, sfx_sell_4, sfx_sell_5, sfx_sell_6, sfx_sell_7), 50, false);
		audio_sound_gain(sfx, 0, 0);
		audio_sound_gain(sfx, .5, 1000);
		audio_sound_pitch(sfx, .5);
		sound_played = true;
	}
	play_sound = false;
}
