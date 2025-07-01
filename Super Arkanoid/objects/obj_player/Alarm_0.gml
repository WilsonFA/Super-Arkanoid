/// @description Insert description here
// You can write your code in this editor



if(powerup = true)
{
	instance_create_layer(x - 25, y, "Instances", obj_shoot);
	instance_create_layer(x + 25, y, "Instances", obj_shoot);
	alarm[0] = room_speed;
}
