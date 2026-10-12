depth=-10010
//set_music()

if !audio_is_playing(bgm_title)
{
audio_stop_all()
audio_play_sound(bgm_title,1,true)
}

store.job_level+=1
store.job_xp=0
store.keys+=2
gem_reward=250*store.job_level
store.gems+=gem_reward
store.gems_earned+=gem_reward