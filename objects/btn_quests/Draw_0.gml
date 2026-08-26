draw_btn_color()
draw_self()

draw_set_font(font_buttons_smaller)
draw_text_shadow_color(x-156,y-30,myDesc,c_white,c_white,c_silver,c_silver)
draw_text_shadow_color(x-156,y+7,string(round(current))+"/"+string(goal),c_yellow,c_yellow,c_orange,c_orange)

draw_set_font(font_stats_tiniest)
if collected=0 {draw_text_shadow_color(x+8,y+9,"Gem Reward: "+string(myReward),c_yellow,c_yellow,c_yellow,c_yellow)}
if collected=1 {draw_text_shadow_color(x+14,y+9,"Completed!",c_lime,c_lime,c_lime,c_lime)}

