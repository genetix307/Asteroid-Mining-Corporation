draw_set_alpha(.25)
draw_circle_color(x,y+sprite_height/4,sprite_width/2,c_black,c_black,false)
draw_set_alpha(1)

draw_self()

if opened>1 and opened<100
{
draw_sprite(spr_show_gold,0,x-29,y-73)
draw_sprite(spr_show_gem,0,x-30,y-50)
draw_text_shadow_color(x-2,y-98,string(myGold),c_yellow,c_yellow,c_yellow,c_yellow)
draw_text_shadow_color(x-2,y-74,string(myGems),c_yellow,c_yellow,c_yellow,c_yellow)
draw_text_shadow_color(x-2,y-54,string(myArrow)+" x"+string(myArrowCount),c_yellow,c_yellow,c_yellow,c_yellow)
}