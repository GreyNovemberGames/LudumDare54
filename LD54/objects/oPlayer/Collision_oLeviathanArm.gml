/// @desc
/// @desc
if (hitcd = 0 and dashing = 0 and diving = 0)
	{
	x += knockback * -sign(hsp);
	hp -= 10;
	hitcd = 1;
	flashing = true;
	alarm_set(2,10);
	alarm_set(3,1);
	}
