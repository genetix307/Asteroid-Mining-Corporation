audio_play_sound(sfx_coin,1,false)
store.gems+=1
store.gems_earned+=1

//showReward=instance_create_depth(x-27,y-20,depth-1000,show_text_yellow)
//showReward.myText="+1 Gem"

instance_destroy()