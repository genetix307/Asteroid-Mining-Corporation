//function draw_stats(){
////Draw XP Level bar
//draw_set_font(font_stats)
//draw_set_alpha(.75)
//draw_set_color(c_gray)
//draw_rectangle(8,4,316,32,false)
//draw_set_alpha(.8)
//draw_set_color(c_black)
//draw_rectangle(8,4,316,32,true)
//draw_rectangle_colour(8,4,((store.xp/store.next_level)*300)+14,32,c_purple,c_purple,c_purple,c_purple,false)
//draw_set_alpha(1)              
//draw_text_shadow_color(12,1,"Level "+calc_number(store.level)+"       "+calc_number(floor(store.xp))+"/"+calc_number(ceil(store.next_level)),c_white,c_white,c_white,c_white)       
//draw_sprite(spr_stat_cap,1,7,16)
////Draw HP bar
//draw_set_font(font_stats)
//draw_set_alpha(.75)
//draw_set_color(c_gray)
//draw_rectangle(8,38,314,63,false)
//draw_set_alpha(.8)
//draw_set_color(c_black)
//draw_rectangle(8,37,314,64,true)
//draw_rectangle_colour(8,37,((store.hp/store.maxhp)*300)+14,63,c_green,c_lime,c_green,c_green,false)
//draw_set_alpha(1)              
//draw_text_shadow_color(12,33,"Health    "+calc_number(round(store.hp))+"/"+calc_number(round(store.maxhp)),c_white,c_white,c_white,c_white)       
//draw_sprite(spr_stat_cap,0,7,48)
//}

function draw_stats()
{
    // --- INIT SMOOTH VALUES (do this once somewhere too if needed) ---
    if (!variable_global_exists("hp_smooth")) global.hp_smooth = store.hp;
    if (!variable_global_exists("xp_smooth")) global.xp_smooth = store.xp;

    // --- SMOOTHING ---
    // HP: slow when losing, fast when gaining
    if (global.hp_smooth > store.hp)
        global.hp_smooth = lerp(global.hp_smooth, store.hp, 0.08);
    else
        global.hp_smooth = lerp(global.hp_smooth, store.hp, 0.25);

    // XP: always smooth (feels good when filling)
    global.xp_smooth = lerp(global.xp_smooth, store.xp, 0.15);

    // Snap to avoid infinite micro movement
    if (abs(global.hp_smooth - store.hp) < 0.5) global.hp_smooth = store.hp;
    if (abs(global.xp_smooth - store.xp) < 0.5) global.xp_smooth = store.xp;

    // --- PERCENT VALUES ---
    var hp_percent        = clamp(store.hp / store.maxhp, 0, 1);
    var hp_smooth_percent = clamp(global.hp_smooth / store.maxhp, 0, 1);

    var xp_percent        = clamp(store.xp / store.next_level, 0, 1);
    var xp_smooth_percent = clamp(global.xp_smooth / store.next_level, 0, 1);

    draw_set_font(font_stats);

    // =========================
    // 🎮 XP BAR
    // =========================

    draw_set_alpha(.75);
    draw_set_color(c_gray);
    draw_rectangle(8,4,316,32,false);

    draw_set_alpha(.8);
    draw_set_color(c_black);
    draw_rectangle(8,4,316,32,true);

    // Smooth fill (main)
    draw_set_color(c_purple);
    draw_rectangle(8,4,((xp_percent)*300)+14,32,false);

    // Optional subtle trailing (lighter purple behind)
    draw_set_alpha(0.4);
    draw_rectangle(8,4,((xp_smooth_percent)*300)+14,32,false);
    draw_set_alpha(1);

    draw_text_shadow_color(
        12,1,
        "Level " + calc_number(store.level) + "       " + calc_number(floor(store.xp)) + "/" + calc_number(ceil(store.next_level)),
        c_white,c_white,c_white,c_white
    );

    draw_sprite(spr_stat_cap,1,7,16);


    // =========================
    // ❤️ HP BAR
    // =========================

    draw_set_alpha(.75);
    draw_set_color(c_gray);
    draw_rectangle(8,38,314,63,false);

    draw_set_alpha(.8);
    draw_set_color(c_black);
    draw_rectangle(8,37,314,64,true);

    // 🔴 DAMAGE TRAIL (smooth value)
    draw_set_color(make_color_rgb(160,40,40));
    draw_rectangle(8,37,((hp_smooth_percent)*300)+14,63,false);

    // 🟢 ACTUAL HP
    var hp_col;
    if (hp_percent > 0.6) hp_col = make_color_rgb(60,220,80);
    else if (hp_percent > 0.3) hp_col = make_color_rgb(230,200,60);
    else hp_col = make_color_rgb(220,60,60);

    draw_set_color(hp_col);
    draw_rectangle(8,37,((hp_percent)*300)+14,63,false);

    // ✨ subtle shine
    draw_set_alpha(0.2);
    draw_set_color(c_white);
    draw_rectangle(10,39,312,50,false);
    draw_set_alpha(1);

    draw_text_shadow_color(
        12,33,
        "Health    " + calc_number(round(store.hp)) + "/" + calc_number(round(store.maxhp)),
        c_white,c_white,c_white,c_white
    );

    draw_sprite(spr_stat_cap,0,7,48);
}