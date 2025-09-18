

boost_key = true;

if (boost_key == true && sprite_index != spr_player_freeze || sprite_index != spr_player_speed)
{
	show_debug_message("Normal");
	movement_speed = movement_speed - 5;
	boost_key = false;
}
