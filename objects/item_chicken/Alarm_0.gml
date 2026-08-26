store.have_chicken+=1
audio_play_sound(sfx_click,1,false)
show=instance_create_depth(x-28,y-8,depth,show_get_item)
show.myReward="+1 Chicken"
instance_destroy()