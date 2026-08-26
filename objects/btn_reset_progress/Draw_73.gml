var cam = view_camera[0];

// Get camera position in the room
var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);

// Lock the button to a position inside the camera view
//x = cx + x_off;
//y = cy + y_off;


//draw_btn_color()
draw_self()

draw_set_font(font_stats_tiniest)
draw_text_shadow_color(x-44,y-18,myName,c_white,c_white,c_silver,c_silver)

