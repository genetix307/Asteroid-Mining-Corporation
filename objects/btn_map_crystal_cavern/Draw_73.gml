// Smooth oscillation using time
var pulse = 0.5 + 0.5 * sin(current_time / 500); 
var floatY = 4 * sin(current_time / 1500); 

// Draw glow layer (slightly bigger and tinted)
draw_set_alpha(0.2 + 0.3 * pulse);
draw_sprite_ext(sprite_index, image_index, x, y + floatY, 1.1, 1.1, 0, c_white, 1);

// Main sprite
draw_set_alpha(1);

if image_index=2 {
draw_set_font(font_stats_tiny)
draw_text_shadow_color(x-68,y-55,myName,c_white,c_white,c_silver,c_silver)
}