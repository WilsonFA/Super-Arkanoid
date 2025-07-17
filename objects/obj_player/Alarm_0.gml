/// @description Insert description here
// You can write your code in this editor

count_shot += 60;

instance_create_layer(x - 25, y, "Instances", obj_shoot);
instance_create_layer(x + 25, y, "Instances", obj_shoot);
audio_play_sound(snd_shoot, 10, false);


if(powerup == true)
{
	alarm[0] = 60;
	sprite_index = spr_player_shoot;
}
