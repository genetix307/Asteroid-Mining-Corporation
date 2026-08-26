/// STEP EVENT

var mx = device_mouse_x(0);
var my = device_mouse_y(0);
var dist_mouse = point_distance(x, y, mx, my);

// Only allow mouse to take over if controller isn't being used
if (!using_controller)
{
    if (dist_mouse > 2 || mouse_check_button_pressed(mb_left))
    {
        using_controller = false;
        x = mx;
        y = my;
    }
}

// ---- MOUSE RETAKE LOGIC ----
if (mouse_check_button_pressed(mb_left))
{
    using_controller = false;

    // Move cursor to mouse instantly so there's no visual mismatch
    x = device_mouse_x(0);
    y = device_mouse_y(0);
}


// ---- CONTROLLER LOGIC ----
var lx = gamepad_axis_value(0, gp_axislh);
var ly = gamepad_axis_value(0, gp_axislv);

var deadzone = 0.25;

if (abs(lx) > deadzone || abs(ly) > deadzone)
{
    using_controller = true;

    // Move cursor freely
    x += lx * cursor_speed;
    y += ly * cursor_speed;
}


// ---- CONTROLLER CLICK ----
if (using_controller)
{
    //if (gamepad_button_check_pressed(0, gp_face1))
    //{
    //    // Find the topmost instance under the cursor
    //    var inst = instance_position(mouse_x, mouse_y, all);

    //    if (inst != noone)
    //    {
    //        with (inst)
    //        {
    //            event_perform(ev_mouse, ev_left_press)
	//			//audio_play_sound(sfx_boss_destroy,1,false)
    //        }
    //    }
    //}
}


// ---- LIMITS ----
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

//show_debug_message("CURSOR X: " + string(x) + "  MOUSE X: " + string(mouse_x));

window_set_cursor(cr_none);


//Show Fade
if show_fade>0 {show_fade-=.01}

//Check Pause
//if input_pause() and room=rm_worldmap {room=rm_menu_settings}

//Back to angle
//if room=rm_crystal_cavern and image_angle>0 {image_angle-=1}