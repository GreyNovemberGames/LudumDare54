/// @desc
if (hitcd = 0)
	{
	hp -= 15;
	hitcd = 1;
	alarm_set(0,10);
	flashing = true;
	alarm_set(1,3);
	audio_play_sound(sEnemyHit,1,0);
	}