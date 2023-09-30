/// @desc
if (distance_to_object(oPlayer) <= 128 and alarm_get(0) <= 0)
	{
		alarm_set(0,random_range(64,96));
	
	}
if (distance_to_object(oPlayer) <= 128 and alarm_get(1) <= 0)
	{
		alarm_set(1,random_range(96,128));
		instance_create_depth(oLeviathanHeadNode.x,oLeviathanHeadNode.y,depth,oLeviathanHead);
	}
if (hp <= 0)
	{
		instance_destroy(oLeviathanHead);
		instance_destroy(oLeviathanArm);
		instance_destroy(oLeviathanArmNode1);
		instance_destroy(oLeviathanArmNode2);
		instance_destroy(oLeviathanArmNode3);
		instance_destroy(oLeviathanArmNode4);
		instance_destroy(oLeviathanHeadNode);
		instance_destroy(self);
	}