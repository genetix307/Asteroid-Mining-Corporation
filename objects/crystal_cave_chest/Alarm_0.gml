// Genetix Studio
audio_play_sound(sfx_click,1,false)
effect_btn()

instance_create_depth(x-50,y-122,depth-10,show_get_item).myReward="Found "+string(myGems)+" Gems!"
store.gems+=myGems
store.gems_earned+=myGems
store.secret_forest=1
store.secrets_found+=1

instance_destroy()
