draw_btn_color()
draw_self()

draw_set_font(font_buttons)
draw_text_shadow_color(x-72,y-21,myName,c_white,c_white,c_silver,c_silver)

draw_set_font(font_stats_tiny)
draw_sprite(spr_show_gem,0,x+10,y-0)
draw_text_shadow_color(x+24,y-13,calc_number(store.card_cost),c_yellow,c_yellow,c_yellow,c_yellow)
