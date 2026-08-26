draw_set_alpha(.25)
draw_circle_color(x,y+sprite_height/4,sprite_width/2,c_black,c_black,false)
draw_set_alpha(1)

draw_self()

//Show Ranges
// Genetix Studio
draw_set_alpha(.2)
draw_set_color(c_aqua)
draw_set_circle_precision(64);
draw_circle(x,y,store.attack_range+13,true)
draw_circle(x,y,store.attack_range+12,true)
draw_circle(x,y,store.attack_range+11,true)
draw_set_color(c_teal)
draw_circle(x,y,store.attack_range+8,true)
draw_circle(x,y,store.attack_range+9,true)
draw_set_color(c_aqua)
draw_circle(x,y,store.attack_range+5,true)
draw_circle(x,y,store.attack_range+6,true)
draw_circle(x,y,store.attack_range+7,true)
draw_set_alpha(1)

//Show touch
if show_touch>.12
{
draw_set_alpha(show_touch)
draw_line_color(x-2,y,device_mouse_x(0),device_mouse_y(0),c_aqua,c_aqua)
draw_line_color(x+2,y,device_mouse_x(0),device_mouse_y(0),c_aqua,c_aqua)
draw_set_alpha(1)
}