/// @desc Core Player Logic
// You can write your code in this editor

//Get playter inputs

//check if the key is pressed on the keyboard

key_a = keyboard_check(ord("A")); 
key_d = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate our movement
var _move = key_d - key_a;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oInvisibleWall)) and (key_jump)
{
	vsp = -jumpsp	
}


//Horizontal collision
if (place_meeting(x+hsp,y,oInvisibleWall))
{
	while (!place_meeting(x+sign(hsp),y,oInvisibleWall))
	{
	x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oInvisibleWall))
{
	while (!place_meeting(x,y+sign(vsp),oInvisibleWall))
	{
	y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oInvisibleWall))
	{
	sprite_index = sPlayerJ
	image_speed = 0

	}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayerI;
	}
	else
	{
		sprite_index = sPlayerW;
	}
}

if (hsp != 0) image_xscale = sign(hsp);

//Falling to death

if (y > 760)
	{
		game_restart()
	}
	
//Go to room 2

if (x > 1363)
	{
		room_goto(Room2)
	}
	
//Go to room 3 (End)
if (y > 540) and (x < -2)
	{
		room_goto(Room3)
	}