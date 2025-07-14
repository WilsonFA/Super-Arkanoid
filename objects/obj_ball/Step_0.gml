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