///Create Bullet object
if (can_shoot == 1)
{
	instance_create_depth(obj_player_core.x, obj_player_core.y - 2, 1, obj_star_bullet);
	audio_play_sound(snd_star_fire, 1, false);
	can_shoot = 0;
	alarm[0] = 1; //Fire bullet every half a sceond if we run game at 60 FPS.
}


