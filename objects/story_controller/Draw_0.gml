draw_self()


if show_fade<=0 {
draw_set_alpha(show_frame)
draw_rectangle_color(200,140,1080,360,c_blue,c_blue,c_navy,c_navy,false)
draw_rectangle_color(200,140,1080,360,c_white,c_white,c_silver,c_silver,true)
draw_set_font(font_large_hud)
draw_text_ext_color(218,150,text_frame,44,740,c_black,c_black,c_black,c_black,show_frame)
draw_text_ext_color(216,148,text_frame,44,740,c_white,c_white,c_silver,c_silver,show_frame)
draw_set_alpha(1)
}

if show_fade>0 {
draw_set_alpha(show_fade)
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
}