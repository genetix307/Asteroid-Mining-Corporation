var cam = view_camera[0];

// Get camera position in the room
var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);

// Lock the button to a position inside the camera view
//x = cx + x_off;
//y = cy + y_off;

// Genetix Studio
if cursor_menu.game_paused = 0 {image_index=0 draw_btn_color() draw_self()}
if cursor_menu.game_paused > 0 {image_index=1 draw_btn_color() draw_self()}