///Create Bullet object
if (can_shoot == 1)
{
	instance_create_depth(obj_player.x, obj_player.y - 2, 1, obj_star_bullet);
	can_shoot = 0;
	alarm[0] = 1; //Fire bullet every half a sceond if we run game at 60 FPS.
}

