/// @desc
if (keyboard_check(ord("E")))
	{
		if (distance_to_object(oPlayer) < 32)
			{
				image_index = 1;
				instance_destroy(myblock1);
				instance_destroy(myblock2);
				instance_destroy(myblock3);
			}
	}