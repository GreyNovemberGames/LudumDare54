/// @desc
chosenNode = choose(oLeviathanArmNode1,oLeviathanArmNode2,oLeviathanArmNode3,oLeviathanArmNode4);
instance_create_depth(chosenNode.x,chosenNode.y,depth - 1,oLeviathanArm);
if (distance_to_object(oPlayer) <= 128)
	{
		alarm_set(0,random_range(96,256));
	}