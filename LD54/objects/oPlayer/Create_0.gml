/// @desc
if (!instance_exists(oSpeech))
	{
		speech = instance_create_depth(x,y,depth -5, oSpeech);
	}
hp = 100;
hitcd = 0;
xprev = x;
yprev = y;
flashing = false;
knockback = 5;
hsp = 0;
vsp = 0;
grv = 1;
walksp = 3;
jumpforce = -7;
doubleJumped = false;
attacking = false;
diving = false;
dashing = false;
image_speed = 1;