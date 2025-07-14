/// @description Insert description here
// You can write your code in this editor

if(rebote_count_wall < 3)
{
	move_bounce_solid(true);
	audio_play_sound(snd_collision, 10, false);
	rebote_count_wall += 1;
}
else
{
	if(direction == 0 or direction == 360 or direction == 180)
	{
		direction = 310;
		rebote_count_wall = 0;
	}
	else
	{
		move_bounce_solid(true);
		audio_play_sound(snd_collision, 10, false);
	}
}