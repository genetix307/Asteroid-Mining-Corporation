draw_set_font(font_large_hud)
//draw_text_shadow_color(6,4,"Job Promotion",c_white,c_white,c_silver,c_silver)
draw_line_colour(6,58,315,58,c_white,c_silver)
draw_line_colour(6,59,315,59,c_white,c_silver)

draw_line_colour(6,61,314,61,c_white,c_silver)
draw_line_colour(6,62,310,62,c_silver,c_silver)

//Draw Gems
draw_set_font(font_stats)
draw_sprite(spr_show_gem,0,30,780)             
draw_set_color(c_yellow)
draw_text_shadow_color(45,764,calc_number(store.gems),c_white,c_white,c_white,c_white) 

//Draw Keys
draw_set_font(font_stats)
draw_sprite(spr_show_key,0,170,780)             
draw_set_color(c_yellow)
draw_text_shadow_color(189,764,calc_number(store.keys),c_white,c_white,c_white,c_white)

draw_set_alpha(.85)
draw_rectangle_colour(0,320,room_width,440,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
draw_set_font(font_large_hud)
draw_text_shadow_color(490,320,"Career Advancement",c_white,c_white,c_white,c_white)
draw_set_font(font_med_hud)
draw_text_shadow_color(436,362,"Earned "+calc_number(gem_reward)+" Gems and 2 Keys",c_yellow,c_yellow,c_yellow,c_yellow)
draw_set_font(font_stats)
draw_text_shadow_color(350,402,"Good work employee #345612, now get back out there!",c_white,c_white,c_white,c_white)






