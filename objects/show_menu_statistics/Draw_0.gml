draw_set_font(font_large_hud)
draw_text_shadow_color(6,4,"Game Statistics",c_white,c_white,c_silver,c_silver)
draw_line_colour(6,48,365,48,c_white,c_silver)
draw_line_colour(6,49,365,49,c_white,c_silver)

draw_line_colour(6,51,364,51,c_white,c_silver)
draw_line_colour(6,52,360,52,c_silver,c_silver)

/////////////////////CALC TIME PLAYED
// store.playtime increments once every 60 frames
// meaning it represents TOTAL SECONDS played
var total_seconds = store.playtime;
var minutes = total_seconds div 60;
var seconds = total_seconds mod 60;
// Add leading zero to seconds
var seconds_text = string(seconds);

if (seconds < 10)
{
    seconds_text = "0" + seconds_text;
}

// Final formatted string
var time_text = string(minutes) + ":" + seconds_text;
// Draw it
//draw_text(x, y, time_text);

draw_set_font(font_stats)
draw_text_shadow_color(316,180,"Total Runs: "+calc_number(store.total_runs),c_white,c_white,c_white,c_white)
draw_text_shadow_color(316,210,"Enemies Slain: "+calc_number(store.enemies_slain),c_white,c_white,c_white,c_white)
draw_text_shadow_color(316,240,"Bosses Slain: "+calc_number(store.bosses_slain),c_white,c_white,c_white,c_white)
draw_text_shadow_color(316,270,"Gems Earned: "+calc_number(store.gems_earned),c_white,c_white,c_white,c_white)
draw_text_shadow_color(316,300,"Gold Earned: "+calc_number(store.gold_earned),c_white,c_white,c_white,c_white)
draw_text_shadow_color(316,330,"Critical Hits: "+string(store.criticals),c_white,c_white,c_silver,c_silver)
draw_text_shadow_color(316,360,"Hits Reflected: "+string(store.blocks),c_white,c_white,c_silver,c_silver)
draw_text_shadow_color(316,390,"Lifesteals: "+string(store.lifesteals),c_white,c_white,c_silver,c_silver)
//draw_text_shadow_color(316,420,"Multishots: "+string(store.multishots),c_white,c_white,c_silver,c_silver)
draw_text_shadow_color(316,420,"Damage Dealt: "+string(calc_number(store.damage_dealt)),c_white,c_white,c_silver,c_silver)
draw_text_shadow_color(316,450,"Damage Dealt in single Hit: "+string(calc_number(store.damage_dealt_hit)),c_white,c_white,c_silver,c_silver)
draw_text_shadow_color(316,480,"Damage Absorbed: "+string(calc_number(store.absorbed)),c_white,c_white,c_silver,c_silver)
draw_text_shadow_color(316,510,"HP Regenerated: "+string(calc_number(store.regened)),c_white,c_white,c_silver,c_silver)
draw_text_shadow_color(316,540,"Crystals Mined: "+calc_number(store.crystals_mined),c_white,c_white,c_white,c_white)
draw_text_shadow_color(316,570,"Mushrooms Harvested: "+calc_number(store.mushrooms_harvested),c_white,c_white,c_white,c_white)
draw_text_shadow_color(316,600,"Quests Completed: "+calc_number(check_quests_completed()),c_white,c_white,c_white,c_white)
draw_text_shadow_color(316,630,"Playtime: "+string(time_text),c_white,c_white,c_white,c_white) //Look at zombie games forformatting
draw_text_shadow_color(316,660,"Secrets Found: "+calc_number(store.secrets_found),c_white,c_white,c_white,c_white)
