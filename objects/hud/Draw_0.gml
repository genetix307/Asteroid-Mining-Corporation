draw_set_font(font_med_hud)
draw_text_shadow_color(2,-4,"Time: "+string(run_time/60),c_silver,c_silver,c_silver,c_silver)
if run_time<=180 and run_end=0 {draw_text_shadow_color(590,480,string(run_time/60),c_red,c_red,c_red,c_red)}

draw_set_font(font_stats)
draw_text_shadow_color(28,36,calc_number(store.gems),c_yellow,c_yellow,c_yellow,c_yellow)
draw_sprite(spr_show_gem,0,12,52)

if run_end>0 {
draw_set_alpha(.85)
draw_rectangle_colour(0,320,room_width,440,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
draw_set_font(font_large_hud)
draw_text_shadow_color(490,320,"End of Run",c_white,c_white,c_white,c_white)
draw_set_font(font_med_hud)
draw_text_shadow_color(456,362,"Earned "+calc_number(run_gems)+" Gems!",c_yellow,c_yellow,c_yellow,c_yellow)
draw_set_font(font_stats)
draw_text_shadow_color(410,402,"Press any button to Continue",c_white,c_white,c_white,c_white)
}

//Show Combo
var _pulse = 1 + (combo_pulse * 0.08);

var _width = 300;
var _height = 28;

var _margin_right = 10;
var _margin_bottom = 10;

var _x = display_get_gui_width() - _width - _margin_right;
var _y = display_get_gui_height() - _height - _margin_bottom;

// Progress
var _progress = combo_value / combo_max;

// Get color based on current combo
var _color_index = combo_multiplier mod array_length(combo_colors);
var _color = combo_colors[_color_index];

// Background
draw_set_color(c_black);
draw_rectangle(
    _x - 3,
    _y - 3,
    _x + _width + 3,
    _y + _height + 3,
    false
);

draw_set_color(c_dkgray);
draw_rectangle(
    _x,
    _y,
    _x + _width,
    _y + _height,
    false
);

// Filled meter
draw_set_color(_color);

var _filled_width = _width * _progress;

// Pulse outward
var _pulse_height = _height * _pulse;

draw_rectangle(
    _x,
    _y - ((_pulse_height - _height) / 2),
    _x + _filled_width,
    _y + _height + ((_pulse_height - _height) / 2),
    false
);

draw_set_color(c_white);

draw_text(
    _x,
    _y - 32,
    "COMBO  " + string(combo_multiplier+1) + "x"
);

if (_progress > 0)
{
    var _shine_x = _x + ((current_time * 0.10) mod max(1, _filled_width));

    draw_set_alpha(0.35);
    draw_set_color(c_white);

    draw_rectangle(
        _shine_x,
        _y,
        min(_shine_x + 15, _x + _filled_width),
        _y + _height,
        false
    );

    draw_set_alpha(1);
}

//END COMBO