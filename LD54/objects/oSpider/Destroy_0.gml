/// @desc
audio_play_sound(sCreaturedeath,1,0);
var drop = random_range(1,20);
if (drop >= 17)
	{
		dropped = instance_create_depth(x,y - 32,oPlayer.depth,oPotion)
		dropped.vsp = -2;
	}