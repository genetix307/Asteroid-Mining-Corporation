draw_line_colour(x,y,instance_furthest(x,y,menu_powerup).x,instance_furthest(x,y,menu_powerup).y,c_white,c_silver)
draw_self()

if distance_to_object(cursor_menu)<10 {
draw_set_font(font_stats)
draw_text_shadow_color(x-70,y-60,string(type),c_white,c_white,c_silver,c_silver)
}