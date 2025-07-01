/// @description Insert description here
// You can write your code in this editor

if(started == true)
{
	move_bounce_solid(true);
	direction = point_direction(other.x,other.y,x,y);
	audio_play_sound(snd_collision, 10, false);
	rebote_count_wall = 0;
}
