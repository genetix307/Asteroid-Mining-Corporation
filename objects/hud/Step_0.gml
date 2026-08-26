if show_stage>0 {show_stage-=.01*store.game_speed }

//Stage Complete
//if stage_complete=1 and game_paused=0 {
//	show_fade+=.02*store.game_speed 
//	if show_fade>1.5 {store.current_stage+=1 store.enemy_base_level+=1 if store.current_stage>store.best_stage {store.best_stage=store.current_stage} room=rm_maingame}
//}

//Check Arrows
if current_arrow="Basic Arrow" {current_arrow_count=store.have_arrow_basic}
if current_arrow="Precision Arrow" {current_arrow_count=store.have_arrow_precision}
if current_arrow="Flame Arrow" {current_arrow_count=store.have_arrow_flame}
if current_arrow="Frost Arrow" {current_arrow_count=store.have_arrow_frost}
if current_arrow="Heavy Arrow" {current_arrow_count=store.have_arrow_heavy}
if current_arrow="Power Arrow" {current_arrow_count=store.have_arrow_power}
if current_arrow="Vampiric Arrow" {current_arrow_count=store.have_arrow_vampiric}
if current_arrow="Bomb Arrow" {current_arrow_count=store.have_arrow_bomb}

//Healing Salve Item
if check_healing_salve>0 and game_paused=0 and game_over=0 and store.game_speed>=1 and store.status_healingsalve>0
{
check_healing_salve-=1
if check_healing_salve<=0 {check_healing_salve=600 store.hp+=1}
}

//Gameover
if store.hp <= 0 and hud.game_over = 0
{
//if revive<=0 {set_gameover()}
//if revive >0 {revive=0 player_hp=player_max_hp*((10+(store.card_lvl_revive*15))/100) player.invincible = 150 audio_play_sound(sfx_arcade,1,false) repeat 3 instance_create_depth(random_range(player.x-5,player.x+5),random_range(player.y-5,player.y+5),depth,show_big_hit) instance_create_depth(player.x,player.y-8,depth-10,show_revived)}
set_gameover()
}

//Victory
if hud.game_victory=0 and store.current_stage>rounds
{
set_victory()	
}

//Tutorial
if show_tutorial>0 and game_paused=0 {show_tutorial-=.005}

//Fade In
if stage_complete=0 and show_fade>0 {show_fade-=.025*store.game_speed}

//Active maintenance
//if game_paused=0 {
//if store.active_template>0 {store.active_template-=1*store.game_speed}
//}
if store.hp>store.maxhp {store.hp=store.maxhp}
if store.hp<0 {store.hp=0}
