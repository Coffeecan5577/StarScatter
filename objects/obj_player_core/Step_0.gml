//horizontal keyboard movement:
if (keyboard_check(vk_right)) && !(keyboard_check(vk_left))
{
	hsp += accel_spd;
	hsp = min(hsp, max_spd);
}
if (hsp > 0) && !(keyboard_check(vk_right))
{
	hsp -= decel_spd;
}
if (keyboard_check(vk_left)) && !(keyboard_check(vk_right))
{
	hsp -= accel_spd;
	hsp = max(hsp, -max_spd);
}
if (hsp < 0) && !(keyboard_check(vk_left))
{
	hsp += decel_spd;
}
if (keyboard_check(vk_left)) && (keyboard_check(vk_right)) || !(keyboard_check(vk_left)) && !(keyboard_check(vk_right))
{
	hsp = 0;
}

//keeping player in room boundaries horizontally
if(obj_player_core.x <= 96) && keyboard_check(vk_left)
{
	hsp = 0;
}

else if (obj_player_core.x >= room_width - 96) && keyboard_check(vk_right)
{
	hsp = 0;
}

else
{
	x += hsp;
}


//Vertical keyboard movement
if (keyboard_check(vk_down)) && !(keyboard_check(vk_up))
{
	vsp += accel_spd;
	vsp = min(vsp, max_spd);
}
if (vsp > 0) && !(keyboard_check(vk_down))
{
	vsp -= decel_spd;
}
if (keyboard_check(vk_up)) && !(keyboard_check(vk_down))
{
	vsp -= accel_spd;
	vsp = max(vsp, -max_spd);
}
if (vsp < 0) && !(keyboard_check(vk_up))
{
	vsp += decel_spd;
}
if (keyboard_check(vk_up)) && (keyboard_check(vk_down)) || !(keyboard_check(vk_up)) && !(keyboard_check(vk_down))
{
	vsp = 0;
}

//Detecting Gamepad connection:
if (gamepad_is_connected(0))
{
	global.gpad = true;
	//Draw some text that says "Controller"
}
else
{
	global.gpad = false;
	//Draw some text that says "Keyboard"
}

//controller movement:
/*
if (gamepad_axis_value(0, gp_axislh) > 0.4) || (gamepad_axis_value(0, gp_axislh) < (-0.4))
{
	hsp = gamepad_axis_value(0, gp_axislh);
}

if (gamepad_axis_value(0, gp_axislv) > 0.4) || (gamepad_axis_value(0, gp_axislv) < (-0.4))
{
	vsp = gamepad_axis_value(0, gp_axislv);
}
*/

//keeping player in room boundaries vertically
if(obj_player_core.y <= 128) && keyboard_check(vk_up)
{
	vsp = 0;
}

else if (obj_player_core.y >= room_height - 64) && keyboard_check(vk_down)
{
	vsp = 0;
}

else
{
	y += vsp;
}

//If B button on gamepad is pressed:
/*if ((can_shoot == 1) && (check_pressedgpad_B))
{
	//create bullet
	instance_create_depth(obj_player.x, obj_player.y - 2, 1, obj_star_bullet);
	can_shoot = 0;
	alarm[0] = 45;
}
*/



//if statement chunk for star pieces and sprites:
switch (star_pieces)
{
	case 0: 
	{
		sprite_index = spr_player_core;
		break;
	}
	case 1:
	{
		sprite_index = spr_player_top_piece;
		break;
	}
	case 2:
	{
		sprite_index = spr_player_left_piece;
		break;
	}
	case 3:
	{
		sprite_index = spr_player_right_piece;
		break;
	}
	case 4:
	{
		sprite_index = spr_player_left_leg;
		break;
	}
	case 5:
	{
	sprite_index = spr_player_completed;
	break;
	}
}


//Winning and losing conditions.
//Destroy player if health reaches 0
if (player_hp <= 0)
{
	//Draw Text in middle of screen
	//Play game over sound.
	//Set an alarm for about 4 seconds, then go back to title screen.
	//Restart the game once alarm goes off.
	instance_destroy();
	audio_play_sound(snd_explosion, 1, false);
	instance_destroy(obj_comet_controller);
	instance_destroy(obj_comet_controller2);
	//audio_play_sound(snd_game_over, 0, false);
	//draw_text(view_xport[0].x / 2, view_yport[0].y / 2, "Game Over");
	
}

//Winning conditions.
if (star_pieces == 5)
{	
	alarm[2] = 30;
	//Draw text that says we win the game.
	//Play winning sound.
	//Set alarm for about 3 seconds, then return to title screen.
	//Restart game when alarm goes off.
	audio_stop_sound(snd_gameplay);
	instance_destroy(obj_comet_controller);
	instance_destroy(obj_comet_controller2);
	//audio_play_sound(snd_game_won, 1, false);
	//draw_text(view_xport[0].x / 2, view_yport[0].y / 2, "Congratulations!");
	
}

