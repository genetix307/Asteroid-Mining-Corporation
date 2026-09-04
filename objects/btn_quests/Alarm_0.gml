audio_play_sound(sfx_click,1,false)
effect_btn()

if greyed_out=0 and collected=0 {
store.gems+=myReward
store.gems_earned+=myReward
store.keys+=1
audio_play_sound(sfx_upgrade,1,0)
store.quests[myID]=1
save_game()
}