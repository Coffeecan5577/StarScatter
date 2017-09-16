if (global.player_hp <= 0 && keyboard_check_pressed(vk_enter))
{
	game_restart();
}

else if (global.star_pieces >= 5 && keyboard_check_pressed(vk_enter))
{
	game_restart();
}