//Draw Paused
if cursor_menu.game_paused=1 {
draw_set_alpha(.9)
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
}

draw_self()

var cam = view_camera[0];

// Get camera position in the room
var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);

//if room=rm_worldmap {
////draw_set_font(font_stats)
////draw_text_shadow_color(4,765,"Day "+string(store.world_day),c_white,c_white,c_silver,c_silver)

////Draw Fade
//if show_fade>0 {
//draw_set_alpha(show_fade)
//draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
//draw_set_alpha(1)
//}

//}

