hp -= 1;
with (other)
{
	instance_destroy();
	//Play sound and change to appropriate sprite when destroyed.
	draw_sprite_ext(spr_star_explosion, 0, obj_comet_left.x, obj_comet_left.y, 0, 0, 0, 0, 255);
}