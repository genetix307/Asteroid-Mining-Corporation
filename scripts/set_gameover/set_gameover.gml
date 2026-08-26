function set_gameover(){

//store.hp=0 
hud.game_paused = 0
hud.game_over = 1 
store.total_runs+=1
	
store.gems_earned_run=(store.current_stage*10)+(store.level*10)+ceil(store.enemies_killed_run/2)
store.gems_earned_run=store.gems_earned_run*store.tier //TIER MULTIPLIER
store.gems+=store.gems_earned_run
store.gems_earned=store.gems_earned_run

audio_stop_all()
audio_play_sound(bgm_gameover,1,false)
instance_create_depth(670,540,depth-100000,btn_castle)		
}
