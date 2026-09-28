draw_line_colour(x,y,instance_furthest(x,y,menu_powerup).x,instance_furthest(x,y,menu_powerup).y,c_white,c_silver)
draw_self()
if locked=1 {draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,1)}

if distance_to_object(cursor_menu)<10 {
draw_set_font(font_stats)
draw_text_shadow_color(x-70,y-60,string(type),c_white,c_white,c_silver,c_silver)

draw_set_font(font_stats)
draw_text_shadow_color(270,710,string(type),c_white,c_white,c_silver,c_silver)
draw_set_font(font_stats_tiny)
if locked=1 {draw_text_shadow_color(500,710,"(Locked - Click to unlock for 3 Keys)",c_orange,c_orange,c_orange,c_orange)}
draw_text_shadow_color(270,738,string(myDesc),c_yellow,c_yellow,c_yellow,c_yellow)
}