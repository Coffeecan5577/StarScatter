x += hsp;
y += vsp;

//if star piece reaches room boundary:
if (obj_star_piece.x <= 20)
{
	x += hsp; //Move it the opposite direction.
}
else if (obj_star_piece.x >= room_width - 32)
{
	x -= hsp; 
}

//Same for vertical movement
if (obj_star_piece.y >= 32)
{
	y += hsp;
}
else if (obj_star_piece.y >= room_height - 32)
{
	y -= hsp;
}

if (place_meeting(x, y, obj_player_core))
{
	//Destroy object, and play sound.
	instance_destroy();
}