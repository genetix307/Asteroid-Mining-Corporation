// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function input_any(){
//Gamepad
if gamepad_button_check_pressed(0,gp_face1) or gamepad_button_check_pressed(0,gp_face2) or gamepad_button_check_pressed(0,gp_face3) or gamepad_button_check_pressed(0,gp_face4)
{
return true;
}

//Keyboard
if keyboard_check_pressed(vk_anykey) or device_mouse_check_button(0,mb_any)
{
return true;
}
}