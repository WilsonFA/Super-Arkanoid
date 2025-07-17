/// @description Insert description here
// You can write your code in this editor

powerup = true;
instance_destroy(other)
sprite_index = spr_player_shoot;
alarm[0] = 60;
alarm[1] = 60 * 5;
audio_play_sound(snd_activate_powerup, 10, false);
