

function scr_colisao_blocos(){
	//Rebatendo a bola
	if(global.rebote_blocos == true) {move_bounce_all(true);}
		
	//Destruindo o bloco
	instance_destroy(other);
	
	//Somando Pontos
	global.pontuacao += 5;
	
	//Verificar e Atualizar Recorde
	if(global.pontuacao > global.recorde)
	{
		global.recorde = global.pontuacao;
		salvar_recorde(global.recorde);
	}
}

function scr_sorteio_powerup()
{
	if(global.delay_itens == false)
	{
		randomize();
		var sorteio1 = irandom_range(1,10);
		var sorteio2 = irandom_range(1,20);
		var sorteio3 = irandom_range(1,22);
	
		if(sorteio1 = 1)
		{
			global.delay_itens = true;
			instance_create_layer(x, y, "Instances", obj_item_powerup);
			audio_play_sound(snd_item_powerup, 10, false);
		}
		
		else if(sorteio2 = 1)
		{
			global.delay_itens = true;
			instance_create_layer(x, y, "Instances", obj_item_power_up_down);
			audio_play_sound(snd_item_powerup, 10, false);
		}
		else if(sorteio3 = 1)
		{
			global.delay_itens = true;
			instance_create_layer(x, y, "Instances", obj_item_powerup_ball);
			audio_play_sound(snd_item_powerup, 10, false);
		}
	}
}

function scr_colisao_shot()
{
	instance_destroy();
	instance_destroy(other);
	global.pontuacao += 5;
	if(global.pontuacao > global.recorde)
	{
		global.recorde = global.pontuacao;
	}
}	

/*
function scr_color_ball_on()
{
	if(global.ball_skin_powerup == false)
	{
		global.rebote_blocos = false;
		with(obj_ball) 
		{
			sprite_index = spr_ball_powerup;
		}
	}
}

function scr_color_ball_off()
{
	if(global.ball_skin_powerup == true)
	{
		global.rebote_blocos = true;
		with(obj_ball)
		{
			sprite_index = spr_ball;
		}
		if(global.ball_skin_powerup == true)
		{
			global.ball_skin_powerup = false;
		}
	}
}
*/