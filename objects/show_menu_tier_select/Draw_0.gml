draw_set_font(font_large_hud)
draw_text_shadow_color(6,4,"Prepare for Battle!",c_white,c_white,c_silver,c_silver)
draw_line_colour(6,48,365,48,c_white,c_silver)
draw_line_colour(6,49,365,49,c_white,c_silver)

draw_line_colour(6,51,364,51,c_white,c_silver)
draw_line_colour(6,52,360,52,c_silver,c_silver)

var tmpBest1=0
var tmpBest2=0
var tmpBest3=0

if store.current_area="Estarian Woods" 
{
tmpBest1=store.tier1_estarianwoods_best
tmpBest2=store.tier2_estarianwoods_best
tmpBest3=store.tier3_estarianwoods_best
}

if store.current_area="Winter Hills" 
{
tmpBest1=store.tier1_winterhills_best
tmpBest2=store.tier2_winterhills_best
tmpBest3=store.tier3_winterhills_best
}

if store.current_area="Desolate Desert" 
{
tmpBest1=store.tier1_desolatedesert_best
tmpBest2=store.tier2_desolatedesert_best
tmpBest3=store.tier3_desolatedesert_best
}

if store.current_area="Dark Woods" 
{
tmpBest1=store.tier1_darkwoods_best
tmpBest2=store.tier2_darkwoods_best
tmpBest3=store.tier3_darkwoods_best
}


draw_set_font(font_stats)
draw_text_shadow_color(330,220,"Tier: "+string(store.tier),c_orange,c_orange,c_orange,c_orange)
draw_text_shadow_color(330,260,string(store.current_area),c_white,c_white,c_white,c_white)
draw_text_shadow_color(330,300,"Best Day Reached (Tier 1): "+string(tmpBest1-1),c_white,c_white,c_white,c_white)
draw_text_shadow_color(330,340,"Best Day Reached (Tier 2): "+string(tmpBest2-1),c_white,c_white,c_white,c_white)
draw_text_shadow_color(330,380,"Best Day Reached (Tier 3): "+string(tmpBest3-1),c_white,c_white,c_white,c_white)