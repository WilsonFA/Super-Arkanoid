if (options_list == 1)
{
	if(option_selected == 0) options_list = 2;
	if(option_selected == 1) game_end(); 
}else if(options_list == 2)
{
	if (option_selected == 0)
	{
		//Easy
		global.speed_ball = 4;
		room_goto(Room1)
	}else if (option_selected == 1)
	{
		//Moderate
		global.speed_ball = 7;
		room_goto(Room1)
	}else if (option_selected == 2)
	{
		//Hard
		global.speed_ball = 10.5;
		room_goto(Room1)
	}
	
}