//Have one upgrade show backing and header
if myName="Luck" {
draw_set_alpha(.7)
draw_rectangle_colour(746,140,1280,735,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(746,140,1280,735,c_silver,c_silver,c_silver,c_silver,true)
draw_set_alpha(1)
draw_set_font(font_large_hud)
draw_text_shadow_color(847,138,"Tower Upgrades",c_yellow,c_yellow,c_yellow,c_yellow)
}

draw_btn_color()
draw_self()

draw_set_font(font_stats)
draw_text_shadow_color(x-126,y-25,myName,c_white,c_white,c_silver,c_silver)

draw_set_font(font_buttons_small)
if greyed_out=0 and capped=0 and mylvl>0 {
draw_text_color(x-120,y+3,string(preStat)+string(myStat)+string(postStat)+" to "+string(preStat)+string(showNextStat)+string(postStat),c_black,c_black,c_black,c_black,1)
draw_text_color(x-122,y+1,string(preStat)+string(myStat)+string(postStat)+" to "+string(preStat)+string(showNextStat)+string(postStat),c_aqua,c_aqua,c_aqua,c_aqua,1)
}

if greyed_out=1 and mylvl>0  {
if capped=0 {
draw_text_color(x-120,y+3,string(preStat)+string(myStat)+string(postStat),c_black,c_black,c_black,c_black,1)
draw_text_color(x-122,y+1,string(preStat)+string(myStat)+string(postStat),c_aqua,c_aqua,c_aqua,c_aqua,1)
}
}

if capped=1 {
draw_text_color(x-120,y+3,string(preStat)+string(myStat)+string(postStat)+" Maxed",c_black,c_black,c_black,c_black,1)
draw_text_color(x-122,y+1,string(preStat)+string(myStat)+string(postStat)+" Maxed",c_fuchsia,c_fuchsia,c_purple,c_purple,1)
}

if capped=0 and mylvl>0 {
draw_sprite(spr_show_gold,0,x+64,y+13)
draw_text_shadow_color(x+73,y+1,calc_number(myCost),c_yellow,c_yellow,c_yellow,c_yellow)
}