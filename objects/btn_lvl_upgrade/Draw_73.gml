draw_btn_color()
draw_self()

draw_set_font(font_buttons)
draw_text_color(x-146,y-50,myHeader,c_yellow,c_yellow,c_orange,c_orange,1)
draw_set_font(font_buttons_small)
draw_set_color(c_white)
draw_text_ext(x-144,y-18,myInfo,18,285)
draw_set_color(c_aqua)
draw_text_ext(x+27,y+19,myLevel,18,285)
if isNew=1 {
draw_text_color(x+90,y-45,"New!",c_yellow,c_yellow,c_orange,c_orange,1)
}



