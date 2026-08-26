//Have one Item show backing and header
//if myName="Potion" {
//draw_set_alpha(.7)
//draw_rectangle_colour(746,390,1280,735,c_black,c_black,c_black,c_black,false)
//draw_rectangle_colour(746,390,1280,735,c_silver,c_silver,c_silver,c_silver,true)
//draw_set_alpha(1)
//draw_set_font(font_large_hud)
//draw_text_shadow_color(867,388,"Battle Items",c_yellow,c_yellow,c_yellow,c_yellow)
//}

draw_btn_color()
draw_self()

draw_set_font(font_stats)
draw_text_shadow_color(x-155,y-36,string(myName),c_white,c_white,c_silver,c_silver)
draw_set_font(font_stats_tiniest)
draw_text_shadow_color(x-155,y-6,myDesc,c_white,c_white,c_silver,c_silver)
draw_text_shadow_color(x-155,y+12,"Have x"+calc_number(have),c_white,c_white,c_silver,c_silver)
draw_sprite(spr_show_gem,0,x+111,y+20)
draw_text_shadow_color(x+124,y+12,cost,c_white,c_white,c_silver,c_silver)
