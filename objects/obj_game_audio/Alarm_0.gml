if (global.star_pieces >= 5)
{
	audio_play_sound(snd_game_won, 0, false);
}
else if (global.player_hp <= 0)
{
	audio_play_sound(snd_game_over, 0, false);
}
	