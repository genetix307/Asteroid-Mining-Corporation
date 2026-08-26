if boss=1 or distance_to_object(cursor_game)<48 {enemy_healthbar(type)}

draw_set_alpha(.25)
draw_circle_color(x,y+sprite_height/4,sprite_width/2,c_black,c_black,false)
draw_set_alpha(1)

if damaged<=0 {draw_self()}

if frozen>0 {
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_blue,1)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_aqua,1)
}

if onfire>0 {
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_orange,.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_yellow,.5)
draw_sprite(spr_effect_fire,0,x,y-30)
}

if damaged>0 {
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,1)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_red,1)
}



