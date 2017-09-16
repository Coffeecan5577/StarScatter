hp -= 1;
with (other)
{
	instance_destroy();
	audio_play_sound(snd_bullet_hit, 1, false);
}