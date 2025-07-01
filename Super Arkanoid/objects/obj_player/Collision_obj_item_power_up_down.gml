/// @description Insert description here
// You can write your code in this editor

randomize();
instance_destroy(other);
var power_up_or_down_or_shoot = irandom_range(1,3);

if(power_up_or_down_or_shoot == 1)
{
	audio_play_sound(snd_activate_powerup, 10, false);
	movement_speed = 12;
	sprite_index = spr_player_speed;
	alarm[2] = room_speed * 7;
}
else if (power_up_or_down_or_shoot == 2)
{
	audio_play_sound(snd_lose, 10, false);
	movement_speed = 4;
	sprite_index = spr_player_freeze;
	alarm[2] = room_speed * 7;
}
else
{
	show_message("Tiros!!!!!!")
}

