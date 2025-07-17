/// @description Insert description here
// You can write your code in this editor

x = clamp(x, 32, room_width - 32);

if(global.paused)
{
	//Alarm do Powerup dos tiros
	if(alarm[0] > 0)
	{
		powerup_paused = true;
		alarm[0] = -1;
		alarm[1] = -1;
	}
	
	//Alarm do Powerup and Down
	if(alarm[2] > 0)
	{
		powerup_paused = true;
		rest_alarm = alarm[2];
		alarm[3] = -1;
	}
}
else if(!global.paused and powerup_paused == true)
{
	//Retomar o Powerup dos tiros
	if(powerup)
	{
		alarm[0] = 60;
		alarm[1] = 60 * 5 - count_shot;
	}
	
	powerup_paused = false;
}
