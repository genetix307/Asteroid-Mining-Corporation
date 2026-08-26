if image_alpha>.5 {draw_sprite_ext(sprite_index,image_index,x+2,y+sprite_height+16,image_xscale,1,image_angle,c_black,.2)}

if hud.current_arrow="Precision Arrow" {draw_line_colour(x,y,tower.x,tower.y,c_yellow,c_orange)}
if hud.current_arrow="Flame Arrow" {draw_line_colour(x,y,tower.x,tower.y,c_orange,c_red)}
if hud.current_arrow="Frost Arrow" {draw_line_colour(x,y,tower.x,tower.y,c_aqua,c_teal)}
if hud.current_arrow="Heavy Arrow" {draw_line_colour(x,y,tower.x,tower.y,c_lime,c_maroon)}
if hud.current_arrow="Power Arrow" {draw_line_colour(x,y,tower.x,tower.y,c_silver,c_white)}
if hud.current_arrow="Vampiric Arrow" {draw_line_colour(x,y,tower.x,tower.y,c_fuchsia,c_maroon)}
if hud.current_arrow="Bomb Arrow" {draw_line_colour(x,y,tower.x,tower.y,c_grey,c_dkgray)}

draw_self()








