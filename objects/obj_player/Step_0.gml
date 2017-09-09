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
if(obj_player.x <= 96) && keyboard_check(vk_left)
{
	hsp = 0;
}

else if (obj_player.x >= room_width - 96) && keyboard_check(vk_right)
{
	hsp = 0;
}

else
{
	x += hsp;
}


//Vertical movement
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

//keeping player in room boundaries vertically
if(obj_player.y <= 128) && keyboard_check(vk_up)
{
	vsp = 0;
}

else if (obj_player.y >= room_height - 64) && keyboard_check(vk_down)
{
	vsp = 0;
}

else
{
	y += vsp;
}
