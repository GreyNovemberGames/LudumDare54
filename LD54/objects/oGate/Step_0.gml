/// @desc
if (keyboard_check(ord("E")))
	{
		if (distance_to_object(oPlayer) < 32)
			{
				if (image_index = 0)
					{audio_play_sound(sGolemwalk,1,0);}
				image_index = 1;
				instance_destroy(myblock1);
				instance_destroy(myblock2);
				instance_destroy(myblock3);
			}
	}