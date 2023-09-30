/// @desc
if (oPlayer.hp <= 0)
	{
		hsp = 0;
		image_speed = 0;
	}

if (hp <= 0)
	{
		instance_destroy();
	}
	//h coll
if (place_meeting(x + hsp + 8, y, oBlock) or place_meeting(x + hsp - 8, y, oBlock))
{
	if (canjump = 1)
		{
	    vsp = jumpforce;
		canjump = 0;
		alarm_set(2,60);
		}
}

	
if (place_meeting(x + hsp, y, oBlock))
{
    while (!place_meeting(x + sign(hsp), y, oBlock))
    {
        x = x + sign(hsp);
    }
	    hsp = -hsp;
}
x += hsp;


//v coll
 vsp = vsp + grv;
if (place_meeting(x, y + vsp, oBlock))
{
    while (!place_meeting(x, y + sign(vsp), oBlock))
    {
        y = y + sign(vsp);
    }
    vsp = -vsp/2;
}
else
{
    // Apply vertical
    y = y + vsp;
}

if (distance_to_object(oPlayer) <= 96)
	{
		if (oPlayer.x > x)
			{
				hsp = 2;
			}
		if (oPlayer.x < x)
			{
				hsp = -2;
			}
	}
if (distance_to_object(oPlayer) <= 10)
	{
		hsp = 0;
		sprite_index = sGolemAttack;
	}


if (hsp > 0) {
    image_xscale = -1;
} else if (hsp < 0) {
    image_xscale = 1;
}
