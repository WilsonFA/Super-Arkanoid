/// @description Insert description here
// You can write your code in this editor

//Faça a vida diminuir 1 sempre que houver colisão neste objeto:
global.vidas --;

//Condição se vidas for 0, reinicie o jogo. Se não, traga a bola de volta para cima do player.

if(global.vidas < 1)
{
	global.pontuacao = 0;
	global.vidas = 3;
	room_restart();
}
else
{
	instance_destroy();
	instance_create_layer(obj_player.x, ystart, "instances", obj_ball);
}