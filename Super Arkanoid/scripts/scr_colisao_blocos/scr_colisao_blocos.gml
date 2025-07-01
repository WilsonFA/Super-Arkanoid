// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_colisao_blocos(){
	//Rebatendo a bola
	move_bounce_all(true);
	
	//Destruindo o bloco
	instance_destroy(other);
	
	//Somando Pontos
	global.pontuacao += 5;
	
	//Verificar e Atualizar Recorde
	if(global.pontuacao > global.recorde)
	{
		global.recorde = global.pontuacao;
	}
}

function scr_sorteio_powerup()
{
	randomize();
	var sorteio = irandom(9);
	
	if(sorteio == 9)
	{
		instance_create_layer(x,y,"itens",obj_item_powerup);
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
