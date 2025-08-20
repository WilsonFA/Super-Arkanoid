if (options_list == 1)
{
	if(option_selected == 0) options_list = 2;
	if(option_selected == 1) game_end(); 
}else if(options_list == 2)
{
	if (option_selected == 0)
	{
		//Easy
		global.speed_ball = 4.5;
		global.speed_player = 5;
		room_goto(Room1)
	}else if (option_selected == 1)
	{
		//Moderate
		global.speed_ball = 7;
		global.speed_player = 7;
		room_goto(Room1)
	}else if (option_selected == 2)
	{
		//Hard
		global.speed_ball = 8.5;
		global.speed_player = 8;
		room_goto(Room1)
	}
	
}