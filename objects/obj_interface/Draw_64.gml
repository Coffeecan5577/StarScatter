if (instance_exists(obj_player_core))
{
	count_x = view_xport[0].x;
	count_y = view_yport[0].y;
	draw_set_font(fnt_score);
	draw_set_color(c_white);
	//Drawing player health
	draw_text(count_x, count_y + 600, "HEALTH: " + string(global.player_hp));
	//Drawing star piece count:
	draw_text(count_x + 500, count_y + 600, "PIECES: " + string(global.star_pieces));

	if (global.star_pieces == 5)
	{
		draw_text(count_x + 250, count_y + 100, "Congratulations! ");
		draw_text(count_x + 150, count_y + 150, "Press Enter to restart");
	}
}

else if (global.player_hp <= 0)
{
	draw_text(count_x + 350, count_y + 100, "Game Over ");
	draw_text(count_x + 150, count_y + 150, "Press Enter to restart");
}