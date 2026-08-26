// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function input_pause(){
//Gamepad
if gamepad_button_check_pressed(0,gp_start)
{
return true;
}

//Keyboard
if keyboard_check_pressed(vk_escape) 
{
return true;
}
}