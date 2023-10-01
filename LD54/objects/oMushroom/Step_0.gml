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
    vsp = 0;
	
}
else
{
    // Apply vertical
    y = y + vsp;
}

if (place_meeting(x, y + 1, oBlock))
{
 if (hsp > 0)
	{
	 hsp = 1;
	}
 if (hsp < 0)
	{
	 hsp = -1;
	}
    if (canjump = 1)
    {
        // Perform the initial jump
		if (distance_to_object(oPlayer) <= 200) {audio_play_sound(sMush,1,0);}
		hsp = hsp*3;
        vsp = jumpforce;
        grv = 0;
        alarm_set(2, 5);
		canjump = 0;
		alarm_set(3,random_range(60,200));
    }
}
