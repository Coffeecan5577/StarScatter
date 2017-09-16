if (keyboard_check_pressed(vk_enter)) || (gamepad_button_check_pressed(0, gp_start))
{
	room_goto_next(); //Start the game.
	audio_stop_sound(snd_title_screen);
}