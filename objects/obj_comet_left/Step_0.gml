x -= hsp;
y += vsp;

if (hp == 0)
{
	instance_destroy();
}

//Colliding with player
if (place_meeting(x, y, obj_player_core))
{
	instance_destroy();
}


