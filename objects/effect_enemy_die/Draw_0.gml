// safety
if (img == -1) exit;

// progress 0 → 1
var t = 1 - (life / max_life);

// stronger fade curve (lingers then disappears fast)
var alpha = power(1 - t, 1.5);

// BIGGER vertical stretch
var yscale = img_yscale + t * 1.0;

// slight horizontal squash (adds style)
var xscale = img_xscale * (1 - t * 0.2);

// stronger upward drift
var y_offset = t * -16;

// more aggressive flicker
if (life mod 2 == 0)
{
    // 🔴 red ghost trail
    gpu_set_blendmode(bm_add);
    draw_set_alpha(0.35 * alpha);
    draw_set_color(make_color_rgb(255, 80, 80));

    draw_sprite_ext(
        img,
        img_index,
        x,
        y + y_offset,
        xscale,
        yscale,
        img_angle,
        c_white,
        alpha
    );

    // ⚪ bright core flash (center)
    draw_set_alpha(0.6 * alpha);
    draw_set_color(c_white);

    draw_sprite_ext(
        img,
        img_index,
        x,
        y + y_offset,
        xscale * 0.9,
        yscale * 0.9,
        img_angle,
        c_white,
        alpha
    );

    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
    draw_set_color(c_white);
}