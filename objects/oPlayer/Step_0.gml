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

x = x + hsp;
