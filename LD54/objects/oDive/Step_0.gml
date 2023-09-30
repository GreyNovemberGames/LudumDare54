/// @desc
if (place_meeting(x, y + 10, oBlock))
	{
		instance_destroy();
		oPlayer.diving = false;
		oPlayer.vsp = -oPlayer.vsp/3;
	}
