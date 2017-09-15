x += hsp;
y += vsp;

//if star piece reaches room boundary:
if (obj_star_piece.x <= 40)
{
	x += hsp; //Move it the opposite direction.
}
else if (obj_star_piece.x >= room_width - 64)
{
	x -= hsp; 
}

//Same for vertical movement
if (obj_star_piece.y >= 40)
{
	y += hsp;
}
else if (obj_star_piece.y >= room_height - 64)
{
	y -= hsp;
}
