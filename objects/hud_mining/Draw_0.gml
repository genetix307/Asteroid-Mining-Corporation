draw_set_font(font_med_hud)
draw_text_shadow_color(3,8,"Time: "+string(run_time/60),c_white,c_white,c_white,c_white)
if run_time<=180 and run_end=0 {draw_text_shadow_color(223,524,string(run_time/60),c_red,c_red,c_red,c_red)}

draw_text_shadow_color(28,34,string(store.gems),c_white,c_white,c_white,c_white)
draw_sprite(spr_show_gem,0,12,42)

if run_end>0 {
draw_set_alpha(.85)
draw_rectangle_colour(0,320,480,430,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
draw_set_font(font_large_hud)
draw_text_shadow_color(155,330,"End of Run",c_white,c_white,c_white,c_white)
draw_set_font(font_med_hud)
draw_text_shadow_color(168,370,"Earned "+calc_number(run_gems)+" Gems!",c_yellow,c_yellow,c_yellow,c_yellow)
draw_set_font(font_stats)
draw_text_shadow_color(190,392,"Tap to Continue",c_white,c_white,c_white,c_white)
}

