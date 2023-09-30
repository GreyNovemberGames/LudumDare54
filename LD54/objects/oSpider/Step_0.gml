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