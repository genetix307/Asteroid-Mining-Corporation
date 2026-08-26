// Genetix Studio
draw_self()


if opened = 0 {
draw_set_font(font_med_hud)
draw_set_color(c_yellow)
//draw_text(155,y+100,"Tap Card To Reveal") 
}

draw_card()

//Draw Gems
draw_set_font(font_stats)
draw_sprite(spr_show_gem,0,15,780)             
draw_set_color(c_yellow)
draw_text_shadow_color(30,764,calc_number(store.gems),c_white,c_white,c_white,c_white) 