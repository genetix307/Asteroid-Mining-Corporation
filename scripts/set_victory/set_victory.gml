function set_victory(){

//store.hp=0 
hud.game_paused = 0
hud.game_victory = 1 
store.total_runs+=1
	
store.gems_earned_run=(store.current_stage*5)+(store.level*10)+ceil(store.enemies_killed_run/3)
store.gems_earned_run=store.gems_earned_run*store.tier //TIER MULTIPLIER
store.gems+=store.gems_earned_run
store.gems_earned=store.gems_earned_run

audio_stop_all()
audio_play_sound(bgm_victory,1,false)
//instance_create_depth(cx+152,cy+462,depth-100000,btn_endless)	
instance_create_depth(670,540,depth-100000,btn_castle)	
}
