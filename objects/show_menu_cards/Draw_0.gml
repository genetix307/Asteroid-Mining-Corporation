draw_set_font(font_large_hud)
draw_text_shadow_color(6,4,"Card Collection",c_white,c_white,c_silver,c_silver)
draw_line_colour(6,48,365,48,c_white,c_silver)
draw_line_colour(6,49,365,49,c_white,c_silver)

draw_line_colour(6,51,364,51,c_white,c_silver)
draw_line_colour(6,52,360,52,c_silver,c_silver)

//Draw Gems
draw_set_font(font_stats)
draw_sprite(spr_show_gem,0,15,780)             
draw_set_color(c_yellow)
draw_text_shadow_color(30,764,calc_number(store.gems),c_white,c_white,c_white,c_white) 

draw_set_color(c_yellow)
draw_text(34,60,"Active Cards")
draw_text(34,280,"Card Library")
draw_line_color(38,267,456,267,c_white,c_silver)

draw_set_font(font_stats)
draw_set_color(c_silver)
draw_text(298,55,"(Click to Unlock or Unequip)")
draw_text(298,288,"(Click a card to Select it)")

//draw_set_font(font_med_hud)
//draw_text_shadow_color(316,274,"You don't have any Cards yet.\nCheck back soon to build a deck\nof powerful Cards you can use in battle!",c_white,c_white,c_white,c_white)










