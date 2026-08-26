// Smooth oscillation using time
var pulse = 0.5 + 0.5 * sin(current_time / 500); 
var floatY = 8 * sin(current_time / 1500); 

// Draw glow layer (slightly bigger and tinted)
draw_set_alpha(0.2 + 0.3 * pulse);
draw_sprite_ext(sprite_index, image_index, x, y + floatY, 1.1, 1.1, 0, c_white, 1);

// Main sprite
draw_set_alpha(1);
//draw_sprite_ext(sprite_index, image_index, x, y + floatY, 1, 1, 0, c_white, 1);

if fade > 0 {
	draw_set_color(c_black)
	draw_set_alpha(fade)
	draw_rectangle(0,0,room_width,room_height,false)	
	draw_set_alpha(1)
}



