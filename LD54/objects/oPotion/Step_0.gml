/// @desc
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