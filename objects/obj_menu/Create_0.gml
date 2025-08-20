options_list = 1; //Controla lista exbida no menu.
option_selected = 0; //Opção selecionada.

id_snd = audio_play_sound(snd_menu, 0, true);
audio_sound_gain(id_snd, 0, 0);
audio_sound_gain(id_snd, 0.75, 5000);