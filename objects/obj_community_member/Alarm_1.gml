randomize();
sfx = audio_play_sound(choose(sfx_cq_1, sfx_cq_2, sfx_cq_3, sfx_cq_4, sfx_cq_5, sfx_none, sfx_none, sfx_none, sfx_none, sfx_none), 50, false);
audio_sound_gain(sfx, 0, 0);
audio_sound_gain(sfx, .5, 1000);
alarm[1] = irandom_range(sfx_frequency_bot, sfx_frequency_top);