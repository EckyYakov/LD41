// Start Background Music
audio_stop_all();
bg_music = audio_play_sound(msc_harvest, 1, true);
audio_sound_gain(bg_music, 0, 0);
audio_sound_gain(bg_music, .4, 9000);