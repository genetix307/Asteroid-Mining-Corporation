draw_set_font(font_large_hud)
draw_text_shadow_color(6,4,"Mining Relics",c_white,c_white,c_silver,c_silver)
draw_line_colour(6,58,315,58,c_white,c_silver)
draw_line_colour(6,59,315,59,c_white,c_silver)

draw_line_colour(6,61,314,61,c_white,c_silver)
draw_line_colour(6,62,310,62,c_silver,c_silver)

//Draw Gems
draw_set_font(font_stats)
draw_sprite(spr_show_gem,0,15,780)             
draw_set_color(c_yellow)
draw_text_shadow_color(30,764,calc_number(store.gems),c_white,c_white,c_white,c_white) 








