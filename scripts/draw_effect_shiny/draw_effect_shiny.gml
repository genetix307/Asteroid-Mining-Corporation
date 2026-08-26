function draw_effect_shiny(){
/// --- VERY SUBTLE GLOW PULSE ---
var pulse = 0.5 + 0.5 * sin(current_time * 0.004);

// super light, warm glow
gpu_set_blendmode(bm_add);
draw_set_alpha(0.12 * pulse);
draw_set_color(make_color_rgb(255, 230, 140));

draw_circle(x, y, sprite_width * 0.55, false);

gpu_set_blendmode(bm_normal);
draw_set_alpha(1);


/// --- SPARKLE (rare, quick flicker) ---
if (irandom(30) == 0)
{
    var sx = x + irandom_range(-6, 6);
    var sy = y + irandom_range(-6, 6);

    gpu_set_blendmode(bm_add);
    draw_set_alpha(0.9);
    draw_set_color(c_white);

    // tiny sparkle
    draw_circle(sx, sy, 2, false);

    // optional cross sparkle (feels nicer than just a dot)
    draw_line(sx - 2, sy, sx + 2, sy);
    draw_line(sx, sy - 2, sx, sy + 2);

    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}
}