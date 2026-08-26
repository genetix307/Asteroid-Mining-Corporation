//Stage lighting/misc
//if store.bloodmoon=1 {draw_set_alpha(.35) draw_rectangle_color(0,0,room_width,420,c_orange,c_orange,c_red,c_red,false) draw_set_alpha(1)}

//Draw Paused
if hud.game_paused=1 {
draw_set_alpha(.9)
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
}

if hud.game_paused=1 and instance_number(btn_specialevents)<1 {
draw_set_font(font_large_hud)
draw_text_shadow_color(498,14,"Lone Tower",c_yellow,c_yellow,c_orange,c_orange)
draw_line_color(8,940,155,940,c_yellow,c_yellow)
draw_line_color(325,940,472,940,c_yellow,c_yellow)
if instance_number(btn_lvl_upgrade)<=0 {
draw_set_font(font_med_hud)
draw_text_shadow_color(1050,35,"Settings",c_teal,c_teal,c_teal,c_teal)
draw_line_color(1040,80,1210,80,c_teal,c_teal)
draw_line_color(1050,86,1200,86,c_teal,c_teal)
}

//Show Stat upgrade header 
if instance_number(btn_stat_upgrade)>0 {
draw_text_color(580,346,"Upgrade your build",c_black,c_black,c_black,c_black,1)
draw_text_color(578,344,"Upgrade your build",c_yellow,c_yellow,c_orange,c_orange,1)	
}

}

//Show Tutorial
if show_tutorial>0 and game_paused=0 {
draw_set_alpha(show_tutorial)
draw_rectangle_color(430,100,850,270,c_blue,c_blue,c_navy,c_navy,false)
draw_rectangle_color(430,100,850,270,c_white,c_white,c_silver,c_silver,true)
draw_set_font(font_buttons_med)
draw_text_ext_color(436,106,tutorial,26,404,c_white,c_white,c_silver,c_silver,show_tutorial)
draw_set_alpha(1)
}

//Draw Fade
if show_fade>0 {
draw_set_alpha(show_fade)
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
}

//Draw Stats (HP/XP/etc)
draw_stats()

//draw_set_font(font_large_hud)
//draw_text_color(2,2,"$"+calc_number(store.run_score),c_lime,c_lime,c_lime,c_lime,1)

//Draw Current Stage Banner
if show_stage>0 {
draw_set_alpha(show_stage)          
draw_set_font(font_large_hud)
draw_text_shadow_color(420+banner_gap,467,string(store.current_area),c_white,c_white,c_white,c_white)  
draw_set_font(font_med_hud)
draw_text_shadow_color(602,515,"Day "+string(store.current_stage),c_white,c_white,c_white,c_white)  
draw_set_color(c_silver)
draw_line(474,467,819,467)
draw_line(474,515,819,515)
}

//Draw Lower HUD back bars
draw_set_alpha(.80)
draw_rectangle_colour(0,706,100,733,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(0,736,170,763,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(0,766,640,793,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)

//Draw Current Stage & tier
draw_set_font(font_stats)
draw_set_color(c_black)
draw_text(14,734,"Round "+string(store.current_stage)+"/"+string(rounds))
draw_text(14,708,"Tier "+string(store.tier))
draw_set_color(c_white)
draw_text(12,732,"Round "+string(store.current_stage)+"/"+string(rounds))
draw_set_color(c_aqua)
draw_text(14,706,"Tier "+string(store.tier))

//Draw Gold
draw_set_font(font_stats)
draw_sprite(spr_show_gold,0,18,780)      
draw_set_color(c_yellow)
draw_text_shadow_color(30,764,calc_number(store.gold),c_white,c_white,c_white,c_white) 
//Draw Gems
draw_set_font(font_stats)
draw_sprite(spr_show_gem,0,136,780)             
draw_set_color(c_yellow)
draw_text_shadow_color(151,764,calc_number(store.gems),c_white,c_white,c_white,c_white) 
//Draw Enemies Slain
draw_set_font(font_stats)
draw_sprite(spr_icon_skull,0,250,780)             
draw_set_color(c_yellow)
draw_text_shadow_color(263,764,calc_number(store.enemies_killed_run),c_white,c_white,c_white,c_white) 

//Draw Current Arrow
draw_text_shadow_color(356,764,string(hud.current_arrow)+" x"+calc_number(hud.current_arrow_count),c_white,c_white,c_white,c_white) 

//Draw Active Status
if game_paused=0 and game_over=0 {
draw_set_font(font_stats_tiny)
if store.status_focuspill>0 {draw_sprite(spr_item_focuspill,0,370,15) draw_text_shadow_color(382,0,string(store.status_focuspill),c_white,c_white,c_silver,c_silver)}
if store.status_luckyclover>0 {draw_sprite(spr_item_clover,0,420,15) draw_text_shadow_color(432,0,string(store.status_luckyclover),c_white,c_white,c_silver,c_silver)}
if store.status_vampirefang>0 {draw_sprite(spr_item_vampirefang,0,470,15) draw_text_shadow_color(482,0,string(store.status_vampirefang),c_white,c_white,c_silver,c_silver)}
if store.status_lampoil>0 {draw_sprite(spr_item_wisdompotion,0,520,15) draw_text_shadow_color(532,0,string(store.status_lampoil),c_white,c_white,c_silver,c_silver)}
if store.status_mirror>0 {draw_sprite(spr_item_mirror,0,570,15) draw_text_shadow_color(582,0,string(store.status_mirror),c_white,c_white,c_silver,c_silver)}
if store.status_healingsalve>0 {draw_sprite(spr_item_healingsalve,0,620,15) draw_text_shadow_color(632,0,string(store.status_healingsalve),c_white,c_white,c_silver,c_silver)}
if store.status_vampirefang>0 {draw_sprite(spr_item_vampirefang,0,670,15) draw_text_shadow_color(682,0,string(store.status_vampirefang),c_white,c_white,c_silver,c_silver)}
if store.status_monsterlure>0 {draw_sprite(spr_item_lure,0,720,15) draw_text_shadow_color(732,0,string(store.status_monsterlure),c_white,c_white,c_silver,c_silver)}
}

//gameover
if game_over = 1 {
	draw_set_alpha(.8)
	draw_set_color(c_black)
	draw_rectangle(0,0,room_width,room_height,false)
	draw_set_alpha(1)
	draw_sprite(spr_endround_backdrop,0,460,160)
	draw_set_font(font_med_hud)
    draw_text_shadow_color(530,173,"Game Statistics",c_lime,c_lime,c_lime,c_lime)
	draw_set_font(font_stats)
    draw_text_shadow_color(465,230,"Round Reached: "+string(store.current_stage),c_white,c_white,c_silver,c_silver)
	draw_text_shadow_color(465,260,"Levels Gained: "+string(store.level),c_white,c_white,c_silver,c_silver)
	draw_text_shadow_color(465,290,"Enemies Slain: "+string(store.enemies_killed_run),c_white,c_white,c_silver,c_silver)
	//Show Gems bonuses
    draw_text_shadow_color(715,230,"+"+string(round(store.current_stage*10))+" gems",c_yellow,c_yellow,c_yellow,c_orange)
	draw_text_shadow_color(715,260,"+"+string(round(store.level*10))+" gems",c_yellow,c_yellow,c_yellow,c_orange)
	draw_text_shadow_color(715,290,"+"+string(ceil(store.enemies_killed_run/2))+" gems",c_yellow,c_yellow,c_yellow,c_orange)
	draw_set_font(font_buttons)
	draw_text_shadow_color(515,329,"Tier Multiplier: x"+string(store.tier),c_white,c_white,c_silver,c_silver)
	draw_text_shadow_color(515,362,"Bonus Gems: "+string(store.gems_earned_run),c_yellow,c_yellow,c_yellow,c_orange)
	//Show end message
	draw_text_shadow_color(483,405,"Your run has ended but\nthe journey never ends!",c_lime,c_lime,c_lime,c_lime)
}

//Victory
if game_victory = 1 {
	draw_set_alpha(.8)
	draw_set_color(c_black)
	draw_rectangle(0,0,room_width,room_height,false)
	draw_set_alpha(1)
	draw_sprite(spr_endround_backdrop,0,460,160)
	draw_set_font(font_med_hud)
    draw_text_shadow_color(556,173,"Victory Ole!",c_lime,c_lime,c_lime,c_lime)
	draw_set_font(font_stats)
    draw_text_shadow_color(465,230,"Round Reached: "+string(store.current_stage-1),c_white,c_white,c_silver,c_silver)
	draw_text_shadow_color(465,260,"Levels Gained: "+string(store.level),c_white,c_white,c_silver,c_silver)
	draw_text_shadow_color(465,290,"Enemies Slain: "+string(store.enemies_killed_run),c_white,c_white,c_silver,c_silver)
	//Show Gems bonuses
    draw_text_shadow_color(723,230,"+"+string(round(store.current_stage*5))+" gems",c_yellow,c_yellow,c_yellow,c_orange)
	draw_text_shadow_color(723,260,"+"+string(round(store.level*10))+" gems",c_yellow,c_yellow,c_yellow,c_orange)
	draw_text_shadow_color(723,290,"+"+string(ceil(store.enemies_killed_run/3))+" gems",c_yellow,c_yellow,c_yellow,c_orange)
	draw_set_font(font_buttons)
	draw_text_shadow_color(515,329,"Tier Multiplier: x"+string(store.tier),c_white,c_white,c_silver,c_silver)
	draw_text_shadow_color(515,362,"Bonus Gems: "+string(store.gems_earned_run),c_yellow,c_yellow,c_yellow,c_orange)
	//Show end message
	draw_text_shadow_color(483,405,"Excellent work, you've\ndefended your post well!",c_lime,c_lime,c_lime,c_lime)
}