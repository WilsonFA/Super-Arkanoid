/// @description Insert description here
// You can write your code in this editor

if(started == false)
{
	x = obj_player.x;
	x = clamp(x, 32, room_width - 32);
}

if(!global.rebote_blocos and started)
{
	instance_create_layer(x, y, "Instances", obj_ball_trail);
}

if(global.paused) speed = 0;
else if(global.paused == false and started == true)
{
	speed = speed_ball;
}