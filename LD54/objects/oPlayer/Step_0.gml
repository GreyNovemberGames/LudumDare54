
var onLadder = false;


key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

var move = key_right - key_left;

if (dashing = false)
{
hsp = move * walksp;
}

onLadder = place_meeting(x, y, oLadder);


if (onLadder)
{
    if (key_up)
    {
        vsp = -walksp; // Climb up
    }
    else if (key_down)
    {
        vsp = walksp; // Climb down
    }
    else
    {
        vsp = 0; // stop climbing if no vertical movement keys are pressed
    }
}




// Jumping 
if (hp > 0)
{
if (place_meeting(x, y + 1, oBlock))
{
    // Reset double jump when on the floor
    doubleJumped = false;

    if (key_jump)
    {
        // Perform the initial jump
        vsp = jumpforce;
        grv = 0;
        alarm_set(0, 5);
    }
}
else if (key_jump && !doubleJumped)
{
    // Perform double jump
    vsp = jumpforce;
    grv = 0;
    alarm_set(0, 5);
    alarm_set(1, 1);
    doubleJumped = true;
}
}


// Horizontal collide
if (hp > 0)
{
if (place_meeting(x + hsp, y, oBlock))
{
    while (!place_meeting(x + sign(hsp), y, oBlock))
    {
        x = x + sign(hsp);
    }
	if (dashing = false)
	{
	    hsp = 0;
	}
	if (dashing = true)
		{
			//ADD SPARK ANIMATION
			hsp = -hsp/2;
			dashing = false;
			instance_destroy(oDash);
		}
}
if (collision_point(x,y - 5,oWebs,1,1))
	{x = x + hsp/3;}
else
	{x = x + hsp;}

}
// Vertical collide
if (!onLadder and dashing = false)
{
    vsp = vsp + grv;
}

if (place_meeting(x, y + vsp, oBlock))
{
    while (!place_meeting(x, y + sign(vsp), oBlock))
    {
        y = y + sign(vsp);
    }
    vsp = 0;
}
else if (onLadder)
{
  
    y = y + vsp;
}
else
{
    // Apply vertical collision if not on a ladder
    y = y + vsp;
}
//sprite flip
if (hsp > 0 and hp > 0) {
    image_xscale = 1;
} else if (hsp < 0) {
    image_xscale = -1;
}

//attacking
if (hp > 0)
{
if (mouse_check_button_pressed(mb_left) and attacking = false and dashing = false and diving = false and place_meeting(x, y + 1, oBlock)) 
{
	instance_create_depth(x * image_xscale + 1,y,depth - 1,oAttack)
	attacking = true;
}

//dashing
if (mouse_check_button_pressed(mb_right) and attacking = false and dashing = false and diving = false) 
{
	instance_create_depth(x * image_xscale + 1,y,depth,oDash)
	hsp = (20 * image_xscale);
	dashing = true;
	
}
if (dashing = true)
	{vsp = 0}

//diving
if (mouse_check_button_pressed(mb_left) and attacking = false and dashing = false and diving = false and !place_meeting(x, y + 1, oBlock)) 
{
	instance_create_depth(x * image_xscale + 1,y,depth,oDive)
	vsp = 10;
	diving = true;
}
}

//animation (at end i think)

	
if (vsp > 0)
	{
	sprite_index = sPlayerFall;		
	}

if (vsp < 0)
	{
	sprite_index = sPlayerJump;
	}

	
	if (attacking = true)
		{
			sprite_index = sPlayerAttack;
			exit;
		}
	if (dashing = true)
		{
			sprite_index = sPlayerAttack;
			exit;
		}
	if (diving = true)
		{
			sprite_index = sPlayerFall;
			exit;
		}
	if (attacking = false and dashing = false and diving = false and hp > 0 and vsp = 0 and sprite_index != sPlayer)
		{
			sprite_index = sPlayer;
		}
		if (x = xprev)
			{image_speed = 0; image_index = 0;}
		else
			{image_speed = 1;}
	//health
if (hp <=0)
	{
		
		sprite_index = sPlayerDead;
		if (alarm_get(4) = -1)
			{alarm_set(4, 120);}
	}