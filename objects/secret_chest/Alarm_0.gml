// Genetix Studio
audio_play_sound(sfx_click,1,false)
effect_btn()

instance_create_depth(x-50,y-122,depth-10,show_get_item).myReward="Found 367 Gems!"
store.gems+=367
store.gems_earned+=367
store.secret_forest=1
store.secrets_found+=1

instance_destroy()
