game_paused=0

run_time=store.mine_time*60
run_end=0
run_gems=0

repeat store.mine_asteroid_spawn instance_create_depth(x,y,depth,mine_asteroid)

save_game()

audio_stop_all()
audio_play_sound(bgm_mining,1,true)