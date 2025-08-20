function salvar_recorde(recorde_atualizado){
	
	//Salvando dados em um arquivo INI. Se não existir o gamemaker criará um arquivo. Se existir, substituirá os dados.
	ini_open("savegame.ini");
	
	ini_write_real("player","recorde", recorde_atualizado);
	
	ini_close();
}

function ler_recorde()
{
	var recorde_salvo = 0;
	
	if (file_exists("savegame.ini"))
	{
		//Ler os dados do arquivo
		ini_open("savegame.ini");
		
		recorde_salvo = ini_read_real("player", "recorde", 0);
		
		ini_close();
	}
	
	return recorde_salvo;
}