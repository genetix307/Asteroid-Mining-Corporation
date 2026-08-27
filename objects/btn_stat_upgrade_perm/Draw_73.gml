draw_btn_color()
draw_self()

draw_set_font(font_buttons_small)
draw_text_shadow_color(x-128,y-28,myName,c_white,c_white,c_silver,c_silver)

draw_set_font(font_stats_tiniest)
if greyed_out=0 and capped=0 {
draw_text_shadow_color(x-128,y+5,string(preStat)+string(myStat)+string(postStat)+" to "+string(preStat)+string(showNextStat)+string(postStat),c_aqua,c_aqua,c_aqua,c_aqua)
}

if greyed_out=1 and mylvl>0 {
if capped=0 {
draw_text_shadow_color(x-112,y+5,string(preStat)+string(myStat)+string(postStat),c_aqua,c_aqua,c_aqua,c_aqua)
}
}

if capped=1 {
draw_text_shadow_color(x-112,y+5,string(preStat)+string(myStat)+string(postStat)+" Maxed",c_fuchsia,c_fuchsia,c_purple,c_purple)
}

draw_sprite(spr_show_gem,0,x+54,y+12)
draw_text_shadow_color(x+66,y+4,calc_number(myCost),c_yellow,c_yellow,c_yellow,c_yellow)

//Show Description
draw_set_font(font_stats_tiniest)
draw_text_shadow_color(x-126,y-46,myDesc,c_yellow,c_yellow,c_yellow,c_yellow)
