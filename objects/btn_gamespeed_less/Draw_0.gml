// Genetix Studio
if hud.game_over = 0 and hud.game_paused=0
{
draw_btn_color()
draw_self()
draw_set_font(font_stats)
draw_text_shadow_color(x+25,y-18,"x"+string(store.game_speed),c_white,c_white,c_silver,c_silver,1)
}