//If our random value is 3 or more
if (star_piece_spawn >= 3)
{
	//Create instance of star piece at comet's position when destroyed.
	instance_create_depth(x, y, 1, obj_star_piece);
}