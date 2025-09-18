/// @description Insert description here
// You can write your code in this editor


powerupordown = true;

randomize();
instance_destroy(other);
var power_up_or_down_or_shoot = irandom_range(1,3);

if(power_up_or_down_or_shoot == 1)
{
	audio_play_sound(snd_activate_powerup, 10, false);
	movement_speed = movement_speed + 3;
	sprite_index = spr_player_speed;
	alarm[2] = 60 * 7;
}
else if (power_up_or_down_or_shoot == 2)
{
	audio_play_sound(snd_lose, 10, false);
	movement_speed = movement_speed - 3;
	sprite_index = spr_player_freeze;
	alarm[2] = 60 * 7;
}
else
{
	var _start_x = 20;
	var _start_y = room_height + 50;
	
	var _num_instances = 16;
	var _spacing = 40;
	
	var _i = 0;
	
	while(_i < _num_instances)
	{
		instance_create_layer(_start_x + _i * _spacing, _start_y, "Instances", obj_shoot)
		_i++;
	}
	
	sprite_index = spr_player_shoot;
	alarm[2] = 60;
	
	audio_play_sound(snd_activate_powerup, 10, false);
	audio_play_sound(snd_shoot, 10, false);
}

