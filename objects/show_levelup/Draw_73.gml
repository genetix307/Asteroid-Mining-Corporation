//if selected=1 {draw_rectangle_color(x-16,y-16,x+16,y+16,c_aqua,c_aqua,c_blue,c_blue,false)}
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

draw_sprite_ext(spr_effect_menu_ray,0,cx+600,cy+240,1.25,1,ray_angle,c_white,.15)
draw_sprite_ext(spr_effect_menu_ray,0,cx+600,cy+240,1,1,ray_angle+30,c_white,.15)
draw_sprite_ext(spr_effect_menu_ray,0,cx+600,cy+240,1.25,1,ray_angle+60,c_white,.15)
draw_sprite_ext(spr_effect_menu_ray,0,cx+600,cy+240,1,1,ray_angle+90,c_white,.15)
draw_sprite_ext(spr_effect_menu_ray,0,cx+600,cy+240,1.25,1,ray_angle+120,c_white,.15)
draw_sprite_ext(spr_effect_menu_ray,0,cx+600,cy+240,1,1,ray_angle+150,c_white,.15)
draw_sprite_ext(spr_effect_menu_ray,0,cx+600,cy+240,1.25,1,ray_angle+180,c_white,.15)
draw_sprite_ext(spr_effect_menu_ray,0,cx+600,cy+240,1,1,ray_angle+210,c_white,.15)
draw_sprite_ext(spr_effect_menu_ray,0,cx+600,cy+240,1.25,1,ray_angle+240,c_white,.15)
draw_sprite_ext(spr_effect_menu_ray,0,cx+600,cy+240,1,1,ray_angle+270,c_white,.15)
draw_sprite_ext(spr_effect_menu_ray,0,cx+600,cy+240,1.25,1,ray_angle+300,c_white,.15)
draw_sprite_ext(spr_effect_menu_ray,0,cx+600,cy+240,1,1,ray_angle+330,c_white,.15)


draw_set_font(font_large_hud)
draw_text_color(cx+484,cy+220,"Leveled Up!",c_white,c_white,c_silver,c_silver,1)
draw_line_color(cx+427,cy+220,cx+667,cy+220,c_purple,c_maroon)
draw_line_color(cx+427,cy+218,cx+667,cy+218,c_purple,c_maroon)
draw_line_color(cx+514,cy+275,cx+770,cy+275,c_purple,c_maroon)
draw_line_color(cx+514,cy+277,cx+770,cy+277,c_purple,c_maroon)

//draw_set_font(font_upgrades)
//draw_text_color(cx+385,cy+929,"Skip",c_red,c_red,c_maroon,c_maroon,1)


