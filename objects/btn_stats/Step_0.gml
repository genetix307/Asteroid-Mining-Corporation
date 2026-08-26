
if instance_number(hud)>0 {
if hud.game_paused=0 {instance_destroy()}
}

if input_a() {
alarm[0]=2	
}

var cam = view_camera[0];

// Get camera position in the room
var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);

// Lock the button to a position inside the camera view
//x = cx + x_off;
//y = cy + y_off;