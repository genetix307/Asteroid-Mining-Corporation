draw_set_font(font_med_hud)
draw_text_shadow_color(2,-4,"Time: "+string(run_time/60),c_silver,c_silver,c_silver,c_silver)
if run_time<=180 and run_end=0 {draw_text_shadow_color(590,480,string(run_time/60),c_red,c_red,c_red,c_red)}

draw_set_font(font_stats)
draw_text_shadow_color(28,36,calc_number(store.gems),c_yellow,c_yellow,c_yellow,c_yellow)
draw_sprite(spr_show_gem,0,12,52)

if run_end>0 {
draw_set_alpha(.85)
draw_rectangle_colour(0,320,room_width,440,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
draw_set_font(font_large_hud)
draw_text_shadow_color(490,320,"End of Run",c_white,c_white,c_white,c_white)
draw_set_font(font_med_hud)
draw_text_shadow_color(456,362,"Earned "+calc_number(run_gems)+" Gems!",c_yellow,c_yellow,c_yellow,c_yellow)
draw_set_font(font_stats)
draw_text_shadow_color(410,402,"Press any button to Continue",c_white,c_white,c_white,c_white)
}

