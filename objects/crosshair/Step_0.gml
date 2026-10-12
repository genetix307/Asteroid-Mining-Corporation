
/// STEP EVENT

// ---- MOUSE INPUT ----
var mx = device_mouse_x(0);
var my = device_mouse_y(0);

var mouse_moved = (mx != last_mouse_x || my != last_mouse_y);
var mouse_clicked = mouse_check_button_pressed(mb_left);

// Update stored mouse position every frame
last_mouse_x = mx;
last_mouse_y = my;

// ---- CONTROLLER INPUT ----
var lx = gamepad_axis_value(0, gp_axislh);
var ly = gamepad_axis_value(0, gp_axislv);

var deadzone = 0.25;

var controller_moved =
    (abs(lx) > deadzone || abs(ly) > deadzone);

// ---- DETERMINE ACTIVE INPUT ----

// Mouse takes control when it moves or is clicked
if (mouse_moved || mouse_clicked)
{
    using_controller = false;
    mouse_idle_frames = 0;
    auto_aim = 0;

    x = mx;
    y = my;
}
// Controller takes control when the stick moves
else if (controller_moved)
{
    using_controller = true;
    mouse_idle_frames = 0;
    auto_aim = 0;

    x += lx * cursor_speed;
    y += ly * cursor_speed;
}
// Neither input is active
else
{
    mouse_idle_frames++;
}

// ---- AUTO AIM ----
if (store.relic_tball > 0)
{
    if (mouse_idle_frames >= 60)
    {
        auto_aim = 1;

        var target = instance_nearest(
            mine_ship.x,
            mine_ship.y,
            asteroid
        );

        if (target != noone)
        {
            x = target.x;
            y = target.y;
        }
    }
}

// ---- LIMITS ----
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

window_set_cursor(cr_none);