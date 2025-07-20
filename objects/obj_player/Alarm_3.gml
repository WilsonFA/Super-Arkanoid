/// @description Insert description here
// You can write your code in this editor



//Nem precisou usar por causa da function que criei: scr_color_ball_on && scr_color_ball_off
#region Bloco de códigos do curso que não vai ser mais utilizado
if(global.rebote_blocos == false)
{
	global.rebote_blocos = true;
	with(obj_ball)
	{
		sprite_index = spr_ball;
	}
	powerupball = false;
}
else
{
	global.rebote_blocos = false;
	with(obj_ball)
	{
		sprite_index = spr_ball_powerup;
	}
	alarm[3] = 5*60;
}

#endregion
