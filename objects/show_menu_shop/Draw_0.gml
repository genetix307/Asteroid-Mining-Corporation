draw_set_font(font_large_hud)
draw_text_shadow_color(6,4,"Item Shop",c_white,c_white,c_silver,c_silver)
draw_line_colour(6,48,215,48,c_white,c_silver)
draw_line_colour(6,49,215,49,c_white,c_silver)

draw_line_colour(6,51,214,51,c_white,c_silver)
draw_line_colour(6,52,210,52,c_silver,c_silver)

//Draw Gems
draw_set_font(font_stats)
draw_sprite(spr_show_gem,0,15,780)             
draw_set_color(c_yellow)
draw_text_shadow_color(30,764,calc_number(store.gems),c_white,c_white,c_white,c_white) 








